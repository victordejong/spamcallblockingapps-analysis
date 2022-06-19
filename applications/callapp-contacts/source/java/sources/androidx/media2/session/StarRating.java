package androidx.media2.session;

import androidx.core.p036e.C0827a;
import androidx.media2.common.Rating;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/StarRating.class */
public final class StarRating implements Rating {

    /* renamed from: a */
    int f8791a;

    /* renamed from: b */
    float f8792b;

    public StarRating() {
    }

    public StarRating(int i) {
        if (i > 0) {
            this.f8791a = i;
            this.f8792b = -1.0f;
            return;
        }
        throw new IllegalArgumentException("maxStars should be a positive integer");
    }

    public StarRating(int i, float f) {
        if (i > 0) {
            if (f < BitmapDescriptorFactory.HUE_RED || f > i) {
                throw new IllegalArgumentException("starRating is out of range [0, maxStars]");
            }
            this.f8791a = i;
            this.f8792b = f;
            return;
        }
        throw new IllegalArgumentException("maxStars should be a positive integer");
    }

    @Override // androidx.media2.common.Rating
    /* renamed from: a */
    public final boolean mo41098a() {
        return this.f8792b >= BitmapDescriptorFactory.HUE_RED;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof StarRating)) {
            return false;
        }
        StarRating starRating = (StarRating) obj;
        return this.f8791a == starRating.f8791a && this.f8792b == starRating.f8792b;
    }

    public final int hashCode() {
        return C0827a.m44413a(Integer.valueOf(this.f8791a), Float.valueOf(this.f8792b));
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder("StarRating: maxStars=");
        sb.append(this.f8791a);
        if (mo41098a()) {
            str = ", starRating=" + this.f8792b;
        } else {
            str = ", unrated";
        }
        sb.append(str);
        return sb.toString();
    }
}
