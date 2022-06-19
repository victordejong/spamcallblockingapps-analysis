package p193e.p194a.p195a.p200c;

import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.MediaFormat;
import com.truecaller.C2752R;
import java.util.LinkedHashMap;
import java.util.Objects;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1146q2.AbstractC19510i0;
import p193e.p194a.p1270u2.p1271a.AbstractC20576b;
import p193e.p194a.p195a.AbstractC6392i0;
import s1.z.c.l;
/* renamed from: e.a.a.c.x5 */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/x5.class */
public final class C5808x5 extends AbstractC20576b<AbstractC5836z5> implements AbstractC5825y5 {

    /* renamed from: b */
    public int f19424b = -1;

    /* renamed from: c */
    public final boolean f19425c;

    /* renamed from: d */
    public final AbstractC5276f4 f19426d;

    /* renamed from: e */
    public final AbstractC5687r3 f19427e;

    /* renamed from: f */
    public final AbstractC6392i0 f19428f;

    @Inject
    public C5808x5(@Named("IsBubbleIntent") boolean z, AbstractC5276f4 abstractC5276f4, AbstractC5687r3 abstractC5687r3, AbstractC5776u5 abstractC5776u5, AbstractC6392i0 abstractC6392i0) {
        l.e(abstractC5276f4, "inputPresenter");
        l.e(abstractC5687r3, "conversationAnalytics");
        l.e(abstractC5776u5, "draftEntityPresenter");
        l.e(abstractC6392i0, "messagingSettings");
        this.f19425c = z;
        this.f19426d = abstractC5276f4;
        this.f19427e = abstractC5687r3;
        this.f19428f = abstractC6392i0;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5825y5
    /* renamed from: Kd */
    public void mo32390Kd(boolean z) {
        this.f19428f.mo31086d3(z);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5825y5
    /* renamed from: Pb */
    public void mo32389Pb() {
        AbstractC5836z5 abstractC5836z5 = (AbstractC5836z5) this.f57683a;
        if (abstractC5836z5 != null) {
            abstractC5836z5.mo32332J0();
            abstractC5836z5.mo32331Zm();
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5825y5
    /* renamed from: Xh */
    public void mo32388Xh(int i) {
        String str;
        mo32384y2(i, true);
        C5718s3 c5718s3 = (C5718s3) this.f19427e;
        Objects.requireNonNull(c5718s3);
        if (i == 0) {
            str = "emoji";
        } else if (i != 1) {
            return;
        } else {
            str = MediaFormat.GIF;
        }
        AbstractC19510i0 abstractC19510i0 = c5718s3.f19171b;
        LinkedHashMap m8655X = C22128a.m8655X("ImSwitchEmojiGif", "type");
        C22128a.m8681O0("ImSwitchEmojiGif", C22128a.m8652Y(AnalyticsConstants.SELECTED, AnalyticsConstants.NAME, str, "value", m8655X, AnalyticsConstants.SELECTED, str), m8655X, "GenericAnalyticsEvent.ne…rties(properties).build()", abstractC19510i0);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x00dc  */
    @Override // p193e.p194a.p195a.p200c.AbstractC5825y5
    /* renamed from: e0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo32387e0(p193e.p194a.p1221t.p1222a.p1223a.C20246f r26) {
        /*
            Method dump skipped, instructions count: 326
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p200c.C5808x5.mo32387e0(e.a.t.a.a.f):void");
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5825y5
    /* renamed from: ne */
    public boolean mo32386ne() {
        return !this.f19426d.mo33325d1() && !this.f19425c;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5825y5
    public void onStop() {
        AbstractC5836z5 abstractC5836z5 = (AbstractC5836z5) this.f57683a;
        if (abstractC5836z5 != null) {
            abstractC5836z5.mo32329h1();
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5825y5
    /* renamed from: ta */
    public void mo32385ta(int i) {
        mo32384y2(i, false);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5825y5
    /* renamed from: y2 */
    public void mo32384y2(int i, boolean z) {
        if (i != -1) {
            this.f19424b = i;
        }
        AbstractC5836z5 abstractC5836z5 = (AbstractC5836z5) this.f57683a;
        if (abstractC5836z5 != null) {
            if (this.f19425c) {
                abstractC5836z5.mo32330ez();
            } else if (!mo32386ne()) {
                abstractC5836z5.mo32328zb(2131232509, z);
            } else {
                int i2 = this.f19424b;
                if (i2 == 0) {
                    abstractC5836z5.mo32328zb(2131232509, z);
                } else if (i2 != 1) {
                } else {
                    abstractC5836z5.mo32328zb(2131231935, z);
                }
            }
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5825y5
    /* renamed from: zb */
    public int mo32383zb() {
        return C2752R.string.GifsNotAvailable;
    }
}
