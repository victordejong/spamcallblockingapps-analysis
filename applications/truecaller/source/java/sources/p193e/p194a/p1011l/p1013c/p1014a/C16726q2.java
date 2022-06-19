package p193e.p194a.p1011l.p1013c.p1014a;

import android.content.Context;
import android.net.Uri;
import com.razorpay.AnalyticsConstants;
import javax.inject.Inject;
import p193e.p194a.p1011l.p1013c.p1014a.p1015i3.AbstractC16686b;
import p193e.p194a.p1011l.p1025p2.AbstractC17197v0;
import p193e.p194a.p1129p5.AbstractC19223c0;
import s1.z.c.l;
/* renamed from: e.a.l.c.a.q2 */
/* loaded from: classes12-dex2jar.jar:e/a/l/c/a/q2.class */
public final class C16726q2 {

    /* renamed from: a */
    public final Context f46895a;

    /* renamed from: b */
    public final AbstractC19223c0 f46896b;

    /* renamed from: c */
    public final AbstractC17197v0 f46897c;

    /* renamed from: d */
    public final AbstractC16686b f46898d;

    @Inject
    public C16726q2(Context context, AbstractC19223c0 abstractC19223c0, AbstractC17197v0 abstractC17197v0, AbstractC16686b abstractC16686b) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC19223c0, "resourceProvider");
        l.e(abstractC17197v0, "premiumStateSettings");
        l.e(abstractC16686b, "cardRankFactory");
        this.f46895a = context;
        this.f46896b = abstractC19223c0;
        this.f46897c = abstractC17197v0;
        this.f46898d = abstractC16686b;
    }

    /* renamed from: a */
    public final Uri m17073a(int i) {
        Uri build = new Uri.Builder().scheme("android.resource").authority(this.f46895a.getResources().getResourcePackageName(i)).appendPath(this.f46895a.getResources().getResourceTypeName(i)).appendPath(this.f46895a.getResources().getResourceEntryName(i)).build();
        l.d(build, "Uri.Builder()\n          …Id))\n            .build()");
        return build;
    }
}
