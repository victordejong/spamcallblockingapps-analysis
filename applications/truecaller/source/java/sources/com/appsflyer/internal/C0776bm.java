package com.appsflyer.internal;

import android.support.annotation.NonNull;
/* renamed from: com.appsflyer.internal.bm */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/bm.class */
public final class C0776bm<Body> {
    public final int AFInAppEventParameterName;
    private final boolean AFInAppEventType;
    @NonNull
    public final Body AFKeystoreWrapper;

    public C0776bm(@NonNull Body body, int i, boolean z) {
        this.AFKeystoreWrapper = body;
        this.AFInAppEventParameterName = i;
        this.AFInAppEventType = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C0776bm.class != obj.getClass()) {
            return false;
        }
        C0776bm c0776bm = (C0776bm) obj;
        if (this.AFInAppEventParameterName != c0776bm.AFInAppEventParameterName || this.AFInAppEventType != c0776bm.AFInAppEventType) {
            return false;
        }
        Body body = this.AFKeystoreWrapper;
        Body body2 = c0776bm.AFKeystoreWrapper;
        return body != null ? body.equals(body2) : body2 == null;
    }

    public final int hashCode() {
        Body body = this.AFKeystoreWrapper;
        return ((((body != null ? body.hashCode() : 0) * 31) + this.AFInAppEventParameterName) * 31) + (this.AFInAppEventType ? 1 : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Response{body=");
        sb.append(this.AFKeystoreWrapper);
        sb.append(", statusCode=");
        sb.append(this.AFInAppEventParameterName);
        sb.append(", isSuccessful=");
        sb.append(this.AFInAppEventType);
        sb.append('}');
        return sb.toString();
    }

    public final boolean valueOf() {
        return this.AFInAppEventType;
    }
}
