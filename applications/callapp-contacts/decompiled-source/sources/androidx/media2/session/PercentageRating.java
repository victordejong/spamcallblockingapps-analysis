package androidx.media2.session;

import androidx.core.e.a;
import androidx.media2.common.Rating;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/PercentageRating.class */
public final class PercentageRating implements Rating {

    /* renamed from: a  reason: collision with root package name */
    float f4539a;

    public PercentageRating() {
        this.f4539a = -1.0f;
    }

    public PercentageRating(float f) {
        if (f < BitmapDescriptorFactory.HUE_RED || f > 100.0f) {
            throw new IllegalArgumentException("percent should be in the rage of [0, 100]");
        }
        this.f4539a = f;
    }

    @Override // androidx.media2.common.Rating
    public final boolean a() {
        return this.f4539a != -1.0f;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof PercentageRating) && this.f4539a == ((PercentageRating) obj).f4539a;
    }

    public final int hashCode() {
        return a.a(Float.valueOf(this.f4539a));
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder("PercentageRating: ");
        if (a()) {
            str = "percentage=" + this.f4539a;
        } else {
            str = "unrated";
        }
        sb.append(str);
        return sb.toString();
    }
}
