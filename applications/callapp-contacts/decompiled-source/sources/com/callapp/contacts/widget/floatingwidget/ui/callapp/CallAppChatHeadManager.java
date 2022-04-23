package com.callapp.contacts.widget.floatingwidget.ui.callapp;

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
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.c;
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
import com.callapp.contacts.widget.floatingwidget.ui.ChatHead;
import com.callapp.contacts.widget.floatingwidget.ui.ChatHeadCloseButton;
import com.callapp.contacts.widget.floatingwidget.ui.ChatHeadContainer;
import com.callapp.contacts.widget.floatingwidget.ui.container.DefaultChatHeadManager;
import com.callapp.framework.util.CollectionUtils;
import com.facebook.rebound.d;
import com.facebook.rebound.e;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.skyfishjy.library.RippleBackground;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager.class */
public class CallAppChatHeadManager extends DefaultChatHeadManager<String> {

    /* renamed from: a  reason: collision with root package name */
    private FloatingMenuActionViewController f16744a;

    /* renamed from: d  reason: collision with root package name */
    private RippleBackground f16746d;
    private ValueAnimator e;
    private Runnable f = new Runnable() { // from class: com.callapp.contacts.widget.floatingwidget.ui.callapp._$$Lambda$CallAppChatHeadManager$L1Zubs6VPvrsAMbGKNUuV3zirxU
        @Override // java.lang.Runnable
        public final void run() {
            CallAppChatHeadManager.this.n();
        }
    };

    /* renamed from: b  reason: collision with root package name */
    private Point f16745b = new Point();

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager$HorizontalMovementSpringListener.class */
    static class HorizontalMovementSpringListener extends d {

        /* renamed from: a  reason: collision with root package name */
        private int f16754a;

        /* renamed from: b  reason: collision with root package name */
        private int f16755b = 0;

        /* renamed from: c  reason: collision with root package name */
        private ConstraintLayout f16756c;

        /* renamed from: d  reason: collision with root package name */
        private c f16757d;
        private c e;
        private ImageView f;

