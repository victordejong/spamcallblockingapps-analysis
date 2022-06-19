package com.airbnb.deeplinkdispatch;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes-dex2jar.jar:com/airbnb/deeplinkdispatch/DeepLinkResult.class */
public final class DeepLinkResult {
    private final String error;
    private final boolean successful;
    private final String uriString;

    public DeepLinkResult(boolean z, String str, String str2) {
        this.successful = z;
        this.uriString = str;
        this.error = str2;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || DeepLinkResult.class != obj.getClass()) {
            return false;
        }
        DeepLinkResult deepLinkResult = (DeepLinkResult) obj;
        if (this.successful != deepLinkResult.successful) {
            return false;
        }
        String str = this.uriString;
        if (str != null) {
            if (!str.equals(deepLinkResult.uriString)) {
                return false;
            }
        } else if (deepLinkResult.uriString != null) {
            return false;
        }
        String str2 = this.error;
        String str3 = deepLinkResult.error;
        if (str2 != null) {
            z = str2.equals(str3);
        } else if (str3 != null) {
            z = false;
        }
        return z;
    }

    public String error() {
        return this.error;
    }

    public int hashCode() {
        boolean z = this.successful;
        String str = this.uriString;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.error;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return ((((z ? 1 : 0) * 31) + hashCode) * 31) + i;
    }

    public boolean isSuccessful() {
        return this.successful;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("DeepLinkResult{successful=");
        m8728C.append(this.successful);
        m8728C.append(", uriString=");
        m8728C.append(this.uriString);
        m8728C.append(", error='");
        return C22128a.m8626f(m8728C, this.error, '\'', '}');
    }

    public String uriString() {
        return this.uriString;
    }
}
