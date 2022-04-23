package androidx.media2.session;

import androidx.core.e.a;
import androidx.media2.common.Rating;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/StarRating.class */
public final class StarRating implements Rating {

    /* renamed from: a  reason: collision with root package name */
    int f4564a;

    /* renamed from: b  reason: collision with root package name */
    float f4565b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public StarRating() {
    }

    public StarRating(int i) {
        if (i > 0) {
            this.f4564a = i;
            this.f4565b = -1.0f;
            return;
        }
        throw new IllegalArgumentException("maxStars should be a positive integer");
    }

    public StarRating(int i, float f) {
        if (i <= 0) {
            throw new IllegalArgumentException("maxStars should be a positive integer");
        } else if (f < BitmapDescriptorFactory.HUE_RED || f > i) {
            throw new IllegalArgumentException("starRating is out of range [0, maxStars]");
        } else {
            this.f4564a = i;
            this.f4565b = f;
        }
    }

    @Override // androidx.media2.common.Rating
    public final boolean a() {
        return this.f4565b >= BitmapDescriptorFactory.HUE_RED;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof StarRating)) {
            return false;
        }
        StarRating starRating = (StarRating) obj;
        return this.f4564a == starRating.f4564a && this.f4565b == starRating.f4565b;
    }

    public final int hashCode() {
        return a.a(Integer.valueOf(this.f4564a), Float.valueOf(this.f4565b));
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder("StarRating: maxStars=");
        sb.append(this.f4564a);
        if (a()) {
            str = ", starRating=" + this.f4565b;
        } else {
            str = ", unrated";
        }
        sb.append(str);
        return sb.toString();
    }
}
