package androidx.media2.player;

import android.media.MediaTimestamp;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* renamed from: androidx.media2.player.i */
/* loaded from: classes-dex2jar.jar:androidx/media2/player/i.class */
public final class C2186i {

    /* renamed from: a */
    public static final C2186i f8606a = new C2186i(-1, -1, BitmapDescriptorFactory.HUE_RED);

    /* renamed from: b */
    private final long f8607b;

    /* renamed from: c */
    private final long f8608c;

    /* renamed from: d */
    private final float f8609d;

    C2186i() {
        this.f8607b = 0L;
        this.f8608c = 0L;
        this.f8609d = 1.0f;
    }

    public C2186i(long j, long j2, float f) {
        this.f8607b = j;
        this.f8608c = j2;
        this.f8609d = f;
    }

    C2186i(MediaTimestamp mediaTimestamp) {
        this.f8607b = mediaTimestamp.getAnchorMediaTimeUs();
        this.f8608c = mediaTimestamp.getAnchorSytemNanoTime();
        this.f8609d = mediaTimestamp.getMediaClockRate();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C2186i c2186i = (C2186i) obj;
        return this.f8607b == c2186i.f8607b && this.f8608c == c2186i.f8608c && this.f8609d == c2186i.f8609d;
    }

    public final int hashCode() {
        return (int) ((((int) ((Long.valueOf(this.f8607b).hashCode() * 31) + this.f8608c)) * 31) + this.f8609d);
    }

    public final String toString() {
        return getClass().getName() + "{AnchorMediaTimeUs=" + this.f8607b + " AnchorSystemNanoTime=" + this.f8608c + " ClockRate=" + this.f8609d + "}";
    }
}
