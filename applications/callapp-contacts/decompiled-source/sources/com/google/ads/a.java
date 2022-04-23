package com.google.ads;
@Deprecated
/* loaded from: classes3-dex2jar.jar:com/google/ads/a.class */
public final class a {

    /* renamed from: com.google.ads.a$a  reason: collision with other inner class name */
    /* loaded from: classes3-dex2jar.jar:com/google/ads/a$a.class */
    public enum EnumC0408a {
        INVALID_REQUEST("Invalid Ad request."),
        NO_FILL("Ad request successful, but no ad returned due to lack of ad inventory."),
        NETWORK_ERROR("A network error occurred."),
        INTERNAL_ERROR("There was an internal error.");
        
        private final String description;

        EnumC0408a(String str) {
            this.description = str;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return this.description;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/ads/a$b.class */
    public enum b {
        UNKNOWN,
        MALE,
        FEMALE
    }

    private a() {
    }
}
