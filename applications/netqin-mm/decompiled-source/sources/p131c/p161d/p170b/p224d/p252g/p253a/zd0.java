package p131c.p161d.p170b.p224d.p252g.p253a;

import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
/* renamed from: c.d.b.d.g.a.zd0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/zd0.class */
public final class zd0 implements ae0 {
    public zd0() {
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.ae0
    /* renamed from: a */
    public final int mo26011a() {
        return MediaCodecList.getCodecCount();
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.ae0
    /* renamed from: a */
    public final MediaCodecInfo mo26010a(int i) {
        return MediaCodecList.getCodecInfoAt(i);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.ae0
    /* renamed from: a */
    public final boolean mo26009a(String str, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return "video/avc".equals(str);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.ae0
    /* renamed from: b */
    public final boolean mo26008b() {
        return false;
    }
}
