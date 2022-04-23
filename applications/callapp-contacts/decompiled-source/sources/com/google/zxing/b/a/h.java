package com.google.zxing.b.a;

import com.google.zxing.b;
import java.nio.charset.StandardCharsets;
/* loaded from: classes4-dex2jar.jar:com/google/zxing/b/a/h.class */
final class h {

    /* renamed from: a  reason: collision with root package name */
    final String f32925a;

    /* renamed from: b  reason: collision with root package name */
    l f32926b;

    /* renamed from: c  reason: collision with root package name */
    b f32927c;

    /* renamed from: d  reason: collision with root package name */
    b f32928d;
    final StringBuilder e;
    int f;
    int g;
    k h;
    int i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(String str) {
        byte[] bytes = str.getBytes(StandardCharsets.ISO_8859_1);
        StringBuilder sb = new StringBuilder(bytes.length);
        int length = bytes.length;
        for (int i = 0; i < length; i++) {
            char c2 = (char) (bytes[i] & 255);
            if (c2 != '?' || str.charAt(i) == '?') {
                sb.append(c2);
            } else {
                throw new IllegalArgumentException("Message contains characters outside ISO-8859-1 encoding.");
            }
        }
        this.f32925a = sb.toString();
        this.f32926b = l.FORCE_NONE;
        this.e = new StringBuilder(str.length());
        this.g = -1;
    }

    private int e() {
        return this.f32925a.length() - this.i;
    }

    public final char a() {
        return this.f32925a.charAt(this.f);
    }

    public final void a(char c2) {
        this.e.append(c2);
    }

    public final void a(int i) {
        k kVar = this.h;
        if (kVar == null || i > kVar.f32934b) {
            this.h = k.a(i, this.f32926b, this.f32927c, this.f32928d);
        }
    }

    public final void a(String str) {
        this.e.append(str);
    }

    public final boolean b() {
        return this.f < e();
    }

    public final int c() {
        return e() - this.f;
    }

    public final void d() {
        a(this.e.length());
    }
}
