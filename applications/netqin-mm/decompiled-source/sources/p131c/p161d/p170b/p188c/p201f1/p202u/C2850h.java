package p131c.p161d.p170b.p188c.p201f1.p202u;

import java.io.File;
/* renamed from: c.d.b.c.f1.u.h */
/* loaded from: classes-dex2jar.jar:c/d/b/c/f1/u/h.class */
public class C2850h implements Comparable<C2850h> {

    /* renamed from: a */
    public final String f10369a;

    /* renamed from: b */
    public final long f10370b;

    /* renamed from: c */
    public final long f10371c;

    /* renamed from: d */
    public final boolean f10372d;

    /* renamed from: e */
    public final File f10373e;

    /* renamed from: f */
    public final long f10374f;

    public C2850h(String str, long j, long j2, long j3, File file) {
        this.f10369a = str;
        this.f10370b = j;
        this.f10371c = j2;
        this.f10372d = file != null;
        this.f10373e = file;
        this.f10374f = j3;
    }

    /* renamed from: a */
    public int compareTo(C2850h hVar) {
        if (!this.f10369a.equals(hVar.f10369a)) {
            return this.f10369a.compareTo(hVar.f10369a);
        }
        long j = this.f10370b - hVar.f10370b;
        return j == 0 ? 0 : j < 0 ? -1 : 1;
    }

    /* renamed from: a */
    public boolean m28862a() {
        return !this.f10372d;
    }

    /* renamed from: b */
    public boolean m28860b() {
        return this.f10371c == -1;
    }
}
