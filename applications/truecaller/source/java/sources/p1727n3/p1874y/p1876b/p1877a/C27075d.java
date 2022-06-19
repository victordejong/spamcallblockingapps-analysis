package p1727n3.p1874y.p1876b.p1877a;

import android.support.p001v4.media.session.MediaSessionCompat;
import com.amazon.device.ads.DtbConstants;
import com.mopub.mobileads.AdData;
import n3.y.b.a.w0.l;
/* renamed from: n3.y.b.a.d */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/d.class */
public class C27075d {

    /* renamed from: a */
    public final l f75661a;

    /* renamed from: c */
    public final long f75663c;

    /* renamed from: d */
    public final long f75664d;

    /* renamed from: j */
    public int f75670j;

    /* renamed from: k */
    public boolean f75671k;

    /* renamed from: l */
    public boolean f75672l;

    /* renamed from: b */
    public final long f75662b = C27073c.m948a(15000);

    /* renamed from: e */
    public final long f75665e = C27073c.m948a(2500);

    /* renamed from: f */
    public final long f75666f = C27073c.m948a((long) AdData.DEFAULT_DURATION_FOR_REWARDED_IMAGE_CLOSE_BUTTON_MILLIS);

    /* renamed from: g */
    public final int f75667g = -1;

    /* renamed from: h */
    public final boolean f75668h = true;

    /* renamed from: i */
    public final long f75669i = C27073c.m948a(0);

    public C27075d() {
        l lVar = new l(true, 65536);
        m946a(2500, 0, "bufferForPlaybackMs", DtbConstants.NETWORK_TYPE_UNKNOWN);
        m946a(AdData.DEFAULT_DURATION_FOR_REWARDED_IMAGE_CLOSE_BUTTON_MILLIS, 0, "bufferForPlaybackAfterRebufferMs", DtbConstants.NETWORK_TYPE_UNKNOWN);
        m946a(15000, 2500, "minBufferAudioMs", "bufferForPlaybackMs");
        m946a(50000, 2500, "minBufferVideoMs", "bufferForPlaybackMs");
        m946a(15000, AdData.DEFAULT_DURATION_FOR_REWARDED_IMAGE_CLOSE_BUTTON_MILLIS, "minBufferAudioMs", "bufferForPlaybackAfterRebufferMs");
        m946a(50000, AdData.DEFAULT_DURATION_FOR_REWARDED_IMAGE_CLOSE_BUTTON_MILLIS, "minBufferVideoMs", "bufferForPlaybackAfterRebufferMs");
        m946a(50000, 15000, "maxBufferMs", "minBufferAudioMs");
        m946a(50000, 50000, "maxBufferMs", "minBufferVideoMs");
        m946a(0, 0, "backBufferDurationMs", DtbConstants.NETWORK_TYPE_UNKNOWN);
        this.f75661a = lVar;
        long j = 50000;
        this.f75663c = C27073c.m948a(j);
        this.f75664d = C27073c.m948a(j);
    }

    /* renamed from: a */
    public static void m946a(int i, int i2, String str, String str2) {
        boolean z = i >= i2;
        StringBuilder sb = new StringBuilder(str2.length() + str.length() + 21);
        sb.append(str);
        sb.append(" cannot be less than ");
        sb.append(str2);
        MediaSessionCompat.m43208q(z, sb.toString());
    }

    /* renamed from: b */
    public final void m945b(boolean z) {
        this.f75670j = 0;
        this.f75671k = false;
        if (z) {
            l lVar = this.f75661a;
            synchronized (lVar) {
                if (lVar.a) {
                    lVar.b(0);
                }
            }
        }
    }
}
