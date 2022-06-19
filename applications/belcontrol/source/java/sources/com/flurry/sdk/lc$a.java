package com.flurry.sdk;
/* loaded from: classes-dex2jar.jar:com/flurry/sdk/lc$a.class */
public enum lc$a {
    kUnknown,
    kGet,
    kPost,
    kPut,
    kDelete,
    kHead;

    @Override // java.lang.Enum
    public final String toString() {
        int i = lc$2.f3521a[ordinal()];
        if (i != 1) {
            if (i == 2) {
                return "PUT";
            }
            if (i == 3) {
                return "DELETE";
            }
            if (i == 4) {
                return "HEAD";
            }
            if (i == 5) {
                return "GET";
            }
            return null;
        }
        return "POST";
    }
}
