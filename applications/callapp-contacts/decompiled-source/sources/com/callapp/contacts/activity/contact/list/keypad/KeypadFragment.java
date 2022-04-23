package com.callapp.contacts.activity.contact.list.keypad;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.Intent;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.os.Build;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewAnimationUtils;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.bumptech.glide.e.a.j;
import com.bumptech.glide.e.g;
import com.bumptech.glide.load.a;
import com.bumptech.glide.load.engine.GlideException;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.contact.list.keypad.KeypadFragment;
import com.callapp.contacts.activity.contact.list.keypad.KeypadView;
import com.callapp.contacts.activity.contact.list.keypad.TwelveKeyDialer;
import com.callapp.contacts.activity.interfaces.InvalidateDataListener;
import com.callapp.contacts.activity.interfaces.KeypadVisibilityEvents;
import com.callapp.contacts.activity.interfaces.KeypadVisibilityListener;
import com.callapp.contacts.activity.interfaces.SearchContactsEvents;
import com.callapp.contacts.activity.marketplace.MarketPlaceActivity;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.manager.InCallToneManager;
import com.callapp.contacts.manager.asset.managers.StoreItemAssetManager;
import com.callapp.contacts.manager.phone.PhoneStateManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.util.animation.CallappAnimationUtils;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.framework.phone.PhoneNumberUtils;
import com.callapp.framework.util.StringUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/keypad/KeypadFragment.class */
public class KeypadFragment extends Fragment implements ViewTreeObserver.OnGlobalLayoutListener, KeypadVisibilityEvents {

    /* renamed from: a  reason: collision with root package name */
    private KeypadView f12659a;

    /* renamed from: b  reason: collision with root package name */
    private KeypadEvents f12660b;

    /* renamed from: c  reason: collision with root package name */
    private StoreItemAssetManager f12661c;

    /* renamed from: d  reason: collision with root package name */
    private KeypadVisibilityListener f12662d;
    private InvalidateDataListener f;
    private int h;
    private int i;
    private boolean j;
    private Animator l;
    private RelativeLayout m;
    private View n;
    private ImageView o;
    private ImageView p;
    private KeypadState e = KeypadState.KEYPAD_CLOSED;
    private EventBusManager.CallAppDataType g = null;
    private boolean k = false;

    /* renamed from: com.callapp.contacts.activity.contact.list.keypad.KeypadFragment$5  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/keypad/KeypadFragment$5.class */
    class AnonymousClass5 implements StoreItemAssetManager.AssetListener<String> {
        AnonymousClass5() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(String str, String str2) {
            if (KeypadFragment.this.p != null && StringUtils.b((CharSequence) str)) {
                KeypadFragment.this.f12659a.findViewById(2131363152).setBackgroundColor(ThemeUtils.getColor(2131099908));
                KeypadFragment.this.p.setVisibility(0);
                GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(KeypadFragment.this.p, str, KeypadFragment.this.getActivity());
                glideRequestBuilder.q = true;
                glideRequestBuilder.n = new g() { // from class: com.callapp.contacts.activity.contact.list.keypad.KeypadFragment.5.1
                    @Override // com.bumptech.glide.e.g
                    public final boolean a(GlideException glideException, Object obj, j jVar, boolean z) {
                        return false;
                    }

                    @Override // com.bumptech.glide.e.g
                    public final boolean a(Object obj, Object obj2, j jVar, a aVar, boolean z) {
                        if (KeypadFragment.this.f12659a == null) {
                            return false;
                        }
                        KeypadView keypadView = KeypadFragment.this.f12659a;
                        keypadView.e.setColorFilter(new PorterDuffColorFilter(ThemeUtils.a(CallAppApplication.get(), 2131100228), PorterDuff.Mode.SRC_IN));
                        keypadView.f.setColorFilter(new PorterDuffColorFilter(ThemeUtils.a(CallAppApplication.get(), 2131100228), PorterDuff.Mode.SRC_IN));
                        if (keypadView.f12679d == null) {
                            keypadView.f12679d.setColorFilter(new PorterDuffColorFilter(ThemeUtils.a(CallAppApplication.get(), 2131100228), PorterDuff.Mode.SRC_IN));
                        }
                        if (keypadView.f12676a == null) {
                            return false;
                        }
                        keypadView.f12676a.a();
                        return false;
                    }
                };
                if (StringUtils.b((CharSequence) str2)) {
                    glideRequestBuilder.r = str2;
                }
                glideRequestBuilder.d();
            }
        }

