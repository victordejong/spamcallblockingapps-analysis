package p081h.p203i.p316b.p320d;

import java.io.IOException;
/* renamed from: h.i.b.d.i */
/* loaded from: classes2-dex2jar.jar:h/i/b/d/i.class */
public abstract class AbstractC9376i {

    /* renamed from: a */
    public StringBuilder f21412a = new StringBuilder();

    /* renamed from: b */
    public boolean f21413b;

    /* renamed from: a */
    public void m15345a() throws IOException {
        if (this.f21413b || this.f21412a.length() > 0) {
            m15344a(false);
        }
    }

    /* renamed from: a */
    public abstract void mo15339a(String str, String str2) throws IOException;

    /* JADX WARN: Removed duplicated region for block: B:17:0x0044  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m15343a(char[] r7, int r8, int r9) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 215
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p316b.p320d.AbstractC9376i.m15343a(char[], int, int):void");
    }

    /* renamed from: a */
    public final boolean m15344a(boolean z) throws IOException {
        mo15339a(this.f21412a.toString(), this.f21413b ? z ? "\r\n" : "\r" : z ? "\n" : "");
        this.f21412a = new StringBuilder();
        this.f21413b = false;
        return z;
    }
}
