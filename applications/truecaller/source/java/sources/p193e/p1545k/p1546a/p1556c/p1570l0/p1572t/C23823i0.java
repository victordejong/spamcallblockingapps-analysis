package p193e.p1545k.p1546a.p1556c.p1570l0.p1572t;

import java.io.IOException;
import java.util.HashMap;
import java.util.Objects;
import p193e.p1545k.p1546a.p1548b.AbstractC23372g;
import p193e.p1545k.p1546a.p1548b.EnumC23381m;
import p193e.p1545k.p1546a.p1548b.p1555z.C23422b;
import p193e.p1545k.p1546a.p1556c.AbstractC23425a0;
import p193e.p1545k.p1546a.p1556c.AbstractC23462d;
import p193e.p1545k.p1546a.p1556c.AbstractC23890n;
import p193e.p1545k.p1546a.p1556c.EnumC23958z;
import p193e.p1545k.p1546a.p1556c.p1557b0.AbstractC23429a;
import p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23712h;
import p193e.p1545k.p1546a.p1556c.p1570l0.AbstractC23765h;
import p193e.p1545k.p1546a.p1556c.p1573m0.C23887o;
/* renamed from: e.k.a.c.l0.t.i0 */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/l0/t/i0.class */
public class C23823i0 {

    /* renamed from: a */
    public static final HashMap<String, AbstractC23890n<?>> f65967a;

    @AbstractC23429a
    /* renamed from: e.k.a.c.l0.t.i0$a */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/l0/t/i0$a.class */
    public static class C23824a extends AbstractC23805a<boolean[]> {
        static {
            C23887o.f66072d.m5901o(Boolean.class);
        }

        public C23824a() {
            super(boolean[].class);
        }

        public C23824a(C23824a c23824a, AbstractC23462d abstractC23462d, Boolean bool) {
            super(c23824a, abstractC23462d, bool);
        }

        @Override // p193e.p1545k.p1546a.p1556c.AbstractC23890n
        /* renamed from: d */
        public boolean mo5896d(AbstractC23425a0 abstractC23425a0, Object obj) {
            return ((boolean[]) obj).length == 0;
        }

