package androidx.media2.session;

import androidx.core.util.ObjectsCompat;
import androidx.media2.common.Rating;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/HeartRating.class */
public final class HeartRating implements Rating {
    public boolean mHasHeart;
    public boolean mIsRated = false;

    public HeartRating() {
    }

    public HeartRating(boolean z) {
        this.mHasHeart = z;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof HeartRating)) {
            return false;
        }
        HeartRating heartRating = (HeartRating) obj;
        boolean z = false;
        if (this.mHasHeart == heartRating.mHasHeart) {
            z = false;
            if (this.mIsRated == heartRating.mIsRated) {
                z = true;
            }
        }
        return z;
    }

    public boolean hasHeart() {
        return this.mHasHeart;
    }

    public int hashCode() {
        return ObjectsCompat.hash(Boolean.valueOf(this.mIsRated), Boolean.valueOf(this.mHasHeart));
    }

    @Override // androidx.media2.common.Rating
    public boolean isRated() {
        return this.mIsRated;
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append("HeartRating: ");
        if (this.mIsRated) {
            str = "hasHeart=" + this.mHasHeart;
        } else {
            str = "unrated";
        }
        sb.append(str);
        return sb.toString();
    }
}
