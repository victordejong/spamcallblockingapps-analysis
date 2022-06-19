package androidx.media2.session;

import androidx.core.p036e.C0827a;
import androidx.media2.common.Rating;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/PercentageRating.class */
public final class PercentageRating implements Rating {

    /* renamed from: a */
    float f8747a;

    public PercentageRating() {
        this.f8747a = -1.0f;
    }

    public PercentageRating(float f) {
        if (f < BitmapDescriptorFactory.HUE_RED || f > 100.0f) {
            throw new IllegalArgumentException("percent should be in the rage of [0, 100]");
        }
        this.f8747a = f;
    }

    @Override // androidx.media2.common.Rating
    /* renamed from: a */
    public final boolean mo41098a() {
        return this.f8747a != -1.0f;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof PercentageRating) && this.f8747a == ((PercentageRating) obj).f8747a;
    }

    public final int hashCode() {
        return C0827a.m44413a(Float.valueOf(this.f8747a));
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder("PercentageRating: ");
        if (mo41098a()) {
            str = "percentage=" + this.f8747a;
        } else {
            str = "unrated";
        }
        sb.append(str);
        return sb.toString();
    }
}
