package androidx.media2.session;

import androidx.core.e.a;
import androidx.media2.common.Rating;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/HeartRating.class */
public final class HeartRating implements Rating {

    /* renamed from: a  reason: collision with root package name */
    boolean f4496a = false;

    /* renamed from: b  reason: collision with root package name */
    boolean f4497b;

    public HeartRating() {
    }

    public HeartRating(boolean z) {
        this.f4497b = z;
    }

    @Override // androidx.media2.common.Rating
    public final boolean a() {
        return this.f4496a;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof HeartRating)) {
            return false;
        }
        HeartRating heartRating = (HeartRating) obj;
        return this.f4497b == heartRating.f4497b && this.f4496a == heartRating.f4496a;
    }

    public final int hashCode() {
        return a.a(Boolean.valueOf(this.f4496a), Boolean.valueOf(this.f4497b));
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder("HeartRating: ");
        if (this.f4496a) {
            str = "hasHeart=" + this.f4497b;
        } else {
            str = "unrated";
        }
        sb.append(str);
        return sb.toString();
    }
}
