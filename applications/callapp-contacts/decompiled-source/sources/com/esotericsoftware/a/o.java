package com.esotericsoftware.a;
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/a/o.class */
final class o {

    /* renamed from: a  reason: collision with root package name */
    int f18920a;

    /* renamed from: b  reason: collision with root package name */
    int f18921b;

    /* renamed from: c  reason: collision with root package name */
    int f18922c;

    /* renamed from: d  reason: collision with root package name */
    long f18923d;
    String e;
    String f;
    String g;
    int h;
    o i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(int i) {
        this.f18920a = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(int i, o oVar) {
        this.f18920a = i;
        this.f18921b = oVar.f18921b;
        this.f18922c = oVar.f18922c;
        this.f18923d = oVar.f18923d;
        this.e = oVar.e;
        this.f = oVar.f;
        this.g = oVar.g;
        this.h = oVar.h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(double d2) {
        this.f18921b = 6;
        this.f18923d = Double.doubleToRawLongBits(d2);
        this.h = Integer.MAX_VALUE & (this.f18921b + ((int) d2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(float f) {
        this.f18921b = 4;
        this.f18922c = Float.floatToRawIntBits(f);
        this.h = Integer.MAX_VALUE & (this.f18921b + ((int) f));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(int i) {
        this.f18921b = 3;
        this.f18922c = i;
        this.h = Integer.MAX_VALUE & (3 + i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(int i, int i2) {
        this.f18921b = 33;
        this.f18922c = i;
        this.h = i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(int i, String str, String str2, String str3) {
        int hashCode;
        int hashCode2;
        int hashCode3;
        this.f18921b = i;
        this.e = str;
        this.f = str2;
        this.g = str3;
        if (i != 1) {
            if (i == 12) {
                hashCode2 = str.hashCode();
                hashCode3 = str2.hashCode();
            } else if (!(i == 16 || i == 30)) {
                if (i == 7) {
                    this.f18922c = 0;
                } else if (i != 8) {
                    hashCode2 = str.hashCode() * str2.hashCode();
                    hashCode3 = str3.hashCode();
                }
            }
            hashCode = hashCode2 * hashCode3;
            this.h = (i + hashCode) & Integer.MAX_VALUE;
        }
        hashCode = str.hashCode();
        this.h = (i + hashCode) & Integer.MAX_VALUE;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(long j) {
        this.f18921b = 5;
        this.f18923d = j;
        this.h = Integer.MAX_VALUE & (5 + ((int) j));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(String str, String str2, int i) {
        this.f18921b = 18;
        this.f18923d = i;
        this.e = str;
        this.f = str2;
        this.h = Integer.MAX_VALUE & ((i * str.hashCode() * this.f.hashCode()) + 18);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00ab  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a(com.esotericsoftware.a.o r6) {
        /*
            Method dump skipped, instructions count: 290
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.esotericsoftware.a.o.a(com.esotericsoftware.a.o):boolean");
    }
}
