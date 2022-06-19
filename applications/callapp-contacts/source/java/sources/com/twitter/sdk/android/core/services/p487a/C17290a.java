package com.twitter.sdk.android.core.services.p487a;
/* renamed from: com.twitter.sdk.android.core.services.a.a */
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/services/a/a.class */
public final class C17290a {

    /* renamed from: a */
    public final double f61083a;

    /* renamed from: b */
    public final double f61084b;

    /* renamed from: c */
    public final int f61085c;

    /* renamed from: d */
    public final EnumC17291a f61086d;

    /* renamed from: com.twitter.sdk.android.core.services.a.a$a */
    /* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/services/a/a$a.class */
    public enum EnumC17291a {
        MILES("mi"),
        KILOMETERS("km");
        
        public final String identifier;

        EnumC17291a(String str) {
            this.identifier = str;
        }
    }

    public C17290a(double d, double d2, int i, EnumC17291a enumC17291a) {
        this.f61083a = d;
        this.f61084b = d2;
        this.f61085c = i;
        this.f61086d = enumC17291a;
    }

    public final String toString() {
        return this.f61083a + "," + this.f61084b + "," + this.f61085c + this.f61086d.identifier;
    }
}
