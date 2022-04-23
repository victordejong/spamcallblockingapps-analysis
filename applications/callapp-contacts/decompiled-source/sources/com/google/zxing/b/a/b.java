package com.google.zxing.b.a;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/zxing/b/a/b.class */
public final class b implements g {
    @Override // com.google.zxing.b.a.g
    public final void a(h hVar) {
        StringBuilder sb = new StringBuilder();
        sb.append((char) 0);
        while (true) {
            if (!hVar.b()) {
                break;
            }
            sb.append(hVar.a());
            hVar.f++;
            if (j.a(hVar.f32925a, hVar.f, 5) != 5) {
                hVar.g = 0;
                break;
            }
        }
        int length = sb.length() - 1;
        int length2 = hVar.e.length() + length + 1;
        hVar.a(length2);
        boolean z = hVar.h.f32934b - length2 > 0;
        if (hVar.b() || z) {
            if (length <= 249) {
                sb.setCharAt(0, (char) length);
            } else if (length <= 1555) {
                sb.setCharAt(0, (char) ((length / 250) + 249));
                sb.insert(1, (char) (length % 250));
            } else {
                throw new IllegalStateException("Message length not in valid ranges: ".concat(String.valueOf(length)));
            }
        }
        int length3 = sb.length();
        for (int i = 0; i < length3; i++) {
            int charAt = sb.charAt(i) + (((hVar.e.length() + 1) * 149) % 255) + 1;
            if (charAt > 255) {
                charAt -= 256;
            }
            hVar.a((char) charAt);
        }
    }
}
