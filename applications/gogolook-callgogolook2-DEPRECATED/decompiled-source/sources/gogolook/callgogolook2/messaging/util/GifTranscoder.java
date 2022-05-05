package gogolook.callgogolook2.messaging.util;

import android.content.Context;
import android.text.format.Formatter;
import java.io.File;
import java.util.concurrent.TimeUnit;
import p081h.p203i.p316b.p317a.C9304n;
import p459j.p460a.p474c0.p499h.AbstractC12170i;
import p459j.p460a.p474c0.p499h.C12153d0;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/util/GifTranscoder.class */
public class GifTranscoder {

    /* renamed from: a */
    public static int f11933a = 100;

    /* renamed from: b */
    public static int f11934b = 100;

    static {
        System.loadLibrary("giftranscode");
    }

    /* renamed from: a */
    public static long m26922a(long j) {
        return ((float) j) * 0.35f;
    }

    /* renamed from: a */
    public static boolean m26924a() {
        AbstractC12170i.m6941a().mo6916a("bugle_gif_transcoding", true);
        return true;
    }

    /* renamed from: a */
    public static boolean m26923a(int i, int i2) {
        if (!m26924a()) {
            return false;
        }
        boolean z = false;
        if (i >= f11934b) {
            z = false;
            if (i2 >= f11933a) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: a */
    public static boolean m26921a(Context context, String str, String str2) {
        if (!m26924a()) {
            return false;
        }
        long length = new File(str).length();
        C9304n d = C9304n.m15456d();
        boolean transcodeInternal = transcodeInternal(str, str2);
        d.m15457c();
        long a = d.m15460a(TimeUnit.MILLISECONDS);
        long length2 = new File(str2).length();
        float f = length > 0 ? ((float) length2) / ((float) length) : 0.0f;
        if (transcodeInternal) {
            C12153d0.m6985c("MessagingApp", String.format("Resized GIF (%s) in %d ms, %s => %s (%.0f%%)", C12153d0.m6993a(str), Long.valueOf(a), Formatter.formatShortFileSize(context, length), Formatter.formatShortFileSize(context, length2), Float.valueOf(f * 100.0f)));
        }
        return transcodeInternal;
    }

    public static native boolean transcodeInternal(String str, String str2);
}
