package com.bytedance.sdk.adnet.p143d;
/* renamed from: com.bytedance.sdk.adnet.d.d */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/d/d.class */
public class C4228d {

    /* renamed from: a */
    private EnumC4230a f15488a;

    /* renamed from: b */
    private AbstractC4231b f15489b;

    /* renamed from: com.bytedance.sdk.adnet.d.d$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/d/d$a.class */
    public enum EnumC4230a {
        DEBUG,
        INFO,
        ERROR,
        OFF
    }

    /* renamed from: com.bytedance.sdk.adnet.d.d$b */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/d/d$b.class */
    public interface AbstractC4231b {
        /* renamed from: a */
        void mo36085a(String str, String str2);

        /* renamed from: b */
        void mo36084b(String str, String str2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bytedance.sdk.adnet.d.d$c */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/d/d$c.class */
    public static class C4232c {

        /* renamed from: a */
        private static final C4228d f15495a = new C4228d();
    }

    private C4228d() {
        this.f15488a = EnumC4230a.OFF;
        this.f15489b = new C4226b();
    }

    /* renamed from: a */
    public static void m36088a(EnumC4230a enumC4230a) {
        synchronized (C4228d.class) {
            try {
                C4232c.f15495a.f15488a = enumC4230a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public static void m36087a(String str, String str2) {
        if (C4232c.f15495a.f15488a.compareTo(EnumC4230a.ERROR) <= 0) {
            C4232c.f15495a.f15489b.mo36085a(str, str2);
        }
    }

    /* renamed from: b */
    public static void m36086b(String str, String str2) {
        if (C4232c.f15495a.f15488a.compareTo(EnumC4230a.DEBUG) <= 0) {
            C4232c.f15495a.f15489b.mo36084b(str, str2);
        }
    }
}
