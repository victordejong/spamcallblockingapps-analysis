package com.facebook.internal;

import android.app.Dialog;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import com.facebook.AccessToken;
import com.facebook.internal.DialogC1182s0;
import com.facebook.login.EnumC1290x;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.razorpay.AnalyticsConstants;
import java.util.Objects;
import kotlin.Metadata;
import n3.r.a.k;
import n3.r.a.l;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1538j.C23222c0;
import p193e.p1538j.C23228f0;
@Metadata(d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018�� \u001a2\u00020\u0001:\u0001\u001aB\u0005¢\u0006\u0002\u0010\u0002J\r\u0010\t\u001a\u00020\nH\u0001¢\u0006\u0002\b\u000bJ\u001c\u0010\f\u001a\u00020\n2\b\u0010\r\u001a\u0004\u0018\u00010\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0002J\u0012\u0010\u0011\u001a\u00020\n2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0002J\u0010\u0010\u0012\u001a\u00020\n2\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0012\u0010\u0015\u001a\u00020\n2\b\u0010\u0016\u001a\u0004\u0018\u00010\u000eH\u0016J\u0012\u0010\u0017\u001a\u00020\u00042\b\u0010\u0016\u001a\u0004\u0018\u00010\u000eH\u0016J\b\u0010\u0018\u001a\u00020\nH\u0016J\b\u0010\u0019\u001a\u00020\nH\u0016R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\u001b"}, d2 = {"Lcom/facebook/internal/FacebookDialogFragment;", "Landroidx/fragment/app/DialogFragment;", "()V", "innerDialog", "Landroid/app/Dialog;", "getInnerDialog", "()Landroid/app/Dialog;", "setInnerDialog", "(Landroid/app/Dialog;)V", "initDialog", "", "initDialog$facebook_common_release", "onCompleteWebDialog", "values", "Landroid/os/Bundle;", "error", "Lcom/facebook/FacebookException;", "onCompleteWebFallbackDialog", "onConfigurationChanged", "newConfig", "Landroid/content/res/Configuration;", "onCreate", "savedInstanceState", "onCreateDialog", "onDestroyView", "onResume", "Companion", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.internal.w */
/* loaded from: classes2-dex2jar.jar:com/facebook/internal/w.class */
public final class C1227w extends k {

    /* renamed from: b */
    public static final /* synthetic */ int f3309b = 0;

    /* renamed from: a */
    public Dialog f3310a;

    /* renamed from: OA */
    public final void m41619OA(Bundle bundle, C23222c0 c23222c0) {
        l activity = getActivity();
        if (activity == null) {
            return;
        }
        C1146l0 c1146l0 = C1146l0.f3146a;
        Intent intent = activity.getIntent();
        s1.z.c.l.d(intent, "fragmentActivity.intent");
        activity.setResult(c23222c0 == null ? -1 : 0, C1146l0.m41722e(intent, bundle, c23222c0));
        activity.finish();
    }

    public void onConfigurationChanged(Configuration configuration) {
        s1.z.c.l.e(configuration, "newConfig");
        C1227w.super.onConfigurationChanged(configuration);
        if (!(this.f3310a instanceof DialogC1182s0) || !isResumed()) {
            return;
        }
        Dialog dialog = this.f3310a;
        Objects.requireNonNull(dialog, "null cannot be cast to non-null type com.facebook.internal.WebDialog");
        ((DialogC1182s0) dialog).m41644d();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v56, types: [com.facebook.internal.s0] */
    public void onCreate(Bundle bundle) {
        l activity;
        DialogC1235z dialogC1235z;
        C1227w.super.onCreate(bundle);
        if (this.f3310a == null && (activity = getActivity()) != null) {
            Intent intent = activity.getIntent();
            C1146l0 c1146l0 = C1146l0.f3146a;
            s1.z.c.l.d(intent, "intent");
            Bundle m41718i = C1146l0.m41718i(intent);
            String str = null;
            if (!(m41718i == null ? false : m41718i.getBoolean("is_fallback", false))) {
                String string = m41718i == null ? null : m41718i.getString("action");
                Bundle bundle2 = m41718i == null ? null : m41718i.getBundle("params");
                if (C1168q0.m41700B(string)) {
                    C23228f0 c23228f0 = C23228f0.f64291a;
                    boolean z = C23228f0.f64299i;
                    activity.finish();
                    return;
                }
                Objects.requireNonNull(string, "null cannot be cast to non-null type kotlin.String");
                s1.z.c.l.e(activity, AnalyticsConstants.CONTEXT);
                s1.z.c.l.e(string, "action");
                AccessToken.C0907c c0907c = AccessToken.f2460l;
                AccessToken m42030b = AccessToken.C0907c.m42030b();
                if (!AccessToken.C0907c.m42029c()) {
                    str = C1168q0.m41665r(activity);
                }
                if (bundle2 == null) {
                    bundle2 = new Bundle();
                }
                DialogC1182s0.AbstractC1186d abstractC1186d = new DialogC1182s0.AbstractC1186d() { // from class: com.facebook.internal.a
                    @Override // com.facebook.internal.DialogC1182s0.AbstractC1186d
                    /* renamed from: a */
                    public final void mo41560a(Bundle bundle3, C23222c0 c23222c0) {
                        C1227w c1227w = C1227w.this;
                        int i = C1227w.f3309b;
                        s1.z.c.l.e(c1227w, "this$0");
                        c1227w.m41619OA(bundle3, c23222c0);
                    }
                };
                if (m42030b != null) {
                    bundle2.putString(HiAnalyticsConstant.BI_KEY_APP_ID, m42030b.f2472h);
                    bundle2.putString("access_token", m42030b.f2469e);
                } else {
                    bundle2.putString(HiAnalyticsConstant.BI_KEY_APP_ID, str);
                }
                DialogC1182s0.C1184b c1184b = DialogC1182s0.f3207m;
                s1.z.c.l.e(activity, AnalyticsConstants.CONTEXT);
                DialogC1182s0.m41645b(activity);
                dialogC1235z = new DialogC1182s0(activity, string, bundle2, 0, EnumC1290x.FACEBOOK, abstractC1186d, null);
            } else {
                String string2 = m41718i == null ? null : m41718i.getString("url");
                if (C1168q0.m41700B(string2)) {
                    C23228f0 c23228f02 = C23228f0.f64291a;
                    boolean z2 = C23228f0.f64299i;
                    activity.finish();
                    return;
                }
                C23228f0 c23228f03 = C23228f0.f64291a;
                String m8562v = C22128a.m8562v(new Object[]{C23228f0.m7353b()}, 1, "fb%s://bridge/", "java.lang.String.format(format, *args)");
                DialogC1235z dialogC1235z2 = DialogC1235z.f3328q;
                Objects.requireNonNull(string2, "null cannot be cast to non-null type kotlin.String");
                s1.z.c.l.e(activity, AnalyticsConstants.CONTEXT);
                s1.z.c.l.e(string2, "url");
                s1.z.c.l.e(m8562v, "expectedRedirectUrl");
                DialogC1182s0.C1184b c1184b2 = DialogC1182s0.f3207m;
                DialogC1182s0.m41645b(activity);
                dialogC1235z = new DialogC1235z(activity, string2, m8562v, null);
                dialogC1235z.f3212c = new DialogC1182s0.AbstractC1186d() { // from class: com.facebook.internal.b
                    @Override // com.facebook.internal.DialogC1182s0.AbstractC1186d
                    /* renamed from: a */
                    public final void mo41560a(Bundle bundle3, C23222c0 c23222c0) {
                        C1227w c1227w = C1227w.this;
                        int i = C1227w.f3309b;
                        s1.z.c.l.e(c1227w, "this$0");
                        l activity2 = c1227w.getActivity();
                        if (activity2 == null) {
                            return;
                        }
                        Intent intent2 = new Intent();
                        Bundle bundle4 = bundle3;
                        if (bundle3 == null) {
                            bundle4 = new Bundle();
                        }
                        intent2.putExtras(bundle4);
                        activity2.setResult(-1, intent2);
                        activity2.finish();
                    }
                };
            }
            this.f3310a = dialogC1235z;
        }
    }

    public Dialog onCreateDialog(Bundle bundle) {
        Dialog dialog = this.f3310a;
        if (dialog != null) {
            Objects.requireNonNull(dialog, "null cannot be cast to non-null type android.app.Dialog");
            return dialog;
        }
        m41619OA(null, null);
        setShowsDialog(false);
        Dialog onCreateDialog = C1227w.super.onCreateDialog(bundle);
        s1.z.c.l.d(onCreateDialog, "super.onCreateDialog(savedInstanceState)");
        return onCreateDialog;
    }

    public void onDestroyView() {
        Dialog dialog = getDialog();
        if (dialog != null && getRetainInstance()) {
            dialog.setDismissMessage(null);
        }
        C1227w.super.onDestroyView();
    }

    public void onResume() {
        C1227w.super.onResume();
        Dialog dialog = this.f3310a;
        if (dialog instanceof DialogC1182s0) {
            Objects.requireNonNull(dialog, "null cannot be cast to non-null type com.facebook.internal.WebDialog");
            ((DialogC1182s0) dialog).m41644d();
        }
    }
}
