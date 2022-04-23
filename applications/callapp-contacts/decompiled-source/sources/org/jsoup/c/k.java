package org.jsoup.c;

import java.util.Arrays;
import org.jsoup.a.c;
import org.jsoup.c.i;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5-dex2jar.jar:org/jsoup/c/k.class */
public final class k {

    /* renamed from: a  reason: collision with root package name */
    static final int[] f39248a = {8364, 129, 8218, 402, 8222, 8230, 8224, 8225, 710, 8240, 352, 8249, 338, 141, 381, 143, 144, 8216, 8217, 8220, 8221, 8226, 8211, 8212, 732, 8482, 353, 8250, 339, 157, 382, 376};
    private static final char[] p;

    /* renamed from: b  reason: collision with root package name */
    final a f39249b;

    /* renamed from: d  reason: collision with root package name */
    i f39251d;
    i.h i;
    String o;
    private final e q;

    /* renamed from: c  reason: collision with root package name */
    l f39250c = l.Data;
    boolean e = false;
    String f = null;
    StringBuilder g = new StringBuilder(1024);
    StringBuilder h = new StringBuilder(1024);
    i.g j = new i.g();
    i.f k = new i.f();
    i.b l = new i.b();
    i.d m = new i.d();
    i.c n = new i.c();
    private final int[] r = new int[1];
    private final int[] s = new int[2];

    static {
        char[] cArr = {'\t', '\n', '\r', '\f', ' ', '<', '&'};
        p = cArr;
        Arrays.sort(cArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(a aVar, e eVar) {
        this.f39249b = aVar;
        this.q = eVar;
    }

    private void c(String str) {
        if (this.q.a()) {
            this.q.add(new d(this.f39249b.b(), "Invalid character reference: %s", str));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final i.h a(boolean z) {
        i.h h = z ? this.j.a() : this.k.a();
        this.i = h;
        return h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        i.h hVar = this.i;
        if (hVar.f39245d != null) {
            hVar.i();
        }
        a(this.i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(char c2) {
        a(String.valueOf(c2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(String str) {
        if (this.f == null) {
            this.f = str;
            return;
        }
        if (this.g.length() == 0) {
            this.g.append(this.f);
        }
        this.g.append(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(i iVar) {
        c.b(this.e);
        this.f39251d = iVar;
        this.e = true;
        if (iVar.f39235a == i.EnumC0750i.StartTag) {
            this.o = ((i.g) iVar).f39243b;
        } else if (iVar.f39235a == i.EnumC0750i.EndTag && ((i.f) iVar).g != null) {
            b("Attributes incorrectly present on end tag");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(l lVar) {
        this.f39249b.g();
        this.f39250c = lVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x01e9, code lost:
        if (r6.f39249b.c('=', '-', '_') == false) goto L_0x01f5;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int[] a(java.lang.Character r7, boolean r8) {
        /*
            Method dump skipped, instructions count: 585
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jsoup.c.k.a(java.lang.Character, boolean):int[]");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b() {
        a(this.n);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(String str) {
        if (this.q.a()) {
            this.q.add(new d(this.f39249b.b(), str));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(l lVar) {
        if (this.q.a()) {
            this.q.add(new d(this.f39249b.b(), "Unexpected character '%s' in input state [%s]", Character.valueOf(this.f39249b.d()), lVar));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c() {
        this.n.a();
        this.n.f39237b = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c(l lVar) {
        if (this.q.a()) {
            this.q.add(new d(this.f39249b.b(), "Unexpectedly reached end of file (EOF) in input state [%s]", lVar));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void d() {
        this.m.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void e() {
        a(this.m);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean f() {
        return this.o != null && this.i.j().equalsIgnoreCase(this.o);
    }
}
