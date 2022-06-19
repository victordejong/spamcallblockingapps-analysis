package p193e.p194a.p1310v2;

import com.truecaller.attestation.AttestationEngine;
import java.io.IOException;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1129p5.p1130q0.C19259e;
import p193e.p194a.p1310v2.p1311v.AbstractC20992a;
import p193e.p194a.p1310v2.p1312w.C21006g;
import p193e.p194a.p1310v2.p1312w.C21007h;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.v2.u */
/* loaded from: classes5-dex2jar.jar:e/a/v2/u.class */
public final class C20988u implements AbstractC20986s {

    /* renamed from: a */
    public final C19259e f58961a;

    /* renamed from: b */
    public final AbstractC20992a f58962b;

    /* renamed from: c */
    public final C21006g f58963c;

    /* renamed from: d */
    public final AbstractC20964i f58964d;

    /* renamed from: e */
    public final AbstractC20951a f58965e;

    /* renamed from: f */
    public final f f58966f;

    /* renamed from: g */
    public final long f58967g;

    @e(c = "com.truecaller.attestation.VerificationAttestationManagerImpl", f = "VerificationAttestationManager.kt", l = {60}, m = "verifyAttestation")
    /* renamed from: e.a.v2.u$a */
    /* loaded from: classes5-dex2jar.jar:e/a/v2/u$a.class */
    public static final class C20989a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f58968d;

        /* renamed from: e */
        public int f58969e;

        /* renamed from: g */
        public Object f58971g;

        /* renamed from: h */
        public Object f58972h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C20989a(d dVar) {
            super(dVar);
            C20988u.this = r4;
        }

        /* renamed from: s */
        public final Object m10441s(Object obj) {
            this.f58968d = obj;
            this.f58969e |= Integer.MIN_VALUE;
            return C20988u.this.m10442a(null, null, null, 0L, this);
        }
    }

    /* renamed from: e.a.v2.u$b */
    /* loaded from: classes5-dex2jar.jar:e/a/v2/u$b.class */
    public static final class C20990b extends m implements l<C21007h, Boolean> {

        /* renamed from: b */
        public static final C20990b f58973b = new C20990b();

        public C20990b() {
            super(1);
        }

        /* renamed from: d */
        public Object m10440d(Object obj) {
            C21007h c21007h = (C21007h) obj;
            return Boolean.valueOf(c21007h == null || c21007h.f59011a == 500);
        }
    }

    /* renamed from: e.a.v2.u$c */
    /* loaded from: classes5-dex2jar.jar:e/a/v2/u$c.class */
    public static final class C20991c extends m implements l<Integer, C21007h> {

        /* renamed from: c */
        public final /* synthetic */ String f58975c;

        /* renamed from: d */
        public final /* synthetic */ AttestationEngine f58976d;

        /* renamed from: e */
        public final /* synthetic */ String f58977e;

        /* renamed from: f */
        public final /* synthetic */ long f58978f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C20991c(String str, AttestationEngine attestationEngine, String str2, long j) {
            super(1);
            C20988u.this = r5;
            this.f58975c = str;
            this.f58976d = attestationEngine;
            this.f58977e = str2;
            this.f58978f = j;
        }

        /* renamed from: d */
        public Object m10439d(Object obj) {
            C21007h c21007h;
            ((Number) obj).intValue();
            try {
                c21007h = C20988u.this.f58963c.m10423a(this.f58975c, this.f58976d, this.f58977e, this.f58978f);
            } catch (IOException e) {
                c21007h = null;
            }
            return c21007h;
        }
    }

    @Inject
    public C20988u(C19259e c19259e, AbstractC20992a abstractC20992a, C21006g c21006g, AbstractC20964i abstractC20964i, AbstractC20951a abstractC20951a, @Named("IO") f fVar, long j) {
        s1.z.c.l.e(c19259e, "retryHelper");
        s1.z.c.l.e(abstractC20992a, "analyticsManager");
        s1.z.c.l.e(c21006g, "attestationRequestHelper");
        s1.z.c.l.e(abstractC20964i, "attestationProvider");
        s1.z.c.l.e(abstractC20951a, "attestationAvailabilityProvider");
        s1.z.c.l.e(fVar, "ioContext");
        this.f58961a = c19259e;
        this.f58962b = abstractC20992a;
        this.f58963c = c21006g;
        this.f58964d = abstractC20964i;
        this.f58965e = abstractC20951a;
        this.f58966f = fVar;
        this.f58967g = j;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00fa  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m10442a(java.lang.String r10, com.truecaller.attestation.AttestationEngine r11, java.lang.String r12, long r13, s1.w.d<? super p193e.p194a.p1310v2.AbstractC20968l> r15) {
        /*
            Method dump skipped, instructions count: 353
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1310v2.C20988u.m10442a(java.lang.String, com.truecaller.attestation.AttestationEngine, java.lang.String, long, s1.w.d):java.lang.Object");
    }
}
