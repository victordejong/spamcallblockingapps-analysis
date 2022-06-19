package p193e.p194a.p195a.p223c1;

import com.truecaller.messaging.data.types.Draft;
import javax.inject.Inject;
import p193e.p194a.p1114o5.AbstractC19108u0;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1187r2.AbstractC19891x;
import p193e.p194a.p195a.p223c1.AbstractC5843b;
import p193e.p194a.p195a.p244k.AbstractC6708t;
import p193e.p194a.p851h5.AbstractC14965w;
import s1.z.c.l;
/* renamed from: e.a.a.c1.h */
/* loaded from: classes7-dex2jar.jar:e/a/a/c1/h.class */
public final class C5858h implements AbstractC5854d {

    /* renamed from: a */
    public final AbstractC19230g f19604a;

    /* renamed from: b */
    public final AbstractC14965w f19605b;

    /* renamed from: c */
    public final AbstractC19108u0 f19606c;

    /* renamed from: d */
    public final AbstractC6708t f19607d;

    /* renamed from: e */
    public final AbstractC19854f<AbstractC5865l> f19608e;

    @Inject
    public C5858h(AbstractC19230g abstractC19230g, AbstractC14965w abstractC14965w, AbstractC19108u0 abstractC19108u0, AbstractC6708t abstractC6708t, AbstractC19854f<AbstractC5865l> abstractC19854f) {
        l.e(abstractC19230g, "deviceInfoUtil");
        l.e(abstractC14965w, "tcPermissionUtil");
        l.e(abstractC19108u0, "mediaUtils");
        l.e(abstractC6708t, "transportManager");
        l.e(abstractC19854f, "draftTransportWrapper");
        this.f19604a = abstractC19230g;
        this.f19605b = abstractC14965w;
        this.f19606c = abstractC19108u0;
        this.f19607d = abstractC6708t;
        this.f19608e = abstractC19854f;
    }

    @Override // p193e.p194a.p195a.p223c1.AbstractC5854d
    /* renamed from: a */
    public AbstractC19891x<AbstractC5840a> mo32324a(Draft draft, String str, boolean z, String str2) {
        l.e(draft, "draft");
        l.e(str, "simToken");
        l.e(str2, "analyticsContext");
        return this.f19608e.mo11854a().mo32321a(draft, str, z, str2);
    }

    @Override // p193e.p194a.p195a.p223c1.AbstractC5854d
    /* renamed from: b */
    public AbstractC19891x<AbstractC5851c> mo32323b(AbstractC5843b.C5848e c5848e, boolean z, String str, long j) {
        l.e(c5848e, "preparationResult");
        l.e(str, "analyticsContext");
        return this.f19608e.mo11854a().mo32320b(c5848e.f19592a, c5848e.f19593b, c5848e.f19594c, z, str, j);
    }

    /* JADX WARN: Code restructure failed: missing block: B:107:0x03c7, code lost:
        if (r0 != null) goto L109;
     */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00bc  */
    @Override // p193e.p194a.p195a.p223c1.AbstractC5854d
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p193e.p194a.p195a.p223c1.AbstractC5843b mo32322c(java.util.List<? extends s1.k<com.truecaller.messaging.data.types.Draft, ? extends java.util.Collection<? extends com.truecaller.messaging.data.types.BinaryEntity>>> r8, java.lang.String r9, boolean r10, boolean r11, boolean r12) {
        /*
            Method dump skipped, instructions count: 987
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p223c1.C5858h.mo32322c(java.util.List, java.lang.String, boolean, boolean, boolean):e.a.a.c1.b");
    }
}
