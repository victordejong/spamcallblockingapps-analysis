package p193e.p194a.p1129p5;
/* renamed from: e.a.p5.j */
/* loaded from: classes15-dex2jar.jar:e/a/p5/j.class */
public final class C19236j {
    /* renamed from: a */
    public String m13755a(long j) {
        long j2;
        String str;
        long j3;
        long j4;
        if (j < 1000) {
            str = j + " B";
        } else {
            if (j < 1000000) {
                str = (j / j2) + " kB";
            } else {
                if (j < 1000000000) {
                    str = (j / j3) + " MB";
                } else {
                    str = (j / j4) + " GB";
                }
            }
        }
        return str;
    }
}
