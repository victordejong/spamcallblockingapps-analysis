package com.esotericsoftware.p273a;
/* renamed from: com.esotericsoftware.a.u */
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/a/u.class */
public final class C9365u {

    /* renamed from: a */
    byte[] f32184a;

    /* renamed from: b */
    int f32185b;

    public C9365u(byte[] bArr, int i) {
        this.f32184a = bArr;
        this.f32185b = i;
    }

    public final String toString() {
        char c;
        char c2;
        byte b = this.f32184a[this.f32185b];
        StringBuffer stringBuffer = new StringBuffer(b * 2);
        for (int i = 0; i < b; i++) {
            byte[] bArr = this.f32184a;
            int i2 = this.f32185b;
            int i3 = i * 2;
            byte b2 = bArr[i2 + i3 + 1];
            if (b2 == 0) {
                c = '[';
            } else if (b2 == 1) {
                c = '.';
            } else if (b2 != 2) {
                if (b2 != 3) {
                    c2 = '_';
                } else {
                    stringBuffer.append((int) bArr[i2 + i3 + 2]);
                    c2 = ';';
                }
                stringBuffer.append(c2);
            } else {
                c = '*';
            }
            stringBuffer.append(c);
        }
        return stringBuffer.toString();
    }
}
