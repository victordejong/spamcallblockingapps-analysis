package p193e.p194a.p1310v2;

import com.truecaller.attestation.AttestationEngine;
import java.util.List;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1129p5.p1130q0.C19259e;
import p193e.p194a.p1310v2.p1311v.AbstractC20992a;
import p193e.p194a.p1310v2.p1312w.AbstractC20999a;
import s1.g;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.v2.e */
/* loaded from: classes5-dex2jar.jar:e/a/v2/e.class */
public final class C20956e implements AbstractC20954c {

    /* renamed from: a */
    public final g f58908a = C25225a.m3978P1(new C20957a());

    /* renamed from: b */
    public final AbstractC19222c f58909b;

    /* renamed from: c */
    public final C19259e f58910c;

    /* renamed from: d */
    public final AbstractC20951a f58911d;

    /* renamed from: e */
    public final AbstractC20992a f58912e;

    /* renamed from: f */
    public final AbstractC20976m f58913f;

    /* renamed from: g */
    public final AbstractC20999a f58914g;

    /* renamed from: h */
    public final AbstractC20964i f58915h;

    /* renamed from: i */
    public final long f58916i;

    /* renamed from: e.a.v2.e$a */
    /* loaded from: classes5-dex2jar.jar:e/a/v2/e$a.class */
    public static final class C20957a extends m implements a<List<? extends AttestationEngine>> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C20957a() {
            super(0);
            C20956e.this = r4;
        }

        public Object invoke() {
            return C20956e.this.f58911d.mo10446b();
        }
    }

    @Inject
    public C20956e(AbstractC19222c abstractC19222c, C19259e c19259e, AbstractC20951a abstractC20951a, AbstractC20992a abstractC20992a, AbstractC20976m abstractC20976m, AbstractC20999a abstractC20999a, AbstractC20964i abstractC20964i, long j) {
        l.e(abstractC19222c, "clock");
        l.e(c19259e, "retryHelper");
        l.e(abstractC20951a, "attestationAvailabilityProvider");
        l.e(abstractC20992a, "analyticsManager");
        l.e(abstractC20976m, "attestationSettings");
        l.e(abstractC20999a, "attestationRequestHelper");
        l.e(abstractC20964i, "attestationProvider");
        this.f58909b = abstractC19222c;
        this.f58910c = c19259e;
        this.f58911d = abstractC20951a;
        this.f58912e = abstractC20992a;
        this.f58913f = abstractC20976m;
        this.f58914g = abstractC20999a;
        this.f58915h = abstractC20964i;
        this.f58916i = j;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00f4  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x010b  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x012d  */
    /* JADX WARN: Type inference failed for: r0v152, types: [e.a.v2.o$a] */
    /* JADX WARN: Type inference failed for: r0v170, types: [e.a.v2.o$a] */
    /* JADX WARN: Type inference failed for: r0v28, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v36, types: [java.lang.Object] */
    @Override // p193e.p194a.p1310v2.AbstractC20954c
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p193e.p194a.p1310v2.AbstractC20968l mo10466a() {
        /*
            Method dump skipped, instructions count: 897
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1310v2.C20956e.mo10466a():e.a.v2.l");
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x005b, code lost:
        if (r7 != false) goto L18;
     */
    @Override // p193e.p194a.p1310v2.AbstractC20954c
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo10465b() {
        /*
            r3 = this;
            r0 = r3
            e.a.v2.a r0 = r0.f58911d
            boolean r0 = r0.mo10447a()
            r4 = r0
            r0 = 1
            r5 = r0
            r0 = r4
            if (r0 == 0) goto L61
            r0 = r3
            s1.g r0 = r0.f58908a
            java.lang.Object r0 = r0.getValue()
            java.util.List r0 = (java.util.List) r0
            r6 = r0
            r0 = r6
            boolean r0 = r0 instanceof java.util.Collection
            if (r0 == 0) goto L30
            r0 = r6
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L30
            goto L56
        L30:
            r0 = r6
            java.util.Iterator r0 = r0.iterator()
            r6 = r0
        L37:
            r0 = r6
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L56
            r0 = r3
            r1 = r6
            java.lang.Object r1 = r1.next()
            com.truecaller.attestation.AttestationEngine r1 = (com.truecaller.attestation.AttestationEngine) r1
            boolean r0 = r0.m10464c(r1)
            if (r0 == 0) goto L37
            r0 = 1
            r7 = r0
            goto L59
        L56:
            r0 = 0
            r7 = r0
        L59:
            r0 = r7
            if (r0 == 0) goto L61
            goto L63
        L61:
            r0 = 0
            r5 = r0
        L63:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1310v2.C20956e.mo10465b():boolean");
    }

    /* renamed from: c */
    public final boolean m10464c(AttestationEngine attestationEngine) {
        boolean z;
        if (attestationEngine.ordinal() != 0) {
            Long l = this.f58913f.getLong("attestationLastTime", 0L);
            l.d(l, "attestationSettings.getL…ATTESTATION_LAST_TIME, 0)");
            long longValue = l.longValue();
            Long l2 = this.f58913f.getLong("attestationTtl", 0L);
            l.d(l2, "attestationSettings.getL…tings.ATTESTATION_TTL, 0)");
            z = m10463d(longValue, l2.longValue());
        } else {
            Long l3 = this.f58913f.getLong("playIntegrityLastTime", 0L);
            l.d(l3, "attestationSettings.getL…Y_INTEGRITY_LAST_TIME, 0)");
            long longValue2 = l3.longValue();
            Long l4 = this.f58913f.getLong("playIntegrityTtl", 0L);
            l.d(l4, "attestationSettings.getL…gs.PLAY_INTEGRITY_TTL, 0)");
            z = m10463d(longValue2, l4.longValue());
        }
        return z;
    }

    /* renamed from: d */
    public final boolean m10463d(long j, long j2) {
        long mo13819c = this.f58909b.mo13819c();
        return mo13819c < j || j + j2 < mo13819c;
    }
}
