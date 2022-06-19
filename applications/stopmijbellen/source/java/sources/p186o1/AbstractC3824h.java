package p186o1;

import android.util.Log;
/* renamed from: o1.h */
/* loaded from: classes-dex2jar.jar:o1/h.class */
public abstract class AbstractC3824h {

    /* renamed from: a */
    public static AbstractC3824h f12311a;

    /* renamed from: o1.h$a */
    /* loaded from: classes-dex2jar.jar:o1/h$a.class */
    public static class C3825a extends AbstractC3824h {

        /* renamed from: b */
        public int f12312b;

        public C3825a(int i) {
            this.f12312b = i;
        }

        @Override // p186o1.AbstractC3824h
        /* renamed from: a */
        public void mo1772a(String str, String str2, Throwable... thArr) {
            if (this.f12312b > 3 || thArr.length < 1) {
                return;
            }
            Throwable th = thArr[0];
        }

        @Override // p186o1.AbstractC3824h
        /* renamed from: b */
        public void mo1771b(String str, String str2, Throwable... thArr) {
            if (this.f12312b > 6 || thArr.length < 1) {
                return;
            }
            Throwable th = thArr[0];
        }

        @Override // p186o1.AbstractC3824h
        /* renamed from: d */
        public void mo1770d(String str, String str2, Throwable... thArr) {
            if (this.f12312b <= 4) {
                if (thArr.length >= 1) {
                    Log.i(str, str2, thArr[0]);
                } else {
                    Log.i(str, str2);
                }
            }
        }

        @Override // p186o1.AbstractC3824h
        /* renamed from: f */
        public void mo1769f(String str, String str2, Throwable... thArr) {
            if (this.f12312b <= 5) {
                if (thArr.length >= 1) {
                    Log.w(str, str2, thArr[0]);
                } else {
                    Log.w(str, str2);
                }
            }
        }
    }

    /* renamed from: c */
    public static AbstractC3824h m1774c() {
        AbstractC3824h abstractC3824h;
        synchronized (AbstractC3824h.class) {
            try {
                if (f12311a == null) {
                    f12311a = new C3825a(3);
                }
                abstractC3824h = f12311a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return abstractC3824h;
    }

    /* renamed from: e */
    public static String m1773e(String str) {
        int length = str.length();
        StringBuilder sb = new StringBuilder(23);
        sb.append("WM-");
        if (length >= 20) {
            sb.append(str.substring(0, 20));
        } else {
            sb.append(str);
        }
        return sb.toString();
    }

    /* renamed from: a */
    public abstract void mo1772a(String str, String str2, Throwable... thArr);

    /* renamed from: b */
    public abstract void mo1771b(String str, String str2, Throwable... thArr);

    /* renamed from: d */
    public abstract void mo1770d(String str, String str2, Throwable... thArr);

    /* renamed from: f */
    public abstract void mo1769f(String str, String str2, Throwable... thArr);
}
