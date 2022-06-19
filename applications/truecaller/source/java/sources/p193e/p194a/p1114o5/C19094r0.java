package p193e.p194a.p1114o5;

import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import com.google.android.libraries.places.api.model.PlaceLikelihood;
import com.razorpay.AnalyticsConstants;
import com.truecaller.log.AssertionUtil;
import com.truecaller.messaging.data.types.AudioEntity;
import com.truecaller.messaging.data.types.BinaryEntity;
import com.truecaller.messaging.data.types.Entity;
import com.truecaller.messaging.data.types.ImageEntity;
import com.truecaller.messaging.data.types.LocationEntity;
import com.truecaller.messaging.data.types.VideoEntity;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1114o5.AbstractC19073o0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1187r2.AbstractC19891x;
import p193e.p194a.p195a.p244k.p245a.AbstractC6563h;
import p193e.p194a.p195a.p244k.p245a.C6571i;
import p193e.p194a.p195a.p244k.p245a.C6579k;
import p193e.p194a.p195a.p244k.p245a.p248g2.AbstractC6559a;
import q3.a.i0;
import s1.k;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
import u3.g0;
import u3.k0;
import u3.l0;
/* renamed from: e.a.o5.r0 */
/* loaded from: classes15-dex2jar.jar:e/a/o5/r0.class */
public final class C19094r0 implements AbstractC19091q0 {

    /* renamed from: a */
    public final ContentResolver f53300a;

    /* renamed from: b */
    public final Context f53301b;

    /* renamed from: c */
    public final AbstractC19057m f53302c;

    /* renamed from: d */
    public final AbstractC19101s0 f53303d;

    /* renamed from: e */
    public final AbstractC19109u1 f53304e;

    /* renamed from: f */
    public final AbstractC19108u0 f53305f;

    /* renamed from: g */
    public final AbstractC6559a f53306g;

    /* renamed from: h */
    public final AbstractC6563h f53307h;

    @e(c = "com.truecaller.util.MediaHelperImpl$locationEntity$1", f = "MediaHelperImpl.kt", l = {297}, m = "invokeSuspend")
    /* renamed from: e.a.o5.r0$a */
    /* loaded from: classes15-dex2jar.jar:e/a/o5/r0$a.class */
    public static final class C19095a extends i implements p<i0, d<? super k<? extends Uri, ? extends Long>>, Object> {

        /* renamed from: e */
        public int f53308e;

        /* renamed from: g */
        public final /* synthetic */ double f53310g;

        /* renamed from: h */
        public final /* synthetic */ double f53311h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19095a(double d, double d2, d dVar) {
            super(2, dVar);
            C19094r0.this = r5;
            this.f53310g = d;
            this.f53311h = d2;
        }

        /* renamed from: i */
        public final d<s> m14120i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C19095a(this.f53310g, this.f53311h, dVar);
        }

