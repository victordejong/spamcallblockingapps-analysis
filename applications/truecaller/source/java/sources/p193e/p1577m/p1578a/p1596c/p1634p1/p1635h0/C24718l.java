package p193e.p1577m.p1578a.p1596c.p1634p1.p1635h0;

import java.io.File;
/* renamed from: e.m.a.c.p1.h0.l */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/p1/h0/l.class */
public class C24718l implements Comparable<C24718l> {

    /* renamed from: a */
    public final String f69266a;

    /* renamed from: b */
    public final long f69267b;

    /* renamed from: c */
    public final long f69268c;

    /* renamed from: d */
    public final boolean f69269d;

    /* renamed from: e */
    public final File f69270e;

    /* renamed from: f */
    public final long f69271f;

    public C24718l(String str, long j, long j2, long j3, File file) {
        this.f69266a = str;
        this.f69267b = j;
        this.f69268c = j2;
        this.f69269d = file != null;
        this.f69270e = file;
        this.f69271f = j3;
    }

    /* renamed from: a */
    public int compareTo(C24718l c24718l) {
        if (!this.f69266a.equals(c24718l.f69266a)) {
            return this.f69266a.compareTo(c24718l.f69266a);
        }
        int i = ((this.f69267b - c24718l.f69267b) > 0L ? 1 : ((this.f69267b - c24718l.f69267b) == 0L ? 0 : -1));
        return i == 0 ? 0 : i < 0 ? -1 : 1;
    }
}
