package p1727n3.p1909z;

import android.support.p001v4.media.session.MediaSessionCompat;
import com.amazon.device.ads.DTBMetricsConfiguration;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import p1727n3.p1909z.AbstractC27573i3;
import p1727n3.p1909z.AbstractC27583k2;
import p1727n3.p1909z.AbstractC27597r0;
import p1727n3.p1909z.C27581k1;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import q3.a.w2.i;
import q3.a.w2.j;
import q3.a.x2.d1;
import q3.a.x2.f;
import q3.a.x2.g1;
import q3.a.x2.z0;
import q3.a.y;
import s1.a.a.a.v0.f.d;
import s1.s;
import s1.z.b.a;
import s1.z.c.l;
/* renamed from: n3.z.g1 */
/* loaded from: classes-dex2jar.jar:n3/z/g1.class */
public final class C27567g1<Key, Value> {

    /* renamed from: a */
    public final z0<AbstractC27573i3> f77659a;

    /* renamed from: b */
    public AbstractC27573i3.a f77660b;

    /* renamed from: c */
    public final AtomicBoolean f77661c;

    /* renamed from: d */
    public final j<AbstractC27557c1<Value>> f77662d;

    /* renamed from: e */
    public final C27581k1.C27582a<Key, Value> f77663e;

    /* renamed from: f */
    public final y f77664f;

    /* renamed from: g */
    public final f<AbstractC27557c1<Value>> f77665g;

    /* renamed from: h */
    public final Key f77666h;

    /* renamed from: i */
    public final AbstractC27583k2<Key, Value> f77667i;

    /* renamed from: j */
    public final C27549a2 f77668j;

    /* renamed from: k */
    public final f<s> f77669k;

    /* renamed from: l */
    public final boolean f77670l;

    /* renamed from: m */
    public final AbstractC27598r2<Key, Value> f77671m;

    /* renamed from: n */
    public final C27589l2<Key, Value> f77672n;

    /* renamed from: o */
    public final a<s> f77673o;

    public C27567g1(Key key, AbstractC27583k2<Key, Value> abstractC27583k2, C27549a2 c27549a2, f<s> fVar, boolean z, AbstractC27598r2<Key, Value> abstractC27598r2, C27589l2<Key, Value> c27589l2, a<s> aVar) {
        l.e(abstractC27583k2, "pagingSource");
        l.e(c27549a2, DTBMetricsConfiguration.CONFIG_DIR);
        l.e(fVar, "retryFlow");
        l.e(aVar, "invalidate");
        this.f77666h = key;
        this.f77667i = abstractC27583k2;
        this.f77668j = c27549a2;
        this.f77669k = fVar;
        this.f77670l = z;
        this.f77671m = abstractC27598r2;
        this.f77672n = c27589l2;
        this.f77673o = aVar;
        if (c27549a2.f77602f == Integer.MIN_VALUE || abstractC27583k2.m66b()) {
            this.f77659a = g1.a(1, 0, (i) null, 6);
            this.f77661c = new AtomicBoolean(false);
            this.f77662d = d.f(-2, (i) null, (s1.z.b.l) null, 6);
            this.f77663e = new C27581k1.C27582a<>(c27549a2);
            y j = d.j((p1) null, 1, (Object) null);
            this.f77664f = j;
            g gVar = new g(this, (s1.w.d) null);
            l.e(j, "controller");
            l.e(gVar, "block");
            this.f77665g = MediaSessionCompat.m43320A1(new o(j, gVar, (s1.w.d) null));
            return;
        }
        throw new IllegalArgumentException("PagingConfig.jumpThreshold was set, but the associated PagingSource has not marked support for jumps by overriding PagingSource.jumpingSupported to true.".toString());
    }

    /* renamed from: a */
    public static final void m99a(C27567g1 c27567g1, i0 i0Var) {
        if (c27567g1.f77668j.f77602f != Integer.MIN_VALUE) {
            d.w2(i0Var, (s1.w.f) null, (j0) null, new h1(c27567g1, (s1.w.d) null), 3, (Object) null);
        }
        d.w2(i0Var, (s1.w.f) null, (j0) null, new i1(c27567g1, (s1.w.d) null), 3, (Object) null);
        d.w2(i0Var, (s1.w.f) null, (j0) null, new j1(c27567g1, (s1.w.d) null), 3, (Object) null);
    }

