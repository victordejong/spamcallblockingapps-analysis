package com.google.zxing.b.a;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/zxing/b/a/f.class */
public final class f implements g {
    private static String a(CharSequence charSequence) {
        char c2 = 0;
        int length = charSequence.length() - 0;
        if (length != 0) {
            char charAt = charSequence.charAt(0);
            char charAt2 = length >= 2 ? charSequence.charAt(1) : (char) 0;
            char charAt3 = length >= 3 ? charSequence.charAt(2) : (char) 0;
            if (length >= 4) {
                c2 = charSequence.charAt(3);
            }
            int i = (charAt << 18) + (charAt2 << '\f') + (charAt3 << 6) + c2;
            char c3 = (char) ((i >> 16) & 255);
            char c4 = (char) ((i >> 8) & 255);
            char c5 = (char) (i & 255);
            StringBuilder sb = new StringBuilder(3);
            sb.append(c3);
            if (length >= 2) {
                sb.append(c4);
            }
            if (length >= 3) {
                sb.append(c5);
            }
            return sb.toString();
        }
        throw new IllegalStateException("StringBuilder must not be empty");
    }

    @Override // com.google.zxing.b.a.g
    public final void a(h hVar) {
        boolean z;
        StringBuilder sb = new StringBuilder();
        while (true) {
            z = true;
            if (!hVar.b()) {
                break;
            }
            char a2 = hVar.a();
            if (a2 >= ' ' && a2 <= '?') {
                sb.append(a2);
            } else if (a2 < '@' || a2 > '^') {
                j.c(a2);
            } else {
                sb.append((char) (a2 - '@'));
            }
            hVar.f++;
            if (sb.length() >= 4) {
                hVar.a(a(sb));
                sb.delete(0, 4);
                if (j.a(hVar.f32925a, hVar.f, 4) != 4) {
                    hVar.g = 0;
                    break;
                }
            }
        }
        sb.append((char) 31);
        try {
            int length = sb.length();
            if (length != 0) {
                if (length == 1) {
                    hVar.d();
                    int length2 = hVar.h.f32934b - hVar.e.length();
                    int c2 = hVar.c();
                    int i = length2;
                    if (c2 > length2) {
                        hVar.a(hVar.e.length() + 1);
                        i = hVar.h.f32934b - hVar.e.length();
                    }
                    if (c2 <= i && i <= 2) {
                        return;
                    }
                }
                if (length <= 4) {
                    int i2 = length - 1;
                    String a3 = a(sb);
                    if (!(!hVar.b()) || i2 > 2) {
                        z = false;
                    }
                    boolean z2 = z;
                    if (i2 <= 2) {
                        hVar.a(hVar.e.length() + i2);
                        z2 = z;
                        if (hVar.h.f32934b - hVar.e.length() >= 3) {
                            hVar.a(hVar.e.length() + a3.length());
                            z2 = false;
                        }
                    }
                    if (z2) {
                        hVar.h = null;
                        hVar.f -= i2;
                    } else {
                        hVar.a(a3);
                    }
                    return;
                }
                throw new IllegalStateException("Count must not exceed 4");
            }
        } finally {
            hVar.g = 0;
        }
    }
}
