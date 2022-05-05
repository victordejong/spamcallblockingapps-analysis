package p459j.p460a.p474c0.p499h;

import android.os.Looper;
import gogolook.callgogolook2.gson.UserProfile;
/* renamed from: j.a.c0.h.d */
/* loaded from: classes3-dex2jar.jar:j/a/c0/h/d.class */
public final class C12151d {

    /* renamed from: a */
    public static boolean f27293a;

    /* renamed from: b */
    public static boolean f27294b;

    /* renamed from: j.a.c0.h.d$a */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/h/d$a.class */
    public static final class RunnableC12152a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AbstractC12170i f27295a;

        public RunnableC12152a(AbstractC12170i iVar) {
            this.f27295a = iVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            C12151d.m6997c(this.f27295a);
        }
    }

    static {
        m6998c();
    }

    /* renamed from: a */
    public static void m7013a() {
        if (Looper.myLooper() != Looper.getMainLooper() && !Thread.currentThread().getName().contains("test")) {
            m7004a("Expected to run on main thread", false);
        }
    }

    /* renamed from: a */
    public static void m7012a(int i, int i2) {
        if (i != i2) {
            m7004a("Expected " + i + " but got " + i2, false);
        }
    }

    /* renamed from: a */
    public static void m7011a(int i, int i2, int i3) {
        if (i < i2 || i > i3) {
            m7004a("Expected value in range [" + i2 + UserProfile.CARD_CATE_SEPARATOR + i3 + "], but was " + i, false);
        }
    }

    /* renamed from: a */
    public static void m7010a(long j, long j2, long j3) {
        if (j < j2 || j > j3) {
            m7004a("Expected value in range [" + j2 + UserProfile.CARD_CATE_SEPARATOR + j3 + "], but was " + j, false);
        }
    }

    /* renamed from: a */
    public static void m7008a(Object obj) {
        if (obj != null) {
            m7004a("Expected object to be null", false);
        }
    }

    /* renamed from: a */
    public static void m7007a(Object obj, Object obj2) {
        if (obj == obj2) {
            return;
        }
        if (obj == null || obj2 == null || !obj.equals(obj2)) {
            m7004a("Expected " + obj + " but got " + obj2, false);
        }
    }

    /* renamed from: a */
    public static void m7006a(Object obj, String str) {
        if (obj != null) {
            m7004a(str, false);
        }
    }

    /* renamed from: a */
    public static void m7005a(String str) {
        m7004a("Assert.fail() called: " + str, false);
    }

    /* renamed from: a */
    public static void m7004a(String str, boolean z) {
        String str2;
        StackTraceElement a = C12219v.m6734a(2);
        StringBuilder sb = new StringBuilder(str);
        if (a != null) {
            str2 = "\tat " + a.toString();
        } else {
            str2 = "";
        }
        sb.append(str2);
    }

    /* renamed from: a */
    public static void m7003a(boolean z) {
        if (z) {
            m7004a("Expected condition to be false", false);
        }
    }

    /* renamed from: b */
    public static void m7002b() {
        if (Looper.myLooper() == Looper.getMainLooper() && !Thread.currentThread().getName().contains("test")) {
            m7004a("Not expected to run on main thread", false);
        }
    }

    /* renamed from: b */
    public static void m7001b(AbstractC12170i iVar) {
        iVar.mo6922a(new RunnableC12152a(iVar));
        m6997c(iVar);
    }

    /* renamed from: b */
    public static void m7000b(Object obj) {
        if (obj == null) {
            m7004a("Expected value to be non-null", false);
        }
    }

    /* renamed from: b */
    public static void m6999b(boolean z) {
        if (!z) {
            m7004a("Expected condition to be true", false);
        }
    }

    /* renamed from: c */
    public static void m6998c() {
        f27293a = true;
        f27294b = true;
    }

    /* renamed from: c */
    public static void m6997c(AbstractC12170i iVar) {
        f27294b = f27293a;
        if (!f27294b) {
            iVar.mo6916a("bugle_asserts_fatal", false);
            f27294b = false;
        }
    }
}
