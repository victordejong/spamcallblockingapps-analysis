package com.google.zxing.b.a;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/zxing/b/a/n.class */
public final class n extends c {
    @Override // com.google.zxing.b.a.c
    public final int a() {
        return 3;
    }

    @Override // com.google.zxing.b.a.c
    final int a(char c2, StringBuilder sb) {
        if (c2 == '\r') {
            sb.append((char) 0);
            return 1;
        } else if (c2 == ' ') {
            sb.append((char) 3);
            return 1;
        } else if (c2 == '*') {
            sb.append((char) 1);
            return 1;
        } else if (c2 == '>') {
            sb.append((char) 2);
            return 1;
        } else if (c2 >= '0' && c2 <= '9') {
            sb.append((char) ((c2 - '0') + 4));
            return 1;
        } else if (c2 < 'A' || c2 > 'Z') {
            j.c(c2);
            return 1;
        } else {
            sb.append((char) ((c2 - 'A') + 14));
            return 1;
        }
    }

    @Override // com.google.zxing.b.a.c, com.google.zxing.b.a.g
    public final void a(h hVar) {
        StringBuilder sb = new StringBuilder();
        while (true) {
            if (!hVar.b()) {
                break;
            }
            char a2 = hVar.a();
            hVar.f++;
            a(a2, sb);
            if (sb.length() % 3 == 0) {
                a(hVar, sb);
                if (j.a(hVar.f32925a, hVar.f, 3) != 3) {
                    hVar.g = 0;
                    break;
                }
            }
        }
        b(hVar, sb);
    }

    @Override // com.google.zxing.b.a.c
    final void b(h hVar, StringBuilder sb) {
        hVar.d();
        int length = hVar.h.f32934b - hVar.e.length();
        hVar.f -= sb.length();
        if (hVar.c() > 1 || length > 1 || hVar.c() != length) {
            hVar.a((char) 254);
        }
        if (hVar.g < 0) {
            hVar.g = 0;
        }
    }
}