        public HorizontalMovementSpringListener(final ConstraintLayout constraintLayout, int i) {
            this.f16756c = constraintLayout;
            constraintLayout.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.callapp.contacts.widget.floatingwidget.ui.callapp.CallAppChatHeadManager.HorizontalMovementSpringListener.1
                @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                public void onGlobalLayout() {
                    constraintLayout.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                    HorizontalMovementSpringListener.this.f16754a -= constraintLayout.getWidth();
                }
            });
            this.f16754a = i;
            c cVar = new c();
            this.f16757d = cVar;
            cVar.a(constraintLayout.getContext(), 2131558819);
            c cVar2 = new c();
            this.e = cVar2;
            cVar2.a(constraintLayout.getContext(), 2131558820);
            this.f = (ImageView) constraintLayout.findViewById(2131362440);
        }

        @Override // com.facebook.rebound.d, com.facebook.rebound.i
        public final void a(e eVar) {
            super.a(eVar);
            int i = (int) eVar.f20128d.f20129a;
            int i2 = this.f16754a;
            if (i >= i2 / 2 && this.f16755b <= i2 / 2) {
                this.e.b(this.f16756c);
            } else if (i <= i2 / 2 && this.f16755b >= i2 / 2) {
                this.f16757d.b(this.f16756c);
            }
            this.f16755b = i;
        }
    }

    public CallAppChatHeadManager(Context context, ChatHeadContainer chatHeadContainer) {
        super(context, chatHeadContainer);
        DisplayMetrics displayMetrics = CallAppApplication.get().getResources().getDisplayMetrics();
        this.f16745b.x = displayMetrics.widthPixels;
        this.f16745b.y = displayMetrics.heightPixels;
        b(context);
        getLeftCloseButton().setChatHeadCloseButtonData(new ChatHeadCloseButton.ChatHeadCloseButtonStruct(Activities.getString(2131886777), 2131231602, new Runnable() { // from class: com.callapp.contacts.widget.floatingwidget.ui.callapp._$$Lambda$CallAppChatHeadManager$6ivEz6W50vesrjWy0wS5zmTl4m4
            @Override // java.lang.Runnable
            public final void run() {
                CallAppChatHeadManager.this.m();
            }
        }));
        getRightCloseButton().setChatHeadCloseButtonData(new ChatHeadCloseButton.ChatHeadCloseButtonStruct(Activities.getString(2131886821), 2131231647, new Runnable() { // from class: com.callapp.contacts.widget.floatingwidget.ui.callapp._$$Lambda$CallAppChatHeadManager$Rxgs3eJtdktEZ_VUFJlIiEJOXP0
            @Override // java.lang.Runnable
            public final void run() {
                CallAppChatHeadManager.this.l();
            }
        }));
        ImageUtils.a(getCloseButtonShadow(), 2131230934, (ColorFilter) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        this.f16744a.d();
        getListener().a(0);
    }

    private void b() {
        this.f16744a.d();
        getListener().b();
        if (PhoneStateManager.get().shouldConferenceScreenAppear()) {
            ConferenceActivity.startConferenceActivity(CallAppApplication.get(), false);
            return;
        }
        CallData incomingOrConnectingOrConnectedCall = PhoneManager.get().getIncomingOrConnectingOrConnectedCall();
        if (incomingOrConnectingOrConnectedCall != null) {
            PhoneStateManager.get().showCallAppIfNeeded(incomingOrConnectingOrConnectedCall, true);
        }
    }

    private void b(Context context) {
        this.f16744a = new FloatingMenuActionViewController(LayoutInflater.from(context), (WindowManager) context.getSystemService("window"));
        boolean isSwappable = PhoneManager.get().isSwappable();
        for (FloatingMenuAction floatingMenuAction : Arrays.asList(new FloatingMenuAction(2131558817, 2131231460, 2131099918, Activities.getString(2131886288), new View.OnClickListener() { // from class: com.callapp.contacts.widget.floatingwidget.ui.callapp._$$Lambda$CallAppChatHeadManager$NwKAJbsIJuVkAp1xLzI2OmMJ9iU
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CallAppChatHeadManager.this.f(view);
            }
        }, true, 2131362845), new FloatingMenuAction(2131558817, 2131231566, 2131099918, Activities.getString(2131887758), _$$Lambda$CallAppChatHeadManager$UWUgDSq31UybtnqJ3KzthN9lgIs.INSTANCE, isSwappable, 2131362849), new FloatingMenuAction(2131558817, 2131231565, 2131099918, Activities.getString(2131887188), _$$Lambda$CallAppChatHeadManager$2LS2FAi363lGpeWiKZvRRS_uIFM.INSTANCE, isSwappable, 2131362847), new FloatingMenuAction(2131558817, 2131231791, 2131099918, 2131099784, PhoneManager.isMuteOn(), Activities.getString(2131887260), new View.OnClickListener() { // from class: com.callapp.contacts.widget.floatingwidget.ui.callapp._$$Lambda$CallAppChatHeadManager$Sr0QqGwKehvPKo31OPZBt0rGsKw
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CallAppChatHeadManager.this.c(view);
            }
        }, true, 2131362848), new FloatingMenuAction(2131558817, 2131232184, 2131099918, 2131099784, !PhoneManager.get().isSpeakerDisabled(), Activities.getString(2131887743), new View.OnClickListener() { // from class: com.callapp.contacts.widget.floatingwidget.ui.callapp._$$Lambda$CallAppChatHeadManager$24BGHAOEYWeTNeMSkeoBCg3VIsg
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CallAppChatHeadManager.this.b(view);
            }
        }, true, 2131362844), new FloatingMenuAction(2131558818, 2131231647, 2131100228, Activities.getString(2131886821), new View.OnClickListener() { // from class: com.callapp.contacts.widget.floatingwidget.ui.callapp._$$Lambda$CallAppChatHeadManager$7WqL85grE0rXsodvrBaRbn0KnrE
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CallAppChatHeadManager.this.a(view);
            }
        }, true, 2131362846))) {
            this.f16744a.a(floatingMenuAction);
        }
        AudioModeProvider.get().a(this.f16744a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(View view) {
        if (AudioModeProvider.get().isMoreThenOneBluetoothDevices()) {
            Intent intent = new Intent(CallAppApplication.get(), AudioRouteSelectorActivity.class);
            intent.setFlags(402653184);
            Activities.b(CallAppApplication.get(), intent);
            return;
        }
        PhoneManager.get().b(getContext());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(View view) {
        boolean mute = AudioModeProvider.get().getMute();
        PhoneManager.get();
        PhoneManager.a(!mute);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void d(View view) {
        PhoneManager.a(PhoneManager.get().getActiveOrBackgroundCall(), PhoneStateManager.CallActionSource.WIDGET);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void e(View view) {
        PhoneManager.get();
        PhoneManager.b(PhoneManager.get().getActiveOrBackgroundCall(), PhoneStateManager.CallActionSource.WIDGET);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f(View view) {
        b();
    }

    private void k() {
        if (this.f16744a.isViewShown()) {
            this.f16744a.e();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void l() {
        getListener().a(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void m() {
        getListener().a(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void n() {
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.85f, (float) BitmapDescriptorFactory.HUE_RED);
        alphaAnimation.setDuration(500L);
        alphaAnimation.setFillAfter(true);
        alphaAnimation.setAnimationListener(new AnimationListenerAdapter() { // from class: com.callapp.contacts.widget.floatingwidget.ui.callapp.CallAppChatHeadManager.1
            @Override // com.callapp.contacts.util.animation.AnimationListenerAdapter, android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                super.onAnimationEnd(animation);
                CallAppChatHeadManager.this.f16746d.b();
                Prefs.fD.set(Boolean.TRUE);
            }
        });
        this.f16746d.startAnimation(alphaAnimation);
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.container.DefaultChatHeadManager
    public final /* synthetic */ ChatHead<String> a(String str, boolean z, boolean z2) {
        String str2 = str;
        ChatHead<String> a2 = super.a((CallAppChatHeadManager) str2, z, z2);
        final ConstraintLayout constraintLayout = (ConstraintLayout) getViewAdapter().getChatHeadView(str2);
        a2.e.a(new HorizontalMovementSpringListener(constraintLayout, this.f16745b.x));
        ImageView imageView = (ImageView) constraintLayout.findViewById(2131363057);
        ImageView imageView2 = (ImageView) constraintLayout.findViewById(2131363055);
        if (imageView != null) {
            imageView.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.SRC_IN));
            ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
            this.e = ofFloat;
            ofFloat.setDuration(1500L);
            this.e.addUpdateListener(new ValueAnimator.AnimatorUpdateListener(imageView) { // from class: com.callapp.contacts.widget.floatingwidget.ui.callapp.CallAppChatHeadManager.3

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ ImageView f16750a;

                /* renamed from: d  reason: collision with root package name */
                private boolean f16753d;
                private final ImageView h;

                /* renamed from: c  reason: collision with root package name */
                private int f16752c = 0;
                private final int e = 2131231539;
                private final int f = 2131231540;
                private final int g = 2131231541;

                {
                    this.f16750a = imageView;
                    this.h = imageView;
                }

                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    float animatedFraction = valueAnimator.getAnimatedFraction();
                    if (animatedFraction > BitmapDescriptorFactory.HUE_RED && animatedFraction <= 0.33f && this.f16752c != 2131231539) {
                        this.f16752c = 2131231539;
                        this.f16753d = true;
                    } else if (animatedFraction > 0.33f && animatedFraction <= 0.66f && this.f16752c != 2131231540) {
                        this.f16752c = 2131231540;
                        this.f16753d = true;
                    } else if (animatedFraction > 0.66f && this.f16752c != 2131231541) {
                        this.f16752c = 2131231541;
                        this.f16753d = true;
                    }
                    if (this.f16753d) {
                        this.f16753d = false;
                        ImageUtils.a(this.h, this.f16752c, new PorterDuffColorFilter(-1, PorterDuff.Mode.SRC_IN));
                    }
                }
            });
            this.e.setRepeatCount(-1);
            this.e.start();
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
        this.f16746d = rippleBackground;
        rippleBackground.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.callapp.contacts.widget.floatingwidget.ui.callapp.CallAppChatHeadManager.2
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                CallAppChatHeadManager.this.f16746d.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                if (!Prefs.fD.get().booleanValue()) {
                    CallAppChatHeadManager.this.f16746d.a();
                    constraintLayout.postDelayed(CallAppChatHeadManager.this.f, 4000L);
                    return;
                }
                CallAppChatHeadManager.this.f16746d.b();
                CallAppChatHeadManager.this.f16746d.setVisibility(8);
            }
        });
        return a2;
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.container.DefaultChatHeadManager
    public final void a() {
        FloatingMenuActionViewController floatingMenuActionViewController = this.f16744a;
        AudioModeProvider.get().b(floatingMenuActionViewController);
        if (floatingMenuActionViewController.f16685a) {
            floatingMenuActionViewController.f16687c.removeViewImmediate(floatingMenuActionViewController.f16686b.getRootView());
            floatingMenuActionViewController.f16685a = false;
        }
        ValueAnimator valueAnimator = this.e;
        if (valueAnimator != null) {
            valueAnimator.removeAllUpdateListeners();
        }
        super.a();
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.container.DefaultChatHeadManager, com.callapp.contacts.widget.floatingwidget.ui.ChatHeadManager
    public final void a(double d2, double d3) {
        Prefs.fB.set(Integer.valueOf((int) Math.round(d2)));
        Prefs.fC.set(Integer.valueOf((int) Math.round(d3)));
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.container.DefaultChatHeadManager, com.callapp.contacts.widget.floatingwidget.ui.ChatHeadManager
    public final void a(int i, int i2) {
        super.a(i, i2);
        DisplayMetrics displayMetrics = getContext().getResources().getDisplayMetrics();
        this.f16745b.x = displayMetrics.widthPixels;
        this.f16745b.y = displayMetrics.heightPixels;
        if (CollectionUtils.b(getChatHeads()) && this.f16744a.isViewShown()) {
            ChatHead<String> chatHead = getChatHeads().get(0);
            this.f16744a.a(chatHead.getHorizontalSpring().f20128d.f20129a <= ((double) (this.f16745b.x / 2)) ? chatHead.getWidth() + getContext().getResources().getDimensionPixelOffset(2131165663) : ((this.f16745b.x - chatHead.getWidth()) - this.f16744a.getMenuWidth()) - getContext().getResources().getDimensionPixelOffset(2131165664), (int) chatHead.getVerticalSpring().f20128d.f20129a);
        }
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.container.DefaultChatHeadManager, com.callapp.contacts.widget.floatingwidget.ui.ChatHeadManager
    public final int b(int i) {
        int dimensionPixelOffset = getContext().getResources().getDimensionPixelOffset(2131165662);
        return i >= this.f16745b.y - dimensionPixelOffset ? this.f16745b.y - dimensionPixelOffset : super.b(i);
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.container.DefaultChatHeadManager, com.callapp.contacts.widget.floatingwidget.ui.ChatHeadManager
    public final boolean b(ChatHead<String> chatHead) {
        boolean z;
        int i;
        FloatingMenuActionViewController floatingMenuActionViewController = this.f16744a;
        if (floatingMenuActionViewController == null) {
            return super.b((ChatHead) chatHead);
        }
        if (floatingMenuActionViewController.getRootView().isShown()) {
            this.f16744a.d();
            return true;
        } else if (PhoneStateManager.get().isIncomingCallRingingState()) {
            b();
            return true;
        } else {
            if (chatHead.getHorizontalSpring().f20128d.f20129a <= this.f16745b.x / 2) {
                i = chatHead.getWidth() + getContext().getResources().getDimensionPixelOffset(2131165663);
                z = true;
            } else {
                i = ((this.f16745b.x - chatHead.getWidth()) - this.f16744a.getMenuWidth()) - getContext().getResources().getDimensionPixelOffset(2131165664);
                z = false;
            }
            this.f16744a.a(i, (int) chatHead.getVerticalSpring().f20128d.f20129a);
            if (z) {
                this.f16744a.a();
            } else {
                this.f16744a.c();
            }
            int i2 = this.f16745b.y;
            int menuHeight = this.f16744a.getMenuHeight();
            double height = (i2 - menuHeight) - (chatHead.getHeight() / 2);
            if (chatHead.getVerticalSpring().f20128d.f20129a < height) {
                return true;
            }
            chatHead.getVerticalSpring().b(height);
            return true;
        }
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.container.DefaultChatHeadManager, com.callapp.contacts.widget.floatingwidget.ui.ChatHeadManager
    public final void g() {
        k();
    }

    public FloatingMenuActionViewController getFloatingMenuViewController() {
        return this.f16744a;
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.container.DefaultChatHeadManager, com.callapp.contacts.widget.floatingwidget.ui.ChatHeadManager
    public final void h() {
        k();
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.container.DefaultChatHeadManager, com.callapp.contacts.widget.floatingwidget.ui.ChatHeadManager
    public final boolean i() {
        super.i();
        FloatingMenuActionViewController floatingMenuActionViewController = this.f16744a;
        if (floatingMenuActionViewController == null || !floatingMenuActionViewController.isViewShown()) {
            return false;
        }
        this.f16744a.d();
        return true;
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.ChatHeadManager
    public final boolean j() {
        return true;
    }
}
