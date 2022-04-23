package androidx.media2.player;

import android.media.MediaTimestamp;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes-dex2jar.jar:androidx/media2/player/i.class */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    public static final i f4454a = new i(-1, -1, BitmapDescriptorFactory.HUE_RED);

    /* renamed from: b  reason: collision with root package name */
    private final long f4455b;

    /* renamed from: c  reason: collision with root package name */
    private final long f4456c;

    /* renamed from: d  reason: collision with root package name */
    private final float f4457d;

    i() {
        this.f4455b = 0L;
        this.f4456c = 0L;
        this.f4457d = 1.0f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(long j, long j2, float f) {
        this.f4455b = j;
        this.f4456c = j2;
        this.f4457d = f;
    }

    i(MediaTimestamp mediaTimestamp) {
        this.f4455b = mediaTimestamp.getAnchorMediaTimeUs();
        this.f4456c = mediaTimestamp.getAnchorSytemNanoTime();
        this.f4457d = mediaTimestamp.getMediaClockRate();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        i iVar = (i) obj;
        return this.f4455b == iVar.f4455b && this.f4456c == iVar.f4456c && this.f4457d == iVar.f4457d;
    }

    public final int hashCode() {
        return (int) ((((int) ((Long.valueOf(this.f4455b).hashCode() * 31) + this.f4456c)) * 31) + this.f4457d);
    }

    public final String toString() {
        return getClass().getName() + "{AnchorMediaTimeUs=" + this.f4455b + " AnchorSystemNanoTime=" + this.f4456c + " ClockRate=" + this.f4457d + "}";
    }
}
