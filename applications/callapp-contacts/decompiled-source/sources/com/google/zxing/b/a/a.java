package com.google.zxing.b.a;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/zxing/b/a/a.class */
public final class a implements g {
    @Override // com.google.zxing.b.a.g
    public final void a(h hVar) {
        int i;
        String str = hVar.f32925a;
        int i2 = hVar.f;
        int length = str.length();
        if (i2 < length) {
            char charAt = str.charAt(i2);
            int i3 = 0;
            while (true) {
                i = i3;
                if (!j.a(charAt)) {
                    break;
                }
                i = i3;
                if (i2 >= length) {
                    break;
                }
                int i4 = i3 + 1;
                int i5 = i2 + 1;
                i2 = i5;
                i3 = i4;
                if (i5 < length) {
                    charAt = str.charAt(i5);
                    i2 = i5;
                    i3 = i4;
                }
            }
        } else {
            i = 0;
        }
        if (i >= 2) {
            char charAt2 = hVar.f32925a.charAt(hVar.f);
            char charAt3 = hVar.f32925a.charAt(hVar.f + 1);
            if (!j.a(charAt2) || !j.a(charAt3)) {
                throw new IllegalArgumentException("not digits: " + charAt2 + charAt3);
            }
            hVar.a((char) (((charAt2 - '0') * 10) + (charAt3 - '0') + 130));
            hVar.f += 2;
            return;
        }
        char a2 = hVar.a();
        int a3 = j.a(hVar.f32925a, hVar.f, 0);
        if (a3 != 0) {
            if (a3 == 1) {
                hVar.a((char) 230);
                hVar.g = 1;
            } else if (a3 == 2) {
                hVar.a((char) 239);
                hVar.g = 2;
            } else if (a3 == 3) {
                hVar.a((char) 238);
                hVar.g = 3;
            } else if (a3 == 4) {
                hVar.a((char) 240);
                hVar.g = 4;
            } else if (a3 == 5) {
                hVar.a((char) 231);
                hVar.g = 5;
            } else {
                throw new IllegalStateException("Illegal mode: ".concat(String.valueOf(a3)));
            }
        } else if (j.b(a2)) {
            hVar.a((char) 235);
            hVar.a((char) ((a2 - 128) + 1));
            hVar.f++;
        } else {
            hVar.a((char) (a2 + 1));
            hVar.f++;
        }
    }
}
