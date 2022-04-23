package androidx.media2.session;

import androidx.core.e.a;
import androidx.media2.common.Rating;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/ThumbRating.class */
public final class ThumbRating implements Rating {

    /* renamed from: a  reason: collision with root package name */
    boolean f4566a = false;

    /* renamed from: b  reason: collision with root package name */
    boolean f4567b;

    public ThumbRating() {
    }

    public ThumbRating(boolean z) {
        this.f4567b = z;
    }

    @Override // androidx.media2.common.Rating
    public final boolean a() {
        return this.f4566a;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof ThumbRating)) {
            return false;
        }
        ThumbRating thumbRating = (ThumbRating) obj;
        return this.f4567b == thumbRating.f4567b && this.f4566a == thumbRating.f4566a;
    }

    public final int hashCode() {
        return a.a(Boolean.valueOf(this.f4566a), Boolean.valueOf(this.f4567b));
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder("ThumbRating: ");
        if (this.f4566a) {
            str = "isThumbUp=" + this.f4567b;
        } else {
            str = "unrated";
        }
        sb.append(str);
        return sb.toString();
    }
}
