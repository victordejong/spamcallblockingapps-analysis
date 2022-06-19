package p193e.p1545k.p1546a.p1548b;

import java.io.IOException;
/* renamed from: e.k.a.b.k */
/* loaded from: classes2-dex2jar.jar:e/k/a/b/k.class */
public class C23379k extends IOException {

    /* renamed from: a */
    public C23374h f64687a;

    public C23379k(String str) {
        super(str);
    }

    public C23379k(String str, C23374h c23374h) {
        super(str, null);
        this.f64687a = c23374h;
    }

    public C23379k(String str, C23374h c23374h, Throwable th) {
        super(str, th);
        this.f64687a = c23374h;
    }

    public C23379k(String str, Throwable th) {
        super(str, th);
        this.f64687a = null;
    }

    /* renamed from: a */
    public String mo6520a() {
        return null;
    }

    /* renamed from: b */
    public String m7198b() {
        return super.getMessage();
    }

    /* renamed from: c */
    public Object mo6164c() {
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0021, code lost:
        if (r0 != null) goto L9;
     */
    @Override // java.lang.Throwable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String getMessage() {
        /*
            r3 = this;
            r0 = r3
            java.lang.String r0 = super.getMessage()
            r4 = r0
            r0 = r4
            r5 = r0
            r0 = r4
            if (r0 != 0) goto Le
            java.lang.String r0 = "N/A"
            r5 = r0
        Le:
            r0 = r3
            e.k.a.b.h r0 = r0.f64687a
            r6 = r0
            r0 = r3
            java.lang.String r0 = r0.mo6520a()
            r7 = r0
            r0 = r6
            if (r0 != 0) goto L24
            r0 = r5
            r4 = r0
            r0 = r7
            if (r0 == 0) goto L57
        L24:
            r0 = 100
            r1 = r5
            java.lang.StringBuilder r0 = p193e.p1432d.p1439c.p1440a.C22128a.m8554x(r0, r1)
            r5 = r0
            r0 = r7
            if (r0 == 0) goto L37
            r0 = r5
            r1 = r7
            java.lang.StringBuilder r0 = r0.append(r1)
        L37:
            r0 = r6
            if (r0 == 0) goto L52
            r0 = r5
            r1 = 10
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r5
            java.lang.String r1 = " at "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r5
            r1 = r6
            java.lang.String r1 = r1.toString()
            java.lang.StringBuilder r0 = r0.append(r1)
        L52:
            r0 = r5
            java.lang.String r0 = r0.toString()
            r4 = r0
        L57:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1545k.p1546a.p1548b.C23379k.getMessage():java.lang.String");
    }

    @Override // java.lang.Throwable
    public String toString() {
        return getClass().getName() + ": " + getMessage();
    }
}
