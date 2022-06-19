package com.callapp.contacts.widget.floatingwidget.p240ui.callapp;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.Intent;
import android.graphics.ColorFilter;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import android.widget.ImageView;
import androidx.constraintlayout.widget.C0680c;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.contact.details.ConferenceActivity;
import com.callapp.contacts.inCallService.AudioModeProvider;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.phone.PhoneStateManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.call.CallData;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ImageUtils;
import com.callapp.contacts.util.animation.AnimationListenerAdapter;
import com.callapp.contacts.widget.AudioRouteSelectorActivity;
import com.callapp.contacts.widget.floatingwidget.FloatingMenuAction;
import com.callapp.contacts.widget.floatingwidget.FloatingMenuActionViewController;
import com.callapp.contacts.widget.floatingwidget.p240ui.ChatHead;
import com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadCloseButton;
import com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadContainer;
import com.callapp.contacts.widget.floatingwidget.p240ui.container.DefaultChatHeadManager;
import com.callapp.framework.util.CollectionUtils;
import com.facebook.rebound.C10413d;
import com.facebook.rebound.C10414e;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.skyfishjy.library.RippleBackground;
import java.util.Arrays;
/* renamed from: com.callapp.contacts.widget.floatingwidget.ui.callapp.CallAppChatHeadManager */
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager.class */
public class CallAppChatHeadManager extends DefaultChatHeadManager<String> {

    /* renamed from: a */
    private FloatingMenuActionViewController f29147a;

    /* renamed from: d */
    private RippleBackground f29149d;

    /* renamed from: e */
    private ValueAnimator f29150e;

    /* renamed from: f */
    private Runnable f29151f = new Runnable() { // from class: com.callapp.contacts.widget.floatingwidget.ui.callapp._$$Lambda$CallAppChatHeadManager$L1Zubs6VPvrsAMbGKNUuV3zirxU
        @Override // java.lang.Runnable
        public final void run() {
            CallAppChatHeadManager.this.m26479n();
        }
    };

    /* renamed from: b */
    private Point f29148b = new Point();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.widget.floatingwidget.ui.callapp.CallAppChatHeadManager$HorizontalMovementSpringListener */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager$HorizontalMovementSpringListener.class */
    public static class HorizontalMovementSpringListener extends C10413d {

        /* renamed from: a */
        private int f29163a;

        /* renamed from: b */
        private int f29164b = 0;

        /* renamed from: c */
        private ConstraintLayout f29165c;

        /* renamed from: d */
        private C0680c f29166d;

        /* renamed from: e */
        private C0680c f29167e;

        /* renamed from: f */
        private ImageView f29168f;

