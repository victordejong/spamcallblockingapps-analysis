package com.truecaller.callrecording.p154ui.floatingbutton;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.Chronometer;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.truecaller.callrecording.C3624R;
import com.truecaller.callrecording.CallRecordingManager;
import com.truecaller.callrecording.CallRecordingOnBoardingLaunchContext;
import com.truecaller.common.p156ui.tooltip.TooltipDirection;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p372b0.p373a.p383e0.C8301a;
import p193e.p194a.p372b0.p373a.p383e0.C8304c;
import p193e.p194a.p982k0.AbstractC16304b;
import p193e.p194a.p982k0.p985j.C16325c;
import p193e.p194a.p982k0.p989n.p992c.AbstractC16393b;
import p193e.p194a.p982k0.p989n.p992c.AbstractC16394c;
import p193e.p194a.p982k0.p989n.p992c.View$OnClickListenerC16392a;
import s1.s;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\u0018��2\u00020\u00012\u00020\u0002J\u000f\u0010\u0004\u001a\u00020\u0003H\u0014¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0006\u001a\u00020\u0003H\u0014¢\u0006\u0004\b\u0006\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0007\u0010\u0005J\u000f\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\t\u0010\nJ\u0019\u0010\r\u001a\u00020\u00032\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u000f\u0010\u0005J\u0017\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0017\u0010\u0005J\u0017\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u001c\u0010\u0005J\u000f\u0010\u001d\u001a\u00020\bH\u0016¢\u0006\u0004\b\u001d\u0010\nJ\u000f\u0010\u001e\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u001e\u0010\u0005J\u000f\u0010\u001f\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u001f\u0010\u0005J\u000f\u0010 \u001a\u00020\u0003H\u0016¢\u0006\u0004\b \u0010\u0005J\u0017\u0010\"\u001a\u00020\u00032\u0006\u0010!\u001a\u00020\bH\u0016¢\u0006\u0004\b\"\u0010\u0016J\u0019\u0010%\u001a\u00020\u00032\b\b\u0001\u0010$\u001a\u00020#H\u0016¢\u0006\u0004\b%\u0010&J\u000f\u0010'\u001a\u00020\u0003H\u0016¢\u0006\u0004\b'\u0010\u0005R\u0016\u0010*\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)R\"\u00102\u001a\u00020+8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b,\u0010-\u001a\u0004\b.\u0010/\"\u0004\b0\u00101R\u0016\u00106\u001a\u0002038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b4\u00105R\"\u0010>\u001a\u0002078\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b8\u00109\u001a\u0004\b:\u0010;\"\u0004\b<\u0010=¨\u0006?"}, d2 = {"Lcom/truecaller/callrecording/ui/floatingbutton/CallRecordingFloatingButton;", "Landroid/widget/FrameLayout;", "Le/a/k0/n/c/c;", "Ls1/s;", "onAttachedToWindow", "()V", "onDetachedFromWindow", "Vi", "", "B1", "()Z", "", "phoneNumber", "setPhoneNumber", "(Ljava/lang/String;)V", "cf", "", "startTimeBase", "q8", "(J)V", "enabled", "setIconEnabled", "(Z)V", "A5", "Le/a/k0/b;", "listener", "setErrorListener", "(Le/a/k0/b;)V", "L5", "N5", "Z8", "yc", "Bf", AnalyticsConstants.SHOW, "mc", "", "logo", "Rd", "(I)V", "M5", AbstractC2405c.f7629a, "Z", "isInCallUiButton", "Lcom/truecaller/callrecording/CallRecordingManager;", C22021b.f61237c, "Lcom/truecaller/callrecording/CallRecordingManager;", "getCallRecordingManager", "()Lcom/truecaller/callrecording/CallRecordingManager;", "setCallRecordingManager", "(Lcom/truecaller/callrecording/CallRecordingManager;)V", "callRecordingManager", "Le/a/k0/j/c;", "d", "Le/a/k0/j/c;", "binding", "Le/a/k0/n/c/b;", "a", "Le/a/k0/n/c/b;", "getPresenter", "()Le/a/k0/n/c/b;", "setPresenter", "(Le/a/k0/n/c/b;)V", "presenter", "callrecorder_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.callrecording.ui.floatingbutton.CallRecordingFloatingButton */
/* loaded from: classes7-dex2jar.jar:com/truecaller/callrecording/ui/floatingbutton/CallRecordingFloatingButton.class */
public final class CallRecordingFloatingButton extends FrameLayout implements AbstractC16394c {
    @Inject

    /* renamed from: a */
    public AbstractC16393b f10809a;
    @Inject

    /* renamed from: b */
    public CallRecordingManager f10810b;

    /* renamed from: c */
    public boolean f10811c;

    /* renamed from: d */
    public C16325c f10812d;

    /* renamed from: com.truecaller.callrecording.ui.floatingbutton.CallRecordingFloatingButton$a */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/callrecording/ui/floatingbutton/CallRecordingFloatingButton$a.class */
    public static final class C3637a extends m implements a<s> {

        /* renamed from: b */
        public static final C3637a f10813b = new C3637a();

        public C3637a() {
            super(0);
        }

        public Object invoke() {
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CallRecordingFloatingButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
        View inflate = LayoutInflater.from(context).inflate(C3624R.layout.view_floating_call_record_control, (ViewGroup) this, false);
        addView(inflate);
        int i = C3624R.C3626id.badge_record;
        TextView textView = (TextView) inflate.findViewById(i);
        if (textView != null) {
            i = C3624R.C3626id.branding;
            AppCompatImageView appCompatImageView = (AppCompatImageView) inflate.findViewById(i);
            if (appCompatImageView != null) {
                i = C3624R.C3626id.branding_barrier;
                Barrier barrier = (Barrier) inflate.findViewById(i);
                if (barrier != null) {
                    i = C3624R.C3626id.call_recording_start_button;
                    AppCompatImageView appCompatImageView2 = (AppCompatImageView) inflate.findViewById(i);
                    if (appCompatImageView2 != null) {
                        i = C3624R.C3626id.call_recording_stop_button;
                        AppCompatImageView appCompatImageView3 = (AppCompatImageView) inflate.findViewById(i);
                        if (appCompatImageView3 != null) {
                            i = C3624R.C3626id.error_view;
                            AppCompatImageView appCompatImageView4 = (AppCompatImageView) inflate.findViewById(i);
                            if (appCompatImageView4 != null) {
                                i = C3624R.C3626id.recording_group;
                                Group group = (Group) inflate.findViewById(i);
                                if (group != null) {
                                    i = C3624R.C3626id.recording_time;
                                    Chronometer chronometer = (Chronometer) inflate.findViewById(i);
                                    if (chronometer != null) {
                                        C16325c c16325c = new C16325c((ConstraintLayout) inflate, textView, appCompatImageView, barrier, appCompatImageView2, appCompatImageView3, appCompatImageView4, group, chronometer);
                                        l.d(c16325c, "ViewFloatingCallRecordCo…rom(context), this, true)");
                                        this.f10812d = c16325c;
                                        if (!isInEditMode()) {
                                            C18334g0.m15203t(context).mo11163c(this);
                                        }
                                        if (attributeSet != null) {
                                            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C3624R.styleable.CallRecordingFloatingButton, 0, 0);
                                            l.d(obtainStyledAttributes, "context.obtainStyledAttr…dingFloatingButton, 0, 0)");
                                            this.f10812d.f45949d.setBackgroundResource(obtainStyledAttributes.getResourceId(C3624R.styleable.CallRecordingFloatingButton_startButtonBackground, C3624R.color.call_recording_floating_button_background_color));
                                            this.f10811c = obtainStyledAttributes.getBoolean(C3624R.styleable.CallRecordingFloatingButton_isInCallUIButton, false);
                                            obtainStyledAttributes.recycle();
                                        }
                                        if (!this.f10811c) {
                                            return;
                                        }
                                        setOnClickListener(new View$OnClickListenerC16392a(this));
                                        return;
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
    }

    @Override // p193e.p194a.p982k0.p989n.p992c.AbstractC16399g
    /* renamed from: A5 */
    public void mo17455A5() {
        AbstractC16393b abstractC16393b = this.f10809a;
        if (abstractC16393b != null) {
            abstractC16393b.mo17455A5();
        } else {
            l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p982k0.p989n.p992c.AbstractC16399g
    /* renamed from: B1 */
    public boolean mo17454B1() {
        AbstractC16393b abstractC16393b = this.f10809a;
        if (abstractC16393b != null) {
            return abstractC16393b.mo17454B1();
        }
        l.l("presenter");
        throw null;
    }

    @Override // p193e.p194a.p982k0.p989n.p992c.AbstractC16394c
    /* renamed from: Bf */
    public void mo17475Bf() {
        CallRecordingManager callRecordingManager = this.f10810b;
        if (callRecordingManager == null) {
            l.l("callRecordingManager");
            throw null;
        }
        Context context = getContext();
        l.d(context, AnalyticsConstants.CONTEXT);
        boolean z = this.f10811c;
        callRecordingManager.mo17588j(context, z ? CallRecordingOnBoardingLaunchContext.INCALLUI : CallRecordingOnBoardingLaunchContext.FLOATING, z);
    }

    @Override // p193e.p194a.p982k0.p989n.p992c.AbstractC16394c
    /* renamed from: L5 */
    public void mo17474L5() {
        C16325c c16325c = this.f10812d;
        TextView textView = c16325c.f45947b;
        l.d(textView, "badgeRecord");
        C19286f.m13689O(textView);
        AppCompatImageView appCompatImageView = c16325c.f45950e;
        l.d(appCompatImageView, "errorView");
        C19286f.m13689O(appCompatImageView);
    }

    @Override // p193e.p194a.p982k0.p989n.p992c.AbstractC16394c
    /* renamed from: M5 */
    public void mo17473M5() {
        AppCompatImageView appCompatImageView = this.f10812d.f45948c;
        l.d(appCompatImageView, "binding.branding");
        C19286f.m13689O(appCompatImageView);
    }

    @Override // p193e.p194a.p982k0.p989n.p992c.AbstractC16394c
    /* renamed from: N5 */
    public boolean mo17472N5() {
        ConstraintLayout constraintLayout = this.f10812d.f45946a;
        l.d(constraintLayout, "binding.root");
        ViewParent parent = constraintLayout.getParent();
        l.d(parent, "binding.root.parent");
        ViewParent parent2 = parent.getParent();
        ViewParent viewParent = parent2;
        if (!(parent2 instanceof ViewGroup)) {
            viewParent = null;
        }
        ViewGroup viewGroup = (ViewGroup) viewParent;
        if (viewGroup != null) {
            C8301a c8301a = C8301a.f25570a;
            l.e(viewGroup, "parent");
            if (viewGroup.getTag() instanceof C8304c) {
                return false;
            }
            TooltipDirection tooltipDirection = TooltipDirection.BOTTOM;
            int i = C3624R.string.callrecording_tooltip;
            ConstraintLayout constraintLayout2 = this.f10812d.f45946a;
            l.d(constraintLayout2, "binding.root");
            ViewParent parent3 = constraintLayout2.getParent();
            Objects.requireNonNull(parent3, "null cannot be cast to non-null type android.view.View");
            View view = (View) parent3;
            Context context = getContext();
            l.d(context, AnalyticsConstants.CONTEXT);
            return C8301a.m28681c(c8301a, viewGroup, tooltipDirection, i, view, context.getResources().getDimension(C3624R.dimen.control_space), null, 0, false, C3637a.f10813b, 224);
        }
        return false;
    }

    @Override // p193e.p194a.p982k0.p989n.p992c.AbstractC16394c
    /* renamed from: Rd */
    public void mo17471Rd(int i) {
        this.f10812d.f45948c.setImageResource(i);
        AppCompatImageView appCompatImageView = this.f10812d.f45948c;
        l.d(appCompatImageView, "binding.branding");
        C19286f.m13684T(appCompatImageView);
    }

    @Override // p193e.p194a.p982k0.p989n.p992c.AbstractC16399g
    /* renamed from: Vi */
    public void mo17453Vi() {
        AbstractC16393b abstractC16393b = this.f10809a;
        if (abstractC16393b == null) {
            l.l("presenter");
            throw null;
        }
        abstractC16393b.mo17453Vi();
        performClick();
    }

    @Override // p193e.p194a.p982k0.p989n.p992c.AbstractC16394c
    /* renamed from: Z8 */
    public void mo17470Z8() {
        TextView textView = this.f10812d.f45947b;
        l.d(textView, "binding.badgeRecord");
        C19286f.m13684T(textView);
    }

    @Override // p193e.p194a.p982k0.p989n.p992c.AbstractC16394c
    /* renamed from: cf */
    public void mo17469cf() {
        C16325c c16325c = this.f10812d;
        AppCompatImageView appCompatImageView = c16325c.f45949d;
        l.d(appCompatImageView, "callRecordingStartButton");
        C19286f.m13684T(appCompatImageView);
        Group group = c16325c.f45951f;
        l.d(group, "recordingGroup");
        C19286f.m13689O(group);
        c16325c.f45952g.stop();
    }

    public final CallRecordingManager getCallRecordingManager() {
        CallRecordingManager callRecordingManager = this.f10810b;
        if (callRecordingManager != null) {
            return callRecordingManager;
        }
        l.l("callRecordingManager");
        throw null;
    }

    public final AbstractC16393b getPresenter() {
        AbstractC16393b abstractC16393b = this.f10809a;
        if (abstractC16393b != null) {
            return abstractC16393b;
        }
        l.l("presenter");
        throw null;
    }

    @Override // p193e.p194a.p982k0.p989n.p992c.AbstractC16399g
    /* renamed from: mc */
    public void mo17452mc(boolean z) {
        AbstractC16393b abstractC16393b = this.f10809a;
        if (abstractC16393b != null) {
            abstractC16393b.mo17452mc(z);
        } else {
            l.l("presenter");
            throw null;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (!isInEditMode()) {
            AbstractC16393b abstractC16393b = this.f10809a;
            if (abstractC16393b == null) {
                l.l("presenter");
                throw null;
            }
            abstractC16393b.mo17457Lb(this.f10811c);
            AbstractC16393b abstractC16393b2 = this.f10809a;
            if (abstractC16393b2 != null) {
                abstractC16393b2.mo9029Y0(this);
            } else {
                l.l("presenter");
                throw null;
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        AbstractC16393b abstractC16393b = this.f10809a;
        if (abstractC16393b != null) {
            abstractC16393b.mo9806c();
        } else {
            l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p982k0.p989n.p992c.AbstractC16394c
    /* renamed from: q8 */
    public void mo17468q8(long j) {
        C16325c c16325c = this.f10812d;
        AppCompatImageView appCompatImageView = c16325c.f45949d;
        l.d(appCompatImageView, "callRecordingStartButton");
        C19286f.m13689O(appCompatImageView);
        Group group = c16325c.f45951f;
        l.d(group, "recordingGroup");
        C19286f.m13684T(group);
        TextView textView = c16325c.f45947b;
        l.d(textView, "badgeRecord");
        C19286f.m13689O(textView);
        Chronometer chronometer = c16325c.f45952g;
        chronometer.setBase(j);
        chronometer.start();
    }

    public final void setCallRecordingManager(CallRecordingManager callRecordingManager) {
        l.e(callRecordingManager, "<set-?>");
        this.f10810b = callRecordingManager;
    }

    @Override // p193e.p194a.p982k0.p989n.p992c.AbstractC16399g
    public void setErrorListener(AbstractC16304b abstractC16304b) {
        l.e(abstractC16304b, "listener");
        AbstractC16393b abstractC16393b = this.f10809a;
        if (abstractC16393b != null) {
            abstractC16393b.setErrorListener(abstractC16304b);
        } else {
            l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p982k0.p989n.p992c.AbstractC16394c
    public void setIconEnabled(boolean z) {
        int i = (z || !this.f10811c) ? !z ? C3624R.color.call_recording_button_disabled : C3624R.color.call_recording_button_enabled : C3624R.color.call_recording_incallui_button_disabled;
        AppCompatImageView appCompatImageView = this.f10812d.f45949d;
        l.d(appCompatImageView, "binding.callRecordingStartButton");
        Context context = getContext();
        Object obj = C26467a.f74235a;
        appCompatImageView.setImageTintList(ColorStateList.valueOf(C26467a.C26471d.m1787a(context, i)));
    }

    @Override // p193e.p194a.p982k0.p989n.p992c.AbstractC16399g
    public void setPhoneNumber(String str) {
        AbstractC16393b abstractC16393b = this.f10809a;
        if (abstractC16393b != null) {
            abstractC16393b.setPhoneNumber(str);
        } else {
            l.l("presenter");
            throw null;
        }
    }

    public final void setPresenter(AbstractC16393b abstractC16393b) {
        l.e(abstractC16393b, "<set-?>");
        this.f10809a = abstractC16393b;
    }

    @Override // p193e.p194a.p982k0.p989n.p992c.AbstractC16394c
    /* renamed from: yc */
    public void mo17467yc() {
        AppCompatImageView appCompatImageView = this.f10812d.f45950e;
        l.d(appCompatImageView, "binding.errorView");
        C19286f.m13684T(appCompatImageView);
    }
}
