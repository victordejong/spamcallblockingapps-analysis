package p092e.p096e.p097a.p102h0;
/* renamed from: e.e.a.h0.e */
/* loaded from: classes2-dex2jar.jar:e/e/a/h0/e.class */
public class C3063e {

    /* renamed from: a */
    public final int f12683a;

    /* renamed from: b */
    public final long f12684b;

    /* renamed from: c */
    public final boolean f12685c;

    /* renamed from: d */
    public final boolean f12686d;

    /* renamed from: e */
    public final int f12687e;

    /* renamed from: f */
    public final boolean f12688f;

    /* renamed from: g */
    public final boolean f12689g;

    /* renamed from: h */
    public final boolean f12690h;

    /* renamed from: e.e.a.h0.e$b */
    /* loaded from: classes2-dex2jar.jar:e/e/a/h0/e$b.class */
    public static class C3065b {

        /* renamed from: a */
        private static final C3063e f12691a = new C3063e();
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x0272  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0284  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x028e  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x02d3  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x02dd  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0322  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x032c  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0371  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x037c  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x0170 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:172:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0143  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0162  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0197  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x01dc  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x01e5  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0227  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0231  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0242  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0251  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0262  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private C3063e() {
        /*
            Method dump skipped, instructions count: 1082
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p092e.p096e.p097a.p102h0.C3063e.<init>():void");
    }

    /* renamed from: a */
    public static C3063e m405a() {
        return C3065b.f12691a;
    }

    /* renamed from: b */
    public static int m404b(int i) {
        if (i > 12) {
            C3062d.m406i(C3063e.class, "require the count of network thread  is %d, what is more than the max valid count(%d), so adjust to %d auto", Integer.valueOf(i), 12, 12);
            return 12;
        } else if (i >= 1) {
            return i;
        } else {
            C3062d.m406i(C3063e.class, "require the count of network thread  is %d, what is less than the min valid count(%d), so adjust to %d auto", Integer.valueOf(i), 1, 1);
            return 1;
        }
    }
}
