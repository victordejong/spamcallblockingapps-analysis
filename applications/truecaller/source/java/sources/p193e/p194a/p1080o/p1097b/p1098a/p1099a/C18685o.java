package p193e.p194a.p1080o.p1097b.p1098a.p1099a;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import com.truecaller.contextcall.C3771R;
import com.truecaller.contextcall.utils.view.ondemandreasonpicker.OnDemandCallReasonPickerThemesConfig;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import s1.i;
import s1.z.c.l;
/* renamed from: e.a.o.b.a.a.o */
/* loaded from: classes8-dex2jar.jar:e/a/o/b/a/a/o.class */
public final class C18685o implements AbstractC18684n {
    /* renamed from: a */
    public C18689r m14630a(Context context, OnDemandCallReasonPickerThemesConfig onDemandCallReasonPickerThemesConfig) {
        C18689r c18689r;
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(onDemandCallReasonPickerThemesConfig, "themeConfig");
        int ordinal = onDemandCallReasonPickerThemesConfig.ordinal();
        if (ordinal == 0) {
            int i = C3771R.color.tcx_textSecondary_dark;
            Object obj = C26467a.f74235a;
            c18689r = new C18689r(C26467a.C26471d.m1787a(context, i), C26467a.C26471d.m1787a(context, C3771R.color.tcx_textTertiary_dark), C26467a.C26471d.m1787a(context, C3771R.color.context_call_on_demand_picker_bg), C26467a.C26471d.m1787a(context, C3771R.color.tcx_textPrimary_dark), C26467a.C26471d.m1787a(context, C3771R.color.tcx_fillQuarternaryBackground_dark), C26467a.C26471d.m1787a(context, i));
        } else if (ordinal == 1) {
            l.e(context, AnalyticsConstants.CONTEXT);
            int i2 = C3771R.attr.tcx_textSecondary;
            c18689r = new C18689r(C19291g.m13612L(context, i2), C19291g.m13612L(context, C3771R.attr.tcx_textTertiary), C19291g.m13612L(context, C3771R.attr.tcx_backgroundPrimary), C19291g.m13612L(context, C3771R.attr.tcx_textPrimary), C19291g.m13612L(context, C3771R.attr.tcx_fillQuarternaryBackground), C19291g.m13612L(context, i2));
        } else if (ordinal == 2) {
            int i3 = C3771R.color.tcx_textSecondary_dark;
            Object obj2 = C26467a.f74235a;
            c18689r = new C18689r(C26467a.C26471d.m1787a(context, i3), C26467a.C26471d.m1787a(context, i3), C26467a.C26471d.m1787a(context, C3771R.color.tcx_backgroundTertiary_dark), C26467a.C26471d.m1787a(context, C3771R.color.tcx_textPrimary_dark), C26467a.C26471d.m1787a(context, C3771R.color.tcx_fillQuarternaryBackground_dark), C26467a.C26471d.m1787a(context, i3));
        } else if (ordinal != 3) {
            if (ordinal == 4) {
                throw new Exception("Theme not provided");
            }
            throw new i();
        } else {
            int i4 = C3771R.color.tcx_textSecondary_dark;
            Object obj3 = C26467a.f74235a;
            c18689r = new C18689r(C26467a.C26471d.m1787a(context, i4), C26467a.C26471d.m1787a(context, i4), C26467a.C26471d.m1787a(context, C3771R.color.tcx_backgroundTertiary_dark), C26467a.C26471d.m1787a(context, C3771R.color.tcx_textPrimary_dark), C26467a.C26471d.m1787a(context, C3771R.color.tcx_fillQuarternaryBackground_dark), C26467a.C26471d.m1787a(context, i4));
        }
        return c18689r;
    }
}
