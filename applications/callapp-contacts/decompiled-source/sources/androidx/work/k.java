package androidx.work;

import android.util.Log;
/* loaded from: classes-dex2jar.jar:androidx/work/k.class */
public abstract class k {

    /* renamed from: a  reason: collision with root package name */
    private static k f6229a;

    /* renamed from: b  reason: collision with root package name */
    private static final int f6230b = 20;

    /* loaded from: classes-dex2jar.jar:androidx/work/k$a.class */
    public static final class a extends k {

        /* renamed from: a  reason: collision with root package name */
        private int f6231a;

        public a(int i) {
            super(i);
            this.f6231a = i;
        }

        @Override // androidx.work.k
        public final void a(String str, String str2) {
            if (this.f6231a <= 5) {
                Log.w(str, str2);
            }
        }

        @Override // androidx.work.k
        public final void a(String str, String str2, Throwable... thArr) {
            if (this.f6231a > 6) {
                return;
            }
            if (thArr.length > 0) {
                Log.e(str, str2, thArr[0]);
            } else {
                Log.e(str, str2);
            }
        }
    }

    public k(int i) {
    }

    public static k a() {
        k kVar;
        synchronized (k.class) {
            try {
                if (f6229a == null) {
                    f6229a = new a(3);
                }
                kVar = f6229a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return kVar;
    }

    public static String a(String str) {
        int length = str.length();
        StringBuilder sb = new StringBuilder(23);
        sb.append("WM-");
        int i = f6230b;
        if (length >= i) {
            sb.append(str.substring(0, i));
        } else {
            sb.append(str);
        }
        return sb.toString();
    }

    public static void a(k kVar) {
        synchronized (k.class) {
            try {
                f6229a = kVar;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public abstract void a(String str, String str2);

    public abstract void a(String str, String str2, Throwable... thArr);
}
