package p193e.p194a.p1275v.p1276a.p1294n0;

import android.app.Activity;
import android.view.View;
import com.truecaller.details_view.C3857R;
import com.truecaller.details_view.p162ui.showcase.DetailsShowcases;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1129p5.p1134u0.AbstractC19322a;
import p193e.p194a.p1129p5.p1134u0.AbstractC19323b;
import p193e.p194a.p1129p5.p1134u0.C19326d;
import s1.i;
import s1.z.c.l;
/* renamed from: e.a.v.a.n0.c */
/* loaded from: classes8-dex2jar.jar:e/a/v/a/n0/c.class */
public final class C20804c implements AbstractC20802a {

    /* renamed from: a */
    public final AbstractC19322a f58458a;

    /* renamed from: b */
    public final AbstractC19322a f58459b;

    /* renamed from: c */
    public final AbstractC19323b f58460c;

    @Inject
    public C20804c(@Named("voip_showcase") AbstractC19322a abstractC19322a, @Named("context_call_showcase") AbstractC19322a abstractC19322a2, AbstractC19323b abstractC19323b) {
        l.e(abstractC19322a, "voipShowcase");
        l.e(abstractC19322a2, "contextCallShowcase");
        l.e(abstractC19323b, "featuresShowcaseUtilsImpl");
        this.f58458a = abstractC19322a;
        this.f58459b = abstractC19322a2;
        this.f58460c = abstractC19323b;
    }

    /* renamed from: a */
    public final C19326d m10681a(DetailsShowcases detailsShowcases, View view, Activity activity) {
        C19326d c19326d;
        int ordinal = detailsShowcases.ordinal();
        if (ordinal == 0) {
            String name = detailsShowcases.name();
            int i = C3857R.string.voip_showcase_title;
            int i2 = C3857R.string.voip_text;
            String string = activity.getString(i, new Object[]{activity.getString(i2)});
            l.d(string, "activity.getString(R.str…ring(R.string.voip_text))");
            String string2 = activity.getString(C3857R.string.voip_showcase_message, new Object[]{activity.getString(i2)});
            l.d(string2, "activity.getString(R.str…ring(R.string.voip_text))");
            int i3 = C3857R.color.voip_showcase_color;
            c19326d = new C19326d(view, 1, string, string2, name, 16, 14, i3, i3, C3857R.color.voip_showcase_text_color, null, 1024);
        } else if (ordinal != 1) {
            throw new i();
        } else {
            String name2 = detailsShowcases.name();
            String string3 = activity.getString(C3857R.string.context_call_showcase_title);
            l.d(string3, "activity.getString(R.str…text_call_showcase_title)");
            String string4 = activity.getString(C3857R.string.context_call_showcase_message);
            l.d(string4, "activity.getString(R.str…xt_call_showcase_message)");
            int i4 = C3857R.color.tcx_brandBackgroundBlue_light;
            int i5 = C3857R.color.tcx_backgroundPrimary_light;
            c19326d = new C19326d(view, 2, string3, string4, name2, 24, 16, i4, C3857R.color.context_call_transparent, i5, Integer.valueOf(i5));
        }
        return c19326d;
    }
}
