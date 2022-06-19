package com.appsflyer.internal;
/* renamed from: com.appsflyer.internal.y */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/y.class */
public final class C3449y {

    /* renamed from: ı */
    public String f13013;

    /* renamed from: ǃ */
    private boolean f13014;

    /* renamed from: com.appsflyer.internal.y$e */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/internal/y$e.class */
    enum EnumC3450e {
        GOOGLE(0),
        AMAZON(1);
        

        /* renamed from: ɩ */
        private int f13018;

        EnumC3450e(int i) {
            this.f13018 = i;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return String.valueOf(this.f13018);
        }
    }

    public C3449y(String str, boolean z) {
        this.f13013 = str;
        this.f13014 = z;
    }

    public final String toString() {
        return String.format("%s,%s", this.f13013, Boolean.valueOf(this.f13014));
    }

    /* renamed from: ι */
    public final boolean m37940() {
        return this.f13014;
    }
}
