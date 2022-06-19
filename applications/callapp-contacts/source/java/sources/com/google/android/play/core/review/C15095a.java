package com.google.android.play.core.review;

import android.app.PendingIntent;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.play.core.review.a */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/review/a.class */
public final class C15095a extends ReviewInfo {

    /* renamed from: a */
    private final PendingIntent f54824a;

    public C15095a(PendingIntent pendingIntent) {
        Objects.requireNonNull(pendingIntent, "Null pendingIntent");
        this.f54824a = pendingIntent;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.play.core.review.ReviewInfo
    /* renamed from: a */
    public final PendingIntent mo9467a() {
        return this.f54824a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ReviewInfo)) {
            return false;
        }
        return this.f54824a.equals(((ReviewInfo) obj).mo9467a());
    }

    public final int hashCode() {
        return this.f54824a.hashCode() ^ 1000003;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f54824a);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 26);
        sb.append("ReviewInfo{pendingIntent=");
        sb.append(valueOf);
        sb.append("}");
        return sb.toString();
    }
}