        @Override // com.callapp.contacts.manager.asset.managers.StoreItemAssetManager.AssetListener
        public /* synthetic */ void onAssetReady(String str, final String str2) {
            final String str3 = str;
            CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.contact.list.keypad._$$Lambda$KeypadFragment$5$moNC_7xrCkhtIRAQc1IRup6UPtA
                @Override // java.lang.Runnable
                public final void run() {
                    KeypadFragment.AnonymousClass5.this.a(str3, str2);
                }
            });
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadEvents.class */
    public interface KeypadEvents extends KeypadView.KeypadSearchEvents {
        void onKeypadStateChanged(KeypadState keypadState);
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState.class */
    public enum KeypadState {
        KEYPAD_OPENING,
        KEYPAD_OPENED,
        KEYPAD_CLOSING,
        KEYPAD_CLOSED
    }

    public static KeypadFragment a(boolean z, int i, int i2, int i3) {
        Bundle bundle = new Bundle();
        KeypadFragment keypadFragment = new KeypadFragment();
        bundle.putInt("clickedViewWidth", i);
        bundle.putInt("clickedViewHeight", i2);
        bundle.putBoolean("ENABLE_ENTER_ANIMATION", z);
        bundle.putInt("TYPE_OF_KEYPAD", i3);
        keypadFragment.setArguments(bundle);
        return keypadFragment;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(ImageView imageView) {
        this.o.setVisibility(8);
        this.m.setVisibility(8);
        CallappAnimationUtils.a((View) imageView, false);
    }

    private KeypadState getKeypadState() {
        return this.e;
    }

    public static int getKeypadWidthOnLandscape() {
        return (int) (Activities.getScreenWidth(2) * 0.55f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setKeypadState(KeypadState keypadState) {
        if (keypadState == KeypadState.KEYPAD_OPENED) {
            Prefs.gg.b(1);
        }
        this.e = keypadState;
    }

    public final void a() {
        KeypadView keypadView = this.f12659a;
        if (keypadView != null) {
            keypadView.a();
        }
    }

    @Override // com.callapp.contacts.activity.interfaces.KeypadVisibilityEvents
    public final void a(boolean z, final Animator.AnimatorListener animatorListener) {
        if (isAdded() && !this.k) {
            if (!z || Build.VERSION.SDK_INT < 21) {
                KeypadView keypadView = this.f12659a;
                if (keypadView != null) {
                    keypadView.setVisibility(8);
                }
                animatorListener.onAnimationEnd(null);
                setKeypadState(KeypadState.KEYPAD_CLOSED);
                KeypadEvents keypadEvents = this.f12660b;
                if (keypadEvents != null) {
                    keypadEvents.onKeypadStateChanged(KeypadState.KEYPAD_CLOSED);
                    return;
                }
                return;
            }
            int a2 = (int) Activities.a(CallAppApplication.get().getResources().getDimension(getArguments().getInt("TYPE_OF_KEYPAD") == 1 ? 2131165688 : 2131165653));
            int right = this.f12659a.getRight();
            int i = getArguments().getInt("clickedViewWidth") / 2;
            int bottom = this.f12659a.getBottom();
            int a3 = (int) Activities.a(CallAppApplication.get().getResources().getDimension(2131165653));
            int i2 = this.f12659a.isBottomSectionShown() ? -(getArguments().getInt("clickedViewHeight") / 2) : getArguments().getInt("clickedViewHeight") / 2;
            float hypot = (float) Math.hypot(this.f12659a.getWidth(), this.f12659a.getHeight());
            ValueAnimator b2 = CallappAnimationUtils.b(this.f12659a, this.i, this.h, 200);
            Animator createCircularReveal = ViewAnimationUtils.createCircularReveal(this.f12659a, (right - a2) - i, (bottom - a3) + i2, hypot, BitmapDescriptorFactory.HUE_RED);
            createCircularReveal.setDuration(250L);
            createCircularReveal.addListener(new AnimatorListenerAdapter() { // from class: com.callapp.contacts.activity.contact.list.keypad.KeypadFragment.8
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (KeypadFragment.this.f12659a != null) {
                        KeypadFragment.this.f12659a.setVisibility(8);
                    }
                    KeypadFragment.this.setKeypadState(KeypadState.KEYPAD_CLOSED);
                    if (KeypadFragment.this.f12660b != null) {
                        KeypadFragment.this.f12660b.onKeypadStateChanged(KeypadState.KEYPAD_CLOSED);
                    }
                    KeypadFragment.this.k = false;
                    Animator.AnimatorListener animatorListener2 = animatorListener;
                    if (animatorListener2 != null) {
                        animatorListener2.onAnimationEnd(animator);
                    }
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    KeypadFragment.this.k = true;
                    KeypadFragment.this.setKeypadState(KeypadState.KEYPAD_CLOSING);
                    if (KeypadFragment.this.f12660b != null) {
                        KeypadFragment.this.f12660b.onKeypadStateChanged(KeypadState.KEYPAD_CLOSING);
                    }
                    Animator.AnimatorListener animatorListener2 = animatorListener;
                    if (animatorListener2 != null) {
                        animatorListener2.onAnimationStart(animator);
                    }
                }
            });
            Animator animator = this.l;
            if (animator != null) {
                animator.cancel();
            }
            createCircularReveal.start();
            b2.start();
        }
    }

    public final void b() {
        if (isLayoutReady()) {
            this.f12659a.a(true);
        }
    }

    public final void c() {
        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.contact.list.keypad.KeypadFragment.6
            @Override // java.lang.Runnable
            public void run() {
                if (KeypadFragment.this.f12659a != null) {
                    KeypadView keypadView = KeypadFragment.this.f12659a;
                    if (keypadView.f12678c != null) {
                        keypadView.b();
                    }
                }
            }
        });
    }

