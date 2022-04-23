package androidx.media2.session;

import androidx.media2.common.Rating;
import p012b.p042i.p053o.C0943c;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/ThumbRating.class */
public final class ThumbRating implements Rating {

    /* renamed from: a */
    public boolean f2235a = false;

    /* renamed from: b */
    public boolean f2236b;

    public boolean equals(Object obj) {
        if (!(obj instanceof ThumbRating)) {
            return false;
        }
        ThumbRating thumbRating = (ThumbRating) obj;
        boolean z = false;
        if (this.f2236b == thumbRating.f2236b) {
            z = false;
            if (this.f2235a == thumbRating.f2235a) {
                z = true;
            }
        }
        return z;
    }

    public int hashCode() {
        return C0943c.m35447a(Boolean.valueOf(this.f2235a), Boolean.valueOf(this.f2236b));
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append("ThumbRating: ");
        if (this.f2235a) {
            str = "isThumbUp=" + this.f2236b;
        } else {
            str = "unrated";
        }
        sb.append(str);
        return sb.toString();
    }
}
