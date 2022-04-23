package com.twitter.sdk.android.core.services.a;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/services/a/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public final double f35209a;

    /* renamed from: b  reason: collision with root package name */
    public final double f35210b;

    /* renamed from: c  reason: collision with root package name */
    public final int f35211c;

    /* renamed from: d  reason: collision with root package name */
    public final EnumC0561a f35212d;

    /* renamed from: com.twitter.sdk.android.core.services.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/services/a/a$a.class */
    public enum EnumC0561a {
        MILES("mi"),
        KILOMETERS("km");
        
        public final String identifier;

        EnumC0561a(String str) {
            this.identifier = str;
        }
    }

    public a(double d2, double d3, int i, EnumC0561a aVar) {
        this.f35209a = d2;
        this.f35210b = d3;
        this.f35211c = i;
        this.f35212d = aVar;
    }

    public final String toString() {
        return this.f35209a + "," + this.f35210b + "," + this.f35211c + this.f35212d.identifier;
    }
}
