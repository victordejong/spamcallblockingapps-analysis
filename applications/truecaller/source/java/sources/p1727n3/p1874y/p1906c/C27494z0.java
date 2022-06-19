package p1727n3.p1874y.p1906c;

import android.media.PlaybackParams;
/* renamed from: n3.y.c.z0 */
/* loaded from: classes-dex2jar.jar:n3/y/c/z0.class */
public final class C27494z0 {

    /* renamed from: a */
    public PlaybackParams f77404a;

    public C27494z0(PlaybackParams playbackParams) {
        this.f77404a = playbackParams;
    }

    /* renamed from: a */
    public Float m199a() {
        try {
            return Float.valueOf(this.f77404a.getSpeed());
        } catch (IllegalStateException e) {
            return null;
        }
    }
}
