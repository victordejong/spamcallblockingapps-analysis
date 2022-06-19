package androidx.media2.exoplayer.external.upstream;

import android.text.TextUtils;
import androidx.media2.exoplayer.external.util.AbstractC2020r;
import androidx.media2.exoplayer.external.util.C1996ac;
import com.mopub.common.AdType;
/* renamed from: androidx.media2.exoplayer.external.upstream.r */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/r.class */
final /* synthetic */ class C1984r implements AbstractC2020r {

    /* renamed from: a */
    static final AbstractC2020r f8041a = new C1984r();

    private C1984r() {
    }

    @Override // androidx.media2.exoplayer.external.util.AbstractC2020r
    /* renamed from: a */
    public final boolean mo41503a(Object obj) {
        String m41620d = C1996ac.m41620d((String) obj);
        if (!TextUtils.isEmpty(m41620d)) {
            return (!m41620d.contains("text") || m41620d.contains("text/vtt")) && !m41620d.contains(AdType.HTML) && !m41620d.contains("xml");
        }
        return false;
    }
}
