package p000;

import com.truecaller.ads.adsrouter.p132ui.VideoStats;
import e.a.i.c.a.n;
import e.a.i.c.a.q;
import s1.s;
import s1.z.b.a;
import s1.z.c.m;
/* renamed from: f3 */
/* loaded from: classes6-dex2jar.jar:f3.class */
public final class C25275f3 extends m implements a<s> {

    /* renamed from: b */
    public final /* synthetic */ int f70709b;

    /* renamed from: c */
    public final /* synthetic */ Object f70710c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C25275f3(int i, Object obj) {
        super(0);
        this.f70709b = i;
        this.f70710c = obj;
    }

    public final Object invoke() {
        s sVar = s.a;
        int i = this.f70709b;
        if (i == 0) {
            n videoAd = ((q) this.f70710c).getVideoAd();
            if (videoAd != null) {
                videoAd.l(VideoStats.PLAY_25);
            } else {
                sVar = null;
            }
            return sVar;
        } else if (i == 1) {
            n videoAd2 = ((q) this.f70710c).getVideoAd();
            if (videoAd2 != null) {
                videoAd2.l(VideoStats.PLAY_50);
            } else {
                sVar = null;
            }
            return sVar;
        } else if (i == 2) {
            n videoAd3 = ((q) this.f70710c).getVideoAd();
            if (videoAd3 != null) {
                videoAd3.l(VideoStats.PLAY_75);
            } else {
                sVar = null;
            }
            return sVar;
        } else if (i == 3) {
            n videoAd4 = ((q) this.f70710c).getVideoAd();
            if (videoAd4 != null) {
                videoAd4.l(VideoStats.VIDEO_END);
            } else {
                sVar = null;
            }
            return sVar;
        } else if (i != 4) {
            throw null;
        } else {
            n videoAd5 = ((q) this.f70710c).getVideoAd();
            if (videoAd5 != null) {
                videoAd5.l(VideoStats.VIDEO_START);
            } else {
                sVar = null;
            }
            return sVar;
        }
    }
}
