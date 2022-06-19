package androidx.work;

import android.util.Log;
/* renamed from: androidx.work.j */
/* loaded from: classes-dex2jar.jar:androidx/work/j.class */
public abstract class AbstractC1404j {

    /* renamed from: a */
    private static AbstractC1404j f5742a;

    /* renamed from: b */
    private static final int f5743b = 20;

    /* renamed from: androidx.work.j$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/j$a.class */
    public static class C1405a extends AbstractC1404j {

        /* renamed from: c */
        private int f5744c;

        public C1405a(int i) {
            super(i);
            this.f5744c = i;
        }

        @Override // androidx.work.AbstractC1404j
        /* renamed from: a */
        public void mo30158a(String str, String str2, Throwable... thArr) {
            if (this.f5744c <= 3) {
                if (thArr == null || thArr.length < 1) {
                    Log.d(str, str2);
                } else {
                    Log.d(str, str2, thArr[0]);
                }
            }
        }

        @Override // androidx.work.AbstractC1404j
        /* renamed from: b */
        public void mo30157b(String str, String str2, Throwable... thArr) {
            if (this.f5744c <= 6) {
                if (thArr == null || thArr.length < 1) {
                    Log.e(str, str2);
                } else {
                    Log.e(str, str2, thArr[0]);
                }
            }
        }

        @Override // androidx.work.AbstractC1404j
        /* renamed from: d */
        public void mo30156d(String str, String str2, Throwable... thArr) {
            if (this.f5744c <= 4) {
                if (thArr == null || thArr.length < 1) {
                    Log.i(str, str2);
                } else {
                    Log.i(str, str2, thArr[0]);
                }
            }
        }

        @Override // androidx.work.AbstractC1404j
        /* renamed from: g */
        public void mo30155g(String str, String str2, Throwable... thArr) {
            if (this.f5744c <= 2) {
                if (thArr == null || thArr.length < 1) {
                    Log.v(str, str2);
                } else {
                    Log.v(str, str2, thArr[0]);
                }
            }
        }

        @Override // androidx.work.AbstractC1404j
        /* renamed from: h */
        public void mo30154h(String str, String str2, Throwable... thArr) {
            if (this.f5744c <= 5) {
                if (thArr == null || thArr.length < 1) {
                    Log.w(str, str2);
                } else {
                    Log.w(str, str2, thArr[0]);
                }
            }
        }
    }

    public AbstractC1404j(int i) {
    }

    /* renamed from: c */
    public static AbstractC1404j m30161c() {
        AbstractC1404j abstractC1404j;
        synchronized (AbstractC1404j.class) {
            try {
                if (f5742a == null) {
                    f5742a = new C1405a(3);
                }
                abstractC1404j = f5742a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return abstractC1404j;
    }

    /* renamed from: e */
    public static void m30160e(AbstractC1404j abstractC1404j) {
        synchronized (AbstractC1404j.class) {
            try {
                f5742a = abstractC1404j;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: f */
    public static String m30159f(String str) {
        int length = str.length();
        StringBuilder sb = new StringBuilder(23);
        sb.append("WM-");
        int i = f5743b;
        if (length >= i) {
            sb.append(str.substring(0, i));
        } else {
            sb.append(str);
        }
        return sb.toString();
    }

    /* renamed from: a */
    public abstract void mo30158a(String str, String str2, Throwable... thArr);

    /* renamed from: b */
    public abstract void mo30157b(String str, String str2, Throwable... thArr);

    /* renamed from: d */
    public abstract void mo30156d(String str, String str2, Throwable... thArr);

    /* renamed from: g */
    public abstract void mo30155g(String str, String str2, Throwable... thArr);

    /* renamed from: h */
    public abstract void mo30154h(String str, String str2, Throwable... thArr);
}
