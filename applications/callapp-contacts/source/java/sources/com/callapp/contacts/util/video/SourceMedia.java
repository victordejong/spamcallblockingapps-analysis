package com.callapp.contacts.util.video;

import android.media.MediaExtractor;
import android.media.MediaFormat;
import android.net.Uri;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.util.CLog;
import com.linkedin.android.litr.p470h.C16657c;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/video/SourceMedia.class */
public class SourceMedia {

    /* renamed from: a */
    public Uri f28433a;

    /* renamed from: b */
    public long f28434b;

    /* renamed from: c */
    public List<MediaTrackFormat> f28435c;

    /* JADX WARN: Type inference failed for: r0v36, types: [long] */
    public SourceMedia(Uri uri) {
        this.f28435c = new ArrayList();
        this.f28433a = uri;
        this.f28434b = C16657c.m6803a(CallAppApplication.get(), uri);
        try {
            MediaExtractor mediaExtractor = new MediaExtractor();
            mediaExtractor.setDataSource(CallAppApplication.get(), uri, (Map<String, String>) null);
            this.f28435c = new ArrayList(mediaExtractor.getTrackCount());
            for (int i = 0; i < mediaExtractor.getTrackCount(); i++) {
                MediaFormat trackFormat = mediaExtractor.getTrackFormat(i);
                String string = trackFormat.getString("mime");
                if (string != null && string.startsWith("video")) {
                    VideoTrackFormat videoTrackFormat = new VideoTrackFormat(i, string);
                    videoTrackFormat.f28465c = m26894a(trackFormat, "width", -1);
                    videoTrackFormat.f28466d = m26894a(trackFormat, "height", -1);
                    videoTrackFormat.f28470h = trackFormat.containsKey("durationUs") ? trackFormat.getLong("durationUs") : (char) 65535;
                    videoTrackFormat.f28468f = m26894a(trackFormat, "frame-rate", -1);
                    videoTrackFormat.f28471i = m26894a(trackFormat, "rotation-degrees", 0);
                    videoTrackFormat.f28469g = m26894a(trackFormat, "i-frame-interval", -1);
                    videoTrackFormat.f28467e = m26894a(trackFormat, "bitrate", -1);
                    this.f28435c.add(videoTrackFormat);
                }
            }
        } catch (IOException e) {
            CLog.m27610a(SourceMedia.class, "Failed to extract sourceMedia", e);
        }
    }

    /* renamed from: a */
    private static int m26894a(MediaFormat mediaFormat, String str, int i) {
        return mediaFormat.containsKey(str) ? mediaFormat.getInteger(str) : i;
    }
}
