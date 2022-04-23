package p131c.p161d.p170b.p224d.p252g.p253a;

import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
/* renamed from: c.d.b.d.g.a.be0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/be0.class */
public final class be0 implements ae0 {

    /* renamed from: a */
    public final int f12470a;

    /* renamed from: b */
    public MediaCodecInfo[] f12471b;

    public be0(boolean z) {
        this.f12470a = z ? 1 : 0;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.ae0
    /* renamed from: a */
    public final int mo26011a() {
        m27120c();
        return this.f12471b.length;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.ae0
    /* renamed from: a */
    public final MediaCodecInfo mo26010a(int i) {
        m27120c();
        return this.f12471b[i];
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.ae0
    /* renamed from: a */
    public final boolean mo26009a(String str, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("secure-playback");
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.ae0
    /* renamed from: b */
    public final boolean mo26008b() {
        return true;
    }

    /* renamed from: c */
    public final void m27120c() {
        if (this.f12471b == null) {
            this.f12471b = new MediaCodecList(this.f12470a).getCodecInfos();
        }
    }
}