    public boolean isKeypadOpenedOrOpenning() {
        return getKeypadState() == KeypadState.KEYPAD_OPENED || getKeypadState() == KeypadState.KEYPAD_OPENING;
    }

    public boolean isLayoutReady() {
        return this.j;
    }

    public boolean isUserEnteredSomeOfTheText() {
        KeypadView keypadView = this.f12659a;
        return keypadView != null && StringUtils.b(keypadView.getNumber()) && this.f12659a.isUserAddedToDialerText();
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        FragmentActivity activity = getActivity();
        if (activity instanceof KeypadEvents) {
            this.f12660b = (KeypadEvents) activity;
        } else {
            this.f12660b = null;
        }
        if (activity instanceof KeypadVisibilityListener) {
            KeypadVisibilityListener keypadVisibilityListener = (KeypadVisibilityListener) activity;
            this.f12662d = keypadVisibilityListener;
            keypadVisibilityListener.registerFilteredEvents(this);
            return;
        }
        throw new IllegalStateException("Parent activity must implement KeypadVisibilityListener");
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.h = ThemeUtils.getColor(2131099784);
        this.i = ThemeUtils.getColor(2131099878);
        this.f = new InvalidateDataListener() { // from class: com.callapp.contacts.activity.contact.list.keypad.KeypadFragment.1
            @Override // com.callapp.contacts.activity.interfaces.InvalidateDataListener
            public void invalidateData(EventBusManager.CallAppDataType callAppDataType) {
                if (callAppDataType != EventBusManager.CallAppDataType.SIM_CHANGED) {
                    return;
                }
                if (KeypadFragment.this.isResumed()) {
                    KeypadFragment.this.g = null;
                    KeypadFragment.this.c();
                    return;
                }
                KeypadFragment.this.g = callAppDataType;
            }
        };
        EventBusManager.f14368a.a(InvalidateDataListener.f12949b, this.f);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.j = false;
        final KeypadView keypadView = new KeypadView(getActivity());
        this.f12659a = keypadView;
        boolean z = getArguments().getInt("TYPE_OF_KEYPAD") == 1;
        keypadView.f12676a = new TwelveKeyDialer(keypadView.getActivity(), keypadView.f12678c, keypadView.isInEditMode() || Activities.a(Activities.getVoiceSearchIntent()), z);
        keypadView.f12676a.setFilterListener(new TwelveKeyDialer.FilterListener() { // from class: com.callapp.contacts.activity.contact.list.keypad.KeypadView.4
            @Override // com.callapp.contacts.activity.contact.list.keypad.TwelveKeyDialer.FilterListener
            public final void a(String str, int i, int i2, int i3, boolean z2) {
                if (keypadView.i != null) {
                    keypadView.i.onNumberChanged(str, i, i2, i3, z2);
                }
            }
        });
        keypadView.f12676a.setKeypadRequestsEventsListener(new TwelveKeyDialer.KeypadRequestsEvents() { // from class: com.callapp.contacts.activity.contact.list.keypad.KeypadView.5
            @Override // com.callapp.contacts.activity.contact.list.keypad.TwelveKeyDialer.KeypadRequestsEvents
            public final void a() {
                if (keypadView.i != null) {
                    keypadView.i.onVoiceSearchRequested();
                }
            }
        });
        if (z) {
            keypadView.g.setVisibility(8);
        }
        this.p = (ImageView) this.f12659a.findViewById(2131363146);
        this.f12659a.getViewTreeObserver().addOnGlobalLayoutListener(this);
        this.f12659a.setKeypadSearchEventsListener(new KeypadView.KeypadSearchEvents() { // from class: com.callapp.contacts.activity.contact.list.keypad.KeypadFragment.4
            @Override // com.callapp.contacts.activity.contact.list.keypad.KeypadView.KeypadSearchEvents
            public void onCloseKeypadRequestedByUser(boolean z2) {
                if (KeypadFragment.this.f12660b != null) {
                    KeypadFragment.this.f12660b.onCloseKeypadRequestedByUser(z2);
                }
            }

            @Override // com.callapp.contacts.activity.contact.list.keypad.KeypadView.KeypadSearchEvents
            public void onNumberChanged(String str, int i, int i2, int i3, boolean z2) {
                if (KeypadFragment.this.f12660b != null) {
                    KeypadFragment.this.f12660b.onNumberChanged(str, i, i2, i3, z2);
                }
            }

            @Override // com.callapp.contacts.activity.contact.list.keypad.KeypadView.KeypadSearchEvents
            public void onVoiceSearchRequested() {
                if (KeypadFragment.this.f12660b != null) {
                    KeypadFragment.this.f12660b.onVoiceSearchRequested();
                }
            }
        });
        StoreItemAssetManager.Builder builder = new StoreItemAssetManager.Builder();
        builder.f14986d = new AnonymousClass5();
        StoreItemAssetManager a2 = builder.a();
        this.f12661c = a2;
        a2.getAssets();
        if (getArguments().getInt("TYPE_OF_KEYPAD") == 0 && this.f12659a != null && Prefs.gh.get().booleanValue() && Build.VERSION.SDK_INT >= 23) {
            this.m = (RelativeLayout) this.f12659a.findViewById(2131363151);
            this.n = this.f12659a.findViewById(2131363145);
            this.o = (ImageView) this.f12659a.findViewById(2131362378);
            final ImageView imageView = (ImageView) this.f12659a.findViewById(2131362030);
            if (Prefs.gg.get().intValue() == 30 || Prefs.gg.get().intValue() == 70 || Prefs.gg.get().intValue() == 120) {
                this.m.setVisibility(0);
                this.o.setVisibility(0);
                CallappAnimationUtils.a((View) imageView, true);
                this.m.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.list.keypad.KeypadFragment.2
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        Prefs.gh.set(Boolean.FALSE);
                        KeypadFragment.this.a(imageView);
                        Activities.b(KeypadFragment.this.getActivity(), new Intent(KeypadFragment.this.getActivity(), MarketPlaceActivity.class));
                    }
                });
                this.o.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.list.keypad.KeypadFragment.3
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        KeypadFragment.this.a(imageView);
                    }
                });
            } else {
                a(imageView);
            }
        }
        return this.f12659a;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        EventBusManager.f14368a.b(InvalidateDataListener.f12949b, this.f);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        StoreItemAssetManager storeItemAssetManager = this.f12661c;
        if (storeItemAssetManager != null) {
            storeItemAssetManager.b();
        }
        KeypadView keypadView = this.f12659a;
        if (keypadView.f12676a != null) {
            TwelveKeyDialer twelveKeyDialer = keypadView.f12676a;
            if (twelveKeyDialer.f12689c != null) {
                InCallToneManager inCallToneManager = twelveKeyDialer.f12689c;
                synchronized (inCallToneManager.f14872b) {
                    if (inCallToneManager.f14871a != null) {
                        inCallToneManager.f14871a.stopTone();
                        inCallToneManager.f14871a.release();
                        inCallToneManager.f14871a = null;
                    }
                }
                twelveKeyDialer.f12689c = null;
            }
            PhoneStateManager.get().removeListener(twelveKeyDialer);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        this.f12662d.unRegisterFilteredEvents(this);
        super.onDetach();
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        this.f12659a.getViewTreeObserver().removeOnGlobalLayoutListener(this);
        if (!isDetached()) {
            ViewUtils.g(this.p, this.n != null ? this.f12659a.getHeight() - this.n.getHeight() : this.f12659a.getHeight());
            if (!getArguments().getBoolean("ENABLE_ENTER_ANIMATION", false) || Build.VERSION.SDK_INT < 21 || !this.f12659a.isAttachedToWindow()) {
                setKeypadState(KeypadState.KEYPAD_OPENING);
                KeypadEvents keypadEvents = this.f12660b;
                if (keypadEvents != null) {
                    keypadEvents.onKeypadStateChanged(KeypadState.KEYPAD_OPENING);
                }
                KeypadView keypadView = this.f12659a;
                if (keypadView != null) {
                    keypadView.setBackgroundColor(this.i);
                    this.f12659a.setVisibility(0);
                }
                setKeypadState(KeypadState.KEYPAD_OPENED);
                KeypadEvents keypadEvents2 = this.f12660b;
                if (keypadEvents2 != null) {
                    keypadEvents2.onKeypadStateChanged(KeypadState.KEYPAD_OPENED);
                    return;
                }
                return;
            }
            int i = getArguments().getInt("TYPE_OF_KEYPAD") == 1 ? 2131165688 : 2131165653;
            int right = this.f12659a.getRight();
            int dimensionPixelOffset = CallAppApplication.get().getResources().getDimensionPixelOffset(i);
            int i2 = getArguments().getInt("clickedViewWidth") / 2;
            int bottom = this.f12659a.getBottom();
            int dimensionPixelOffset2 = CallAppApplication.get().getResources().getDimensionPixelOffset(2131165653);
            int i3 = getArguments().getInt("clickedViewHeight") / 2;
            float hypot = (float) Math.hypot(this.f12659a.getWidth(), this.f12659a.getHeight());
            final ValueAnimator b2 = CallappAnimationUtils.b(this.f12659a, this.h, this.i, 250);
            Animator createCircularReveal = ViewAnimationUtils.createCircularReveal(this.f12659a, (right - dimensionPixelOffset) - i2, (bottom - dimensionPixelOffset2) - i3, BitmapDescriptorFactory.HUE_RED, hypot);
            this.l = createCircularReveal;
            createCircularReveal.setDuration(250L);
            this.l.addListener(new AnimatorListenerAdapter() { // from class: com.callapp.contacts.activity.contact.list.keypad.KeypadFragment.7
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                    ValueAnimator valueAnimator = b2;
                    if (valueAnimator != null) {
                        valueAnimator.cancel();
                    }
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (KeypadFragment.this.f12659a != null) {
                        KeypadFragment.this.f12659a.setVisibility(0);
                    }
                    KeypadFragment.this.setKeypadState(KeypadState.KEYPAD_OPENED);
                    if (KeypadFragment.this.f12660b != null) {
                        KeypadFragment.this.f12660b.onKeypadStateChanged(KeypadState.KEYPAD_OPENED);
                    }
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
                public void onAnimationPause(Animator animator) {
                    ValueAnimator valueAnimator = b2;
                    if (valueAnimator != null) {
                        valueAnimator.pause();
                    }
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    KeypadFragment.this.setKeypadState(KeypadState.KEYPAD_OPENING);
                    if (KeypadFragment.this.f12660b != null) {
                        KeypadFragment.this.f12660b.onKeypadStateChanged(KeypadState.KEYPAD_OPENING);
                    }
                }
            });
            this.l.start();
            b2.start();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        KeypadView keypadView = this.f12659a;
        TwelveKeyDialer twelveKeyDialer = keypadView.f12676a;
        if (twelveKeyDialer.f12688b != Prefs.bA.get()) {
            twelveKeyDialer.d();
        }
        if (Prefs.f15234b.get().booleanValue()) {
            twelveKeyDialer.f12687a = false;
        } else {
            twelveKeyDialer.f12687a = true;
        }
        twelveKeyDialer.b();
        if (keypadView.f12677b != Prefs.bR.get()) {
            keypadView.b();
        }
        FragmentActivity activity = getActivity();
        String currentFilter = activity instanceof SearchContactsEvents ? ((SearchContactsEvents) activity).getCurrentFilter() : "";
        if (PhoneNumberUtils.a(currentFilter)) {
            this.f12659a.setNumber(currentFilter);
        } else {
            this.f12659a.a(false);
        }
        if (this.g != null) {
            c();
            this.g = null;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        if (Activities.isOrientationLandscape()) {
            int keypadWidthOnLandscape = getKeypadWidthOnLandscape();
            if (this.f12659a.getLayoutParams() == null) {
                this.f12659a.setLayoutParams(new ViewGroup.LayoutParams(keypadWidthOnLandscape, -1));
                return;
            }
            this.f12659a.getLayoutParams().width = keypadWidthOnLandscape;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.j = true;
    }
}
