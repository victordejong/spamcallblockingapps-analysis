package com.callapp.contacts.activity.marketplace;

import android.animation.Animator;
import android.app.Activity;
import android.content.Intent;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.appsflyer.internal.referrer.Payload;
import com.callapp.contacts.activity.contact.header.ThemeState;
import com.callapp.contacts.activity.marketplace.CallScreenThemeDownloaderActivity;
import com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler;
import com.callapp.contacts.activity.marketplace.catalog.CatalogManager;
import com.callapp.contacts.activity.marketplace.catalog.JSONStoreCallScreenThemeItem;
import com.callapp.contacts.activity.marketplace.list.HorizontalSpaceItemDecoration;
import com.callapp.contacts.activity.marketplace.viewholders.ButtonSetViewHolder;
import com.callapp.contacts.loader.PersonalStoreItemDataManager;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.PromotionManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.preferences.prefs.BooleanPref;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.objectbox.PersonalStoreItemUrlData;
import com.callapp.contacts.model.objectbox.Promotion;
import com.callapp.contacts.model.widget.CallIncomingIndicatorView;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.DefaultInterfaceImplUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.contacts.util.video.CallAppExoPlayerFactory;
import com.callapp.contacts.util.video.VideoCacheManager;
import com.callapp.contacts.widget.ProgressCardView;
import com.callapp.framework.util.StringUtils;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.aa;
import com.google.android.exoplayer2.ac;
import com.google.android.exoplayer2.al;
import com.google.android.exoplayer2.m;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.trackselection.g;
import com.google.android.exoplayer2.ui.PlayerView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.List;
import kotlin.jvm.internal.p;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity.class */
public class CallScreenThemeDownloaderActivity extends BaseDownloaderActivity<JSONStoreCallScreenThemeItem> implements DownloaderCardViewHandler.DownloaderCardEvents<JSONStoreCallScreenThemeItem>, ac.a {
    protected m e;
    protected PlayerView f;
    protected ButtonSet g;
    protected RecyclerView h;
    protected ImageView j;
    protected final int k = -2;
    protected final int l = -3;
    private ImageView m;
    private ImageView n;
    private ImageView o;
    private ImageView p;
    private CallIncomingIndicatorView q;
    private CallIncomingIndicatorView r;
    private View s;
    private Animation t;
    private ProgressBar u;
    private View v;
    private boolean w;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity$ButtonSetAdapter.class */
    public static class ButtonSetAdapter extends RecyclerView.a {

        /* renamed from: a  reason: collision with root package name */
        private final ButtonSet[] f13058a;

        /* renamed from: b  reason: collision with root package name */
        private ButtonSet f13059b = (ButtonSet) Prefs.dy.get();

        /* renamed from: c  reason: collision with root package name */
        private ButtonSetPickedListener f13060c;

        public ButtonSetAdapter(ButtonSetPickedListener buttonSetPickedListener) {
            this.f13060c = buttonSetPickedListener;
            ButtonSet[] values = ButtonSet.values();
            this.f13058a = values;
            int length = values.length;
            for (int i = 0; i < length; i++) {
                ButtonSet buttonSet = values[i];
                buttonSet.setIsPicked(buttonSet == this.f13059b);
            }
            buttonSetPickedListener.onButtonSetPicked(this.f13059b);
        }

