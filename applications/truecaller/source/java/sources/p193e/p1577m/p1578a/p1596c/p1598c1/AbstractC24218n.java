package p193e.p1577m.p1578a.p1596c.p1598c1;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.m.a.c.c1.n */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/c1/n.class */
public interface AbstractC24218n {

    /* renamed from: e.m.a.c.c1.n$a */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/c1/n$a.class */
    public static final class C24219a extends Exception {
        public C24219a(String str) {
            super(str);
        }

        public C24219a(Throwable th) {
            super(th);
        }
    }

    /* renamed from: e.m.a.c.c1.n$b */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/c1/n$b.class */
    public static final class C24220b extends Exception {
        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public C24220b(int r7, int r8, int r9, int r10) {
            /*
                r6 = this;
                java.lang.String r0 = "AudioTrack init failed: "
                r1 = r7
                java.lang.String r2 = ", Config("
                r3 = r8
                java.lang.String r4 = ", "
                java.lang.StringBuilder r0 = p193e.p1432d.p1439c.p1440a.C22128a.m8716F(r0, r1, r2, r3, r4)
                r11 = r0
                r0 = r11
                r1 = r9
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r11
                java.lang.String r1 = ", "
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r11
                r1 = r10
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r11
                java.lang.String r1 = ")"
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r6
                r1 = r11
                java.lang.String r1 = r1.toString()
                r0.<init>(r1)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1596c.p1598c1.AbstractC24218n.C24220b.<init>(int, int, int, int):void");
        }
    }

    /* renamed from: e.m.a.c.c1.n$c */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/c1/n$c.class */
    public interface AbstractC24221c {
    }

    /* renamed from: e.m.a.c.c1.n$d */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/c1/n$d.class */
    public static final class C24222d extends Exception {
        public C24222d(int i) {
            super(C22128a.m8611i2("AudioTrack write failed: ", i));
        }
    }
}
