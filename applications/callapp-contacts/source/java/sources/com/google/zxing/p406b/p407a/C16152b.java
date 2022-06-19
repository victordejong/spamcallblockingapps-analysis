package com.google.zxing.p406b.p407a;
/* renamed from: com.google.zxing.b.a.b */
/* loaded from: classes4-dex2jar.jar:com/google/zxing/b/a/b.class */
public final class C16152b implements AbstractC16157g {
    @Override // com.google.zxing.p406b.p407a.AbstractC16157g
    /* renamed from: a */
    public final void mo7704a(C16158h c16158h) {
        StringBuilder sb = new StringBuilder();
        sb.append((char) 0);
        while (true) {
            if (!c16158h.m7731b()) {
                break;
            }
            sb.append(c16158h.m7735a());
            c16158h.f57084f++;
            if (C16160j.m7723a(c16158h.f57079a, c16158h.f57084f, 5) != 5) {
                c16158h.f57085g = 0;
                break;
            }
        }
        int length = sb.length() - 1;
        int length2 = c16158h.f57083e.length() + length + 1;
        c16158h.m7733a(length2);
        boolean z = c16158h.f57086h.f57094b - length2 > 0;
        if (c16158h.m7731b() || z) {
            if (length <= 249) {
                sb.setCharAt(0, (char) length);
            } else if (length > 1555) {
                throw new IllegalStateException("Message length not in valid ranges: ".concat(String.valueOf(length)));
            } else {
                sb.setCharAt(0, (char) ((length / 250) + 249));
                sb.insert(1, (char) (length % 250));
            }
        }
        int length3 = sb.length();
        for (int i = 0; i < length3; i++) {
            int charAt = sb.charAt(i) + (((c16158h.f57083e.length() + 1) * 149) % 255) + 1;
            if (charAt > 255) {
                charAt -= 256;
            }
            c16158h.m7734a((char) charAt);
        }
    }
}
