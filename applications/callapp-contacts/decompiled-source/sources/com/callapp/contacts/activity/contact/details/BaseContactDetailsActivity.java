package com.callapp.contacts.activity.contact.details;

import android.content.Context;
import android.content.Intent;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.content.b;
import androidx.core.view.d;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.bumptech.glide.e.a.j;
import com.bumptech.glide.e.g;
import com.bumptech.glide.load.a;
import com.bumptech.glide.load.engine.GlideException;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.base.BaseActivity;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.callapp.contacts.activity.contact.cards.framework.CardArrayRecyclerViewAdapterWithPriority;
import com.callapp.contacts.activity.contact.details.BaseContactDetailsActivity;
import com.callapp.contacts.activity.contact.details.BaseContactDetailsParallaxImpl;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.activity.contact.details.presenter.callbarpresenter.CallBarPresenter;
import com.callapp.contacts.activity.contact.header.ThemeChangeViewController;
import com.callapp.contacts.activity.contact.header.ThemeState;
import com.callapp.contacts.activity.interfaces.ThemeChangedListener;
import com.callapp.contacts.api.helper.common.ActivityWithContact;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.event.bus.EventBus;
import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.event.listener.DestroyListener;
import com.callapp.contacts.event.listener.PauseListener;
import com.callapp.contacts.event.listener.ResumeListener;
import com.callapp.contacts.manager.IncognitoCallManager;
import com.callapp.contacts.manager.asset.managers.CoverAssetManager;
import com.callapp.contacts.manager.asset.managers.StoreItemAssetManager;
import com.callapp.contacts.manager.asset.mappers.AssetListenerMapper;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.phone.PhoneStateManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.DefaultInterfaceImplUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.util.animation.CallappAnimationUtils;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.contacts.widget.floatingwidget.ui.callapp.CallAppChatHeadLifecycleObserverManager;
import com.callapp.contacts.widget.recyclerviewext.CardRecyclerView;
import com.callapp.framework.util.StringUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.appbar.AppBarLayout;
import io.objectbox.model.PropertyFlags;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/BaseContactDetailsActivity.class */
public abstract class BaseContactDetailsActivity extends ActivityWithContact implements ThemeChangeViewController.contactDetailsThemeChangeListener {
    protected static final String EXTRA_FORCE_PRE_CALL_STATE = "forceIdleState";
    public static final String EXTRA_INCOGNITO_CALL = "EXTRA_INCOGNITO_CALL";
    public static final String EXTRA_OPEN_CONTACT_DETAILS = "EXTRA_OPEN_CONTACT_DETAILS";
    protected static final String EXTRA_REPORT_TRACK_VIEW = "EXTRA_REPORT_TRACK_VIEW";
    public static final String EXTRA_SHOW_KEYPAD = "EXTRA_SHOW_KEYPAD";
    private AppBarLayout appBar;
    protected StoreItemAssetManager assetManager;
    protected CardArrayRecyclerViewAdapterWithPriority cardsAdapter;
    protected View cardsContainer;
    public ContactData contact;
    protected Set<ContactField> contactFields;
    protected ImageView coverBackground;
    protected ImageView coverImageView;
    protected final EventBus eventBus;
    private d gestureDetector;
    protected boolean hasPersonalCover;
    protected boolean hasPersonalStoreItemTypeCover;
    protected boolean isIncognitoCall;
    protected boolean isOneTimeIncognitoCall;
    private BaseContactDetailsParallaxImpl parallaxImpl;
    private ParallaxState parallaxState;
    public final PresentersContainerImpl presenterContainer;
    public final PresenterManager presenterManager;
    private CardRecyclerView recyclerView;
    protected boolean shouldPlayVideoBackground;
    private FlingListener flingListener = new FlingListener();
    public ThemeState contactDetailsParallaxThemeState = (ThemeState) Prefs.di.get();
    protected final Object contactFieldsLock = new Object();
    private boolean lastHoldContactState = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.activity.contact.details.BaseContactDetailsActivity$9  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$9.class */
    public class AnonymousClass9 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f11976a;

