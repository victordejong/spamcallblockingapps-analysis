package com.esotericsoftware.kryo.serializers;

import java.lang.reflect.Array;
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/f.class */
public final class f {

    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/f$a.class */
    public static class a extends com.esotericsoftware.kryo.h<boolean[]> {
        public a() {
            setAcceptsNull(true);
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ boolean[] copy(com.esotericsoftware.kryo.c cVar, boolean[] zArr) {
            boolean[] zArr2 = zArr;
            int length = zArr2.length;
            boolean[] zArr3 = new boolean[length];
            System.arraycopy(zArr2, 0, zArr3, 0, length);
            return zArr3;
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ boolean[] read(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.a aVar, Class<? extends boolean[]> cls) {
            int b2 = aVar.b(true);
            if (b2 == 0) {
                return null;
            }
            int i = b2 - 1;
            boolean[] zArr = new boolean[i];
            for (int i2 = 0; i2 < i; i2++) {
                zArr[i2] = aVar.l();
            }
            return zArr;
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ void write(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.c cVar2, boolean[] zArr) {
            boolean[] zArr2 = zArr;
            if (zArr2 == null) {
                cVar2.a((byte) 0);
                return;
            }
            cVar2.b(zArr2.length + 1, true);
            for (boolean z : zArr2) {
                cVar2.a(z);
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/f$b.class */
    public static class b extends com.esotericsoftware.kryo.h<byte[]> {
        public b() {
            setAcceptsNull(true);
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ byte[] copy(com.esotericsoftware.kryo.c cVar, byte[] bArr) {
            byte[] bArr2 = bArr;
            int length = bArr2.length;
            byte[] bArr3 = new byte[length];
            System.arraycopy(bArr2, 0, bArr3, 0, length);
            return bArr3;
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ byte[] read(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.a aVar, Class<? extends byte[]> cls) {
            int b2 = aVar.b(true);
            if (b2 == 0) {
                return null;
            }
            return aVar.b(b2 - 1);
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ void write(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.c cVar2, byte[] bArr) {
            byte[] bArr2 = bArr;
            if (bArr2 == null) {
                cVar2.a((byte) 0);
                return;
            }
            cVar2.b(bArr2.length + 1, true);
            cVar2.a(bArr2);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/f$c.class */
    public static class c extends com.esotericsoftware.kryo.h<char[]> {
        public c() {
            setAcceptsNull(true);
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ char[] copy(com.esotericsoftware.kryo.c cVar, char[] cArr) {
            char[] cArr2 = cArr;
            int length = cArr2.length;
            char[] cArr3 = new char[length];
            System.arraycopy(cArr2, 0, cArr3, 0, length);
            return cArr3;
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ char[] read(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.a aVar, Class<? extends char[]> cls) {
            int b2 = aVar.b(true);
            if (b2 == 0) {
                return null;
            }
            return aVar.i(b2 - 1);
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ void write(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.c cVar2, char[] cArr) {
            char[] cArr2 = cArr;
            if (cArr2 == null) {
                cVar2.a((byte) 0);
                return;
            }
            cVar2.b(cArr2.length + 1, true);
            cVar2.a(cArr2, 0, cArr2.length);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/f$d.class */
    public static class d extends com.esotericsoftware.kryo.h<double[]> {
        public d() {
            setAcceptsNull(true);
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ double[] copy(com.esotericsoftware.kryo.c cVar, double[] dArr) {
            double[] dArr2 = dArr;
            int length = dArr2.length;
            double[] dArr3 = new double[length];
            System.arraycopy(dArr2, 0, dArr3, 0, length);
            return dArr3;
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ double[] read(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.a aVar, Class<? extends double[]> cls) {
            int b2 = aVar.b(true);
            if (b2 == 0) {
                return null;
            }
            return aVar.g(b2 - 1);
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ void write(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.c cVar2, double[] dArr) {
            double[] dArr2 = dArr;
            if (dArr2 == null) {
                cVar2.a((byte) 0);
                return;
            }
            cVar2.b(dArr2.length + 1, true);
            cVar2.a(dArr2, 0, dArr2.length);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/f$e.class */
    public static class e extends com.esotericsoftware.kryo.h<float[]> {
        public e() {
            setAcceptsNull(true);
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ float[] copy(com.esotericsoftware.kryo.c cVar, float[] fArr) {
            float[] fArr2 = fArr;
            int length = fArr2.length;
            float[] fArr3 = new float[length];
            System.arraycopy(fArr2, 0, fArr3, 0, length);
            return fArr3;
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ float[] read(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.a aVar, Class<? extends float[]> cls) {
            int b2 = aVar.b(true);
            if (b2 == 0) {
                return null;
            }
            return aVar.f(b2 - 1);
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ void write(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.c cVar2, float[] fArr) {
            float[] fArr2 = fArr;
            if (fArr2 == null) {
                cVar2.a((byte) 0);
                return;
            }
            cVar2.b(fArr2.length + 1, true);
            cVar2.a(fArr2, 0, fArr2.length);
        }
    }

    /* renamed from: com.esotericsoftware.kryo.serializers.f$f  reason: collision with other inner class name */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/f$f.class */
    public static class C0376f extends com.esotericsoftware.kryo.h<int[]> {
        public C0376f() {
            setAcceptsNull(true);
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ int[] copy(com.esotericsoftware.kryo.c cVar, int[] iArr) {
            int[] iArr2 = iArr;
            int length = iArr2.length;
            int[] iArr3 = new int[length];
            System.arraycopy(iArr2, 0, iArr3, 0, length);
            return iArr3;
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ int[] read(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.a aVar, Class<? extends int[]> cls) {
            int b2 = aVar.b(true);
            if (b2 == 0) {
                return null;
            }
            return aVar.c(b2 - 1);
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ void write(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.c cVar2, int[] iArr) {
            int[] iArr2 = iArr;
            if (iArr2 == null) {
                cVar2.a((byte) 0);
                return;
            }
            cVar2.b(iArr2.length + 1, true);
            cVar2.a(iArr2, 0, iArr2.length);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/f$g.class */
    public static class g extends com.esotericsoftware.kryo.h<long[]> {
        public g() {
            setAcceptsNull(true);
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ long[] copy(com.esotericsoftware.kryo.c cVar, long[] jArr) {
            long[] jArr2 = jArr;
            int length = jArr2.length;
            long[] jArr3 = new long[length];
            System.arraycopy(jArr2, 0, jArr3, 0, length);
            return jArr3;
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ long[] read(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.a aVar, Class<? extends long[]> cls) {
            int b2 = aVar.b(true);
            if (b2 == 0) {
                return null;
            }
            return aVar.e(b2 - 1);
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ void write(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.c cVar2, long[] jArr) {
            long[] jArr2 = jArr;
            if (jArr2 == null) {
                cVar2.a((byte) 0);
                return;
            }
            cVar2.b(jArr2.length + 1, true);
            cVar2.b(jArr2, 0, jArr2.length);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/f$h.class */
    public static class h extends com.esotericsoftware.kryo.h<Object[]> {

        /* renamed from: a  reason: collision with root package name */
        private boolean f19063a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f19064b = true;

        /* renamed from: c  reason: collision with root package name */
        private final Class f19065c;

        public h(com.esotericsoftware.kryo.c cVar, Class cls) {
            setAcceptsNull(true);
            this.f19065c = cls;
            if ((cls.getComponentType().getModifiers() & 16) != 0) {
                this.f19063a = true;
            }
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ Object[] copy(com.esotericsoftware.kryo.c cVar, Object[] objArr) {
            Object[] objArr2 = objArr;
            int length = objArr2.length;
            Object[] objArr3 = (Object[]) Array.newInstance(objArr2.getClass().getComponentType(), length);
            cVar.a(objArr3);
            for (int i = 0; i < length; i++) {
                objArr3[i] = cVar.b((com.esotericsoftware.kryo.c) objArr2[i]);
            }
            return objArr3;
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ Object[] read(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.a aVar, Class<? extends Object[]> cls) {
            int b2 = aVar.b(true);
            if (b2 == 0) {
                return null;
            }
            int i = b2 - 1;
            Object[] objArr = (Object[]) Array.newInstance(cls.getComponentType(), i);
            cVar.a(objArr);
            Class componentType = cls.getComponentType();
            if (this.f19063a || com.esotericsoftware.kryo.c.f(componentType)) {
                com.esotericsoftware.kryo.h d2 = cVar.d(componentType);
                if (this.f19064b) {
                    for (int i2 = 0; i2 < i; i2++) {
                        objArr[i2] = cVar.b(aVar, componentType, d2);
                    }
                } else {
                    for (int i3 = 0; i3 < i; i3++) {
                        objArr[i3] = cVar.a(aVar, componentType, d2);
                    }
                }
            } else {
                for (int i4 = 0; i4 < i; i4++) {
                    objArr[i4] = cVar.b(aVar);
                }
            }
            return objArr;
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ void write(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.c cVar2, Object[] objArr) {
            Object[] objArr2 = objArr;
            if (objArr2 == null) {
                cVar2.a((byte) 0);
                return;
            }
            cVar2.b(objArr2.length + 1, true);
            Class<?> componentType = objArr2.getClass().getComponentType();
            if (this.f19063a || com.esotericsoftware.kryo.c.f(componentType)) {
                com.esotericsoftware.kryo.h d2 = cVar.d(componentType);
                if (this.f19064b) {
                    for (Object obj : objArr2) {
                        cVar.b(cVar2, obj, d2);
                    }
                    return;
                }
                for (Object obj2 : objArr2) {
                    cVar.a(cVar2, obj2, d2);
                }
                return;
            }
            for (Object obj3 : objArr2) {
                cVar.a(cVar2, obj3);
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/f$i.class */
    public static class i extends com.esotericsoftware.kryo.h<short[]> {
        public i() {
            setAcceptsNull(true);
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ short[] copy(com.esotericsoftware.kryo.c cVar, short[] sArr) {
            short[] sArr2 = sArr;
            int length = sArr2.length;
            short[] sArr3 = new short[length];
            System.arraycopy(sArr2, 0, sArr3, 0, length);
            return sArr3;
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ short[] read(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.a aVar, Class<? extends short[]> cls) {
            int b2 = aVar.b(true);
            if (b2 == 0) {
                return null;
            }
            return aVar.h(b2 - 1);
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ void write(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.c cVar2, short[] sArr) {
            short[] sArr2 = sArr;
            if (sArr2 == null) {
                cVar2.a((byte) 0);
                return;
            }
            cVar2.b(sArr2.length + 1, true);
            cVar2.a(sArr2, 0, sArr2.length);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/f$j.class */
    public static class j extends com.esotericsoftware.kryo.h<String[]> {
        public j() {
            setAcceptsNull(true);
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ String[] copy(com.esotericsoftware.kryo.c cVar, String[] strArr) {
            String[] strArr2 = strArr;
            int length = strArr2.length;
            String[] strArr3 = new String[length];
            System.arraycopy(strArr2, 0, strArr3, 0, length);
            return strArr3;
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ String[] read(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.a aVar, Class<? extends String[]> cls) {
            int b2 = aVar.b(true);
            if (b2 == 0) {
                return null;
            }
            int i = b2 - 1;
            String[] strArr = new String[i];
            int i2 = 0;
            if (cVar.getReferences()) {
                i2 = 0;
                if (cVar.getReferenceResolver().a(String.class)) {
                    com.esotericsoftware.kryo.h d2 = cVar.d(String.class);
                    for (int i3 = 0; i3 < i; i3++) {
                        strArr[i3] = (String) cVar.b(aVar, String.class, d2);
                    }
                    return strArr;
                }
            }
            while (i2 < i) {
                strArr[i2] = aVar.m();
                i2++;
            }
            return strArr;
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ void write(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.c cVar2, String[] strArr) {
            String[] strArr2 = strArr;
            if (strArr2 == null) {
                cVar2.a((byte) 0);
                return;
            }
            cVar2.b(strArr2.length + 1, true);
            if (!cVar.getReferences() || !cVar.getReferenceResolver().a(String.class)) {
                for (String str : strArr2) {
                    cVar2.a(str);
                }
                return;
            }
            com.esotericsoftware.kryo.h d2 = cVar.d(String.class);
            for (String str2 : strArr2) {
                cVar.b(cVar2, str2, d2);
            }
        }
    }
}
