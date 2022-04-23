package com.revenuecat.purchases.common;

import kotlin.w.c.k;
/* loaded from: classes2-dex2jar.jar:com/revenuecat/purchases/common/SubscriberAttributeError.class */
public final class SubscriberAttributeError {
    private final String keyName;
    private final String message;

    public SubscriberAttributeError(String str, String str2) {
        k.f(str, "keyName");
        k.f(str2, "message");
        this.keyName = str;
        this.message = str2;
    }

    public static /* synthetic */ SubscriberAttributeError copy$default(SubscriberAttributeError subscriberAttributeError, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = subscriberAttributeError.keyName;
        }
        if ((i & 2) != 0) {
            str2 = subscriberAttributeError.message;
        }
        return subscriberAttributeError.copy(str, str2);
    }

    public final String component1() {
        return this.keyName;
    }

    public final String component2() {
        return this.message;
    }

    public final SubscriberAttributeError copy(String str, String str2) {
        k.f(str, "keyName");
        k.f(str2, "message");
        return new SubscriberAttributeError(str, str2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SubscriberAttributeError)) {
            return false;
        }
        SubscriberAttributeError subscriberAttributeError = (SubscriberAttributeError) obj;
        return k.b(this.keyName, subscriberAttributeError.keyName) && k.b(this.message, subscriberAttributeError.message);
    }

    public final String getKeyName() {
        return this.keyName;
    }

    public final String getMessage() {
        return this.message;
    }

    public int hashCode() {
        String str = this.keyName;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.message;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        return "SubscriberAttributeError(keyName=" + this.keyName + ", message=" + this.message + ")";
    }
}
