package com.google.ads;
@Deprecated
/* renamed from: com.google.ads.a */
/* loaded from: classes-dex2jar.jar:com/google/ads/a.class */
public final class C2213a {

    /* renamed from: com.google.ads.a$a */
    /* loaded from: classes-dex2jar.jar:com/google/ads/a$a.class */
    public enum EnumC2214a {
        INVALID_REQUEST("Invalid Ad request."),
        NO_FILL("Ad request successful, but no ad returned due to lack of ad inventory."),
        NETWORK_ERROR("A network error occurred."),
        INTERNAL_ERROR("There was an internal error.");
        

        /* renamed from: e */
        private final String f6489e;

        EnumC2214a(String str) {
            this.f6489e = str;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return this.f6489e;
        }
    }

    /* renamed from: com.google.ads.a$b */
    /* loaded from: classes-dex2jar.jar:com/google/ads/a$b.class */
    public enum EnumC2215b {
        UNKNOWN,
        MALE,
        FEMALE
    }
}
