package org.jsoup.p592c;

import org.jsoup.nodes.C20901b;
import org.jsoup.p591b.C20781b;
/* renamed from: org.jsoup.c.f */
/* loaded from: classes5-dex2jar.jar:org/jsoup/c/f.class */
public final class C20813f {

    /* renamed from: a */
    public static final C20813f f67372a = new C20813f(false, false);

    /* renamed from: b */
    public static final C20813f f67373b = new C20813f(true, true);

    /* renamed from: c */
    final boolean f67374c;

    /* renamed from: d */
    public final boolean f67375d;

    public C20813f(boolean z, boolean z2) {
        this.f67374c = z;
        this.f67375d = z2;
    }

    /* renamed from: a */
    public final String m399a(String str) {
        String trim = str.trim();
        String str2 = trim;
        if (!this.f67374c) {
            str2 = C20781b.m497a(trim);
        }
        return str2;
    }

    /* renamed from: a */
    public final C20901b m398a(C20901b c20901b) {
        if (c20901b != null && !this.f67375d) {
            c20901b.m296d();
        }
        return c20901b;
    }
}
