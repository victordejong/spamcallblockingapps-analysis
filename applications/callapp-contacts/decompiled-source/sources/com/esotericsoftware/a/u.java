package com.esotericsoftware.a;
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/a/u.class */
public final class u {

    /* renamed from: a  reason: collision with root package name */
    byte[] f18940a;

    /* renamed from: b  reason: collision with root package name */
    int f18941b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public u(byte[] bArr, int i) {
        this.f18940a = bArr;
        this.f18941b = i;
    }

    public final String toString() {
        char c2;
        char c3;
        byte b2 = this.f18940a[this.f18941b];
        StringBuffer stringBuffer = new StringBuffer(b2 * 2);
        for (int i = 0; i < b2; i++) {
            byte[] bArr = this.f18940a;
            int i2 = this.f18941b;
            int i3 = i * 2;
            byte b3 = bArr[i2 + i3 + 1];
            if (b3 == 0) {
                c2 = '[';
            } else if (b3 == 1) {
                c2 = '.';
            } else if (b3 != 2) {
                if (b3 != 3) {
                    c3 = '_';
                } else {
                    stringBuffer.append((int) bArr[i2 + i3 + 2]);
                    c3 = ';';
                }
                stringBuffer.append(c3);
            } else {
                c2 = '*';
            }
            stringBuffer.append(c2);
        }
        return stringBuffer.toString();
    }
}
