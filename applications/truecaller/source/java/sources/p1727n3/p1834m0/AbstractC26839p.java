package p1727n3.p1834m0;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.m0.p */
/* loaded from: classes-dex2jar.jar:n3/m0/p.class */
public abstract class AbstractC26839p {

    /* renamed from: a */
    public static AbstractC26839p f75094a;

    /* renamed from: n3.m0.p$a */
    /* loaded from: classes-dex2jar.jar:n3/m0/p$a.class */
    public static class C26840a extends AbstractC26839p {

        /* renamed from: b */
        public int f75095b;

        public C26840a(int i) {
            this.f75095b = i;
        }

        @Override // p1727n3.p1834m0.AbstractC26839p
        /* renamed from: a */
        public void mo1294a(String str, String str2, Throwable... thArr) {
            if (this.f75095b > 3 || thArr.length < 1) {
                return;
            }
            Throwable th = thArr[0];
        }

        @Override // p1727n3.p1834m0.AbstractC26839p
        /* renamed from: b */
        public void mo1293b(String str, String str2, Throwable... thArr) {
            if (this.f75095b > 6 || thArr.length < 1) {
                return;
            }
            Throwable th = thArr[0];
        }

        @Override // p1727n3.p1834m0.AbstractC26839p
        /* renamed from: d */
        public void mo1292d(String str, String str2, Throwable... thArr) {
            if (this.f75095b > 4 || thArr.length < 1) {
                return;
            }
            Throwable th = thArr[0];
        }

        @Override // p1727n3.p1834m0.AbstractC26839p
        /* renamed from: f */
        public void mo1291f(String str, String str2, Throwable... thArr) {
            if (this.f75095b > 5 || thArr.length < 1) {
                return;
            }
            Throwable th = thArr[0];
        }
    }

    /* renamed from: c */
    public static AbstractC26839p m1296c() {
        AbstractC26839p abstractC26839p;
        synchronized (AbstractC26839p.class) {
            try {
                if (f75094a == null) {
                    f75094a = new C26840a(3);
                }
                abstractC26839p = f75094a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return abstractC26839p;
    }

    /* renamed from: e */
    public static String m1295e(String str) {
        int length = str.length();
        StringBuilder m8554x = C22128a.m8554x(23, "WM-");
        if (length >= 20) {
            m8554x.append(str.substring(0, 20));
        } else {
            m8554x.append(str);
        }
        return m8554x.toString();
    }

    /* renamed from: a */
    public abstract void mo1294a(String str, String str2, Throwable... thArr);

    /* renamed from: b */
    public abstract void mo1293b(String str, String str2, Throwable... thArr);

    /* renamed from: d */
    public abstract void mo1292d(String str, String str2, Throwable... thArr);

    /* renamed from: f */
    public abstract void mo1291f(String str, String str2, Throwable... thArr);
}
