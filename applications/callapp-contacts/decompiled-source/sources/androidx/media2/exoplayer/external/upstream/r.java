package androidx.media2.exoplayer.external.upstream;

import android.text.TextUtils;
import androidx.media2.exoplayer.external.util.ac;
import com.mopub.common.AdType;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/r.class */
final /* synthetic */ class r implements androidx.media2.exoplayer.external.util.r {

    /* renamed from: a  reason: collision with root package name */
    static final androidx.media2.exoplayer.external.util.r f4103a = new r();

    private r() {
    }

    @Override // androidx.media2.exoplayer.external.util.r
    public final boolean a(Object obj) {
        String d2 = ac.d((String) obj);
        if (!TextUtils.isEmpty(d2)) {
            return (!d2.contains("text") || d2.contains("text/vtt")) && !d2.contains(AdType.HTML) && !d2.contains("xml");
        }
        return false;
    }
}
