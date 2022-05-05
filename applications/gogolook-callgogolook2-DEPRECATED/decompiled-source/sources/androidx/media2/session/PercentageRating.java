package androidx.media2.session;

import androidx.core.util.ObjectsCompat;
import androidx.media2.common.Rating;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/PercentageRating.class */
public final class PercentageRating implements Rating {
    public static final float RATING_NOT_RATED = -1.0f;
    public float mPercent;

    public PercentageRating() {
        this.mPercent = -1.0f;
    }

    public PercentageRating(float f) {
        if (f < 0.0f || f > 100.0f) {
            throw new IllegalArgumentException("percent should be in the rage of [0, 100]");
        }
        this.mPercent = f;
    }

    public boolean equals(Object obj) {
        boolean z = false;
        if (!(obj instanceof PercentageRating)) {
            return false;
        }
        if (this.mPercent == ((PercentageRating) obj).mPercent) {
            z = true;
        }
        return z;
    }

    public float getPercentRating() {
        return this.mPercent;
    }

    public int hashCode() {
        return ObjectsCompat.hash(Float.valueOf(this.mPercent));
    }

    @Override // androidx.media2.common.Rating
    public boolean isRated() {
        return this.mPercent != -1.0f;
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append("PercentageRating: ");
        if (isRated()) {
            str = "percentage=" + this.mPercent;
        } else {
            str = "unrated";
        }
        sb.append(str);
        return sb.toString();
    }
}
