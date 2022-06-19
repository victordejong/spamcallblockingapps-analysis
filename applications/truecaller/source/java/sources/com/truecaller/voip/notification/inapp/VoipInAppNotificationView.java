package com.truecaller.voip.notification.inapp;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.Window;
import android.widget.Chronometer;
import android.widget.TextView;
import com.google.android.gms.ads.RequestConfiguration;
import com.razorpay.AnalyticsConstants;
import com.truecaller.voip.C4781R;
import com.truecaller.voip.legacy.incall.LegacyVoipService;
import com.truecaller.voip.legacy.incall.p190ui.LegacyVoipActivity;
import com.truecaller.voip.legacy.incoming.LegacyIncomingVoipService;
import com.truecaller.voip.legacy.incoming.p191ui.LegacyIncomingVoipActivity;
import com.truecaller.voip.service.call.CallService;
import com.truecaller.voip.service.invitation.InvitationService;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1807k.p1809b.C26467a;
import p1727n3.p1807k.p1809b.p1811d.C26488h;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p1270u2.p1271a.AbstractC20576b;
import p193e.p194a.p619d.p666y.p668b.AbstractC12298a;
import p193e.p194a.p619d.p666y.p668b.AbstractC12299b;
import p193e.p194a.p619d.p666y.p668b.AbstractC12300c;
import p193e.p194a.p619d.p666y.p668b.C12308i;
import p193e.p194a.p619d.p666y.p668b.C12310k;
import p193e.p194a.p619d.p666y.p668b.ServiceConnectionC12311l;
import p193e.p194a.p619d.p666y.p668b.View$OnClickListenerC12309j;
import s1.g;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��Y\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n��\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005*\u0001%\b\u0007\u0018��2\u00020\u00012\u00020\u0002J\u000f\u0010\u0004\u001a\u00020\u0003H\u0014¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0006\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0006\u0010\u0005J\u001f\u0010\u000b\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\r\u0010\u0005J\r\u0010\u000e\u001a\u00020\u0003¢\u0006\u0004\b\u000e\u0010\u0005J\u000f\u0010\u000f\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u000f\u0010\u0005J\u0011\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0013\u0010\u0005J\u000f\u0010\u0014\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0014\u0010\u0005J\u000f\u0010\u0015\u001a\u00020\u0003H\u0014¢\u0006\u0004\b\u0015\u0010\u0005J\u000f\u0010\u0016\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\u0016\u0010\u0005R\"\u0010\u001e\u001a\u00020\u00178\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u001d\u0010$\u001a\u00020\u001f8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#R\u0016\u0010(\u001a\u00020%8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b&\u0010'R\u0018\u0010+\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010*R\u0018\u0010/\u001a\u0004\u0018\u00010,8\u0002@\u0002X\u0083\u000e¢\u0006\u0006\n\u0004\b-\u0010.R\u0016\u00103\u001a\u0002008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u00102R\u0016\u00105\u001a\u0002008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b4\u00102R\u001d\u0010:\u001a\u0002068B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b7\u0010!\u001a\u0004\b8\u00109¨\u0006;"}, d2 = {"Lcom/truecaller/voip/notification/inapp/VoipInAppNotificationView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Le/a/d/y/b/c;", "Ls1/s;", "onAttachedToWindow", "()V", "q0", "", AnalyticsConstants.NAME, "", "chronometerBase", "I", "(Ljava/lang/String;J)V", RequestConfiguration.MAX_AD_CONTENT_RATING_G, "i1", "F0", "Lcom/truecaller/voip/notification/inapp/ServiceType;", "getServiceType", "()Lcom/truecaller/voip/notification/inapp/ServiceType;", "l0", "g0", "onDetachedFromWindow", "h1", "Le/a/d/y/b/b;", "y", "Le/a/d/y/b/b;", "getPresenter", "()Le/a/d/y/b/b;", "setPresenter", "(Le/a/d/y/b/b;)V", "presenter", "Landroid/widget/Chronometer;", "A", "Ls1/g;", "getChronometer", "()Landroid/widget/Chronometer;", "chronometer", "e/a/d/y/b/l", "C", "Le/a/d/y/b/l;", "serviceConnection", "B", "Lcom/truecaller/voip/notification/inapp/ServiceType;", "serviceType", "", "x", "Ljava/lang/Integer;", "fallbackStatusColor", "", "w", "Z", "fallbackApplyLightStatusBar", "v", "isInitialized", "Landroid/widget/TextView;", "z", "getNameTextView", "()Landroid/widget/TextView;", "nameTextView", "voip_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes15-dex2jar.jar:com/truecaller/voip/notification/inapp/VoipInAppNotificationView.class */
public final class VoipInAppNotificationView extends AbstractC12298a implements AbstractC12300c {

    /* renamed from: B */
    public ServiceType f16381B;

    /* renamed from: v */
    public boolean f16383v;

    /* renamed from: x */
    public Integer f16385x;
    @Inject

    /* renamed from: y */
    public AbstractC12299b f16386y;

    /* renamed from: w */
    public boolean f16384w = true;

    /* renamed from: z */
    public final g f16387z = C25225a.m3978P1(new C12310k(this));

    /* renamed from: A */
    public final g f16380A = C25225a.m3978P1(new C12308i(this));

    /* renamed from: C */
    public final ServiceConnectionC12311l f16382C = new ServiceConnectionC12311l(this);

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VoipInAppNotificationView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: g1 */
    public static final void m34323g1(VoipInAppNotificationView voipInAppNotificationView) {
        if (voipInAppNotificationView.f16383v) {
            return;
        }
        Context context = voipInAppNotificationView.getContext();
        l.d(context, AnalyticsConstants.CONTEXT);
        View.inflate(context, C4781R.layout.view_voip_in_app_notification, voipInAppNotificationView);
        Resources resources = context.getResources();
        int i = C4781R.color.voip_in_app_notification_background_color;
        ThreadLocal<TypedValue> threadLocal = C26488h.f74265a;
        voipInAppNotificationView.setBackgroundColor(resources.getColor(i, null));
        AbstractC12299b abstractC12299b = voipInAppNotificationView.f16386y;
        if (abstractC12299b == null) {
            l.l("presenter");
            throw null;
        }
        ((AbstractC20576b) abstractC12299b).f57683a = voipInAppNotificationView;
        voipInAppNotificationView.setOnClickListener(new View$OnClickListenerC12309j(voipInAppNotificationView));
        voipInAppNotificationView.f16383v = true;
    }

    private final Chronometer getChronometer() {
        return (Chronometer) this.f16380A.getValue();
    }

    private final TextView getNameTextView() {
        return (TextView) this.f16387z.getValue();
    }

    @Override // p193e.p194a.p619d.p666y.p668b.AbstractC12300c
    /* renamed from: F0 */
    public void mo23298F0() {
        C19286f.m13689O(this);
        Context context = getContext();
        Context context2 = context;
        if (!(context instanceof Activity)) {
            context2 = null;
        }
        Activity activity = (Activity) context2;
        if (activity != null) {
            Window window = activity.getWindow();
            l.d(window, "it.window");
            Integer num = this.f16385x;
            window.setStatusBarColor(num != null ? num.intValue() : C19291g.m13612L(getContext(), C4781R.attr.tcx_statusBarColor));
            Window window2 = activity.getWindow();
            l.d(window2, "it.window");
            C17422k.m16073j(window2, this.f16384w);
        }
        getChronometer().stop();
    }

    @Override // p193e.p194a.p619d.p666y.p668b.AbstractC12300c
    /* renamed from: G */
    public void mo23297G() {
        C19286f.m13684T(this);
        m34321i1();
        C19286f.m13689O(getChronometer());
        getNameTextView().setText(getContext().getString(C4781R.string.voip_in_app_notification_incoming_call));
    }

    @Override // p193e.p194a.p619d.p666y.p668b.AbstractC12300c
    /* renamed from: I */
    public void mo23296I(String str, long j) {
        l.e(str, AnalyticsConstants.NAME);
        C19286f.m13684T(this);
        m34321i1();
        getNameTextView().setText(str);
        C19286f.m13684T(getChronometer());
        getChronometer().setBase(j);
        getChronometer().start();
    }

    @Override // p193e.p194a.p619d.p666y.p668b.AbstractC12300c
    /* renamed from: g0 */
    public void mo23295g0() {
        Context context = getContext();
        LegacyIncomingVoipActivity.C4814a c4814a = LegacyIncomingVoipActivity.f16374d;
        Context context2 = getContext();
        l.d(context2, AnalyticsConstants.CONTEXT);
        context.startActivity(LegacyIncomingVoipActivity.C4814a.m34326b(c4814a, context2, false, false, 6));
    }

    public final AbstractC12299b getPresenter() {
        AbstractC12299b abstractC12299b = this.f16386y;
        if (abstractC12299b != null) {
            return abstractC12299b;
        }
        l.l("presenter");
        throw null;
    }

    @Override // p193e.p194a.p619d.p666y.p668b.AbstractC12300c
    public ServiceType getServiceType() {
        return this.f16381B;
    }

    /* renamed from: h1 */
    public final void m34322h1() {
        getContext().bindService(new Intent(getContext(), LegacyVoipService.class), this.f16382C, 0);
        getContext().bindService(new Intent(getContext(), LegacyIncomingVoipService.class), this.f16382C, 0);
        getContext().bindService(new Intent(getContext(), CallService.class), this.f16382C, 0);
        getContext().bindService(new Intent(getContext(), InvitationService.class), this.f16382C, 0);
    }

    /* renamed from: i1 */
    public final void m34321i1() {
        Context context = getContext();
        Context context2 = context;
        if (!(context instanceof Activity)) {
            context2 = null;
        }
        Activity activity = (Activity) context2;
        if (activity != null) {
            Window window = activity.getWindow();
            l.d(window, "it.window");
            Context context3 = getContext();
            int i = C4781R.color.voip_in_app_notification_status_bar_color;
            Object obj = C26467a.f74235a;
            window.setStatusBarColor(C26467a.C26471d.m1787a(context3, i));
            Window window2 = activity.getWindow();
            l.d(window2, "it.window");
            C17422k.m16073j(window2, false);
        }
    }

    @Override // p193e.p194a.p619d.p666y.p668b.AbstractC12300c
    /* renamed from: l0 */
    public void mo23294l0() {
        Context context = getContext();
        Context context2 = getContext();
        l.d(context2, AnalyticsConstants.CONTEXT);
        context.startActivity(LegacyVoipActivity.m34331pa(context2));
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        m34322h1();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        AbstractC12299b abstractC12299b = this.f16386y;
        if (abstractC12299b != null) {
            if (abstractC12299b == null) {
                l.l("presenter");
                throw null;
            }
            ((AbstractC20574a) abstractC12299b).mo9806c();
        }
        try {
            getContext().unbindService(this.f16382C);
        } catch (Exception e) {
        }
        super.onDetachedFromWindow();
    }

    @Override // p193e.p194a.p619d.p666y.p668b.AbstractC12300c
    /* renamed from: q0 */
    public void mo23293q0() {
        C19286f.m13684T(this);
        m34321i1();
        C19286f.m13689O(getChronometer());
        getNameTextView().setText(getContext().getString(C4781R.string.voip_in_app_notification_outgoing_call));
    }

    public final void setPresenter(AbstractC12299b abstractC12299b) {
        l.e(abstractC12299b, "<set-?>");
        this.f16386y = abstractC12299b;
    }
}
