package androidx.work;

import android.util.Log;
/* renamed from: androidx.work.k */
/* loaded from: classes-dex2jar.jar:androidx/work/k.class */
public abstract class AbstractC3145k {

    /* renamed from: a */
    private static AbstractC3145k f11507a;

    /* renamed from: b */
    private static final int f11508b = 20;

    /* renamed from: androidx.work.k$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/k$a.class */
    public static final class C3146a extends AbstractC3145k {

        /* renamed from: a */
        private int f11509a;

        public C3146a(int i) {
            super(i);
            this.f11509a = i;
        }

        @Override // androidx.work.AbstractC3145k
        /* renamed from: a */
        public final void mo39274a(String str, String str2) {
            if (this.f11509a <= 5) {
                Log.w(str, str2);
            }
        }

        @Override // androidx.work.AbstractC3145k
        /* renamed from: a */
        public final void mo39273a(String str, String str2, Throwable... thArr) {
            if (this.f11509a <= 6) {
                if (thArr.length > 0) {
                    Log.e(str, str2, thArr[0]);
                } else {
                    Log.e(str, str2);
                }
            }
        }
    }

    public AbstractC3145k(int i) {
    }

    /* renamed from: a */
    public static AbstractC3145k m39277a() {
        AbstractC3145k abstractC3145k;
        synchronized (AbstractC3145k.class) {
            try {
                if (f11507a == null) {
                    f11507a = new C3146a(3);
                }
                abstractC3145k = f11507a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return abstractC3145k;
    }

    /* renamed from: a */
    public static String m39275a(String str) {
        int length = str.length();
        StringBuilder sb = new StringBuilder(23);
        sb.append("WM-");
        int i = f11508b;
        if (length >= i) {
            sb.append(str.substring(0, i));
        } else {
            sb.append(str);
        }
        return sb.toString();
    }

    /* renamed from: a */
    public static void m39276a(AbstractC3145k abstractC3145k) {
        synchronized (AbstractC3145k.class) {
            try {
                f11507a = abstractC3145k;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public abstract void mo39274a(String str, String str2);

    /* renamed from: a */
    public abstract void mo39273a(String str, String str2, Throwable... thArr);
}