        AnonymousClass9(boolean z) {
            this.f11976a = z;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(View view) {
            AndroidUtils.a(view, 1);
            CallBarPresenter callBarPresenter = (CallBarPresenter) BaseContactDetailsActivity.this.presenterManager.a(CallBarPresenter.class);
            if (callBarPresenter == null) {
                return;
            }
            if (PhoneStateManager.get().getCallListSize() == 1 || PhoneStateManager.get().isAllCallsInConference()) {
                callBarPresenter.a(BaseContactDetailsActivity.this);
            } else {
                CallBarPresenter.c();
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            View b2 = ViewUtils.b(BaseContactDetailsActivity.this.findViewById(2131362219));
            ((ImageView) BaseContactDetailsActivity.this.findViewById(2131362218)).setColorFilter(new PorterDuffColorFilter(ThemeUtils.a(CallAppApplication.get(), 2131100228), PorterDuff.Mode.SRC_IN));
            ViewUtils.a(b2, this.f11976a);
            if (this.f11976a) {
                List<ContactData> allHoldContactData = PhoneStateManager.get().getAllHoldContactData();
                TextView textView = (TextView) b2.findViewById(2131362243);
                ((TextView) b2.findViewById(2131362217)).setText(Activities.getString(2131887353));
                if (allHoldContactData.size() == 1) {
                    ContactData contactData = allHoldContactData.get(0);
                    if (contactData.isIncognito() || IncognitoCallManager.get().isIncognito(contactData)) {
                        ViewUtils.a(textView, contactData.getPhone().b());
                    } else {
                        ViewUtils.a(textView, StringUtils.j(allHoldContactData.get(0).getNameOrNumber()));
                    }
                } else if (allHoldContactData.size() > 1) {
                    ViewUtils.a(textView, BaseContactDetailsActivity.this.getString(2131886626).toLowerCase());
                }
                b2.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.details._$$Lambda$BaseContactDetailsActivity$9$XBjuBX6g1qjYzDSloPVToO_UBkg
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        BaseContactDetailsActivity.AnonymousClass9.this.a(view);
                    }
                });
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$FlingListener.class */
    public class FlingListener extends GestureDetector.SimpleOnGestureListener {

        /* renamed from: b  reason: collision with root package name */
        private boolean f11979b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f11980c;

        /* renamed from: d  reason: collision with root package name */
        private float f11981d = BitmapDescriptorFactory.HUE_RED;

        protected FlingListener() {
        }

        public float getGetVelocityY() {
            return this.f11981d;
        }

        public boolean isFling() {
            return this.f11979b;
        }

        public boolean isFlingUpwards() {
            return this.f11980c;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onDown(MotionEvent motionEvent) {
            this.f11980c = false;
            this.f11979b = false;
            return super.onDown(motionEvent);
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            boolean z = true;
            this.f11979b = true;
            this.f11981d = f2;
            if (f2 >= BitmapDescriptorFactory.HUE_RED) {
                z = false;
            }
            this.f11980c = z;
            return super.onFling(motionEvent, motionEvent2, f, f2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$ParallaxState.class */
    public enum ParallaxState {
        spammer,
        videoRingtone,
        cover,
        incognito,
        incomingCall,
        other
    }

    public BaseContactDetailsActivity() {
        EventBus eventBus = new EventBus();
        this.eventBus = eventBus;
        PresentersContainerImpl presentersContainerImpl = new PresentersContainerImpl(eventBus, getPresenterContainerMode()) { // from class: com.callapp.contacts.activity.contact.details.BaseContactDetailsActivity.1
            @Override // com.callapp.contacts.activity.contact.details.PresentersContainerImpl, com.callapp.contacts.activity.contact.details.PresentersContainer
            public Fragment findFragment(int i) {
                return BaseContactDetailsActivity.this.getSupportFragmentManager().c(i);
            }

            @Override // com.callapp.contacts.activity.contact.details.PresentersContainer
            public View findViewById(int i) {
                return BaseContactDetailsActivity.this.findViewById(i);
            }

            @Override // com.callapp.contacts.activity.contact.details.PresentersContainer
            public void finish() {
                BaseContactDetailsActivity.this.finish();
            }

            @Override // com.callapp.contacts.activity.contact.details.PresentersContainerImpl, com.callapp.contacts.activity.contact.details.PresentersContainer
            public CardArrayRecyclerViewAdapterWithPriority getCardsAdapter() {
                return BaseContactDetailsActivity.this.cardsAdapter;
            }

            @Override // com.callapp.contacts.activity.contact.details.PresentersContainer
            public ContactData getContact() {
                return BaseContactDetailsActivity.this.contact;
            }

            @Override // com.callapp.contacts.activity.contact.details.PresentersContainer
            public EventBus getEventBus() {
                return BaseContactDetailsActivity.this.eventBus;
            }

            @Override // com.callapp.contacts.activity.contact.details.PresentersContainerImpl, com.callapp.contacts.activity.contact.details.PresentersContainer
            public FragmentManager getFragmentManager() {
                return BaseContactDetailsActivity.this.getSupportFragmentManager();
            }

            @Override // com.callapp.contacts.activity.contact.details.PresentersContainer
            public Context getRealContext() {
                return BaseContactDetailsActivity.this;
            }

            @Override // com.callapp.contacts.activity.contact.details.PresentersContainerImpl, com.callapp.contacts.activity.contact.details.PresentersContainer
            public boolean hasIntentExtra(String str) {
                Intent intent = BaseContactDetailsActivity.this.getIntent();
                if (intent == null || !StringUtils.b((CharSequence) str)) {
                    return false;
                }
                return intent.hasExtra(str);
            }

            @Override // com.callapp.contacts.activity.contact.details.PresentersContainerImpl, com.callapp.contacts.activity.contact.details.PresentersContainer
            public boolean isClickValid(View view) {
                return BaseContactDetailsActivity.this.isClickValid(view);
            }

            @Override // com.callapp.contacts.activity.contact.details.PresentersContainer
            public boolean isFinishing() {
                return BaseContactDetailsActivity.this.isFinishing();
            }

            @Override // com.callapp.contacts.activity.contact.details.PresentersContainerImpl, com.callapp.contacts.activity.contact.details.PresentersContainer
            public void scrollToPosition(int i) {
                CardRecyclerView recyclerView = BaseContactDetailsActivity.this.getRecyclerView();
                if (recyclerView != null) {
                    recyclerView.d(0);
                }
            }
        };
        this.presenterContainer = presentersContainerImpl;
        this.presenterManager = new PresenterManager(presentersContainerImpl.getContainerMode());
    }

    public void changeContactDetailsThemeColor(ThemeState themeState, boolean z) {
        this.parallaxState = null;
        ThemeUtils.a(themeState, z);
        ViewUtils.a(getRecyclerViewContainer(), new ColorDrawable(ThemeUtils.getColor(themeState.getCardsBackgroundColor())));
        getParallax().a(themeState);
        ContactData contactData = this.contact;
        setParallaxAndStatusBarColors(contactData != null && contactData.isSpammer(), false);
    }

    public void changeStatusBarTextColor(ThemeState themeState) {
        if (Build.VERSION.SDK_INT >= 23 && !hasCover()) {
            if (themeState == ThemeState.WHITE) {
                getWindow().getDecorView().setSystemUiVisibility(PropertyFlags.UNSIGNED);
            } else {
                getWindow().getDecorView().setSystemUiVisibility(0);
            }
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        float f;
        this.gestureDetector.f1991a.a(motionEvent);
        if (motionEvent.getAction() == 1 && !this.parallaxImpl.isAppBarFullyClosed() && isSnapOnUpRulesOk()) {
            if (this.flingListener.isFling()) {
                if (!this.flingListener.isFlingUpwards()) {
                    float max = Math.max(CallappAnimationUtils.e, Math.abs(this.flingListener.getGetVelocityY()) * 0.33f);
                    f = max;
                    if (this.parallaxImpl.isPositionAboveSemiOpen()) {
                        this.parallaxImpl.a(BaseContactDetailsParallaxImpl.Position.OPEN, max, true);
                        return true;
                    }
                } else if (this.parallaxImpl.isPositionAboveSemiOpen()) {
                    f = Math.max(CallappAnimationUtils.e, Math.abs(this.flingListener.getGetVelocityY()) * 0.33f);
                } else {
                    this.parallaxImpl.a(BaseContactDetailsParallaxImpl.Position.CLOSED, true);
                    return true;
                }
                this.parallaxImpl.a(BaseContactDetailsParallaxImpl.Position.SEMI_OPEN, f, true);
                return true;
            }
            BaseContactDetailsParallaxImpl baseContactDetailsParallaxImpl = this.parallaxImpl;
            baseContactDetailsParallaxImpl.a(baseContactDetailsParallaxImpl.getClosestPosition(), true);
        }
        try {
            return super.dispatchTouchEvent(motionEvent);
        } catch (Exception e) {
            return true;
        }
    }

    @Override // com.callapp.contacts.api.helper.common.ActivityWithContact
    public ContactData getContact() {
        return this.contact;
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity
    public int getLayoutResourceId() {
        return 2131558444;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public BaseContactDetailsParallaxImpl getParallax() {
        if (this.parallaxImpl == null) {
            this.parallaxImpl = getParallaxImpl(this.flingListener);
        }
        return this.parallaxImpl;
    }

    protected abstract BaseContactDetailsParallaxImpl getParallaxImpl(FlingListener flingListener);

    protected abstract BaseContactDetailsParallaxImpl.PositionChangedListener getPositionChangedListener();

    protected abstract PresentersContainer.MODE getPresenterContainerMode();

    /* JADX INFO: Access modifiers changed from: protected */
    public CardRecyclerView getRecyclerView() {
        return this.recyclerView;
    }

    protected View getRecyclerViewContainer() {
        View view = this.cardsContainer;
        return view != null ? view : this.recyclerView;
    }

    protected StoreItemAssetManager.Builder getStoreItemAssetManager(StoreItemAssetManager.Builder builder) {
        builder.f14984b = new StoreItemAssetManager.AssetListener<String>() { // from class: com.callapp.contacts.activity.contact.details.BaseContactDetailsActivity.5
            @Override // com.callapp.contacts.manager.asset.managers.StoreItemAssetManager.AssetListener
            public /* synthetic */ void onAssetReady(String str, String str2) {
                String str3 = str;
                if (!BaseContactDetailsActivity.this.hasPersonalCover && !BaseContactDetailsActivity.this.hasPersonalStoreItemTypeCover) {
                    BaseContactDetailsActivity baseContactDetailsActivity = BaseContactDetailsActivity.this;
                    GlideUtils.GlideRequestBuilder a2 = new GlideUtils.GlideRequestBuilder(baseContactDetailsActivity, str3, baseContactDetailsActivity.coverImageView, new GlideUtils.CustomViewListener() { // from class: com.callapp.contacts.activity.contact.details.BaseContactDetailsActivity.5.1
                        @Override // com.callapp.contacts.util.glide.GlideUtils.CustomViewListener
                        public void onResourceReady(Drawable drawable, com.bumptech.glide.e.b.d<? super Drawable> dVar) {
                            BaseContactDetailsActivity.this.coverImageView.setBackground(drawable);
                        }
                    }).a(GlideUtils.f16193a, GlideUtils.f16194b);
                    a2.q = true;
                    a2.d();
                }
            }
        };
        return builder;
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity
    public int getThemeResId() {
        return ThemeUtils.getNoTitleTheme();
    }

    public boolean hasCover() {
        return (this.assetManager != null && CoverAssetManager.b()) || this.hasPersonalCover || this.hasPersonalStoreItemTypeCover;
    }

    protected abstract boolean isSnapOnUpRulesOk();

    public /* synthetic */ void lambda$setParallaxAndStatusBarColors$0$BaseContactDetailsActivity(boolean z, boolean z2) {
        int i;
        if (z) {
            if (this.parallaxState != ParallaxState.spammer) {
                setParallaxAsSpammer(z);
                getParallax().a(hasCover());
                i = ThemeUtils.a(CallAppApplication.get(), 2131099675);
                ViewUtils.a((View) this.coverImageView, false);
                ViewUtils.a((View) this.coverBackground, true);
                ViewUtils.a(this.coverBackground, new ColorDrawable(i));
                this.coverBackground.setAlpha(this.shouldPlayVideoBackground ? 0.4f : 1.0f);
                getParallax().getThemeChangeViewController().setThirdButtonVisibility(false);
                changeStatusBarTextColor(this.contactDetailsParallaxThemeState);
                this.parallaxState = ParallaxState.spammer;
            }
            i = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
        } else {
            if (this.shouldPlayVideoBackground) {
                if (this.parallaxState != ParallaxState.videoRingtone) {
                    ViewUtils.a((View) this.coverImageView, false);
                    ViewUtils.a((View) this.coverBackground, true);
                    this.coverBackground.setAlpha(0.17f);
                    this.coverBackground.setBackgroundColor(BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW);
                    changeStatusBarTextColor(ThemeState.COVER);
                    this.parallaxState = ParallaxState.videoRingtone;
                }
            } else if (CoverAssetManager.b() || this.hasPersonalCover || this.hasPersonalStoreItemTypeCover) {
                if (this.parallaxState != ParallaxState.cover) {
                    setParallaxAsSpammer(z);
                    i = b.c(CallAppApplication.get(), 2131099918);
                    if (CoverAssetManager.b()) {
                        this.assetManager.getAssets();
                    }
                    if (this.hasPersonalCover || this.hasPersonalStoreItemTypeCover) {
                        setHasCover(true);
                        getParallax().a(true);
                    }
                    ViewUtils.a((View) this.coverBackground, false);
                    ViewUtils.a((View) this.coverImageView, true);
                    changeStatusBarTextColor(ThemeState.DARK);
                    this.parallaxState = ParallaxState.cover;
                }
            } else if (this.isIncognitoCall || this.isOneTimeIncognitoCall) {
                if (this.parallaxState != ParallaxState.incognito) {
                    i = b.c(CallAppApplication.get(), 2131099918);
                    ViewUtils.a((View) this.coverImageView, false);
                    ViewUtils.a((View) this.coverBackground, true);
                    ViewUtils.a(this.coverBackground, new ColorDrawable(i));
                    changeStatusBarTextColor(ThemeState.DARK);
                    this.parallaxState = ParallaxState.incognito;
                }
            } else if (z2) {
                if (this.parallaxState != ParallaxState.incomingCall) {
                    ViewUtils.a((View) this.coverImageView, false);
                    ViewUtils.a((View) this.coverBackground, false);
                    getParallax().b(false);
                    changeStatusBarTextColor(ThemeState.PRIMARY);
                    this.parallaxState = ParallaxState.incomingCall;
                }
            } else if (this.parallaxState != ParallaxState.other) {
                setHasCover(false);
                getParallax().getThemeChangeViewController().setThirdButtonVisibility(true);
                setParallaxAsSpammer(z);
                getParallax().a(false);
                ViewUtils.a((View) this.coverImageView, false);
                ViewUtils.a((View) this.coverBackground, false);
                i = ThemeUtils.getColor(this.contactDetailsParallaxThemeState.getParallaxBackgroundColor());
                changeStatusBarTextColor(this.contactDetailsParallaxThemeState);
                this.parallaxState = ParallaxState.other;
            }
            i = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
        }
        if (i == Integer.MIN_VALUE) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 23) {
            setStatusBarColor(i);
        } else {
            setStatusBarColor(ThemeUtils.getColor(2131099692));
        }
    }

    protected abstract void onButtonBarIconClicked(View view);

    protected void onButtonBarIconLongClicked(View view) {
    }

    @Override // com.callapp.contacts.activity.contact.header.ThemeChangeViewController.contactDetailsThemeChangeListener
    public void onContactDetailedThemeChanged(ThemeState themeState) {
        this.contactDetailsParallaxThemeState = themeState;
        changeContactDetailsThemeColor(themeState, true);
        this.presenterContainer.getEventBus().a((EventType<L, EventType<ThemeChangedListener, EventBusManager.CallAppDataType>>) ThemeChangedListener.i, (EventType<ThemeChangedListener, EventBusManager.CallAppDataType>) null, false);
        EventBusManager.f14368a.a((EventType<L, EventType<ThemeChangedListener, EventBusManager.CallAppDataType>>) ThemeChangedListener.i, (EventType<ThemeChangedListener, EventBusManager.CallAppDataType>) null, false);
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        View findViewById = findViewById(2131362947);
        this.coverImageView = (ImageView) findViewById.findViewById(2131362497);
        this.coverBackground = (ImageView) findViewById.findViewById(2131362495);
        View findViewById2 = findViewById(2131362294);
        this.cardsContainer = findViewById2;
        if (findViewById2 != null) {
            this.recyclerView = (CardRecyclerView) findViewById2.findViewById(2131362293);
        } else {
            this.recyclerView = (CardRecyclerView) findViewById(2131362293);
        }
        StoreItemAssetManager a2 = getStoreItemAssetManager(new StoreItemAssetManager.Builder().a(Prefs.dU, new AssetListenerMapper(new StoreItemAssetManager.AssetListener<String>() { // from class: com.callapp.contacts.activity.contact.details.BaseContactDetailsActivity.2

            /* renamed from: com.callapp.contacts.activity.contact.details.BaseContactDetailsActivity$2$1  reason: invalid class name */
            /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$2$1.class */
            class AnonymousClass1 implements g<Drawable> {
                AnonymousClass1() {
                }

                /* JADX INFO: Access modifiers changed from: private */
                public /* synthetic */ void a(Drawable drawable) {
                    BaseContactDetailsActivity.this.recyclerView.setBackground(drawable);
                }

                @Override // com.bumptech.glide.e.g
                public final boolean a(GlideException glideException, Object obj, j<Drawable> jVar, boolean z) {
                    return false;
                }

                @Override // com.bumptech.glide.e.g
                public final /* synthetic */ boolean a(Drawable drawable, Object obj, j<Drawable> jVar, a aVar, boolean z) {
                    final Drawable drawable2 = drawable;
                    if (drawable2 == null || BaseContactDetailsActivity.this.presenterContainer.a(BaseContactDetailsActivity.this.contact)) {
                        return false;
                    }
                    drawable2.setAlpha(20);
                    BaseContactDetailsActivity.this.runOnUiThread(new Runnable() { // from class: com.callapp.contacts.activity.contact.details._$$Lambda$BaseContactDetailsActivity$2$1$p8sSlJD0GacdNlctZCrmpWMxrOc
                        @Override // java.lang.Runnable
                        public final void run() {
                            BaseContactDetailsActivity.AnonymousClass2.AnonymousClass1.this.a(drawable2);
                        }
                    });
                    return false;
                }
            }

            @Override // com.callapp.contacts.manager.asset.managers.StoreItemAssetManager.AssetListener
            public /* synthetic */ void onAssetReady(String str, String str2) {
                GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(str);
                glideRequestBuilder.n = new AnonymousClass1();
                glideRequestBuilder.e = BaseContactDetailsActivity.this;
                glideRequestBuilder.c();
            }
        }))).a();
        this.assetManager = a2;
        a2.getAssets();
        CardRecyclerView cardRecyclerView = this.recyclerView;
        BaseActivity baseActivity = null;
        if (cardRecyclerView != null) {
            cardRecyclerView.setLayoutManager(new LinearLayoutManager(this) { // from class: com.callapp.contacts.activity.contact.details.BaseContactDetailsActivity.3
                @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.i
                public final void a(final RecyclerView recyclerView, RecyclerView.s sVar, int i) {
                    androidx.recyclerview.widget.g gVar = new androidx.recyclerview.widget.g(recyclerView.getContext()) { // from class: com.callapp.contacts.activity.contact.details.BaseContactDetailsActivity.3.1
                        @Override // androidx.recyclerview.widget.g
                        public final float a(DisplayMetrics displayMetrics) {
                            return 250.0f / displayMetrics.densityDpi;
                        }

                        @Override // androidx.recyclerview.widget.RecyclerView.r
                        public final PointF c(int i2) {
                            return ((LinearLayoutManager) recyclerView.getLayoutManager()).c(i2);
                        }

                        @Override // androidx.recyclerview.widget.g
                        public int getVerticalSnapPreference() {
                            return -1;
                        }
                    };
                    gVar.setTargetPosition(i);
                    a(gVar);
                }
            });
            this.recyclerView.setItemAnimator(null);
        }
        this.parallaxImpl = getParallax();
        this.gestureDetector = new d(this, this.flingListener);
        AppBarLayout appBarLayout = (AppBarLayout) findViewById(2131362019);
        this.appBar = appBarLayout;
        if (appBarLayout != null) {
            appBarLayout.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.callapp.contacts.activity.contact.details.BaseContactDetailsActivity.4
                @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                public void onGlobalLayout() {
                    BaseContactDetailsActivity.this.appBar.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                    BaseContactDetailsActivity.this.snapToPositionByOrientation();
                }
            });
        }
        CallAppChatHeadLifecycleObserverManager callAppChatHeadLifecycleObserverManager = CallAppChatHeadLifecycleObserverManager.get();
        if (23 <= Build.VERSION.SDK_INT && PhoneManager.get().isDefaultPhoneApp()) {
            synchronized (callAppChatHeadLifecycleObserverManager.f16741a) {
                if (callAppChatHeadLifecycleObserverManager.f16743c != null) {
                    baseActivity = callAppChatHeadLifecycleObserverManager.f16743c.get();
                }
                if (callAppChatHeadLifecycleObserverManager.f16743c == null || baseActivity != this) {
                    if (baseActivity != null) {
                        baseActivity.getLifecycle().removeObserver(callAppChatHeadLifecycleObserverManager.f16742b);
                    }
                    callAppChatHeadLifecycleObserverManager.f16742b.setActivityName(getLocalClassName());
                    getLifecycle().addObserver(callAppChatHeadLifecycleObserverManager.f16742b);
                    callAppChatHeadLifecycleObserverManager.f16743c = new WeakReference<>(this);
                }
            }
        }
        ViewUtils.a(getRecyclerViewContainer(), new ColorDrawable(ThemeUtils.getColor(this.contactDetailsParallaxThemeState.getCardsBackgroundColor())));
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        this.eventBus.a((EventType<L, EventType<DestroyListener, Object>>) DestroyListener.f14378d, (EventType<DestroyListener, Object>) null, false);
        this.eventBus.a();
        BaseContactDetailsParallaxImpl baseContactDetailsParallaxImpl = this.parallaxImpl;
        if (baseContactDetailsParallaxImpl != null) {
            baseContactDetailsParallaxImpl.a();
        }
        StoreItemAssetManager storeItemAssetManager = this.assetManager;
        if (storeItemAssetManager != null) {
            storeItemAssetManager.b();
        }
        PresenterManager presenterManager = this.presenterManager;
        if (presenterManager != null) {
            presenterManager.a();
        }
        PresentersContainerImpl presentersContainerImpl = this.presenterContainer;
        if (presentersContainerImpl != null) {
            presentersContainerImpl.onDestroy();
        }
        CallAppChatHeadLifecycleObserverManager callAppChatHeadLifecycleObserverManager = CallAppChatHeadLifecycleObserverManager.get();
        synchronized (callAppChatHeadLifecycleObserverManager.f16741a) {
            if (callAppChatHeadLifecycleObserverManager.f16743c != null) {
                BaseActivity baseActivity = callAppChatHeadLifecycleObserverManager.f16743c.get();
                if (baseActivity == this) {
                    baseActivity.getLifecycle().removeObserver(callAppChatHeadLifecycleObserverManager.f16742b);
                    callAppChatHeadLifecycleObserverManager.f16742b.setActivityName("");
                    callAppChatHeadLifecycleObserverManager.f16743c = null;
                }
            }
        }
        super.onDestroy();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        this.eventBus.a((EventType<L, EventType<PauseListener, Object>>) PauseListener.f14379a, (EventType<PauseListener, Object>) null, false);
        super.onPause();
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        this.eventBus.a((EventType<L, EventType<ResumeListener, Object>>) ResumeListener.f14380d, (EventType<ResumeListener, Object>) null, false);
        PhoneStateManager.get().setCallActionSource(PhoneStateManager.CallActionSource.NONE);
    }

    protected abstract void onTopBarIconClicked(View view);

    /* JADX INFO: Access modifiers changed from: protected */
    public void setButtonBarClickedListeners(int... iArr) {
        for (int i : iArr) {
            findViewById(i).setOnClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.activity.contact.details.BaseContactDetailsActivity.7
                @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
                public final void a(View view) {
                    if (BaseContactDetailsActivity.this.isClickValid(view)) {
                        BaseContactDetailsActivity.this.onButtonBarIconClicked(view);
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setButtonBarLongClickedListeners(int... iArr) {
        for (int i : iArr) {
            findViewById(i).setOnLongClickListener(new View.OnLongClickListener() { // from class: com.callapp.contacts.activity.contact.details.BaseContactDetailsActivity.8
                @Override // android.view.View.OnLongClickListener
                public boolean onLongClick(View view) {
                    if (!BaseContactDetailsActivity.this.isClickValid(view)) {
                        return false;
                    }
                    BaseContactDetailsActivity.this.onButtonBarIconLongClicked(view);
                    return true;
                }
            });
        }
    }

    protected void setHasCover(boolean z) {
        this.parallaxImpl.setHasCover(z);
    }

    public void setHasPersonalCover(boolean z) {
        this.hasPersonalCover = z;
    }

    public void setHasPersonalStoreItemTypeCover(boolean z) {
        this.hasPersonalStoreItemTypeCover = z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setHoldContactData(boolean z) {
        if (this.lastHoldContactState != z || z) {
            this.lastHoldContactState = z;
            safeRunOnUIThread(new AnonymousClass9(z));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setParallaxAndStatusBarColors(final boolean z, final boolean z2) {
        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.contact.details._$$Lambda$BaseContactDetailsActivity$d18qYyTRaugFVPi5ugdqNu6P6Ks
            @Override // java.lang.Runnable
            public final void run() {
                BaseContactDetailsActivity.this.lambda$setParallaxAndStatusBarColors$0$BaseContactDetailsActivity(z, z2);
            }
        });
    }

    protected void setParallaxAsSpammer(boolean z) {
        this.parallaxImpl.setSpammer(z);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setShouldHideSocialProfileAction(boolean z) {
        this.parallaxImpl.setShouldHideSocialProfileAction(z);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setTopBarClickedListeners(int... iArr) {
        for (int i : iArr) {
            findViewById(i).setOnClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.activity.contact.details.BaseContactDetailsActivity.6
                @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
                public final void a(View view) {
                    if (BaseContactDetailsActivity.this.isClickValid(view)) {
                        BaseContactDetailsActivity.this.onTopBarIconClicked(view);
                    }
                }
            });
        }
    }

    protected boolean shouldColorHeaderBackground() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void snapToPositionByOrientation() {
        this.parallaxImpl.a(Activities.isOrientationLandscape() ? BaseContactDetailsParallaxImpl.Position.CLOSED : BaseContactDetailsParallaxImpl.Position.SEMI_OPEN, false);
    }
}