        /* renamed from: k */
        public final Object m14119k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C19095a(this.f53310g, this.f53311h, dVar).m14118s(s.a);
        }

        /* renamed from: s */
        public final Object m14118s(Object obj) {
            a aVar = a.a;
            int i = this.f53308e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC6559a abstractC6559a = C19094r0.this.f53306g;
                double d = this.f53310g;
                double d2 = this.f53311h;
                this.f53308e = 1;
                Object mo30767a = abstractC6559a.mo30767a(d, d2, this);
                obj = mo30767a;
                if (mo30767a == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            String str = (String) obj;
            k kVar = null;
            if (str != null) {
                C6579k c6579k = (C6579k) C19094r0.this.f53307h;
                Objects.requireNonNull(c6579k);
                l.e(str, "uri");
                l.e("application/vnd.truecaller.location", "mimeType");
                g0.a aVar2 = new g0.a();
                aVar2.i(str);
                k0 execute = c6579k.f21688c.a(aVar2.b()).execute();
                try {
                    l0 l0Var = execute.h;
                    if (!execute.j() || l0Var == null) {
                        C25225a.m4016G(execute, null);
                        kVar = null;
                    } else {
                        kVar = C18334g0.m15256L0(c6579k.f21692g, -1L, "application/vnd.truecaller.location", false, 0, new C6571i(l0Var), 8, null);
                        th = null;
                    }
                } finally {
                    try {
                        throw th;
                    } finally {
                    }
                }
            }
            return kVar;
        }
    }

    @Inject
    public C19094r0(Context context, AbstractC19057m abstractC19057m, AbstractC19101s0 abstractC19101s0, AbstractC19109u1 abstractC19109u1, AbstractC19108u0 abstractC19108u0, AbstractC6559a abstractC6559a, AbstractC6563h abstractC6563h) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC19057m, "bitmapConverter");
        l.e(abstractC19101s0, "mediaInfoFetcher");
        l.e(abstractC19109u1, "entityCleaner");
        l.e(abstractC19108u0, "mediaUtils");
        l.e(abstractC6559a, "previewManager");
        l.e(abstractC6563h, "attachmentManager");
        this.f53301b = context;
        this.f53302c = abstractC19057m;
        this.f53303d = abstractC19101s0;
        this.f53304e = abstractC19109u1;
        this.f53305f = abstractC19108u0;
        this.f53306g = abstractC6559a;
        this.f53307h = abstractC6563h;
        ContentResolver contentResolver = context.getContentResolver();
        l.d(contentResolver, "context.contentResolver");
        this.f53300a = contentResolver;
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x023e  */
    @Override // p193e.p194a.p1114o5.AbstractC19091q0
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p193e.p194a.p1187r2.AbstractC19891x<java.util.ArrayList<com.truecaller.messaging.data.types.BinaryEntity>> mo14133a(java.util.ArrayList<com.truecaller.messaging.ForwardContentItem> r17) {
        /*
            Method dump skipped, instructions count: 925
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1114o5.C19094r0.mo14133a(java.util.ArrayList):e.a.r2.x");
    }

    @Override // p193e.p194a.p1114o5.AbstractC19091q0
    /* renamed from: b */
    public AbstractC19891x<k<BinaryEntity, AbstractC19073o0>> mo14132b(double d, double d2, String str) {
        l.e(str, "address");
        k kVar = (k) s1.a.a.a.v0.f.d.c3((f) null, new C19095a(d, d2, null), 1, (Object) null);
        if (kVar == null) {
            kVar = new k(Uri.EMPTY, 0L);
        }
        AbstractC19891x<k<BinaryEntity, AbstractC19073o0>> m11834h = AbstractC19891x.m11834h(m14122l((Uri) kVar.a, str, Double.valueOf(d), Double.valueOf(d2)));
        l.d(m11834h, "Promise.wrap(innerLocati…ss, latitude, longitude))");
        return m11834h;
    }

    @Override // p193e.p194a.p1114o5.AbstractC19091q0
    /* renamed from: c */
    public AbstractC19891x<k<BinaryEntity, AbstractC19073o0>> mo14131c(Uri uri, boolean z) {
        l.e(uri, "uri");
        AbstractC19891x<k<BinaryEntity, AbstractC19073o0>> m11834h = AbstractC19891x.m11834h(m14123k(uri, z));
        l.d(m11834h, "Promise.wrap(innerImageE…romUri(uri, isTemporary))");
        return m11834h;
    }

    @Override // p193e.p194a.p1114o5.AbstractC19091q0
    /* renamed from: d */
    public AbstractC19891x<k<BinaryEntity, AbstractC19073o0>> mo14130d(Uri uri, boolean z) {
        l.e(uri, "uri");
        AbstractC19891x<k<BinaryEntity, AbstractC19073o0>> m11834h = AbstractC19891x.m11834h(m14124j(uri, z));
        l.d(m11834h, "Promise.wrap(innerAudioE…omFile(uri, isTemporary))");
        return m11834h;
    }

    @Override // p193e.p194a.p1114o5.AbstractC19091q0
    /* renamed from: e */
    public AbstractC19891x<Boolean> mo14129e(List<? extends Uri> list) {
        l.e(list, "uris");
        for (Uri uri : list) {
            boolean z = false;
            try {
                InputStream openInputStream = this.f53300a.openInputStream(uri);
                if (openInputStream != null) {
                    try {
                        openInputStream.close();
                    } catch (IOException e) {
                    }
                }
                z = true;
            } catch (FileNotFoundException | SecurityException e2) {
            }
            if (!z) {
                AbstractC19891x<Boolean> m11834h = AbstractC19891x.m11834h(Boolean.FALSE);
                l.d(m11834h, "Promise.wrap(false)");
                return m11834h;
            }
        }
        AbstractC19891x<Boolean> m11834h2 = AbstractC19891x.m11834h(Boolean.TRUE);
        l.d(m11834h2, "Promise.wrap(true)");
        return m11834h2;
    }

    @Override // p193e.p194a.p1114o5.AbstractC19091q0
    /* renamed from: f */
    public AbstractC19891x<k<BinaryEntity, AbstractC19073o0>> mo14128f(Uri uri, boolean z, long j) {
        l.e(uri, "uri");
        AbstractC19891x<k<BinaryEntity, AbstractC19073o0>> m11834h = AbstractC19891x.m11834h(m14121m(uri, z, j));
        l.d(m11834h, "Promise.wrap(innerVideoE…Temporary, maxMediaSize))");
        return m11834h;
    }

    /* JADX WARN: Code restructure failed: missing block: B:108:0x0325, code lost:
        if (r30 != null) goto L110;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x033c, code lost:
        if (r40 != null) goto L115;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x00a1, code lost:
        if (r26 != null) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0197, code lost:
        if (r26 != null) goto L62;
     */
    @Override // p193e.p194a.p1114o5.AbstractC19091q0
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p193e.p194a.p1187r2.AbstractC19891x<java.util.List<s1.k<com.truecaller.messaging.data.types.BinaryEntity, p193e.p194a.p1114o5.AbstractC19073o0>>> mo14127g(java.util.Collection<p193e.p194a.p195a.C4907a0> r26, long r27) {
        /*
            Method dump skipped, instructions count: 1630
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1114o5.C19094r0.mo14127g(java.util.Collection, long):e.a.r2.x");
    }

    /* JADX WARN: Code restructure failed: missing block: B:85:0x02c0, code lost:
        if (r11 == null) goto L107;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x02fc, code lost:
        if (r11 == null) goto L107;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x02ff, code lost:
        r11.close();
     */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0337  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0322 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0317 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:151:0x033a A[SYNTHETIC] */
    @Override // p193e.p194a.p1114o5.AbstractC19091q0
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p193e.p194a.p1187r2.AbstractC19891x<java.lang.Boolean> mo14126h(com.truecaller.messaging.data.types.Entity[] r7) {
        /*
            Method dump skipped, instructions count: 893
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1114o5.C19094r0.mo14126h(com.truecaller.messaging.data.types.Entity[]):e.a.r2.x");
    }

    /* JADX WARN: Code restructure failed: missing block: B:46:0x00c5, code lost:
        if (r4 == null) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00c8, code lost:
        r4.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00d0, code lost:
        r5 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0102, code lost:
        if (r4 == null) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x013f, code lost:
        r5 = null;
     */
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.net.Uri m14125i(android.net.Uri r4) {
        /*
            Method dump skipped, instructions count: 337
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1114o5.C19094r0.m14125i(android.net.Uri):android.net.Uri");
    }

    /* renamed from: j */
    public final k<BinaryEntity, AbstractC19073o0> m14124j(Uri uri, boolean z) {
        AbstractC19073o0.C19075b c19075b = AbstractC19073o0.C19075b.f53273a;
        Long m13697G = C19286f.m13697G(uri, this.f53301b);
        if (m13697G != null) {
            long longValue = m13697G.longValue();
            C19054l mo14101a = this.f53303d.mo14101a(uri);
            if (mo14101a != null) {
                if (mo14101a.f53222b != null) {
                    Uri m14125i = m14125i(uri);
                    if (m14125i == null) {
                        return new k<>((Object) null, c19075b);
                    }
                    if (z) {
                        this.f53304e.mo14084b(uri);
                    }
                    Entity.C4195a c4195a = Entity.f13305h;
                    String str = mo14101a.f53222b;
                    l.c(str);
                    BinaryEntity m35041b = Entity.C4195a.m35041b(c4195a, -1L, str, 0, m14125i, 0, 0, mo14101a.f53221a, longValue, true, null, null, null, null, 0, null, null, PlaceLikelihood.LIKELIHOOD_MIN_VALUE, PlaceLikelihood.LIKELIHOOD_MIN_VALUE, 261680);
                    if (m35041b instanceof AudioEntity) {
                        return new k<>(m35041b, (Object) null);
                    }
                    this.f53304e.mo14085a(m35041b);
                    return new k<>((Object) null, c19075b);
                }
            }
            return new k<>((Object) null, c19075b);
        }
        return new k<>((Object) null, c19075b);
    }

    /* renamed from: k */
    public final k<BinaryEntity, AbstractC19073o0> m14123k(Uri uri, boolean z) {
        SecurityException e;
        ImageEntity imageEntity;
        try {
            ImageEntity mo14172f = this.f53302c.mo14172f(uri);
            if (z) {
                try {
                    this.f53304e.mo14084b(uri);
                } catch (SecurityException e2) {
                    e = e2;
                    imageEntity = mo14172f;
                    AssertionUtil.reportThrowableButNeverCrash(e);
                    this.f53304e.mo14085a(imageEntity);
                    return new k<>((Object) null, AbstractC19073o0.C19075b.f53273a);
                }
            }
            return new k<>(mo14172f, (Object) null);
        } catch (SecurityException e3) {
            e = e3;
            imageEntity = null;
        }
    }

    /* renamed from: l */
    public final k<BinaryEntity, AbstractC19073o0> m14122l(Uri uri, String str, Double d, Double d2) {
        k<BinaryEntity, AbstractC19073o0> kVar;
        if (d == null || d2 == null) {
            kVar = new k<>((Object) null, AbstractC19073o0.C19075b.f53273a);
        } else {
            kVar = new k<>(new LocationEntity(-1L, "application/vnd.truecaller.location", l.a(uri, Uri.EMPTY) ? 2 : 0, uri, -1L, str, d.doubleValue(), d2.doubleValue()), (Object) null);
        }
        return kVar;
    }

    /* renamed from: m */
    public final k<BinaryEntity, AbstractC19073o0> m14121m(Uri uri, boolean z, long j) {
        Long m13697G;
        AbstractC19073o0.C19075b c19075b = AbstractC19073o0.C19075b.f53273a;
        C19134z1 mo14098d = this.f53303d.mo14098d(uri);
        if (mo14098d != null) {
            if (mo14098d.f53360d != null) {
                if (this.f53305f.mo14090b(mo14098d.f53359c) > j) {
                    return new k<>((Object) null, new AbstractC19073o0.C19074a(j));
                }
                Uri m14125i = m14125i(uri);
                if (m14125i != null && (m13697G = C19286f.m13697G(m14125i, this.f53301b)) != null) {
                    long longValue = m13697G.longValue();
                    if (z) {
                        this.f53304e.mo14084b(uri);
                    }
                    Entity.C4195a c4195a = Entity.f13305h;
                    String str = mo14098d.f53360d;
                    l.c(str);
                    BinaryEntity m35041b = Entity.C4195a.m35041b(c4195a, -1L, str, 0, m14125i, mo14098d.f53357a, mo14098d.f53358b, mo14098d.f53359c, longValue, true, null, null, null, null, 0, null, null, PlaceLikelihood.LIKELIHOOD_MIN_VALUE, PlaceLikelihood.LIKELIHOOD_MIN_VALUE, 261632);
                    if (m35041b instanceof VideoEntity) {
                        return new k<>(m35041b, (Object) null);
                    }
                    this.f53304e.mo14085a(m35041b);
                    return new k<>((Object) null, c19075b);
                }
                return new k<>((Object) null, c19075b);
            }
        }
        return new k<>((Object) null, c19075b);
    }
}
