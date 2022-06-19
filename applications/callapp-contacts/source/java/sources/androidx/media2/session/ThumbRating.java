package androidx.media2.session;

import androidx.core.p036e.C0827a;
import androidx.media2.common.Rating;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/ThumbRating.class */
public final class ThumbRating implements Rating {

    /* renamed from: a */
    boolean f8793a = false;

    /* renamed from: b */
    boolean f8794b;

    public ThumbRating() {
    }

    public ThumbRating(boolean z) {
        this.f8794b = z;
    }

    @Override // androidx.media2.common.Rating
    /* renamed from: a */
    public final boolean mo41098a() {
        return this.f8793a;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof ThumbRating)) {
            return false;
        }
        ThumbRating thumbRating = (ThumbRating) obj;
        return this.f8794b == thumbRating.f8794b && this.f8793a == thumbRating.f8793a;
    }

    public final int hashCode() {
        return C0827a.m44413a(Boolean.valueOf(this.f8793a), Boolean.valueOf(this.f8794b));
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder("ThumbRating: ");
        if (this.f8793a) {
            str = "isThumbUp=" + this.f8794b;
        } else {
            str = "unrated";
        }
        sb.append(str);
        return sb.toString();
    }
}
