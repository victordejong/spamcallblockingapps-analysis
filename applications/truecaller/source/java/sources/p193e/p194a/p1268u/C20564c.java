package p193e.p194a.p1268u;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import com.truecaller.stats.C4513R;
import javax.inject.Inject;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p935j0.AbstractC15519f;
import s1.z.c.l;
/* renamed from: e.a.u.c */
/* loaded from: classes16-dex2jar.jar:e/a/u/c.class */
public final class C20564c {

    /* renamed from: a */
    public final AbstractC19223c0 f57654a;

    /* renamed from: b */
    public final Context f57655b;

    /* renamed from: c */
    public final AbstractC15519f f57656c;

    @Inject
    public C20564c(AbstractC19223c0 abstractC19223c0, Context context, AbstractC15519f abstractC15519f) {
        l.e(abstractC19223c0, "resourceProvider");
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC15519f, "currentLanguageProvider");
        this.f57654a = abstractC19223c0;
        this.f57655b = context;
        this.f57656c = abstractC15519f;
    }

    /* renamed from: a */
    public final int m11023a() {
        return this.f57656c.mo18716a() ? C4513R.string.year_in_tc_messages_automatically_removed_en : C4513R.string.year_in_tc_messages_automatically_removed_other;
    }
}
