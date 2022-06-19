package com.esotericsoftware.kryo.serializers;

import com.esotericsoftware.kryo.AbstractC9413h;
import com.esotericsoftware.kryo.C9380c;
import com.esotericsoftware.kryo.p276a.C9374a;
import com.esotericsoftware.kryo.p276a.C9376c;
import java.lang.reflect.Array;
/* renamed from: com.esotericsoftware.kryo.serializers.f */
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/f.class */
public final class C9441f {

    /* renamed from: com.esotericsoftware.kryo.serializers.f$a */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/f$a.class */
    public static class C9442a extends AbstractC9413h<boolean[]> {
        public C9442a() {
            setAcceptsNull(true);
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ boolean[] copy(C9380c c9380c, boolean[] zArr) {
            boolean[] zArr2 = zArr;
            int length = zArr2.length;
            boolean[] zArr3 = new boolean[length];
            System.arraycopy(zArr2, 0, zArr3, 0, length);
            return zArr3;
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ boolean[] read(C9380c c9380c, C9374a c9374a, Class<? extends boolean[]> cls) {
            int m24456b = c9374a.m24456b(true);
            if (m24456b == 0) {
                return null;
            }
            int i = m24456b - 1;
            boolean[] zArr = new boolean[i];
            for (int i2 = 0; i2 < i; i2++) {
                zArr[i2] = c9374a.m24435l();
            }
            return zArr;
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ void write(C9380c c9380c, C9376c c9376c, boolean[] zArr) {
            boolean[] zArr2 = zArr;
            if (zArr2 == null) {
                c9376c.m24424a((byte) 0);
                return;
            }
            c9376c.m24402b(zArr2.length + 1, true);
            for (boolean z : zArr2) {
                c9376c.m24414a(z);
            }
        }
    }

    /* renamed from: com.esotericsoftware.kryo.serializers.f$b */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/f$b.class */
    public static class C9443b extends AbstractC9413h<byte[]> {
        public C9443b() {
            setAcceptsNull(true);
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ byte[] copy(C9380c c9380c, byte[] bArr) {
            byte[] bArr2 = bArr;
            int length = bArr2.length;
            byte[] bArr3 = new byte[length];
            System.arraycopy(bArr2, 0, bArr3, 0, length);
            return bArr3;
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ byte[] read(C9380c c9380c, C9374a c9374a, Class<? extends byte[]> cls) {
            int m24456b = c9374a.m24456b(true);
            if (m24456b == 0) {
                return null;
            }
            return c9374a.m24457b(m24456b - 1);
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ void write(C9380c c9380c, C9376c c9376c, byte[] bArr) {
            byte[] bArr2 = bArr;
            if (bArr2 == null) {
                c9376c.m24424a((byte) 0);
                return;
            }
            c9376c.m24402b(bArr2.length + 1, true);
            c9376c.m24412a(bArr2);
        }
    }

    /* renamed from: com.esotericsoftware.kryo.serializers.f$c */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/f$c.class */
    public static class C9444c extends AbstractC9413h<char[]> {
        public C9444c() {
            setAcceptsNull(true);
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ char[] copy(C9380c c9380c, char[] cArr) {
            char[] cArr2 = cArr;
            int length = cArr2.length;
            char[] cArr3 = new char[length];
            System.arraycopy(cArr2, 0, cArr3, 0, length);
            return cArr3;
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ char[] read(C9380c c9380c, C9374a c9374a, Class<? extends char[]> cls) {
            int m24456b = c9374a.m24456b(true);
            if (m24456b == 0) {
                return null;
            }
            return c9374a.m24440i(m24456b - 1);
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ void write(C9380c c9380c, C9376c c9376c, char[] cArr) {
            char[] cArr2 = cArr;
            if (cArr2 == null) {
                c9376c.m24424a((byte) 0);
                return;
            }
            c9376c.m24402b(cArr2.length + 1, true);
            c9376c.m24410a(cArr2, 0, cArr2.length);
        }
    }

    /* renamed from: com.esotericsoftware.kryo.serializers.f$d */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/f$d.class */
    public static class C9445d extends AbstractC9413h<double[]> {
        public C9445d() {
            setAcceptsNull(true);
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ double[] copy(C9380c c9380c, double[] dArr) {
            double[] dArr2 = dArr;
            int length = dArr2.length;
            double[] dArr3 = new double[length];
            System.arraycopy(dArr2, 0, dArr3, 0, length);
            return dArr3;
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ double[] read(C9380c c9380c, C9374a c9374a, Class<? extends double[]> cls) {
            int m24456b = c9374a.m24456b(true);
            if (m24456b == 0) {
                return null;
            }
            return c9374a.m24444g(m24456b - 1);
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ void write(C9380c c9380c, C9376c c9376c, double[] dArr) {
            double[] dArr2 = dArr;
            if (dArr2 == null) {
                c9376c.m24424a((byte) 0);
                return;
            }
            c9376c.m24402b(dArr2.length + 1, true);
            c9376c.m24409a(dArr2, 0, dArr2.length);
        }
    }

    /* renamed from: com.esotericsoftware.kryo.serializers.f$e */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/f$e.class */
    public static class C9446e extends AbstractC9413h<float[]> {
        public C9446e() {
            setAcceptsNull(true);
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ float[] copy(C9380c c9380c, float[] fArr) {
            float[] fArr2 = fArr;
            int length = fArr2.length;
            float[] fArr3 = new float[length];
            System.arraycopy(fArr2, 0, fArr3, 0, length);
            return fArr3;
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ float[] read(C9380c c9380c, C9374a c9374a, Class<? extends float[]> cls) {
            int m24456b = c9374a.m24456b(true);
            if (m24456b == 0) {
                return null;
            }
            return c9374a.m24446f(m24456b - 1);
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ void write(C9380c c9380c, C9376c c9376c, float[] fArr) {
            float[] fArr2 = fArr;
            if (fArr2 == null) {
                c9376c.m24424a((byte) 0);
                return;
            }
            c9376c.m24402b(fArr2.length + 1, true);
            c9376c.m24408a(fArr2, 0, fArr2.length);
        }
    }

    /* renamed from: com.esotericsoftware.kryo.serializers.f$f */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/f$f.class */
    public static class C9447f extends AbstractC9413h<int[]> {
        public C9447f() {
            setAcceptsNull(true);
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ int[] copy(C9380c c9380c, int[] iArr) {
            int[] iArr2 = iArr;
            int length = iArr2.length;
            int[] iArr3 = new int[length];
            System.arraycopy(iArr2, 0, iArr3, 0, length);
            return iArr3;
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ int[] read(C9380c c9380c, C9374a c9374a, Class<? extends int[]> cls) {
            int m24456b = c9374a.m24456b(true);
            if (m24456b == 0) {
                return null;
            }
            return c9374a.m24454c(m24456b - 1);
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ void write(C9380c c9380c, C9376c c9376c, int[] iArr) {
            int[] iArr2 = iArr;
            if (iArr2 == null) {
                c9376c.m24424a((byte) 0);
                return;
            }
            c9376c.m24402b(iArr2.length + 1, true);
            c9376c.m24407a(iArr2, 0, iArr2.length);
        }
    }

    /* renamed from: com.esotericsoftware.kryo.serializers.f$g */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/f$g.class */
    public static class C9448g extends AbstractC9413h<long[]> {
        public C9448g() {
            setAcceptsNull(true);
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ long[] copy(C9380c c9380c, long[] jArr) {
            long[] jArr2 = jArr;
            int length = jArr2.length;
            long[] jArr3 = new long[length];
            System.arraycopy(jArr2, 0, jArr3, 0, length);
            return jArr3;
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ long[] read(C9380c c9380c, C9374a c9374a, Class<? extends long[]> cls) {
            int m24456b = c9374a.m24456b(true);
            if (m24456b == 0) {
                return null;
            }
            return c9374a.m24448e(m24456b - 1);
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ void write(C9380c c9380c, C9376c c9376c, long[] jArr) {
            long[] jArr2 = jArr;
            if (jArr2 == null) {
                c9376c.m24424a((byte) 0);
                return;
            }
            c9376c.m24402b(jArr2.length + 1, true);
            c9376c.m24400b(jArr2, 0, jArr2.length);
        }
    }

    /* renamed from: com.esotericsoftware.kryo.serializers.f$h */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/f$h.class */
    public static class C9449h extends AbstractC9413h<Object[]> {

        /* renamed from: a */
        private boolean f32401a;

        /* renamed from: b */
        private boolean f32402b = true;

        /* renamed from: c */
        private final Class f32403c;

        public C9449h(C9380c c9380c, Class cls) {
            setAcceptsNull(true);
            this.f32403c = cls;
            if ((cls.getComponentType().getModifiers() & 16) != 0) {
                this.f32401a = true;
            }
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ Object[] copy(C9380c c9380c, Object[] objArr) {
            Object[] objArr2 = objArr;
            int length = objArr2.length;
            Object[] objArr3 = (Object[]) Array.newInstance(objArr2.getClass().getComponentType(), length);
            c9380c.m24381a(objArr3);
            for (int i = 0; i < length; i++) {
                objArr3[i] = c9380c.m24373b((C9380c) objArr2[i]);
            }
            return objArr3;
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ Object[] read(C9380c c9380c, C9374a c9374a, Class<? extends Object[]> cls) {
            int m24456b = c9374a.m24456b(true);
            if (m24456b == 0) {
                return null;
            }
            int i = m24456b - 1;
            Object[] objArr = (Object[]) Array.newInstance(cls.getComponentType(), i);
            c9380c.m24381a(objArr);
            Class componentType = cls.getComponentType();
            if (this.f32401a || C9380c.m24369f(componentType)) {
                AbstractC9413h m24371d = c9380c.m24371d(componentType);
                if (this.f32402b) {
                    for (int i2 = 0; i2 < i; i2++) {
                        objArr[i2] = c9380c.m24377b(c9374a, componentType, m24371d);
                    }
                } else {
                    for (int i3 = 0; i3 < i; i3++) {
                        objArr[i3] = c9380c.m24391a(c9374a, componentType, m24371d);
                    }
                }
            } else {
                for (int i4 = 0; i4 < i; i4++) {
                    objArr[i4] = c9380c.m24379b(c9374a);
                }
            }
            return objArr;
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ void write(C9380c c9380c, C9376c c9376c, Object[] objArr) {
            Object[] objArr2 = objArr;
            if (objArr2 == null) {
                c9376c.m24424a((byte) 0);
                return;
            }
            c9376c.m24402b(objArr2.length + 1, true);
            Class<?> componentType = objArr2.getClass().getComponentType();
            if (!this.f32401a && !C9380c.m24369f(componentType)) {
                for (Object obj : objArr2) {
                    c9380c.m24388a(c9376c, obj);
                }
                return;
            }
            AbstractC9413h m24371d = c9380c.m24371d(componentType);
            if (!this.f32402b) {
                for (Object obj2 : objArr2) {
                    c9380c.m24387a(c9376c, obj2, m24371d);
                }
                return;
            }
            for (Object obj3 : objArr2) {
                c9380c.m24376b(c9376c, obj3, m24371d);
            }
        }
    }

    /* renamed from: com.esotericsoftware.kryo.serializers.f$i */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/f$i.class */
    public static class C9450i extends AbstractC9413h<short[]> {
        public C9450i() {
            setAcceptsNull(true);
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ short[] copy(C9380c c9380c, short[] sArr) {
            short[] sArr2 = sArr;
            int length = sArr2.length;
            short[] sArr3 = new short[length];
            System.arraycopy(sArr2, 0, sArr3, 0, length);
            return sArr3;
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ short[] read(C9380c c9380c, C9374a c9374a, Class<? extends short[]> cls) {
            int m24456b = c9374a.m24456b(true);
            if (m24456b == 0) {
                return null;
            }
            return c9374a.m24442h(m24456b - 1);
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ void write(C9380c c9380c, C9376c c9376c, short[] sArr) {
            short[] sArr2 = sArr;
            if (sArr2 == null) {
                c9376c.m24424a((byte) 0);
                return;
            }
            c9376c.m24402b(sArr2.length + 1, true);
            c9376c.m24405a(sArr2, 0, sArr2.length);
        }
    }

    /* renamed from: com.esotericsoftware.kryo.serializers.f$j */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/f$j.class */
    public static class C9451j extends AbstractC9413h<String[]> {
        public C9451j() {
            setAcceptsNull(true);
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ String[] copy(C9380c c9380c, String[] strArr) {
            String[] strArr2 = strArr;
            int length = strArr2.length;
            String[] strArr3 = new String[length];
            System.arraycopy(strArr2, 0, strArr3, 0, length);
            return strArr3;
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ String[] read(C9380c c9380c, C9374a c9374a, Class<? extends String[]> cls) {
            int m24456b = c9374a.m24456b(true);
            if (m24456b == 0) {
                return null;
            }
            int i = m24456b - 1;
            String[] strArr = new String[i];
            int i2 = 0;
            if (c9380c.getReferences()) {
                i2 = 0;
                if (c9380c.getReferenceResolver().mo24283a(String.class)) {
                    AbstractC9413h m24371d = c9380c.m24371d(String.class);
                    for (int i3 = 0; i3 < i; i3++) {
                        strArr[i3] = (String) c9380c.m24377b(c9374a, String.class, m24371d);
                    }
                    return strArr;
                }
            }
            while (i2 < i) {
                strArr[i2] = c9374a.m24433m();
                i2++;
            }
            return strArr;
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ void write(C9380c c9380c, C9376c c9376c, String[] strArr) {
            String[] strArr2 = strArr;
            if (strArr2 == null) {
                c9376c.m24424a((byte) 0);
                return;
            }
            c9376c.m24402b(strArr2.length + 1, true);
            if (!c9380c.getReferences() || !c9380c.getReferenceResolver().mo24283a(String.class)) {
                for (String str : strArr2) {
                    c9376c.m24416a(str);
                }
                return;
            }
            AbstractC9413h m24371d = c9380c.m24371d(String.class);
            for (String str2 : strArr2) {
                c9380c.m24376b(c9376c, str2, m24371d);
            }
        }
    }
}