        public HorizontalMovementSpringListener(final ConstraintLayout constraintLayout, int i) {
            this.f29165c = constraintLayout;
            constraintLayout.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.callapp.contacts.widget.floatingwidget.ui.callapp.CallAppChatHeadManager.HorizontalMovementSpringListener.1
                @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                public void onGlobalLayout() {
                    constraintLayout.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                    HorizontalMovementSpringListener.this.f29163a -= constraintLayout.getWidth();
                }
            });
            this.f29163a = i;
            C0680c c0680c = new C0680c();
            this.f29166d = c0680c;
            c0680c.m44707a(constraintLayout.getContext(), 2131558819);
            C0680c c0680c2 = new C0680c();
            this.f29167e = c0680c2;
            c0680c2.m44707a(constraintLayout.getContext(), 2131558820);
            this.f29168f = (ImageView) constraintLayout.findViewById(2131362440);
        }

        @Override // com.facebook.rebound.C10413d, com.facebook.rebound.AbstractC10420i
        /* renamed from: a */
        public final void mo22809a(C10414e c10414e) {
            super.mo22809a(c10414e);
            int i = (int) c10414e.f34074d.f34085a;
            int i2 = this.f29163a;
            if (i >= i2 / 2 && this.f29164b <= i2 / 2) {
                this.f29167e.m44693b(this.f29165c);
            } else if (i <= i2 / 2 && this.f29164b >= i2 / 2) {
                this.f29166d.m44693b(this.f29165c);
            }
            this.f29164b = i;
        }
    }

    public CallAppChatHeadManager(Context context, ChatHeadContainer chatHeadContainer) {
        super(context, chatHeadContainer);
        DisplayMetrics displayMetrics = CallAppApplication.get().getResources().getDisplayMetrics();
        this.f29148b.x = displayMetrics.widthPixels;
        this.f29148b.y = displayMetrics.heightPixels;
        m26489b(context);
        getLeftCloseButton().setChatHeadCloseButtonData(new ChatHeadCloseButton.ChatHeadCloseButtonStruct(Activities.getString(2131886777), 2131231602, new Runnable() { // from class: com.callapp.contacts.widget.floatingwidget.ui.callapp._$$Lambda$CallAppChatHeadManager$6ivEz6W50vesrjWy0wS5zmTl4m4
            @Override // java.lang.Runnable
            public final void run() {
                CallAppChatHeadManager.this.m26480m();
            }
        }));
        getRightCloseButton().setChatHeadCloseButtonData(new ChatHeadCloseButton.ChatHeadCloseButtonStruct(Activities.getString(2131886821), 2131231647, new Runnable() { // from class: com.callapp.contacts.widget.floatingwidget.ui.callapp._$$Lambda$CallAppChatHeadManager$Rxgs3eJtdktEZ_VUFJlIiEJOXP0
            @Override // java.lang.Runnable
            public final void run() {
                CallAppChatHeadManager.this.m26481l();
            }
        }));
        ImageUtils.m27529a(getCloseButtonShadow(), 2131230934, (ColorFilter) null);
    }

    /* renamed from: a */
    public /* synthetic */ void m26492a(View view) {
        this.f29147a.m26531d();
        getListener().mo26438a(0);
    }

    /* renamed from: b */
    private void m26490b() {
        this.f29147a.m26531d();
        getListener().mo26436b();
        if (PhoneStateManager.get().shouldConferenceScreenAppear()) {
            ConferenceActivity.startConferenceActivity(CallAppApplication.get(), false);
            return;
        }
        CallData incomingOrConnectingOrConnectedCall = PhoneManager.get().getIncomingOrConnectingOrConnectedCall();
        if (incomingOrConnectingOrConnectedCall == null) {
            return;
        }
        PhoneStateManager.get().showCallAppIfNeeded(incomingOrConnectingOrConnectedCall, true);
    }

    /* renamed from: b */
    private void m26489b(Context context) {
        this.f29147a = new FloatingMenuActionViewController(LayoutInflater.from(context), (WindowManager) context.getSystemService("window"));
        boolean isSwappable = PhoneManager.get().isSwappable();
        for (FloatingMenuAction floatingMenuAction : Arrays.asList(new FloatingMenuAction(2131558817, 2131231460, 2131099918, Activities.getString(2131886288), new View.OnClickListener() { // from class: com.callapp.contacts.widget.floatingwidget.ui.callapp._$$Lambda$CallAppChatHeadManager$NwKAJbsIJuVkAp1xLzI2OmMJ9iU
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CallAppChatHeadManager.this.m26483f(view);
            }
        }, true, 2131362845), new FloatingMenuAction(2131558817, 2131231566, 2131099918, Activities.getString(2131887758), _$$Lambda$CallAppChatHeadManager$UWUgDSq31UybtnqJ3KzthN9lgIs.INSTANCE, isSwappable, 2131362849), new FloatingMenuAction(2131558817, 2131231565, 2131099918, Activities.getString(2131887188), _$$Lambda$CallAppChatHeadManager$2LS2FAi363lGpeWiKZvRRS_uIFM.INSTANCE, isSwappable, 2131362847), new FloatingMenuAction(2131558817, 2131231791, 2131099918, 2131099784, PhoneManager.isMuteOn(), Activities.getString(2131887260), new View.OnClickListener() { // from class: com.callapp.contacts.widget.floatingwidget.ui.callapp._$$Lambda$CallAppChatHeadManager$Sr0QqGwKehvPKo31OPZBt0rGsKw
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CallAppChatHeadManager.this.m26486c(view);
            }
        }, true, 2131362848), new FloatingMenuAction(2131558817, 2131232184, 2131099918, 2131099784, !PhoneManager.get().isSpeakerDisabled(), Activities.getString(2131887743), new View.OnClickListener() { // from class: com.callapp.contacts.widget.floatingwidget.ui.callapp._$$Lambda$CallAppChatHeadManager$24BGHAOEYWeTNeMSkeoBCg3VIsg
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CallAppChatHeadManager.this.m26488b(view);
            }
        }, true, 2131362844), new FloatingMenuAction(2131558818, 2131231647, 2131100228, Activities.getString(2131886821), new View.OnClickListener() { // from class: com.callapp.contacts.widget.floatingwidget.ui.callapp._$$Lambda$CallAppChatHeadManager$7WqL85grE0rXsodvrBaRbn0KnrE
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CallAppChatHeadManager.this.m26492a(view);
            }
        }, true, 2131362846))) {
            this.f29147a.m26537a(floatingMenuAction);
        }
        AudioModeProvider.get().m28969a(this.f29147a);
    }

    /* renamed from: b */
    public /* synthetic */ void m26488b(View view) {
        if (!AudioModeProvider.get().isMoreThenOneBluetoothDevices()) {
            PhoneManager.get().m28236b(getContext());
            return;
        }
        Intent intent = new Intent(CallAppApplication.get(), AudioRouteSelectorActivity.class);
        intent.setFlags(402653184);
        Activities.m27656b(CallAppApplication.get(), intent);
    }

    /* renamed from: c */
    public /* synthetic */ void m26486c(View view) {
        boolean mute = AudioModeProvider.get().getMute();
        PhoneManager.get();
        PhoneManager.m28238a(!mute);
    }

    /* renamed from: d */
    public static /* synthetic */ void m26485d(View view) {
        PhoneManager.m28241a(PhoneManager.get().getActiveOrBackgroundCall(), PhoneStateManager.CallActionSource.WIDGET);
    }

    /* renamed from: e */
    public static /* synthetic */ void m26484e(View view) {
        PhoneManager.get();
        PhoneManager.m28233b(PhoneManager.get().getActiveOrBackgroundCall(), PhoneStateManager.CallActionSource.WIDGET);
    }

    /* renamed from: f */
    public /* synthetic */ void m26483f(View view) {
        m26490b();
    }

    /* renamed from: k */
    private void m26482k() {
        if (this.f29147a.isViewShown()) {
            this.f29147a.m26530e();
        }
    }

    /* renamed from: l */
    public /* synthetic */ void m26481l() {
        getListener().mo26438a(0);
    }

    /* renamed from: m */
    public /* synthetic */ void m26480m() {
        getListener().mo26438a(1);
    }

    /* renamed from: n */
    public /* synthetic */ void m26479n() {
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.85f, (float) BitmapDescriptorFactory.HUE_RED);
        alphaAnimation.setDuration(500L);
        alphaAnimation.setFillAfter(true);
        alphaAnimation.setAnimationListener(new AnimationListenerAdapter() { // from class: com.callapp.contacts.widget.floatingwidget.ui.callapp.CallAppChatHeadManager.1
            @Override // com.callapp.contacts.util.animation.AnimationListenerAdapter, android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                super.onAnimationEnd(animation);
                CallAppChatHeadManager.this.f29149d.m5863b();
                Prefs.f26492fD.set(Boolean.TRUE);
            }
        });
        this.f29149d.startAnimation(alphaAnimation);
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.container.DefaultChatHeadManager
    /* renamed from: a */
    public final /* synthetic */ ChatHead<String> mo26417a(String str, boolean z, boolean z2) {
        String str2 = str;
        ChatHead<String> mo26417a = super.mo26417a((CallAppChatHeadManager) str2, z, z2);
        final ConstraintLayout constraintLayout = (ConstraintLayout) getViewAdapter().getChatHeadView(str2);
        mo26417a.f29050e.m22842a(new HorizontalMovementSpringListener(constraintLayout, this.f29148b.x));
        ImageView imageView = (ImageView) constraintLayout.findViewById(2131363057);
        ImageView imageView2 = (ImageView) constraintLayout.findViewById(2131363055);
        if (imageView != null) {
            imageView.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.SRC_IN));
            ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
            this.f29150e = ofFloat;
            ofFloat.setDuration(1500L);
            this.f29150e.addUpdateListener(new ValueAnimator.AnimatorUpdateListener(imageView) { // from class: com.callapp.contacts.widget.floatingwidget.ui.callapp.CallAppChatHeadManager.3

                /* renamed from: a */
                final /* synthetic */ ImageView f29155a;

                /* renamed from: d */
                private boolean f29158d;

                /* renamed from: h */
                private final ImageView f29162h;

                /* renamed from: c */
                private int f29157c = 0;

                /* renamed from: e */
                private final int f29159e = 2131231539;

                /* renamed from: f */
                private final int f29160f = 2131231540;

                /* renamed from: g */
                private final int f29161g = 2131231541;

                {
                    CallAppChatHeadManager.this = this;
                    this.f29155a = imageView;
                    this.f29162h = imageView;
                }

                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    float animatedFraction = valueAnimator.getAnimatedFraction();
                    if (animatedFraction > BitmapDescriptorFactory.HUE_RED && animatedFraction <= 0.33f && this.f29157c != 2131231539) {
                        this.f29157c = 2131231539;
                        this.f29158d = true;
                    } else if (animatedFraction > 0.33f && animatedFraction <= 0.66f && this.f29157c != 2131231540) {
                        this.f29157c = 2131231540;
                        this.f29158d = true;
                    } else if (animatedFraction > 0.66f && this.f29157c != 2131231541) {
                        this.f29157c = 2131231541;
                        this.f29158d = true;
                    }
                    if (this.f29158d) {
                        this.f29158d = false;
                        ImageUtils.m27529a(this.f29162h, this.f29157c, new PorterDuffColorFilter(-1, PorterDuff.Mode.SRC_IN));
                    }
                }
            });
            this.f29150e.setRepeatCount(-1);
            this.f29150e.start();
            if (!PhoneManager.get().isInDriveMode() || imageView2 == null) {
                imageView2.setVisibility(8);
            } else {
                imageView2.setVisibility(0);
                RotateAnimation rotateAnimation = new RotateAnimation(BitmapDescriptorFactory.HUE_RED, 360.0f, 1, 0.5f, 1, 0.5f);
                rotateAnimation.setInterpolator(new LinearInterpolator());
                rotateAnimation.setRepeatCount(-1);
                rotateAnimation.setDuration(3000L);
                rotateAnimation.setFillAfter(true);
                imageView2.startAnimation(rotateAnimation);
            }
        }
        RippleBackground rippleBackground = (RippleBackground) constraintLayout.findViewById(2131363701);
        this.f29149d = rippleBackground;
        rippleBackground.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.callapp.contacts.widget.floatingwidget.ui.callapp.CallAppChatHeadManager.2
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                CallAppChatHeadManager.this.f29149d.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                if (!Prefs.f26492fD.get().booleanValue()) {
                    CallAppChatHeadManager.this.f29149d.m5866a();
                    constraintLayout.postDelayed(CallAppChatHeadManager.this.f29151f, 4000L);
                    return;
                }
                CallAppChatHeadManager.this.f29149d.m5863b();
                CallAppChatHeadManager.this.f29149d.setVisibility(8);
            }
        });
        return mo26417a;
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.container.DefaultChatHeadManager
    /* renamed from: a */
    public final void mo26428a() {
        FloatingMenuActionViewController floatingMenuActionViewController = this.f29147a;
        AudioModeProvider.get().m28968b(floatingMenuActionViewController);
        if (floatingMenuActionViewController.f29034a) {
            floatingMenuActionViewController.f29036c.removeViewImmediate(floatingMenuActionViewController.f29035b.getRootView());
            floatingMenuActionViewController.f29034a = false;
        }
        ValueAnimator valueAnimator = this.f29150e;
        if (valueAnimator != null) {
            valueAnimator.removeAllUpdateListeners();
        }
        super.mo26428a();
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.container.DefaultChatHeadManager, com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadManager
    /* renamed from: a */
    public final void mo26427a(double d, double d2) {
        Prefs.f26490fB.set(Integer.valueOf((int) Math.round(d)));
        Prefs.f26491fC.set(Integer.valueOf((int) Math.round(d2)));
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.container.DefaultChatHeadManager, com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadManager
    /* renamed from: a */
    public final void mo26425a(int i, int i2) {
        super.mo26425a(i, i2);
        DisplayMetrics displayMetrics = getContext().getResources().getDisplayMetrics();
        this.f29148b.x = displayMetrics.widthPixels;
        this.f29148b.y = displayMetrics.heightPixels;
        if (!CollectionUtils.m26068b(getChatHeads()) || !this.f29147a.isViewShown()) {
            return;
        }
        ChatHead<String> chatHead = getChatHeads().get(0);
        this.f29147a.m26539a(chatHead.getHorizontalSpring().f34074d.f34085a <= ((double) (this.f29148b.x / 2)) ? chatHead.getWidth() + getContext().getResources().getDimensionPixelOffset(2131165663) : ((this.f29148b.x - chatHead.getWidth()) - this.f29147a.getMenuWidth()) - getContext().getResources().getDimensionPixelOffset(2131165664), (int) chatHead.getVerticalSpring().f34074d.f34085a);
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.container.DefaultChatHeadManager, com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadManager
    /* renamed from: b */
    public final int mo26414b(int i) {
        int dimensionPixelOffset = getContext().getResources().getDimensionPixelOffset(2131165662);
        return i >= this.f29148b.y - dimensionPixelOffset ? this.f29148b.y - dimensionPixelOffset : super.mo26414b(i);
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.container.DefaultChatHeadManager, com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadManager
    /* renamed from: b */
    public final boolean mo26413b(ChatHead<String> chatHead) {
        boolean z;
        int i;
        FloatingMenuActionViewController floatingMenuActionViewController = this.f29147a;
        if (floatingMenuActionViewController != null) {
            if (floatingMenuActionViewController.getRootView().isShown()) {
                this.f29147a.m26531d();
                return true;
            } else if (PhoneStateManager.get().isIncomingCallRingingState()) {
                m26490b();
                return true;
            } else {
                if (chatHead.getHorizontalSpring().f34074d.f34085a <= this.f29148b.x / 2) {
                    i = chatHead.getWidth() + getContext().getResources().getDimensionPixelOffset(2131165663);
                    z = true;
                } else {
                    i = ((this.f29148b.x - chatHead.getWidth()) - this.f29147a.getMenuWidth()) - getContext().getResources().getDimensionPixelOffset(2131165664);
                    z = false;
                }
                this.f29147a.m26539a(i, (int) chatHead.getVerticalSpring().f34074d.f34085a);
                if (z) {
                    this.f29147a.m26541a();
                } else {
                    this.f29147a.m26532c();
                }
                int i2 = this.f29148b.y;
                int menuHeight = this.f29147a.getMenuHeight();
                double height = (i2 - menuHeight) - (chatHead.getHeight() / 2);
                if (chatHead.getVerticalSpring().f34074d.f34085a < height) {
                    return true;
                }
                chatHead.getVerticalSpring().m22840b(height);
                return true;
            }
        }
        return super.mo26413b((ChatHead) chatHead);
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.container.DefaultChatHeadManager, com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadManager
    /* renamed from: g */
    public final void mo26405g() {
        m26482k();
    }

    public FloatingMenuActionViewController getFloatingMenuViewController() {
        return this.f29147a;
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.container.DefaultChatHeadManager, com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadManager
    /* renamed from: h */
    public final void mo26404h() {
        m26482k();
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.container.DefaultChatHeadManager, com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadManager
    /* renamed from: i */
    public final boolean mo26403i() {
        super.mo26403i();
        FloatingMenuActionViewController floatingMenuActionViewController = this.f29147a;
        if (floatingMenuActionViewController == null || !floatingMenuActionViewController.isViewShown()) {
            return false;
        }
        this.f29147a.m26531d();
        return true;
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadManager
    /* renamed from: j */
    public final boolean mo26435j() {
        return true;
    }
}
