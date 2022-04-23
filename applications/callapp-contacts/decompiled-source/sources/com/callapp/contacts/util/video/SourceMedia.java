package com.callapp.contacts.util.video;

import android.media.MediaExtractor;
import android.media.MediaFormat;
import android.net.Uri;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.util.CLog;
import com.linkedin.android.litr.h.c;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/video/SourceMedia.class */
public class SourceMedia {

    /* renamed from: a  reason: collision with root package name */
    public Uri f16321a;

    /* renamed from: b  reason: collision with root package name */
    public long f16322b;

    /* renamed from: c  reason: collision with root package name */
    public List<MediaTrackFormat> f16323c;

    public SourceMedia(Uri uri) {
        this.f16323c = new ArrayList();
        this.f16321a = uri;
        this.f16322b = c.a(CallAppApplication.get(), uri);
        try {
            MediaExtractor mediaExtractor = new MediaExtractor();
            mediaExtractor.setDataSource(CallAppApplication.get(), uri, (Map<String, String>) null);
            this.f16323c = new ArrayList(mediaExtractor.getTrackCount());
            for (int i = 0; i < mediaExtractor.getTrackCount(); i++) {
                MediaFormat trackFormat = mediaExtractor.getTrackFormat(i);
                String string = trackFormat.getString("mime");
                if (string != null && string.startsWith("video")) {
                    VideoTrackFormat videoTrackFormat = new VideoTrackFormat(i, string);
                    videoTrackFormat.f16346c = a(trackFormat, "width", -1);
                    videoTrackFormat.f16347d = a(trackFormat, "height", -1);
                    videoTrackFormat.h = trackFormat.containsKey("durationUs") ? trackFormat.getLong("durationUs") : -1L;
                    videoTrackFormat.f = a(trackFormat, "frame-rate", -1);
                    videoTrackFormat.i = a(trackFormat, "rotation-degrees", 0);
                    videoTrackFormat.g = a(trackFormat, "i-frame-interval", -1);
                    videoTrackFormat.e = a(trackFormat, "bitrate", -1);
                    this.f16323c.add(videoTrackFormat);
                }
            }
        } catch (IOException e) {
            CLog.a(SourceMedia.class, "Failed to extract sourceMedia", e);
        }
    }

    private static int a(MediaFormat mediaFormat, String str, int i) {
        return mediaFormat.containsKey(str) ? mediaFormat.getInteger(str) : i;
    }
}
