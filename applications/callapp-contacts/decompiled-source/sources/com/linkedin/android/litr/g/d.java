package com.linkedin.android.litr.g;

import android.media.MediaFormat;
import com.linkedin.android.litr.b.a;
import com.linkedin.android.litr.b.b;
import com.linkedin.android.litr.d.e;
import com.linkedin.android.litr.e.c;
import com.linkedin.android.litr.exception.TrackTranscoderException;
/* loaded from: classes4-dex2jar.jar:com/linkedin/android/litr/g/d.class */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private static final String f33747a = "d";

    public static c a(int i, int i2, com.linkedin.android.litr.d.d dVar, a aVar, com.linkedin.android.litr.e.d dVar2, b bVar, e eVar, MediaFormat mediaFormat) throws TrackTranscoderException {
        if (mediaFormat == null) {
            return new b(dVar, i, eVar, i2);
        }
        String string = mediaFormat.getString("mime");
        if (string != null) {
            if (string.startsWith("video") || string.startsWith("audio")) {
                if (aVar == null) {
                    throw new TrackTranscoderException(TrackTranscoderException.a.DECODER_NOT_PROVIDED, mediaFormat, null, null);
                } else if (bVar == null) {
                    throw new TrackTranscoderException(TrackTranscoderException.a.ENCODER_NOT_PROVIDED, mediaFormat, null, null);
                }
            }
            if (string.startsWith("video")) {
                if (dVar2 != null) {
                    return new e(dVar, i, eVar, i2, mediaFormat, dVar2, aVar, bVar);
                }
                throw new TrackTranscoderException(TrackTranscoderException.a.RENDERER_NOT_PROVIDED, mediaFormat, null, null);
            } else if (string.startsWith("audio")) {
                if (dVar2 == null) {
                    dVar2 = new c(bVar);
                }
                return new a(dVar, i, eVar, i2, mediaFormat, dVar2, aVar, bVar);
            } else {
                StringBuilder sb = new StringBuilder("Unsupported track mime type: ");
                sb.append(string);
                sb.append(", will use passthrough transcoder");
                return new b(dVar, i, eVar, i2);
            }
        } else {
            throw new TrackTranscoderException(TrackTranscoderException.a.SOURCE_TRACK_MIME_TYPE_NOT_FOUND, mediaFormat, null, null);
        }
    }
}
