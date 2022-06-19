package com.google.android.play.core.review;

import android.app.PendingIntent;
/* renamed from: com.google.android.play.core.review.a */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/review/a.class */
final class C8534a extends ReviewInfo {

    /* renamed from: d */
    private final PendingIntent f38103d;

    @Override // com.google.android.play.core.review.ReviewInfo
    /* renamed from: a */
    public final PendingIntent mo3398a() {
        return this.f38103d;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ReviewInfo)) {
            return false;
        }
        return this.f38103d.equals(((ReviewInfo) obj).mo3398a());
    }

    public final int hashCode() {
        return this.f38103d.hashCode() ^ 1000003;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f38103d);
        StringBuilder sb = new StringBuilder(valueOf.length() + 26);
        sb.append("ReviewInfo{pendingIntent=");
        sb.append(valueOf);
        sb.append("}");
        return sb.toString();
    }
}
