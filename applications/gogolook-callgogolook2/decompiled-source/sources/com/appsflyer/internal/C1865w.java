package com.appsflyer.internal;
/* renamed from: com.appsflyer.internal.w */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/w.class */
public final class C1865w {

    /* renamed from: Ι */
    public boolean f1910;

    /* renamed from: ι */
    public String f1911;

    /* renamed from: com.appsflyer.internal.w$e */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/internal/w$e.class */
    public enum EnumC1866e {
        GOOGLE(0),
        AMAZON(1);
        

        /* renamed from: Ι */
        public int f1915;

        EnumC1866e(int i) {
            this.f1915 = i;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return String.valueOf(this.f1915);
        }
    }

    public C1865w(String str, boolean z) {
        this.f1911 = str;
        this.f1910 = z;
    }

    public final String toString() {
        return String.format("%s,%s", this.f1911, Boolean.valueOf(this.f1910));
    }

    /* renamed from: ɩ */
    public final boolean m36106() {
        return this.f1910;
    }
}