        @Override // p193e.p1545k.p1546a.p1556c.AbstractC23890n
        /* renamed from: f */
        public void mo5894f(Object obj, AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0) throws IOException {
            boolean[] zArr = (boolean[]) obj;
            int length = zArr.length;
            if (length == 1 && m6048q(abstractC23425a0)) {
                m6031t(zArr, abstractC23372g);
                return;
            }
            abstractC23372g.mo5876L1(zArr, length);
            m6031t(zArr, abstractC23372g);
            abstractC23372g.mo5848p0();
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1570l0.AbstractC23765h
        /* renamed from: p */
        public AbstractC23765h<?> mo6000p(AbstractC23712h abstractC23712h) {
            return this;
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1570l0.p1572t.AbstractC23805a
        /* renamed from: r */
        public AbstractC23890n<?> mo6029r(AbstractC23462d abstractC23462d, Boolean bool) {
            return new C23824a(this, abstractC23462d, bool);
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1570l0.p1572t.AbstractC23805a
        /* renamed from: s */
        public /* bridge */ /* synthetic */ void mo6028s(boolean[] zArr, AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0) throws IOException {
            m6031t(zArr, abstractC23372g);
        }

        /* renamed from: t */
        public void m6031t(boolean[] zArr, AbstractC23372g abstractC23372g) throws IOException {
            for (boolean z : zArr) {
                abstractC23372g.mo5855k0(z);
            }
        }
    }

    @AbstractC23429a
    /* renamed from: e.k.a.c.l0.t.i0$b */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/l0/t/i0$b.class */
    public static class C23825b extends AbstractC23851q0<char[]> {
        public C23825b() {
            super(char[].class);
        }

        @Override // p193e.p1545k.p1546a.p1556c.AbstractC23890n
        /* renamed from: d */
        public boolean mo5896d(AbstractC23425a0 abstractC23425a0, Object obj) {
            return ((char[]) obj).length == 0;
        }

        @Override // p193e.p1545k.p1546a.p1556c.AbstractC23890n
        /* renamed from: f */
        public void mo5894f(Object obj, AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0) throws IOException {
            char[] cArr = (char[]) obj;
            if (!abstractC23425a0.m6889M(EnumC23958z.WRITE_CHAR_ARRAYS_AS_JSON_ARRAYS)) {
                abstractC23372g.mo5866V1(cArr, 0, cArr.length);
                return;
            }
            abstractC23372g.mo5876L1(cArr, cArr.length);
            int length = cArr.length;
            for (int i = 0; i < length; i++) {
                abstractC23372g.mo5866V1(cArr, i, 1);
            }
            abstractC23372g.mo5848p0();
        }

        @Override // p193e.p1545k.p1546a.p1556c.AbstractC23890n
        /* renamed from: g */
        public void mo5893g(Object obj, AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0, AbstractC23712h abstractC23712h) throws IOException {
            C23422b c23422b;
            char[] cArr = (char[]) obj;
            int i = 0;
            if (abstractC23425a0.m6889M(EnumC23958z.WRITE_CHAR_ARRAYS_AS_JSON_ARRAYS)) {
                C23422b mo6002e = abstractC23712h.mo6002e(abstractC23372g, abstractC23712h.m6216d(cArr, EnumC23381m.START_ARRAY));
                int length = cArr.length;
                while (true) {
                    c23422b = mo6002e;
                    if (i >= length) {
                        break;
                    }
                    abstractC23372g.mo5866V1(cArr, i, 1);
                    i++;
                }
            } else {
                c23422b = abstractC23712h.mo6002e(abstractC23372g, abstractC23712h.m6216d(cArr, EnumC23381m.VALUE_STRING));
                abstractC23372g.mo5866V1(cArr, 0, cArr.length);
            }
            abstractC23712h.mo6001f(abstractC23372g, c23422b);
        }
    }

    @AbstractC23429a
    /* renamed from: e.k.a.c.l0.t.i0$c */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/l0/t/i0$c.class */
    public static class C23826c extends AbstractC23805a<double[]> {
        static {
            C23887o.f66072d.m5901o(Double.TYPE);
        }

        public C23826c() {
            super(double[].class);
        }

        public C23826c(C23826c c23826c, AbstractC23462d abstractC23462d, Boolean bool) {
            super(c23826c, abstractC23462d, bool);
        }

        @Override // p193e.p1545k.p1546a.p1556c.AbstractC23890n
        /* renamed from: d */
        public boolean mo5896d(AbstractC23425a0 abstractC23425a0, Object obj) {
            return ((double[]) obj).length == 0;
        }

        @Override // p193e.p1545k.p1546a.p1556c.AbstractC23890n
        /* renamed from: f */
        public void mo5894f(Object obj, AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0) throws IOException {
            double[] dArr = (double[]) obj;
            if (dArr.length == 1 && m6048q(abstractC23425a0)) {
                for (double d : dArr) {
                    abstractC23372g.mo5885F0(d);
                }
                return;
            }
            int length = dArr.length;
            Objects.requireNonNull(abstractC23372g);
            abstractC23372g.m7209b(dArr.length, 0, length);
            abstractC23372g.mo5876L1(dArr, length);
            for (int i = 0; i < length + 0; i++) {
                abstractC23372g.mo5885F0(dArr[i]);
            }
            abstractC23372g.mo5848p0();
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1570l0.AbstractC23765h
        /* renamed from: p */
        public AbstractC23765h<?> mo6000p(AbstractC23712h abstractC23712h) {
            return this;
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1570l0.p1572t.AbstractC23805a
        /* renamed from: r */
        public AbstractC23890n<?> mo6029r(AbstractC23462d abstractC23462d, Boolean bool) {
            return new C23826c(this, abstractC23462d, bool);
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1570l0.p1572t.AbstractC23805a
        /* renamed from: s */
        public void mo6028s(double[] dArr, AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0) throws IOException {
            for (double d : dArr) {
                abstractC23372g.mo5885F0(d);
            }
        }
    }

    @AbstractC23429a
    /* renamed from: e.k.a.c.l0.t.i0$d */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/l0/t/i0$d.class */
    public static class C23827d extends AbstractC23831h<float[]> {
        static {
            C23887o.f66072d.m5901o(Float.TYPE);
        }

        public C23827d() {
            super(float[].class);
        }

        public C23827d(C23827d c23827d, AbstractC23462d abstractC23462d, Boolean bool) {
            super(c23827d, abstractC23462d, bool);
        }

        @Override // p193e.p1545k.p1546a.p1556c.AbstractC23890n
        /* renamed from: d */
        public boolean mo5896d(AbstractC23425a0 abstractC23425a0, Object obj) {
            return ((float[]) obj).length == 0;
        }

        @Override // p193e.p1545k.p1546a.p1556c.AbstractC23890n
        /* renamed from: f */
        public void mo5894f(Object obj, AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0) throws IOException {
            float[] fArr = (float[]) obj;
            int length = fArr.length;
            if (length == 1 && m6048q(abstractC23425a0)) {
                m6030t(fArr, abstractC23372g);
                return;
            }
            abstractC23372g.mo5876L1(fArr, length);
            m6030t(fArr, abstractC23372g);
            abstractC23372g.mo5848p0();
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1570l0.p1572t.AbstractC23805a
        /* renamed from: r */
        public AbstractC23890n<?> mo6029r(AbstractC23462d abstractC23462d, Boolean bool) {
            return new C23827d(this, abstractC23462d, bool);
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1570l0.p1572t.AbstractC23805a
        /* renamed from: s */
        public /* bridge */ /* synthetic */ void mo6028s(Object obj, AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0) throws IOException {
            m6030t((float[]) obj, abstractC23372g);
        }

        /* renamed from: t */
        public void m6030t(float[] fArr, AbstractC23372g abstractC23372g) throws IOException {
            for (float f : fArr) {
                abstractC23372g.mo5883G0(f);
            }
        }
    }

    @AbstractC23429a
    /* renamed from: e.k.a.c.l0.t.i0$e */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/l0/t/i0$e.class */
    public static class C23828e extends AbstractC23805a<int[]> {
        static {
            C23887o.f66072d.m5901o(Integer.TYPE);
        }

        public C23828e() {
            super(int[].class);
        }

        public C23828e(C23828e c23828e, AbstractC23462d abstractC23462d, Boolean bool) {
            super(c23828e, abstractC23462d, bool);
        }

        @Override // p193e.p1545k.p1546a.p1556c.AbstractC23890n
        /* renamed from: d */
        public boolean mo5896d(AbstractC23425a0 abstractC23425a0, Object obj) {
            return ((int[]) obj).length == 0;
        }

        @Override // p193e.p1545k.p1546a.p1556c.AbstractC23890n
        /* renamed from: f */
        public void mo5894f(Object obj, AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0) throws IOException {
            int[] iArr = (int[]) obj;
            if (iArr.length == 1 && m6048q(abstractC23425a0)) {
                for (int i : iArr) {
                    abstractC23372g.mo5880J0(i);
                }
                return;
            }
            int length = iArr.length;
            Objects.requireNonNull(abstractC23372g);
            abstractC23372g.m7209b(iArr.length, 0, length);
            abstractC23372g.mo5876L1(iArr, length);
            for (int i2 = 0; i2 < length + 0; i2++) {
                abstractC23372g.mo5880J0(iArr[i2]);
            }
            abstractC23372g.mo5848p0();
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1570l0.AbstractC23765h
        /* renamed from: p */
        public AbstractC23765h<?> mo6000p(AbstractC23712h abstractC23712h) {
            return this;
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1570l0.p1572t.AbstractC23805a
        /* renamed from: r */
        public AbstractC23890n<?> mo6029r(AbstractC23462d abstractC23462d, Boolean bool) {
            return new C23828e(this, abstractC23462d, bool);
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1570l0.p1572t.AbstractC23805a
        /* renamed from: s */
        public void mo6028s(int[] iArr, AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0) throws IOException {
            for (int i : iArr) {
                abstractC23372g.mo5880J0(i);
            }
        }
    }

    @AbstractC23429a
    /* renamed from: e.k.a.c.l0.t.i0$f */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/l0/t/i0$f.class */
    public static class C23829f extends AbstractC23831h<long[]> {
        static {
            C23887o.f66072d.m5901o(Long.TYPE);
        }

        public C23829f() {
            super(long[].class);
        }

        public C23829f(C23829f c23829f, AbstractC23462d abstractC23462d, Boolean bool) {
            super(c23829f, abstractC23462d, bool);
        }

        @Override // p193e.p1545k.p1546a.p1556c.AbstractC23890n
        /* renamed from: d */
        public boolean mo5896d(AbstractC23425a0 abstractC23425a0, Object obj) {
            return ((long[]) obj).length == 0;
        }

        @Override // p193e.p1545k.p1546a.p1556c.AbstractC23890n
        /* renamed from: f */
        public void mo5894f(Object obj, AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0) throws IOException {
            long[] jArr = (long[]) obj;
            if (jArr.length == 1 && m6048q(abstractC23425a0)) {
                for (long j : jArr) {
                    abstractC23372g.mo5878K0(j);
                }
                return;
            }
            int length = jArr.length;
            Objects.requireNonNull(abstractC23372g);
            abstractC23372g.m7209b(jArr.length, 0, length);
            abstractC23372g.mo5876L1(jArr, length);
            for (int i = 0; i < length + 0; i++) {
                abstractC23372g.mo5878K0(jArr[i]);
            }
            abstractC23372g.mo5848p0();
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1570l0.p1572t.AbstractC23805a
        /* renamed from: r */
        public AbstractC23890n<?> mo6029r(AbstractC23462d abstractC23462d, Boolean bool) {
            return new C23829f(this, abstractC23462d, bool);
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1570l0.p1572t.AbstractC23805a
        /* renamed from: s */
        public void mo6028s(Object obj, AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0) throws IOException {
            for (long j : (long[]) obj) {
                abstractC23372g.mo5878K0(j);
            }
        }
    }

    @AbstractC23429a
    /* renamed from: e.k.a.c.l0.t.i0$g */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/l0/t/i0$g.class */
    public static class C23830g extends AbstractC23831h<short[]> {
        static {
            C23887o.f66072d.m5901o(Short.TYPE);
        }

        public C23830g() {
            super(short[].class);
        }

        public C23830g(C23830g c23830g, AbstractC23462d abstractC23462d, Boolean bool) {
            super(c23830g, abstractC23462d, bool);
        }

        @Override // p193e.p1545k.p1546a.p1556c.AbstractC23890n
        /* renamed from: d */
        public boolean mo5896d(AbstractC23425a0 abstractC23425a0, Object obj) {
            return ((short[]) obj).length == 0;
        }

        @Override // p193e.p1545k.p1546a.p1556c.AbstractC23890n
        /* renamed from: f */
        public void mo5894f(Object obj, AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0) throws IOException {
            short[] sArr = (short[]) obj;
            int length = sArr.length;
            if (length == 1 && m6048q(abstractC23425a0)) {
                m6027t(sArr, abstractC23372g);
                return;
            }
            abstractC23372g.mo5876L1(sArr, length);
            m6027t(sArr, abstractC23372g);
            abstractC23372g.mo5848p0();
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1570l0.p1572t.AbstractC23805a
        /* renamed from: r */
        public AbstractC23890n<?> mo6029r(AbstractC23462d abstractC23462d, Boolean bool) {
            return new C23830g(this, abstractC23462d, bool);
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1570l0.p1572t.AbstractC23805a
        /* renamed from: s */
        public /* bridge */ /* synthetic */ void mo6028s(Object obj, AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0) throws IOException {
            m6027t((short[]) obj, abstractC23372g);
        }

        /* renamed from: t */
        public void m6027t(short[] sArr, AbstractC23372g abstractC23372g) throws IOException {
            for (short s : sArr) {
                abstractC23372g.mo5880J0(s);
            }
        }
    }

    /* renamed from: e.k.a.c.l0.t.i0$h */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/l0/t/i0$h.class */
    public static abstract class AbstractC23831h<T> extends AbstractC23805a<T> {
        public AbstractC23831h(AbstractC23831h<T> abstractC23831h, AbstractC23462d abstractC23462d, Boolean bool) {
            super(abstractC23831h, abstractC23462d, bool);
        }

        public AbstractC23831h(Class<T> cls) {
            super(cls);
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1570l0.AbstractC23765h
        /* renamed from: p */
        public final AbstractC23765h<?> mo6000p(AbstractC23712h abstractC23712h) {
            return this;
        }
    }

    static {
        HashMap<String, AbstractC23890n<?>> hashMap = new HashMap<>();
        f65967a = hashMap;
        hashMap.put(boolean[].class.getName(), new C23824a());
        hashMap.put(byte[].class.getName(), new C23816f());
        hashMap.put(char[].class.getName(), new C23825b());
        hashMap.put(short[].class.getName(), new C23830g());
        hashMap.put(int[].class.getName(), new C23828e());
        hashMap.put(long[].class.getName(), new C23829f());
        hashMap.put(float[].class.getName(), new C23827d());
        hashMap.put(double[].class.getName(), new C23826c());
    }
}
