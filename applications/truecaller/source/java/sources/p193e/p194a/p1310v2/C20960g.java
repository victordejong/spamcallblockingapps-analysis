package p193e.p194a.p1310v2;

import com.truecaller.attestation.AttestationEngine;
import java.io.IOException;
import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1130q0.C19259e;
import p193e.p194a.p1310v2.p1312w.C21000b;
import p193e.p194a.p1310v2.p1312w.C21002c;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.l;
import s1.z.b.p;
import s1.z.c.m;
@e(c = "com.truecaller.attestation.AttestationManagerImpl$verifyAttestation$response$1", f = "AttestationManager.kt", l = {121}, m = "invokeSuspend")
/* renamed from: e.a.v2.g */
/* loaded from: classes5-dex2jar.jar:e/a/v2/g.class */
public final class C20960g extends i implements p<i0, d<? super C21002c>, Object> {

    /* renamed from: e */
    public int f58922e;

    /* renamed from: f */
    public final /* synthetic */ C20956e f58923f;

    /* renamed from: g */
    public final /* synthetic */ String f58924g;

    /* renamed from: h */
    public final /* synthetic */ AttestationEngine f58925h;

    /* renamed from: e.a.v2.g$a */
    /* loaded from: classes5-dex2jar.jar:e/a/v2/g$a.class */
    public static final class C20961a extends m implements l<C21002c, Boolean> {

        /* renamed from: b */
        public static final C20961a f58926b = new C20961a();

        public C20961a() {
            super(1);
        }

        /* renamed from: d */
        public Object m10455d(Object obj) {
            C21002c c21002c = (C21002c) obj;
            return Boolean.valueOf(c21002c == null || c21002c.f59007a == 500);
        }
    }

    /* renamed from: e.a.v2.g$b */
    /* loaded from: classes5-dex2jar.jar:e/a/v2/g$b.class */
    public static final class C20962b extends m implements l<Integer, C21002c> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C20962b() {
            super(1);
            C20960g.this = r4;
        }

        /* renamed from: d */
        public Object m10454d(Object obj) {
            C21002c c21002c;
            ((Number) obj).intValue();
            try {
                C20960g c20960g = C20960g.this;
                c21002c = ((C21000b) c20960g.f58923f.f58914g).m10433b(c20960g.f58924g, c20960g.f58925h);
            } catch (IOException e) {
                c21002c = null;
            }
            return c21002c;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C20960g(C20956e c20956e, String str, AttestationEngine attestationEngine, d dVar) {
        super(2, dVar);
        this.f58923f = c20956e;
        this.f58924g = str;
        this.f58925h = attestationEngine;
    }

    /* renamed from: i */
    public final d<s> m10458i(Object obj, d<?> dVar) {
        s1.z.c.l.e(dVar, "completion");
        return new C20960g(this.f58923f, this.f58924g, this.f58925h, dVar);
    }

    /* renamed from: k */
    public final Object m10457k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        s1.z.c.l.e(dVar, "completion");
        return new C20960g(this.f58923f, this.f58924g, this.f58925h, dVar).m10456s(s.a);
    }

    /* renamed from: s */
    public final Object m10456s(Object obj) {
        a aVar = a.a;
        int i = this.f58922e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            C20956e c20956e = this.f58923f;
            C19259e c19259e = c20956e.f58910c;
            long j = c20956e.f58916i;
            C20961a c20961a = C20961a.f58926b;
            C20962b c20962b = new C20962b();
            this.f58922e = 1;
            Objects.requireNonNull(c19259e);
            Object m13732a = C19259e.m13732a(c19259e, 2, j, c20961a, c20962b, this);
            obj = m13732a;
            if (m13732a == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        return obj;
    }
}
