package com.bytedance.sdk.adnet.d;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/d/d.class */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private a f8348a;

    /* renamed from: b  reason: collision with root package name */
    private b f8349b;

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/d/d$a.class */
    public enum a {
        DEBUG,
        INFO,
        ERROR,
        OFF
    }

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/d/d$b.class */
    public interface b {
        void a(String str, String str2);

        void b(String str, String str2);
    }

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/d/d$c.class */
    static class c {

        /* renamed from: a  reason: collision with root package name */
        private static final d f8354a = new d();
    }

    private d() {
        this.f8348a = a.OFF;
        this.f8349b = new com.bytedance.sdk.adnet.d.b();
    }

    public static void a(a aVar) {
        synchronized (d.class) {
            try {
                c.f8354a.f8348a = aVar;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void a(String str, String str2) {
        if (c.f8354a.f8348a.compareTo(a.ERROR) <= 0) {
            c.f8354a.f8349b.a(str, str2);
        }
    }

    public static void b(String str, String str2) {
        if (c.f8354a.f8348a.compareTo(a.DEBUG) <= 0) {
            c.f8354a.f8349b.b(str, str2);
        }
    }
}