        public void a(ButtonSet buttonSet) {
            ButtonSet buttonSet2 = this.f13059b;
            if (buttonSet2 != null) {
                buttonSet2.setIsPicked(false);
            }
            this.f13059b = buttonSet;
            buttonSet.setIsPicked(true);
            notifyDataSetChanged();
            ButtonSetPickedListener buttonSetPickedListener = this.f13060c;
            if (buttonSetPickedListener != null) {
                buttonSetPickedListener.onButtonSetPicked(buttonSet);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.a
        public int getItemCount() {
            return this.f13058a.length;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.a
        public void onBindViewHolder(RecyclerView.v vVar, int i) {
            if (vVar instanceof ButtonSetViewHolder) {
                ((ButtonSetViewHolder) vVar).a(this.f13058a[i], new ButtonSetPickedListener() { // from class: com.callapp.contacts.activity.marketplace._$$Lambda$sVFmxwmTqbt7BVS66jhrSX5QcYU
                    @Override // com.callapp.contacts.activity.marketplace.ButtonSetPickedListener
                    public final void onButtonSetPicked(ButtonSet buttonSet) {
                        CallScreenThemeDownloaderActivity.ButtonSetAdapter.this.a(buttonSet);
                    }
                });
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.a
        public RecyclerView.v onCreateViewHolder(ViewGroup viewGroup, int i) {
            return new ButtonSetViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(2131558757, viewGroup, false));
        }
    }

    public static Intent a(Activity activity, String str) {
        Intent intent = new Intent(activity, CallScreenThemeDownloaderActivity.class);
        intent.putExtra("EXTRA_ITEM_ID", str);
        return intent;
    }

    public static void a(Activity activity, String str, Class cls, String str2) {
        Intent a2 = a(activity, str);
        a2.putExtra("ACTIVITY_SOURCE", activity.getClass().getSimpleName());
        if (cls != null) {
            a2.putExtra("RETURN_TO_PREVIOUS_CLASS", cls);
        }
        a2.putExtra(Payload.SOURCE, str2);
        activity.startActivity(a2);
    }

    private void k() {
        this.o.setVisibility(8);
        this.o.clearAnimation();
        this.q.setVisibility(8);
        this.r.setVisibility(8);
        this.q.stopAnimation();
        this.r.stopAnimation();
    }

    @Override // com.callapp.contacts.activity.marketplace.BaseDownloaderActivity
    public void a(int i) {
        super.a(i);
        if (this.f13040a != 0) {
            if (!((JSONStoreCallScreenThemeItem) this.f13040a).isCustomizable() && StringUtils.b((CharSequence) ((JSONStoreCallScreenThemeItem) this.f13040a).getThemeLargePreviewUrl())) {
                this.e.a(VideoCacheManager.get().a(((JSONStoreCallScreenThemeItem) this.f13040a).getThemeDownloadUrl()));
                GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(this.j, ((JSONStoreCallScreenThemeItem) this.f13040a).getThemeLargePreviewUrl(), this);
                glideRequestBuilder.q = true;
                glideRequestBuilder.d();
            }
            ((TextView) this.s.findViewById(2131364165)).setText(Activities.getString(((JSONStoreCallScreenThemeItem) this.f13040a).isPurchased() ? 2131886366 : 2131886367));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(ButtonSet buttonSet) {
        a(buttonSet, this.w);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(ButtonSet buttonSet, boolean z) {
        if (buttonSet != null) {
            this.g = buttonSet;
            if (z) {
                if (buttonSet.isSingleButtonSetResource()) {
                    this.o.setVisibility(0);
                    if (buttonSet.isGif()) {
                        this.o.clearAnimation();
                        new GlideUtils.GifPlayer(this.o.getContext(), this.o, buttonSet.getAnswerResourceUrl(), buttonSet.getAnswerCallDrawableRes(), -1, true);
                    } else {
                        GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(this.o, buttonSet.getAnswerCallDrawableRes(), getApplicationContext());
                        glideRequestBuilder.q = true;
                        glideRequestBuilder.d();
                        this.o.startAnimation(this.t);
                    }
                    this.n.setVisibility(8);
                    this.n.clearAnimation();
                    this.p.setVisibility(8);
                    this.q.setVisibility(0);
                    this.q.startAnimation();
                    this.r.setVisibility(0);
                    this.r.startAnimation();
                } else {
                    this.n.setVisibility(0);
                    this.p.setVisibility(0);
                    if (buttonSet.isGif()) {
                        this.n.clearAnimation();
                        new GlideUtils.GifPlayer(this.n.getContext(), this.n, buttonSet.getAnswerResourceUrl(), buttonSet.getAnswerCallDrawableRes(), -1, true);
                        new GlideUtils.GifPlayer(this.p.getContext(), this.p, buttonSet.getDeclineResourceUrl(), buttonSet.getDeclineCallDrawableRes(), -1, true);
                    } else {
                        GlideUtils.GlideRequestBuilder glideRequestBuilder2 = new GlideUtils.GlideRequestBuilder(this.n, buttonSet.getAnswerCallDrawableRes(), getApplicationContext());
                        glideRequestBuilder2.q = true;
                        glideRequestBuilder2.d();
                        GlideUtils.GlideRequestBuilder glideRequestBuilder3 = new GlideUtils.GlideRequestBuilder(this.p, buttonSet.getDeclineCallDrawableRes(), getApplicationContext());
                        glideRequestBuilder3.q = true;
                        glideRequestBuilder3.d();
                        this.n.startAnimation(this.t);
                    }
                    k();
                }
                setRightIconState(buttonSet);
            }
        }
    }

    /* renamed from: a  reason: avoid collision after fix types in other method */
    public void d(JSONStoreCallScreenThemeItem jSONStoreCallScreenThemeItem) {
        PersonalStoreItemDataManager.f14492a.a("666666", jSONStoreCallScreenThemeItem.getThemeDownloadUrl(), Integer.MAX_VALUE, PersonalStoreItemUrlData.PersonalStoreItemType.VIDEO_RINGTONE);
        if (this.g != null) {
            Prefs.dy.set(this.g);
        }
        AnalyticsManager.get().a(Constants.STORE, "Picked Buttons", this.g.isSingleButtonSetResource() ? "Single" : "Double", 0.0d, Payload.SOURCE, this.f13043d);
        o_();
    }

    @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
    public /* synthetic */ void a(JSONStoreCallScreenThemeItem jSONStoreCallScreenThemeItem, ProgressCardView progressCardView) {
        DownloaderCardViewHandler.DownloaderCardEvents._CC.$default$a(this, jSONStoreCallScreenThemeItem, progressCardView);
    }

    @Override // com.google.android.exoplayer2.ac.a
    public /* synthetic */ void a(ExoPlaybackException exoPlaybackException) {
        ac.a._CC.$default$a(this, exoPlaybackException);
    }

    @Override // com.google.android.exoplayer2.ac.a
    public /* synthetic */ void a(MediaItem mediaItem, int i) {
        ac.a._CC.$default$a(this, mediaItem, i);
    }

    @Override // com.google.android.exoplayer2.ac.a
    public /* synthetic */ void a(aa aaVar) {
        ac.a._CC.$default$a(this, aaVar);
    }

    @Override // com.google.android.exoplayer2.ac.a
    public /* synthetic */ void a(ac.b bVar) {
        ac.a._CC.$default$a(this, bVar);
    }

    @Override // com.google.android.exoplayer2.ac.a
    public /* synthetic */ void a(al alVar, int i) {
        ac.a._CC.$default$a(this, alVar, i);
    }

    @Override // com.google.android.exoplayer2.ac.a
    public /* synthetic */ void a(TrackGroupArray trackGroupArray, g gVar) {
        ac.a._CC.$default$a(this, trackGroupArray, gVar);
    }

    @Override // com.google.android.exoplayer2.ac.a
    public /* synthetic */ void a(boolean z) {
        ac.a._CC.$default$a(this, z);
    }

    public void a(boolean z, int i) {
        View[] viewArr;
        if (i == 3 || i == -2) {
            ButtonSet buttonSet = this.g;
            this.w = z;
            a(buttonSet, z);
            if (this.m != null) {
                ButtonSet buttonSet2 = this.g;
                for (View view : (buttonSet2 == null || !buttonSet2.isSingleButtonSetResource()) ? new View[]{this.f, this.n, this.p} : new View[]{this.f, this.q, this.r, this.o}) {
                    view.setVisibility(0);
                    view.setAlpha(BitmapDescriptorFactory.HUE_RED);
                    view.animate().setDuration(200L).alpha(1.0f).start();
                }
                if (i == -2) {
                    this.f.setVisibility(4);
                    this.j.animate().alpha(1.0f).setDuration(200L).start();
                } else {
                    this.f.setVisibility(0);
                }
                this.u.animate().alpha(BitmapDescriptorFactory.HUE_RED).setDuration(200L).start();
                return;
            }
            return;
        }
        k();
    }

    @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
    public final /* synthetic */ boolean a(JSONStoreCallScreenThemeItem jSONStoreCallScreenThemeItem) {
        JSONStoreCallScreenThemeItem jSONStoreCallScreenThemeItem2 = jSONStoreCallScreenThemeItem;
        if (Prefs.cP.get().booleanValue() && Prefs.cO.get().intValue() > 0) {
            return true;
        }
        if (Prefs.cT.get().intValue() <= 0 || jSONStoreCallScreenThemeItem2.isCustomizable()) {
            return (Prefs.cU.get().intValue() > 0 && jSONStoreCallScreenThemeItem2.isCustomizable()) || Prefs.cK.get().booleanValue() || Prefs.cM.get().intValue() > 0 || PromotionManager.b(getPromotionType());
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public JSONStoreCallScreenThemeItem a(CatalogManager.CatalogAttributes catalogAttributes) {
        return catalogAttributes.getCallScreenTheme();
    }

    @Override // com.google.android.exoplayer2.ac.a
    public final void b(int i) {
        a(true, i);
    }

    public void b(JSONStoreCallScreenThemeItem jSONStoreCallScreenThemeItem) {
        Prefs.dF.set(Boolean.FALSE);
    }

    @Override // com.google.android.exoplayer2.ac.a
    public /* synthetic */ void b(boolean z) {
        ac.a._CC.$default$b(this, z);
    }

    @Override // com.google.android.exoplayer2.ac.a
    public /* synthetic */ void b(boolean z, int i) {
        ac.a._CC.$default$b(this, z, i);
    }

    @Override // com.google.android.exoplayer2.ac.a
    public /* synthetic */ void c(List list) {
        ac.a._CC.$default$c(this, list);
    }

    @Override // com.google.android.exoplayer2.ac.a
    public /* synthetic */ void c(boolean z) {
        ac.a._CC.$default$c(this, z);
    }

    @Override // com.google.android.exoplayer2.ac.a
    public /* synthetic */ void c(boolean z, int i) {
        ac.a._CC.$default$c(this, z, i);
    }

    @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
    public /* synthetic */ boolean c() {
        return DownloaderCardViewHandler.DownloaderCardEvents._CC.$default$c(this);
    }

    @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
    public final /* synthetic */ String[] c(JSONStoreCallScreenThemeItem jSONStoreCallScreenThemeItem) {
        return new String[]{jSONStoreCallScreenThemeItem.getThemeDownloadUrl()};
    }

    protected void d() {
        findViewById(2131363651).getBackground().setAlpha(179);
        RecyclerView recyclerView = (RecyclerView) findViewById(2131362183);
        this.h = recyclerView;
        recyclerView.setLayoutManager(new LinearLayoutManager(this, 0, false));
        this.h.setAdapter(new ButtonSetAdapter(new ButtonSetPickedListener() { // from class: com.callapp.contacts.activity.marketplace._$$Lambda$Vcn7IpstPHGctXJjBp_IOYuSuCs
            @Override // com.callapp.contacts.activity.marketplace.ButtonSetPickedListener
            public final void onButtonSetPicked(ButtonSet buttonSet) {
                CallScreenThemeDownloaderActivity.this.a(buttonSet);
            }
        }));
        this.h.a(new HorizontalSpaceItemDecoration(getResources().getDimensionPixelOffset(2131165552)), -1);
        this.s.setVisibility(0);
        this.s.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.s.animate().alpha(1.0f).setStartDelay(3000L).setDuration(300L).setListener(new DefaultInterfaceImplUtils.AnimatorListenerImpl() { // from class: com.callapp.contacts.activity.marketplace.CallScreenThemeDownloaderActivity.1
            @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.AnimatorListenerImpl, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (CallScreenThemeDownloaderActivity.this.s != null) {
                    CallScreenThemeDownloaderActivity.this.s.animate().alpha(BitmapDescriptorFactory.HUE_RED).setStartDelay(3000L).setDuration(300L).start();
                }
            }
        }).start();
    }

    @Override // com.google.android.exoplayer2.ac.a
    public /* synthetic */ void d(int i) {
        ac.a._CC.$default$d(this, i);
    }

    @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
    public void e() {
        FeedbackManager.get().a("Download button clicked", 80);
    }

    @Override // com.google.android.exoplayer2.ac.a
    public /* synthetic */ void e(int i) {
        ac.a._CC.$default$e(this, i);
    }

    @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
    public void f() {
        FeedbackManager.get().a("Download finished", 80);
        if (!PhoneManager.get().isDefaultPhoneApp()) {
            PopupManager.get().a(this, new DefaultDialerDialogPopup(Activities.getString(2131886455), "", 2131230977));
        }
    }

    @Override // com.google.android.exoplayer2.ac.a
    public /* synthetic */ void f(int i) {
        ac.a._CC.$default$f(this, i);
    }

    @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
    public void g() {
        PersonalStoreItemDataManager.Companion companion = PersonalStoreItemDataManager.f14492a;
        PersonalStoreItemUrlData.PersonalStoreItemType personalStoreItemType = PersonalStoreItemUrlData.PersonalStoreItemType.VIDEO_RINGTONE;
        p.d(personalStoreItemType, "personalStoreItemType");
        PersonalStoreItemUrlData c2 = PersonalStoreItemDataManager.Companion.c("666666", personalStoreItemType);
        if (c2 != null) {
            PersonalStoreItemDataManager.Companion companion2 = PersonalStoreItemDataManager.f14492a;
            PersonalStoreItemDataManager.Companion.a(c2, personalStoreItemType);
        }
        FeedbackManager.get().a(Activities.a(2131887637, Activities.getString(2131886459)), (Integer) null);
        o_();
    }

    public CallIncomingIndicatorView getArrowAnswer() {
        return this.q;
    }

    public CallIncomingIndicatorView getArrowHang() {
        return this.r;
    }

    public View getButtonSetContainer() {
        return this.v;
    }

    public ImageView getCallerIdHeaderImage() {
        return this.m;
    }

    @Override // com.callapp.contacts.activity.marketplace.BaseDownloaderActivity
    DownloaderCardViewHandler.DownloaderCardEvents getDownloaderListenerEvents() {
        return this;
    }

    @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
    public int getItemType() {
        return DownloaderCardViewHandler.StoreItemType.CALL_SCREEN.ordinal();
    }

    @Override // com.callapp.contacts.activity.marketplace.BaseDownloaderActivity, com.callapp.contacts.activity.base.BaseTopBarActivity, com.callapp.contacts.activity.base.BaseActivity
    public int getLayoutResourceId() {
        return 2131558437;
    }

    @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
    public /* synthetic */ String getLeftButtonPrefixText() {
        return DownloaderCardViewHandler.DownloaderCardEvents._CC.$default$getLeftButtonPrefixText(this);
    }

    @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
    public Promotion.ProductType getPromotionType() {
        return Promotion.ProductType.CALL_SCREEN;
    }

    @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
    public BooleanPref getPurchasePref() {
        return Prefs.du;
    }

    @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
    public final boolean h() {
        return Prefs.du.get().booleanValue();
    }

    @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
    public final void i() {
        o_();
    }

    @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
    public boolean isLightTheme() {
        return ((ThemeState) Prefs.di.get()).isLightTheme();
    }

    @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
    public boolean isSkuInUse() {
        return StringUtils.a(Prefs.du.get(), ((JSONStoreCallScreenThemeItem) this.f13040a).getSku());
    }

    @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
    public /* synthetic */ void j() {
        DownloaderCardViewHandler.DownloaderCardEvents._CC.$default$j(this);
    }

    @Override // com.callapp.contacts.activity.marketplace.BaseDownloaderActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        PlayerView playerView = this.f;
        if (playerView != null && playerView.getVisibility() == 0) {
            this.f.animate().alpha(BitmapDescriptorFactory.HUE_RED).setDuration(200L).setListener(new DefaultInterfaceImplUtils.AnimatorListenerImpl() { // from class: com.callapp.contacts.activity.marketplace.CallScreenThemeDownloaderActivity.2
                @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.AnimatorListenerImpl, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    super.onAnimationEnd(animator);
                    CallScreenThemeDownloaderActivity.this.f.setVisibility(8);
                    CallScreenThemeDownloaderActivity.this.m.setVisibility(8);
                }
            }).start();
        }
        super.onBackPressed();
    }

    @Override // com.callapp.contacts.activity.marketplace.BaseDownloaderActivity, com.callapp.contacts.activity.base.BaseTopBarActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        if (!(intent == null || intent.getExtras() == null)) {
            this.f13043d = intent.getStringExtra(Payload.SOURCE);
        }
        AnalyticsManager.get().b(Constants.CALL_SCREEN_THEME_DOWNLOAD_ACTIVITY);
        AnalyticsManager.get().a(Constants.STORE, "Enter to call screens page", (String) null, 0.0d, Payload.SOURCE, this.f13043d);
        this.e = CallAppExoPlayerFactory.a();
        this.t = AnimationUtils.loadAnimation(getApplicationContext(), 2130772005);
        PlayerView playerView = (PlayerView) findViewById(2131363524);
        this.f = playerView;
        playerView.setShutterBackgroundColor(0);
        View findViewById = findViewById(2131363504);
        this.j = (ImageView) findViewById(2131364517);
        this.v = findViewById(2131362187);
        ProgressBar progressBar = (ProgressBar) findViewById(2131363574);
        this.u = progressBar;
        Drawable mutate = progressBar.getIndeterminateDrawable().mutate();
        mutate.setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(2131099784), PorterDuff.Mode.SRC_IN));
        this.u.setIndeterminateDrawable(mutate);
        this.u.setIndeterminate(true);
        CallIncomingIndicatorView callIncomingIndicatorView = (CallIncomingIndicatorView) findViewById(2131362025);
        CallIncomingIndicatorView callIncomingIndicatorView2 = (CallIncomingIndicatorView) findViewById(2131362026);
        CallIncomingIndicatorView callIncomingIndicatorView3 = (CallIncomingIndicatorView) findViewById(2131362023);
        CallIncomingIndicatorView callIncomingIndicatorView4 = (CallIncomingIndicatorView) findViewById(2131362024);
        if (Prefs.fE.get().booleanValue()) {
            callIncomingIndicatorView3.setVisibility(8);
            callIncomingIndicatorView.setVisibility(8);
            this.q = callIncomingIndicatorView4;
            this.r = callIncomingIndicatorView2;
        } else {
            callIncomingIndicatorView4.setVisibility(8);
            callIncomingIndicatorView2.setVisibility(8);
            this.q = callIncomingIndicatorView3;
            this.r = callIncomingIndicatorView;
        }
        this.f.setResizeMode(4);
        this.m = (ImageView) findViewById(2131362950);
        this.e.a(this);
        this.f.setPlayer(this.e);
        View findViewById2 = findViewById(2131362188);
        this.s = findViewById2;
        findViewById2.setVisibility(8);
        this.n = (ImageView) findViewById(2131362152);
        this.p = (ImageView) findViewById(2131362159);
        this.o = (ImageView) findViewById(2131362168);
        findViewById.setVisibility(0);
        this.f.setVisibility(8);
        this.q.setVisibility(8);
        this.r.setVisibility(8);
        this.n.setVisibility(8);
        this.p.setVisibility(8);
        this.o.setVisibility(8);
        d();
    }

    @Override // com.callapp.contacts.activity.marketplace.BaseDownloaderActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        AnalyticsManager.get().a(Constants.CATEGORY_SCREEN, Constants.ACTION_SCREEN_CLOSE, Constants.CALL_SCREEN_THEME_DOWNLOAD_ACTIVITY, 0.0d, Payload.SOURCE, this.f13043d);
        m mVar = this.e;
        if (mVar != null) {
            mVar.b(this);
            this.e.w();
            this.e = null;
        }
        View view = this.s;
        if (view != null) {
            view.clearAnimation();
            this.s = null;
        }
        ImageView imageView = this.o;
        if (imageView != null) {
            imageView.clearAnimation();
        }
        ImageView imageView2 = this.n;
        if (imageView2 != null) {
            imageView2.clearAnimation();
        }
        PlayerView playerView = this.f;
        if (!(playerView == null || playerView.f21975a == null)) {
            this.f.f21975a.removeAllViews();
        }
        RecyclerView recyclerView = this.h;
        if (recyclerView != null) {
            recyclerView.setAdapter(null);
        }
        super.onDestroy();
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        m mVar = this.e;
        if (mVar != null) {
            mVar.e();
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        if (this.f13040a != 0 && !this.e.u()) {
            this.f.setVisibility(0);
            this.m.setVisibility(0);
            m mVar = this.e;
            if (mVar != null) {
                mVar.j();
            }
        }
    }

    @Override // com.google.android.exoplayer2.ac.a
    public /* synthetic */ void p_() {
        ac.a._CC.$default$p_(this);
    }

    @Override // com.google.android.exoplayer2.ac.a
    public /* synthetic */ void q_() {
        ac.a._CC.$default$q_(this);
    }

    protected void setRightIconState(ButtonSet buttonSet) {
        if (this.f13040a != 0 && ((JSONStoreCallScreenThemeItem) this.f13040a).isPurchased()) {
            if (buttonSet == Prefs.dy.get()) {
                PersonalStoreItemDataManager.Companion companion = PersonalStoreItemDataManager.f14492a;
                if (StringUtils.h(PersonalStoreItemDataManager.Companion.c(PersonalStoreItemUrlData.PersonalStoreItemType.VIDEO_RINGTONE))) {
                    getProgressCardView().setRightButtonText(Activities.getString(2131887027));
                }
            }
            getProgressCardView().setRightButtonText(Activities.getString(2131888124));
            getProgressCardView().a(false);
        }
        Prefs.dy.set(buttonSet);
    }
}
