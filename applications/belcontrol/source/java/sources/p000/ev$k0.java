package p000;

import android.media.MediaFormat;
import androidx.media2.common.MediaItem;
/* renamed from: ev$k0 */
/* loaded from: classes-dex2jar.jar:ev$k0.class */
public final class ev$k0 {

    /* renamed from: a */
    public final int f6439a;

    /* renamed from: b */
    public final MediaItem f6440b;

    /* renamed from: c */
    public final int f6441c;

    /* renamed from: d */
    public final MediaFormat f6442d;

    public ev$k0(int i, MediaItem mediaItem, int i2, MediaFormat mediaFormat) {
        this.f6439a = i;
        this.f6440b = mediaItem;
        this.f6441c = i2;
        this.f6442d = mediaFormat;
    }

    /* renamed from: a */
    public MediaFormat m2047a() {
        if (this.f6441c == 4) {
            return this.f6442d;
        }
        return null;
    }

    /* renamed from: b */
    public int m2046b() {
        return this.f6439a;
    }

    /* renamed from: c */
    public MediaItem m2045c() {
        return this.f6440b;
    }

    /* renamed from: d */
    public int m2044d() {
        return this.f6441c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || ev$k0.class != obj.getClass()) {
            return false;
        }
        ev$k0 ev_k0 = (ev$k0) obj;
        if (this.f6439a != ev_k0.f6439a) {
            return false;
        }
        MediaItem mediaItem = this.f6440b;
        if (mediaItem == null && ev_k0.f6440b == null) {
            return true;
        }
        if (mediaItem == null || ev_k0.f6440b == null) {
            return false;
        }
        String g = mediaItem.g();
        return g != null ? g.equals(ev_k0.f6440b.g()) : this.f6440b.equals(ev_k0.f6440b);
    }

    public int hashCode() {
        int i = this.f6439a;
        MediaItem mediaItem = this.f6440b;
        return ((i + 31) * 31) + (mediaItem != null ? mediaItem.g() != null ? this.f6440b.g().hashCode() : this.f6440b.hashCode() : 0);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append(ev$k0.class.getName());
        sb.append('#');
        sb.append(this.f6439a);
        sb.append('{');
        int i = this.f6441c;
        sb.append(i != 1 ? i != 2 ? i != 4 ? "UNKNOWN" : "SUBTITLE" : "AUDIO" : "VIDEO");
        sb.append(", ");
        sb.append(this.f6442d);
        sb.append("}");
        return sb.toString();
    }
}
