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
import com.bumptech.glide.load.EnumC3658a;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.p112e.AbstractC3604g;
import com.bumptech.glide.p112e.p113a.AbstractC3585j;
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

    /* renamed from: a */
    private KeypadView f22640a;

    /* renamed from: b */
    private KeypadEvents f22641b;

    /* renamed from: c */
    private StoreItemAssetManager f22642c;

    /* renamed from: d */
    private KeypadVisibilityListener f22643d;

    /* renamed from: f */
    private InvalidateDataListener f22645f;

    /* renamed from: h */
    private int f22647h;

    /* renamed from: i */
    private int f22648i;

    /* renamed from: j */
    private boolean f22649j;

    /* renamed from: l */
    private Animator f22651l;

    /* renamed from: m */
    private RelativeLayout f22652m;

    /* renamed from: n */
    private View f22653n;

    /* renamed from: o */
    private ImageView f22654o;

    /* renamed from: p */
    private ImageView f22655p;

    /* renamed from: e */
    private KeypadState f22644e = KeypadState.KEYPAD_CLOSED;

    /* renamed from: g */
    private EventBusManager.CallAppDataType f22646g = null;

    /* renamed from: k */
    private boolean f22650k = false;

    /* renamed from: com.callapp.contacts.activity.contact.list.keypad.KeypadFragment$5 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/keypad/KeypadFragment$5.class */
    public class C65365 implements StoreItemAssetManager.AssetListener<String> {
        C65365() {
            KeypadFragment.this = r4;
        }

        /* renamed from: a */
        public /* synthetic */ void m30491a(String str, String str2) {
            if (KeypadFragment.this.f22655p == null || !StringUtils.m26045b((CharSequence) str)) {
                return;
            }
            KeypadFragment.this.f22640a.findViewById(2131363152).setBackgroundColor(ThemeUtils.getColor(2131099908));
            KeypadFragment.this.f22655p.setVisibility(0);
            GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(KeypadFragment.this.f22655p, str, KeypadFragment.this.getActivity());
            glideRequestBuilder.f28251q = true;
            glideRequestBuilder.f28248n = new AbstractC3604g() { // from class: com.callapp.contacts.activity.contact.list.keypad.KeypadFragment.5.1
                @Override // com.bumptech.glide.p112e.AbstractC3604g
                /* renamed from: a */
                public final boolean mo26384a(GlideException glideException, Object obj, AbstractC3585j abstractC3585j, boolean z) {
                    return false;
                }

                @Override // com.bumptech.glide.p112e.AbstractC3604g
                /* renamed from: a */
                public final boolean mo26383a(Object obj, Object obj2, AbstractC3585j abstractC3585j, EnumC3658a enumC3658a, boolean z) {
                    if (KeypadFragment.this.f22640a != null) {
                        KeypadView keypadView = KeypadFragment.this.f22640a;
                        keypadView.f22673e.setColorFilter(new PorterDuffColorFilter(ThemeUtils.m27386a(CallAppApplication.get(), 2131100228), PorterDuff.Mode.SRC_IN));
                        keypadView.f22674f.setColorFilter(new PorterDuffColorFilter(ThemeUtils.m27386a(CallAppApplication.get(), 2131100228), PorterDuff.Mode.SRC_IN));
                        if (keypadView.f22672d == null) {
                            keypadView.f22672d.setColorFilter(new PorterDuffColorFilter(ThemeUtils.m27386a(CallAppApplication.get(), 2131100228), PorterDuff.Mode.SRC_IN));
                        }
                        if (keypadView.f22669a == null) {
                            return false;
                        }
                        keypadView.f22669a.m30481a();
                        return false;
                    }
                    return false;
                }
            };
            if (StringUtils.m26045b((CharSequence) str2)) {
                glideRequestBuilder.f28252r = str2;
            }
            glideRequestBuilder.m27013d();
        }

        @Override // com.callapp.contacts.manager.asset.managers.StoreItemAssetManager.AssetListener
        public /* synthetic */ void onAssetReady(String str, final String str2) {
            final String str3 = str;
            CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.contact.list.keypad._$$Lambda$KeypadFragment$5$moNC_7xrCkhtIRAQc1IRup6UPtA
                @Override // java.lang.Runnable
                public final void run() {
                    KeypadFragment.C65365.this.m30491a(str3, str2);
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

    /* renamed from: a */
    public static KeypadFragment m30496a(boolean z, int i, int i2, int i3) {
        Bundle bundle = new Bundle();
        KeypadFragment keypadFragment = new KeypadFragment();
        bundle.putInt("clickedViewWidth", i);
        bundle.putInt("clickedViewHeight", i2);
        bundle.putBoolean("ENABLE_ENTER_ANIMATION", z);
        bundle.putInt("TYPE_OF_KEYPAD", i3);
        keypadFragment.setArguments(bundle);
        return keypadFragment;
    }

    /* renamed from: a */
    public void m30502a(ImageView imageView) {
        this.f22654o.setVisibility(8);
        this.f22652m.setVisibility(8);
        CallappAnimationUtils.m27178a((View) imageView, false);
    }

    private KeypadState getKeypadState() {
        return this.f22644e;
    }

    public static int getKeypadWidthOnLandscape() {
        return (int) (Activities.getScreenWidth(2) * 0.55f);
    }

    public void setKeypadState(KeypadState keypadState) {
        if (keypadState == KeypadState.KEYPAD_OPENED) {
            Prefs.f26574gg.m28169b(1);
        }
        this.f22644e = keypadState;
    }

    /* renamed from: a */
    public final void m30503a() {
        KeypadView keypadView = this.f22640a;
        if (keypadView != null) {
            keypadView.m30490a();
        }
    }

    @Override // com.callapp.contacts.activity.interfaces.KeypadVisibilityEvents
    /* renamed from: a */
    public final void mo30207a(boolean z, final Animator.AnimatorListener animatorListener) {
        if (!isAdded() || this.f22650k) {
            return;
        }
        if (!z || Build.VERSION.SDK_INT < 21) {
            KeypadView keypadView = this.f22640a;
            if (keypadView != null) {
                keypadView.setVisibility(8);
            }
            animatorListener.onAnimationEnd(null);
            setKeypadState(KeypadState.KEYPAD_CLOSED);
            KeypadEvents keypadEvents = this.f22641b;
            if (keypadEvents == null) {
                return;
            }
            keypadEvents.onKeypadStateChanged(KeypadState.KEYPAD_CLOSED);
            return;
        }
        int m27699a = (int) Activities.m27699a(CallAppApplication.get().getResources().getDimension(getArguments().getInt("TYPE_OF_KEYPAD") == 1 ? 2131165688 : 2131165653));
        int right = this.f22640a.getRight();
        int i = getArguments().getInt("clickedViewWidth") / 2;
        int bottom = this.f22640a.getBottom();
        int m27699a2 = (int) Activities.m27699a(CallAppApplication.get().getResources().getDimension(2131165653));
        int i2 = this.f22640a.isBottomSectionShown() ? -(getArguments().getInt("clickedViewHeight") / 2) : getArguments().getInt("clickedViewHeight") / 2;
        float hypot = (float) Math.hypot(this.f22640a.getWidth(), this.f22640a.getHeight());
        ValueAnimator m27172b = CallappAnimationUtils.m27172b(this.f22640a, this.f22648i, this.f22647h, 200);
        Animator createCircularReveal = ViewAnimationUtils.createCircularReveal(this.f22640a, (right - m27699a) - i, (bottom - m27699a2) + i2, hypot, BitmapDescriptorFactory.HUE_RED);
        createCircularReveal.setDuration(250L);
        createCircularReveal.addListener(new AnimatorListenerAdapter() { // from class: com.callapp.contacts.activity.contact.list.keypad.KeypadFragment.8
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (KeypadFragment.this.f22640a != null) {
                    KeypadFragment.this.f22640a.setVisibility(8);
                }
                KeypadFragment.this.setKeypadState(KeypadState.KEYPAD_CLOSED);
                if (KeypadFragment.this.f22641b != null) {
                    KeypadFragment.this.f22641b.onKeypadStateChanged(KeypadState.KEYPAD_CLOSED);
                }
                KeypadFragment.this.f22650k = false;
                Animator.AnimatorListener animatorListener2 = animatorListener;
                if (animatorListener2 != null) {
                    animatorListener2.onAnimationEnd(animator);
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                KeypadFragment.this.f22650k = true;
                KeypadFragment.this.setKeypadState(KeypadState.KEYPAD_CLOSING);
                if (KeypadFragment.this.f22641b != null) {
                    KeypadFragment.this.f22641b.onKeypadStateChanged(KeypadState.KEYPAD_CLOSING);
                }
                Animator.AnimatorListener animatorListener2 = animatorListener;
                if (animatorListener2 != null) {
                    animatorListener2.onAnimationStart(animator);
                }
            }
        });
        Animator animator = this.f22651l;
        if (animator != null) {
            animator.cancel();
        }
        createCircularReveal.start();
        m27172b.start();
    }

    /* renamed from: b */
    public final void m30495b() {
        if (isLayoutReady()) {
            this.f22640a.m30486a(true);
        }
    }

    /* renamed from: c */
    public final void m30493c() {
        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.contact.list.keypad.KeypadFragment.6
            @Override // java.lang.Runnable
            public void run() {
                if (KeypadFragment.this.f22640a != null) {
                    KeypadView keypadView = KeypadFragment.this.f22640a;
                    if (keypadView.f22671c == null) {
                        return;
                    }
                    keypadView.m30485b();
                }
            }
        });
    }

    public boolean isKeypadOpenedOrOpenning() {
        return getKeypadState() == KeypadState.KEYPAD_OPENED || getKeypadState() == KeypadState.KEYPAD_OPENING;
    }

    public boolean isLayoutReady() {
        return this.f22649j;
    }

    public boolean isUserEnteredSomeOfTheText() {
        KeypadView keypadView = this.f22640a;
        return keypadView != null && StringUtils.m26045b(keypadView.getNumber()) && this.f22640a.isUserAddedToDialerText();
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        FragmentActivity activity = getActivity();
        if (activity instanceof KeypadEvents) {
            this.f22641b = (KeypadEvents) activity;
        } else {
            this.f22641b = null;
        }
        if (activity instanceof KeypadVisibilityListener) {
            KeypadVisibilityListener keypadVisibilityListener = (KeypadVisibilityListener) activity;
            this.f22643d = keypadVisibilityListener;
            keypadVisibilityListener.registerFilteredEvents(this);
            return;
        }
        throw new IllegalStateException("Parent activity must implement KeypadVisibilityListener");
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f22647h = ThemeUtils.getColor(2131099784);
        this.f22648i = ThemeUtils.getColor(2131099878);
        this.f22645f = new InvalidateDataListener() { // from class: com.callapp.contacts.activity.contact.list.keypad.KeypadFragment.1
            @Override // com.callapp.contacts.activity.interfaces.InvalidateDataListener
            public void invalidateData(EventBusManager.CallAppDataType callAppDataType) {
                if (callAppDataType == EventBusManager.CallAppDataType.SIM_CHANGED) {
                    if (!KeypadFragment.this.isResumed()) {
                        KeypadFragment.this.f22646g = callAppDataType;
                        return;
                    }
                    KeypadFragment.this.f22646g = null;
                    KeypadFragment.this.m30493c();
                }
            }
        };
        EventBusManager.f25138a.m29048a(InvalidateDataListener.f23122b, this.f22645f);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.f22649j = false;
        final KeypadView keypadView = new KeypadView(getActivity());
        this.f22640a = keypadView;
        boolean z = getArguments().getInt("TYPE_OF_KEYPAD") == 1;
        keypadView.f22669a = new TwelveKeyDialer(keypadView.getActivity(), keypadView.f22671c, keypadView.isInEditMode() || Activities.m27672a(Activities.getVoiceSearchIntent()), z);
        keypadView.f22669a.setFilterListener(new TwelveKeyDialer.FilterListener() { // from class: com.callapp.contacts.activity.contact.list.keypad.KeypadView.4
            @Override // com.callapp.contacts.activity.contact.list.keypad.TwelveKeyDialer.FilterListener
            /* renamed from: a */
            public final void mo30454a(String str, int i, int i2, int i3, boolean z2) {
                if (keypadView.f22677i != null) {
                    keypadView.f22677i.onNumberChanged(str, i, i2, i3, z2);
                }
            }
        });
        keypadView.f22669a.setKeypadRequestsEventsListener(new TwelveKeyDialer.KeypadRequestsEvents() { // from class: com.callapp.contacts.activity.contact.list.keypad.KeypadView.5
            @Override // com.callapp.contacts.activity.contact.list.keypad.TwelveKeyDialer.KeypadRequestsEvents
            /* renamed from: a */
            public final void mo30453a() {
                if (keypadView.f22677i != null) {
                    keypadView.f22677i.onVoiceSearchRequested();
                }
            }
        });
        if (z) {
            keypadView.f22675g.setVisibility(8);
        }
        this.f22655p = (ImageView) this.f22640a.findViewById(2131363146);
        this.f22640a.getViewTreeObserver().addOnGlobalLayoutListener(this);
        this.f22640a.setKeypadSearchEventsListener(new KeypadView.KeypadSearchEvents() { // from class: com.callapp.contacts.activity.contact.list.keypad.KeypadFragment.4
            @Override // com.callapp.contacts.activity.contact.list.keypad.KeypadView.KeypadSearchEvents
            public void onCloseKeypadRequestedByUser(boolean z2) {
                if (KeypadFragment.this.f22641b != null) {
                    KeypadFragment.this.f22641b.onCloseKeypadRequestedByUser(z2);
                }
            }

            @Override // com.callapp.contacts.activity.contact.list.keypad.KeypadView.KeypadSearchEvents
            public void onNumberChanged(String str, int i, int i2, int i3, boolean z2) {
                if (KeypadFragment.this.f22641b != null) {
                    KeypadFragment.this.f22641b.onNumberChanged(str, i, i2, i3, z2);
                }
            }

            @Override // com.callapp.contacts.activity.contact.list.keypad.KeypadView.KeypadSearchEvents
            public void onVoiceSearchRequested() {
                if (KeypadFragment.this.f22641b != null) {
                    KeypadFragment.this.f22641b.onVoiceSearchRequested();
                }
            }
        });
        StoreItemAssetManager.Builder builder = new StoreItemAssetManager.Builder();
        builder.f25910d = new C65365();
        StoreItemAssetManager m28417a = builder.m28417a();
        this.f22642c = m28417a;
        m28417a.getAssets();
        if (getArguments().getInt("TYPE_OF_KEYPAD") == 0 && this.f22640a != null && Prefs.f26575gh.get().booleanValue() && Build.VERSION.SDK_INT >= 23) {
            this.f22652m = (RelativeLayout) this.f22640a.findViewById(2131363151);
            this.f22653n = this.f22640a.findViewById(2131363145);
            this.f22654o = (ImageView) this.f22640a.findViewById(2131362378);
            final ImageView imageView = (ImageView) this.f22640a.findViewById(2131362030);
            if (Prefs.f26574gg.get().intValue() == 30 || Prefs.f26574gg.get().intValue() == 70 || Prefs.f26574gg.get().intValue() == 120) {
                this.f22652m.setVisibility(0);
                this.f22654o.setVisibility(0);
                CallappAnimationUtils.m27178a((View) imageView, true);
                this.f22652m.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.list.keypad.KeypadFragment.2
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        Prefs.f26575gh.set(Boolean.FALSE);
                        KeypadFragment.this.m30502a(imageView);
                        Activities.m27656b(KeypadFragment.this.getActivity(), new Intent(KeypadFragment.this.getActivity(), MarketPlaceActivity.class));
                    }
                });
                this.f22654o.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.list.keypad.KeypadFragment.3
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        KeypadFragment.this.m30502a(imageView);
                    }
                });
            } else {
                m30502a(imageView);
            }
        }
        return this.f22640a;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        EventBusManager.f25138a.m29045b(InvalidateDataListener.f23122b, this.f22645f);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        StoreItemAssetManager storeItemAssetManager = this.f22642c;
        if (storeItemAssetManager != null) {
            storeItemAssetManager.m28418b();
        }
        KeypadView keypadView = this.f22640a;
        if (keypadView.f22669a != null) {
            TwelveKeyDialer twelveKeyDialer = keypadView.f22669a;
            if (twelveKeyDialer.f22688c != null) {
                InCallToneManager inCallToneManager = twelveKeyDialer.f22688c;
                synchronized (inCallToneManager.f25700b) {
                    if (inCallToneManager.f25699a != null) {
                        inCallToneManager.f25699a.stopTone();
                        inCallToneManager.f25699a.release();
                        inCallToneManager.f25699a = null;
                    }
                }
                twelveKeyDialer.f22688c = null;
            }
            PhoneStateManager.get().removeListener(twelveKeyDialer);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        this.f22643d.unRegisterFilteredEvents(this);
        super.onDetach();
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        this.f22640a.getViewTreeObserver().removeOnGlobalLayoutListener(this);
        if (!isDetached()) {
            ViewUtils.m27287g(this.f22655p, this.f22653n != null ? this.f22640a.getHeight() - this.f22653n.getHeight() : this.f22640a.getHeight());
            if (!getArguments().getBoolean("ENABLE_ENTER_ANIMATION", false) || Build.VERSION.SDK_INT < 21 || !this.f22640a.isAttachedToWindow()) {
                setKeypadState(KeypadState.KEYPAD_OPENING);
                KeypadEvents keypadEvents = this.f22641b;
                if (keypadEvents != null) {
                    keypadEvents.onKeypadStateChanged(KeypadState.KEYPAD_OPENING);
                }
                KeypadView keypadView = this.f22640a;
                if (keypadView != null) {
                    keypadView.setBackgroundColor(this.f22648i);
                    this.f22640a.setVisibility(0);
                }
                setKeypadState(KeypadState.KEYPAD_OPENED);
                KeypadEvents keypadEvents2 = this.f22641b;
                if (keypadEvents2 == null) {
                    return;
                }
                keypadEvents2.onKeypadStateChanged(KeypadState.KEYPAD_OPENED);
                return;
            }
            int i = getArguments().getInt("TYPE_OF_KEYPAD") == 1 ? 2131165688 : 2131165653;
            int right = this.f22640a.getRight();
            int dimensionPixelOffset = CallAppApplication.get().getResources().getDimensionPixelOffset(i);
            int i2 = getArguments().getInt("clickedViewWidth") / 2;
            int bottom = this.f22640a.getBottom();
            int dimensionPixelOffset2 = CallAppApplication.get().getResources().getDimensionPixelOffset(2131165653);
            int i3 = getArguments().getInt("clickedViewHeight") / 2;
            float hypot = (float) Math.hypot(this.f22640a.getWidth(), this.f22640a.getHeight());
            final ValueAnimator m27172b = CallappAnimationUtils.m27172b(this.f22640a, this.f22647h, this.f22648i, 250);
            Animator createCircularReveal = ViewAnimationUtils.createCircularReveal(this.f22640a, (right - dimensionPixelOffset) - i2, (bottom - dimensionPixelOffset2) - i3, BitmapDescriptorFactory.HUE_RED, hypot);
            this.f22651l = createCircularReveal;
            createCircularReveal.setDuration(250L);
            this.f22651l.addListener(new AnimatorListenerAdapter() { // from class: com.callapp.contacts.activity.contact.list.keypad.KeypadFragment.7
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                    ValueAnimator valueAnimator = m27172b;
                    if (valueAnimator != null) {
                        valueAnimator.cancel();
                    }
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (KeypadFragment.this.f22640a != null) {
                        KeypadFragment.this.f22640a.setVisibility(0);
                    }
                    KeypadFragment.this.setKeypadState(KeypadState.KEYPAD_OPENED);
                    if (KeypadFragment.this.f22641b != null) {
                        KeypadFragment.this.f22641b.onKeypadStateChanged(KeypadState.KEYPAD_OPENED);
                    }
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
                public void onAnimationPause(Animator animator) {
                    ValueAnimator valueAnimator = m27172b;
                    if (valueAnimator != null) {
                        valueAnimator.pause();
                    }
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    KeypadFragment.this.setKeypadState(KeypadState.KEYPAD_OPENING);
                    if (KeypadFragment.this.f22641b != null) {
                        KeypadFragment.this.f22641b.onKeypadStateChanged(KeypadState.KEYPAD_OPENING);
                    }
                }
            });
            this.f22651l.start();
            m27172b.start();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        KeypadView keypadView = this.f22640a;
        TwelveKeyDialer twelveKeyDialer = keypadView.f22669a;
        if (twelveKeyDialer.f22687b != Prefs.f26277bA.get()) {
            twelveKeyDialer.m30464d();
        }
        if (Prefs.f26276b.get().booleanValue()) {
            twelveKeyDialer.f22686a = false;
        } else {
            twelveKeyDialer.f22686a = true;
        }
        twelveKeyDialer.m30472b();
        if (keypadView.f22670b != Prefs.f26294bR.get()) {
            keypadView.m30485b();
        }
        FragmentActivity activity = getActivity();
        String currentFilter = activity instanceof SearchContactsEvents ? ((SearchContactsEvents) activity).getCurrentFilter() : "";
        if (PhoneNumberUtils.m26084a(currentFilter)) {
            this.f22640a.setNumber(currentFilter);
        } else {
            this.f22640a.m30486a(false);
        }
        if (this.f22646g != null) {
            m30493c();
            this.f22646g = null;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        if (Activities.isOrientationLandscape()) {
            int keypadWidthOnLandscape = getKeypadWidthOnLandscape();
            if (this.f22640a.getLayoutParams() != null) {
                this.f22640a.getLayoutParams().width = keypadWidthOnLandscape;
                return;
            }
            this.f22640a.setLayoutParams(new ViewGroup.LayoutParams(keypadWidthOnLandscape, -1));
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.f22649j = true;
    }
}
