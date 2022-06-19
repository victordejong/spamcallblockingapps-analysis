package p193e.p194a.p1053m0;

import android.content.ContentResolver;
import javax.inject.Inject;
import p193e.p194a.p1129p5.AbstractC19247m0;
import p193e.p194a.p372b0.p430q.AbstractC8621z;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.m0.z0 */
/* loaded from: classes8-dex2jar.jar:e/a/m0/z0.class */
public final class C18140z0 {

    /* renamed from: a */
    public final ContentResolver f51048a;

    /* renamed from: b */
    public final AbstractC8621z f51049b;

    /* renamed from: c */
    public final f f51050c;

    /* renamed from: d */
    public final AbstractC19247m0 f51051d;

    @Inject
    public C18140z0(ContentResolver contentResolver, AbstractC8621z abstractC8621z, f fVar, AbstractC19247m0 abstractC19247m0) {
        l.e(contentResolver, "contentResolver");
        l.e(abstractC8621z, "phoneNumberHelper");
        l.e(fVar, "asyncContext");
        l.e(abstractC19247m0, "traceUtil");
        this.f51048a = contentResolver;
        this.f51049b = abstractC8621z;
        this.f51050c = fVar;
        this.f51051d = abstractC19247m0;
    }
}
