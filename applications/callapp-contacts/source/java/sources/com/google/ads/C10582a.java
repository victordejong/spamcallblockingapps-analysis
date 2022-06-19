package com.google.ads;
@Deprecated
/* renamed from: com.google.ads.a */
/* loaded from: classes3-dex2jar.jar:com/google/ads/a.class */
public final class C10582a {

    /* renamed from: com.google.ads.a$a */
    /* loaded from: classes3-dex2jar.jar:com/google/ads/a$a.class */
    public enum EnumC10583a {
        INVALID_REQUEST("Invalid Ad request."),
        NO_FILL("Ad request successful, but no ad returned due to lack of ad inventory."),
        NETWORK_ERROR("A network error occurred."),
        INTERNAL_ERROR("There was an internal error.");
        
        private final String description;

        EnumC10583a(String str) {
            this.description = str;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return this.description;
        }
    }

    /* renamed from: com.google.ads.a$b */
    /* loaded from: classes3-dex2jar.jar:com/google/ads/a$b.class */
    public enum EnumC10584b {
        UNKNOWN,
        MALE,
        FEMALE
    }

    private C10582a() {
    }
}
