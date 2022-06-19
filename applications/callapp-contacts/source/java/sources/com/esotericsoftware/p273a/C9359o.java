package com.esotericsoftware.p273a;
/* renamed from: com.esotericsoftware.a.o */
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/a/o.class */
final class C9359o {

    /* renamed from: a */
    int f32091a;

    /* renamed from: b */
    int f32092b;

    /* renamed from: c */
    int f32093c;

    /* renamed from: d */
    long f32094d;

    /* renamed from: e */
    String f32095e;

    /* renamed from: f */
    String f32096f;

    /* renamed from: g */
    String f32097g;

    /* renamed from: h */
    int f32098h;

    /* renamed from: i */
    C9359o f32099i;

    public C9359o() {
    }

    public C9359o(int i) {
        this.f32091a = i;
    }

    public C9359o(int i, C9359o c9359o) {
        this.f32091a = i;
        this.f32092b = c9359o.f32092b;
        this.f32093c = c9359o.f32093c;
        this.f32094d = c9359o.f32094d;
        this.f32095e = c9359o.f32095e;
        this.f32096f = c9359o.f32096f;
        this.f32097g = c9359o.f32097g;
        this.f32098h = c9359o.f32098h;
    }

    /* renamed from: a */
    public final void m24571a(double d) {
        this.f32092b = 6;
        this.f32094d = Double.doubleToRawLongBits(d);
        this.f32098h = Integer.MAX_VALUE & (this.f32092b + ((int) d));
    }

    /* renamed from: a */
    public final void m24570a(float f) {
        this.f32092b = 4;
        this.f32093c = Float.floatToRawIntBits(f);
        this.f32098h = Integer.MAX_VALUE & (this.f32092b + ((int) f));
    }

    /* renamed from: a */
    public final void m24569a(int i) {
        this.f32092b = 3;
        this.f32093c = i;
        this.f32098h = Integer.MAX_VALUE & (3 + i);
    }

    /* renamed from: a */
    public final void m24568a(int i, int i2) {
        this.f32092b = 33;
        this.f32093c = i;
        this.f32098h = i2;
    }

    /* renamed from: a */
    public final void m24567a(int i, String str, String str2, String str3) {
        int hashCode;
        int hashCode2;
        int hashCode3;
        this.f32092b = i;
        this.f32095e = str;
        this.f32096f = str2;
        this.f32097g = str3;
        if (i != 1) {
            if (i == 12) {
                hashCode2 = str.hashCode();
                hashCode3 = str2.hashCode();
            } else if (i != 16 && i != 30) {
                if (i == 7) {
                    this.f32093c = 0;
                } else if (i != 8) {
                    hashCode2 = str.hashCode() * str2.hashCode();
                    hashCode3 = str3.hashCode();
                }
            }
            hashCode = hashCode2 * hashCode3;
            this.f32098h = (i + hashCode) & Integer.MAX_VALUE;
        }
        hashCode = str.hashCode();
        this.f32098h = (i + hashCode) & Integer.MAX_VALUE;
    }

    /* renamed from: a */
    public final void m24566a(long j) {
        this.f32092b = 5;
        this.f32094d = j;
        this.f32098h = Integer.MAX_VALUE & (5 + ((int) j));
    }

    /* renamed from: a */
    public final void m24564a(String str, String str2, int i) {
        this.f32092b = 18;
        this.f32094d = i;
        this.f32095e = str;
        this.f32096f = str2;
        this.f32098h = Integer.MAX_VALUE & ((i * str.hashCode() * this.f32096f.hashCode()) + 18);
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x00ab  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m24565a(com.esotericsoftware.p273a.C9359o r6) {
        /*
            Method dump skipped, instructions count: 290
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.esotericsoftware.p273a.C9359o.m24565a(com.esotericsoftware.a.o):boolean");
    }
}
