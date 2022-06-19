package androidx.media2.session;

import androidx.core.p036e.C0827a;
import androidx.media2.common.Rating;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/HeartRating.class */
public final class HeartRating implements Rating {

    /* renamed from: a */
    boolean f8694a = false;

    /* renamed from: b */
    boolean f8695b;

    public HeartRating() {
    }

    public HeartRating(boolean z) {
        this.f8695b = z;
    }

    @Override // androidx.media2.common.Rating
    /* renamed from: a */
    public final boolean mo41098a() {
        return this.f8694a;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof HeartRating)) {
            return false;
        }
        HeartRating heartRating = (HeartRating) obj;
        return this.f8695b == heartRating.f8695b && this.f8694a == heartRating.f8694a;
    }

    public final int hashCode() {
        return C0827a.m44413a(Boolean.valueOf(this.f8694a), Boolean.valueOf(this.f8695b));
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder("HeartRating: ");
        if (this.f8694a) {
            str = "hasHeart=" + this.f8695b;
        } else {
            str = "unrated";
        }
        sb.append(str);
        return sb.toString();
    }
}