    /* renamed from: b */
    public final Object m98b(f<Integer> fVar, EnumC27601t0 enumC27601t0, s1.w.d<? super s> dVar) {
        b bVar = new b((s1.w.d) null, this, enumC27601t0);
        Object obj = C27560e0.f77634a;
        l.e(fVar, "$this$simpleTransformLatest");
        l.e(bVar, "transform");
        f m43320A1 = MediaSessionCompat.m43320A1(new d0(fVar, bVar, (s1.w.d) null));
        c cVar = new c(enumC27601t0, (s1.w.d) null);
        l.e(m43320A1, "$this$simpleRunningReduce");
        l.e(cVar, "operation");
        Object c = d.L(new d1(new b0(m43320A1, cVar, (s1.w.d) null)), -1, (i) null, 2, (Object) null).c(new a(this, enumC27601t0), dVar);
        return c == s1.w.j.a.a ? c : s.a;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0077  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m97c(s1.w.d<? super p1727n3.p1909z.C27589l2<Key, Value>> r6) {
        /*
            Method dump skipped, instructions count: 211
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1909z.C27567g1.m97c(s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:102:0x04ca  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x04e4  */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x04ef  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0570  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0585  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x05b5  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x063b  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0149  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x017c  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x01b2  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x01e1  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x01f6  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0218  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x023d  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x02c1  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0303  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0306  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x031c  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x03c8  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x03ec A[Catch: all -> 0x059f, TryCatch #5 {all -> 0x059f, blocks: (B:65:0x03cb, B:67:0x03d7, B:69:0x03ec, B:71:0x03f7, B:73:0x0400), top: B:191:0x03cb }] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0400 A[Catch: all -> 0x059f, TryCatch #5 {all -> 0x059f, blocks: (B:65:0x03cb, B:67:0x03d7, B:69:0x03ec, B:71:0x03f7, B:73:0x0400), top: B:191:0x03cb }] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0415  */
    /* JADX WARN: Type inference failed for: r0v220, types: [q3.a.b3.c, java.lang.Object] */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m96d(s1.w.d<? super s1.s> r6) {
        /*
            Method dump skipped, instructions count: 1736
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1909z.C27567g1.m96d(s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:102:0x07eb  */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0907  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x090e  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x096a  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x09ef A[Catch: all -> 0x0a6b, TRY_LEAVE, TryCatch #9 {all -> 0x0a6b, blocks: (B:146:0x09c9, B:148:0x09ef), top: B:282:0x09c9 }] */
    /* JADX WARN: Removed duplicated region for block: B:155:0x0a49  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x0a89  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x0a8f  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0174  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x0b01  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x0b04  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x0b59 A[Catch: all -> 0x0c12, TRY_ENTER, TryCatch #0 {all -> 0x0c12, blocks: (B:173:0x0b3f, B:175:0x0b59, B:179:0x0bb1), top: B:266:0x0b3f }] */
    /* JADX WARN: Removed duplicated region for block: B:189:0x0c1c  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x0c52 A[Catch: all -> 0x0e9b, TRY_ENTER, TryCatch #8 {all -> 0x0e9b, blocks: (B:190:0x0c29, B:192:0x0c52, B:194:0x0c62, B:198:0x0c7a, B:200:0x0c86, B:204:0x0ce3), top: B:280:0x0c29 }] */
    /* JADX WARN: Removed duplicated region for block: B:196:0x0c6d  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x0c75  */
    /* JADX WARN: Removed duplicated region for block: B:207:0x0cfc  */
    /* JADX WARN: Removed duplicated region for block: B:209:0x0cff  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x01ed  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x026e  */
    /* JADX WARN: Removed duplicated region for block: B:236:0x0e29  */
    /* JADX WARN: Removed duplicated region for block: B:239:0x0e3b  */
    /* JADX WARN: Removed duplicated region for block: B:259:0x0ec7 A[Catch: all -> 0x0ed4, TRY_ENTER, TryCatch #2 {all -> 0x0ed4, blocks: (B:45:0x04f5, B:51:0x0517, B:54:0x0531, B:56:0x054d, B:59:0x055e, B:63:0x058b, B:65:0x05a0, B:67:0x05ad, B:69:0x05d6, B:73:0x05e8, B:259:0x0ec7, B:260:0x0ed3), top: B:270:0x04f5 }] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x02a7  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x02e3  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0347  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0390  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x03e3  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0435  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0471  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0508  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x06b9 A[Catch: all -> 0x0eb9, TRY_ENTER, TRY_LEAVE, TryCatch #6 {all -> 0x0eb9, blocks: (B:82:0x0690, B:84:0x06b9), top: B:277:0x0690 }] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0716  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0762  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:232:0x0de8 -> B:271:0x0e0e). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:244:0x0e80 -> B:93:0x0753). Please submit an issue!!! */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m95e(p1727n3.p1909z.EnumC27601t0 r8, p1727n3.p1909z.C27564f0 r9, s1.w.d<? super s1.s> r10) {
        /*
            Method dump skipped, instructions count: 3821
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1909z.C27567g1.m95e(n3.z.t0, n3.z.f0, s1.w.d):java.lang.Object");
    }

    /* renamed from: f */
    public final AbstractC27583k2.AbstractC27584a<Key> m94f(EnumC27601t0 enumC27601t0, Key key) {
        AbstractC27583k2.AbstractC27584a.a aVar;
        int i = enumC27601t0 == EnumC27601t0.REFRESH ? this.f77668j.f77600d : this.f77668j.f77597a;
        boolean z = this.f77668j.f77599c;
        l.e(enumC27601t0, "loadType");
        int ordinal = enumC27601t0.ordinal();
        if (ordinal == 0) {
            aVar = new AbstractC27583k2.AbstractC27584a.c(key, i, z);
        } else if (ordinal != 1) {
            if (ordinal != 2) {
                throw new s1.i();
            }
            if (key == null) {
                throw new IllegalArgumentException("key cannot be null for append".toString());
            }
            aVar = new AbstractC27583k2.AbstractC27584a.a(key, i, z);
        } else if (key == null) {
            throw new IllegalArgumentException("key cannot be null for prepend".toString());
        } else {
            aVar = new AbstractC27583k2.AbstractC27584a.b(key, i, z);
        }
        return aVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: g */
    public final Key m93g(C27581k1<Key, Value> c27581k1, EnumC27601t0 enumC27601t0, int i, int i2) {
        int i3;
        Objects.requireNonNull(c27581k1);
        l.e(enumC27601t0, "loadType");
        int ordinal = enumC27601t0.ordinal();
        if (ordinal != 0) {
            if (ordinal == 1) {
                i3 = c27581k1.f77731f;
            } else if (ordinal != 2) {
                throw new s1.i();
            } else {
                i3 = c27581k1.f77732g;
            }
            if (i != i3 || (c27581k1.f77736k.m29b(enumC27601t0) instanceof AbstractC27597r0.a) || i2 >= this.f77668j.f77598b) {
                return null;
            }
            return enumC27601t0 == EnumC27601t0.PREPEND ? ((AbstractC27583k2.AbstractC27585b.b) s1.u.i.B(c27581k1.f77727b)).b : ((AbstractC27583k2.AbstractC27585b.b) s1.u.i.Q(c27581k1.f77727b)).c;
        }
        throw new IllegalArgumentException("Cannot get loadId for loadType: REFRESH");
    }

    /* renamed from: h */
    public final /* synthetic */ Object m92h(EnumC27601t0 enumC27601t0, AbstractC27573i3 abstractC27573i3, s1.w.d<? super s> dVar) {
        if (enumC27601t0.ordinal() != 0) {
            if (!(abstractC27573i3 != null)) {
                throw new IllegalStateException("Cannot retry APPEND / PREPEND load on PagingSource without ViewportHint".toString());
            }
            this.f77659a.g(abstractC27573i3);
        } else {
            Object m96d = m96d(dVar);
            if (m96d == s1.w.j.a.a) {
                return m96d;
            }
        }
        return s.a;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0065  */
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ java.lang.Object m91i(p1727n3.p1909z.C27581k1<Key, Value> r7, p1727n3.p1909z.EnumC27601t0 r8, s1.w.d<? super s1.s> r9) {
        /*
            r6 = this;
            r0 = r9
            boolean r0 = r0 instanceof p1727n3.p1909z.C27567g1.h
            if (r0 == 0) goto L2c
            r0 = r9
            n3.z.g1$h r0 = (p1727n3.p1909z.C27567g1.h) r0
            r10 = r0
            r0 = r10
            int r0 = r0.e
            r11 = r0
            r0 = r11
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L2c
            r0 = r10
            r1 = r11
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.e = r1
            r0 = r10
            r9 = r0
            goto L36
        L2c:
            n3.z.g1$h r0 = new n3.z.g1$h
            r1 = r0
            r2 = r6
            r3 = r9
            r1.<init>(r2, r3)
            r9 = r0
        L36:
            r0 = r9
            java.lang.Object r0 = r0.d
            r12 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r10 = r0
            r0 = r9
            int r0 = r0.e
            r11 = r0
            r0 = r11
            if (r0 == 0) goto L65
            r0 = r11
            r1 = 1
            if (r0 != r1) goto L5a
            r0 = r12
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            goto L9f
        L5a:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L65:
            r0 = r12
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            n3.z.r0$b r0 = p1727n3.p1909z.AbstractC27597r0.b.b
            r12 = r0
            r0 = r7
            r1 = r8
            r2 = r12
            boolean r0 = r0.m69j(r1, r2)
            if (r0 == 0) goto L9f
            r0 = r6
            q3.a.w2.j<n3.z.c1<Value>> r0 = r0.f77662d
            r7 = r0
            n3.z.c1$c r0 = new n3.z.c1$c
            r1 = r0
            r2 = r8
            r3 = 0
            r4 = r12
            r1.<init>(r2, r3, r4)
            r8 = r0
            r0 = r9
            r1 = 1
            r0.e = r1
            r0 = r7
            r1 = r8
            r2 = r9
            java.lang.Object r0 = r0.v(r1, r2)
            r1 = r10
            if (r0 != r1) goto L9f
            r0 = r10
            return r0
        L9f:
            s1.s r0 = s1.s.a
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1909z.C27567g1.m91i(n3.z.k1, n3.z.t0, s1.w.d):java.lang.Object");
    }
}
