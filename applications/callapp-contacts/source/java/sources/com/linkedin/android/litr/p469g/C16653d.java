package com.linkedin.android.litr.p469g;

import android.media.MediaFormat;
import com.linkedin.android.litr.exception.TrackTranscoderException;
import com.linkedin.android.litr.p460b.AbstractC16614a;
import com.linkedin.android.litr.p460b.AbstractC16615b;
import com.linkedin.android.litr.p466d.AbstractC16635d;
import com.linkedin.android.litr.p466d.AbstractC16636e;
import com.linkedin.android.litr.p467e.AbstractC16641d;
import com.linkedin.android.litr.p467e.C16640c;
/* renamed from: com.linkedin.android.litr.g.d */
/* loaded from: classes4-dex2jar.jar:com/linkedin/android/litr/g/d.class */
public class C16653d {

    /* renamed from: a */
    private static final String f58603a = "d";

    /* renamed from: a */
    public static AbstractC16652c m6818a(int i, int i2, AbstractC16635d abstractC16635d, AbstractC16614a abstractC16614a, AbstractC16641d abstractC16641d, AbstractC16615b abstractC16615b, AbstractC16636e abstractC16636e, MediaFormat mediaFormat) throws TrackTranscoderException {
        if (mediaFormat == null) {
            return new C16651b(abstractC16635d, i, abstractC16636e, i2);
        }
        String string = mediaFormat.getString("mime");
        if (string == null) {
            throw new TrackTranscoderException(TrackTranscoderException.EnumC16646a.SOURCE_TRACK_MIME_TYPE_NOT_FOUND, mediaFormat, null, null);
        }
        if (string.startsWith("video") || string.startsWith("audio")) {
            if (abstractC16614a == null) {
                throw new TrackTranscoderException(TrackTranscoderException.EnumC16646a.DECODER_NOT_PROVIDED, mediaFormat, null, null);
            }
            if (abstractC16615b == null) {
                throw new TrackTranscoderException(TrackTranscoderException.EnumC16646a.ENCODER_NOT_PROVIDED, mediaFormat, null, null);
            }
        }
        if (string.startsWith("video")) {
            if (abstractC16641d == null) {
                throw new TrackTranscoderException(TrackTranscoderException.EnumC16646a.RENDERER_NOT_PROVIDED, mediaFormat, null, null);
            }
            return new C16654e(abstractC16635d, i, abstractC16636e, i2, mediaFormat, abstractC16641d, abstractC16614a, abstractC16615b);
        } else if (string.startsWith("audio")) {
            if (abstractC16641d == null) {
                abstractC16641d = new C16640c(abstractC16615b);
            }
            return new C16650a(abstractC16635d, i, abstractC16636e, i2, mediaFormat, abstractC16641d, abstractC16614a, abstractC16615b);
        } else {
            StringBuilder sb = new StringBuilder("Unsupported track mime type: ");
            sb.append(string);
            sb.append(", will use passthrough transcoder");
            return new C16651b(abstractC16635d, i, abstractC16636e, i2);
        }
    }
}
