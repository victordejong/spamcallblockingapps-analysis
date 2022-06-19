package androidx.media2.common;

import android.media.MediaFormat;
import android.os.Bundle;
import androidx.media2.common.SessionPlayer;
import java.util.Objects;
import p1727n3.p1803i0.AbstractC26405c;
/* loaded from: classes-dex2jar.jar:androidx/media2/common/TrackInfoParcelizer.class */
public final class TrackInfoParcelizer {
    public static SessionPlayer.TrackInfo read(AbstractC26405c abstractC26405c) {
        SessionPlayer.TrackInfo trackInfo = new SessionPlayer.TrackInfo();
        trackInfo.a = abstractC26405c.m1927r(trackInfo.a, 1);
        trackInfo.b = abstractC26405c.m1927r(trackInfo.b, 3);
        trackInfo.e = abstractC26405c.m1931i(trackInfo.e, 4);
        trackInfo.f();
        return trackInfo;
    }

    public static void write(SessionPlayer.TrackInfo trackInfo, AbstractC26405c abstractC26405c) {
        Objects.requireNonNull(abstractC26405c);
        synchronized (trackInfo.f) {
            Bundle bundle = new Bundle();
            trackInfo.e = bundle;
            bundle.putBoolean("androidx.media2.common.SessionPlayer.TrackInfo.KEY_IS_FORMAT_NULL", trackInfo.c == null);
            MediaFormat mediaFormat = trackInfo.c;
            if (mediaFormat != null) {
                Bundle bundle2 = trackInfo.e;
                if (mediaFormat.containsKey("language")) {
                    bundle2.putString("language", mediaFormat.getString("language"));
                }
                MediaFormat mediaFormat2 = trackInfo.c;
                Bundle bundle3 = trackInfo.e;
                if (mediaFormat2.containsKey("mime")) {
                    bundle3.putString("mime", mediaFormat2.getString("mime"));
                }
                SessionPlayer.TrackInfo.g("is-forced-subtitle", trackInfo.c, trackInfo.e);
                SessionPlayer.TrackInfo.g("is-autoselect", trackInfo.c, trackInfo.e);
                SessionPlayer.TrackInfo.g("is-default", trackInfo.c, trackInfo.e);
            }
            trackInfo.e.putBoolean("androidx.media2.common.SessionPlayer.TrackInfo.KEY_IS_SELECTABLE", trackInfo.d);
        }
        int i = trackInfo.a;
        abstractC26405c.mo1922B(1);
        abstractC26405c.mo1916I(i);
        int i2 = trackInfo.b;
        abstractC26405c.mo1922B(3);
        abstractC26405c.mo1916I(i2);
        Bundle bundle4 = trackInfo.e;
        abstractC26405c.mo1922B(4);
        abstractC26405c.mo1920D(bundle4);
    }
}
