package androidx.media2.session;

import androidx.media.AudioAttributesCompat;
import java.io.Closeable;
import java.util.Objects;
import p1727n3.p1803i0.AbstractC26407e;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaController.class */
public class MediaController implements Closeable {

    /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaController$PlaybackInfo.class */
    public static final class PlaybackInfo implements AbstractC26407e {

        /* renamed from: a */
        public int f1220a;

        /* renamed from: b */
        public int f1221b;

        /* renamed from: c */
        public int f1222c;

        /* renamed from: d */
        public int f1223d;

        /* renamed from: e */
        public AudioAttributesCompat f1224e;

        public boolean equals(Object obj) {
            if (!(obj instanceof PlaybackInfo)) {
                return false;
            }
            PlaybackInfo playbackInfo = (PlaybackInfo) obj;
            boolean z = false;
            if (this.f1220a == playbackInfo.f1220a) {
                z = false;
                if (this.f1221b == playbackInfo.f1221b) {
                    z = false;
                    if (this.f1222c == playbackInfo.f1222c) {
                        z = false;
                        if (this.f1223d == playbackInfo.f1223d) {
                            z = false;
                            if (Objects.equals(this.f1224e, playbackInfo.f1224e)) {
                                z = true;
                            }
                        }
                    }
                }
            }
            return z;
        }

        public int hashCode() {
            return Objects.hash(Integer.valueOf(this.f1220a), Integer.valueOf(this.f1221b), Integer.valueOf(this.f1222c), Integer.valueOf(this.f1223d), this.f1224e);
        }
    }
}
