package com.appsflyer.internal;
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/y.class */
public final class y {

    /* renamed from: ı  reason: contains not printable characters */
    public String f337;

    /* renamed from: ǃ  reason: contains not printable characters */
    private boolean f338;

    /* loaded from: classes-dex2jar.jar:com/appsflyer/internal/y$e.class */
    enum e {
        GOOGLE(0),
        AMAZON(1);
        

        /* renamed from: ɩ  reason: contains not printable characters */
        private int f342;

        e(int i) {
            this.f342 = i;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return String.valueOf(this.f342);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public y(String str, boolean z) {
        this.f337 = str;
        this.f338 = z;
    }

    public final String toString() {
        return String.format("%s,%s", this.f337, Boolean.valueOf(this.f338));
    }

    /* renamed from: ι  reason: contains not printable characters */
    public final boolean m1034() {
        return this.f338;
    }
}
