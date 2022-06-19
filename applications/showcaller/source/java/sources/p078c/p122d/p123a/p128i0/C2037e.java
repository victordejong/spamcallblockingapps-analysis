package p078c.p122d.p123a.p128i0;
/* renamed from: c.d.a.i0.e */
/* loaded from: classes2-dex2jar.jar:c/d/a/i0/e.class */
public class C2037e {

    /* renamed from: a */
    public final int f7152a;

    /* renamed from: b */
    public final long f7153b;

    /* renamed from: c */
    public final boolean f7154c;

    /* renamed from: d */
    public final boolean f7155d;

    /* renamed from: e */
    public final int f7156e;

    /* renamed from: f */
    public final boolean f7157f;

    /* renamed from: g */
    public final boolean f7158g;

    /* renamed from: h */
    public final boolean f7159h;

    /* renamed from: c.d.a.i0.e$b */
    /* loaded from: classes2-dex2jar.jar:c/d/a/i0/e$b.class */
    public static class C2039b {

        /* renamed from: a */
        private static final C2037e f7160a = new C2037e();
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x0252  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0264  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x026e  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x02b3  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x02bd  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0302  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x030c  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0351  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x035c  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x0164 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:172:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0137  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0156  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x017b  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x01c0  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x01c9  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x020b  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0215  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0228  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0233  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0246  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private C2037e() {
        /*
            Method dump skipped, instructions count: 1050
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p078c.p122d.p123a.p128i0.C2037e.<init>():void");
    }

    /* renamed from: a */
    public static C2037e m28244a() {
        return C2039b.f7160a;
    }

    /* renamed from: b */
    public static int m28243b(int i) {
        if (i > 12) {
            C2036d.m28245i(C2037e.class, "require the count of network thread  is %d, what is more than the max valid count(%d), so adjust to %d auto", Integer.valueOf(i), 12, 12);
            return 12;
        } else if (i >= 1) {
            return i;
        } else {
            C2036d.m28245i(C2037e.class, "require the count of network thread  is %d, what is less than the min valid count(%d), so adjust to %d auto", Integer.valueOf(i), 1, 1);
            return 1;
        }
    }
}
