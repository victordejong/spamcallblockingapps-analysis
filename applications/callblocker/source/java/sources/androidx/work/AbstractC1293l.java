package androidx.work;

import android.util.Log;
/* renamed from: androidx.work.l */
/* loaded from: classes-dex2jar.jar:androidx/work/l.class */
public abstract class AbstractC1293l {

    /* renamed from: a */
    private static AbstractC1293l f4329a;

    /* renamed from: b */
    private static final int f4330b = 23 - "WM-".length();

    /* renamed from: androidx.work.l$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/l$a.class */
    public static class C1294a extends AbstractC1293l {

        /* renamed from: a */
        private int f4331a;

        public C1294a(int i) {
            super(i);
            this.f4331a = i;
        }

        @Override // androidx.work.AbstractC1293l
        /* renamed from: a */
        public void mo17540a(String str, String str2, Throwable... thArr) {
            if (this.f4331a <= 2) {
                if (thArr == null || thArr.length < 1) {
                    Log.v(str, str2);
                } else {
                    Log.v(str, str2, thArr[0]);
                }
            }
        }

        @Override // androidx.work.AbstractC1293l
        /* renamed from: b */
        public void mo17539b(String str, String str2, Throwable... thArr) {
            if (this.f4331a <= 3) {
                if (thArr == null || thArr.length < 1) {
                    Log.d(str, str2);
                } else {
                    Log.d(str, str2, thArr[0]);
                }
            }
        }

        @Override // androidx.work.AbstractC1293l
        /* renamed from: c */
        public void mo17538c(String str, String str2, Throwable... thArr) {
            if (this.f4331a <= 4) {
                if (thArr == null || thArr.length < 1) {
                    Log.i(str, str2);
                } else {
                    Log.i(str, str2, thArr[0]);
                }
            }
        }

        @Override // androidx.work.AbstractC1293l
        /* renamed from: d */
        public void mo17537d(String str, String str2, Throwable... thArr) {
            if (this.f4331a <= 5) {
                if (thArr == null || thArr.length < 1) {
                    Log.w(str, str2);
                } else {
                    Log.w(str, str2, thArr[0]);
                }
            }
        }

        @Override // androidx.work.AbstractC1293l
        /* renamed from: e */
        public void mo17536e(String str, String str2, Throwable... thArr) {
            if (this.f4331a <= 6) {
                if (thArr == null || thArr.length < 1) {
                    Log.e(str, str2);
                } else {
                    Log.e(str, str2, thArr[0]);
                }
            }
        }
    }

    public AbstractC1293l(int i) {
    }

    /* renamed from: a */
    public static AbstractC1293l m17543a() {
        AbstractC1293l abstractC1293l;
        synchronized (AbstractC1293l.class) {
            try {
                if (f4329a == null) {
                    f4329a = new C1294a(3);
                }
                abstractC1293l = f4329a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return abstractC1293l;
    }

    /* renamed from: a */
    public static String m17541a(String str) {
        int length = str.length();
        StringBuilder sb = new StringBuilder(23);
        sb.append("WM-");
        if (length >= f4330b) {
            sb.append(str.substring(0, f4330b));
        } else {
            sb.append(str);
        }
        return sb.toString();
    }

    /* renamed from: a */
    public static void m17542a(AbstractC1293l abstractC1293l) {
        synchronized (AbstractC1293l.class) {
            try {
                f4329a = abstractC1293l;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public abstract void mo17540a(String str, String str2, Throwable... thArr);

    /* renamed from: b */
    public abstract void mo17539b(String str, String str2, Throwable... thArr);

    /* renamed from: c */
    public abstract void mo17538c(String str, String str2, Throwable... thArr);

    /* renamed from: d */
    public abstract void mo17537d(String str, String str2, Throwable... thArr);

    /* renamed from: e */
    public abstract void mo17536e(String str, String str2, Throwable... thArr);
}
