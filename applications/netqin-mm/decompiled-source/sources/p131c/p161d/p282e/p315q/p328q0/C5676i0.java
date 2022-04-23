package p131c.p161d.p282e.p315q.p328q0;

import android.os.Bundle;
import com.mopub.common.Constants;
import p131c.p161d.p282e.p285j.p286a.AbstractC5143a;
import p530d.p541c.AbstractC9816f;
/* renamed from: c.d.e.q.q0.i0 */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/q0/i0.class */
public final class C5676i0 implements AbstractC5143a.AbstractC5145b {

    /* renamed from: a */
    public AbstractC9816f<String> f18780a;

    public C5676i0(AbstractC9816f<String> fVar) {
        this.f18780a = fVar;
    }

    @Override // p131c.p161d.p282e.p285j.p286a.AbstractC5143a.AbstractC5145b
    /* renamed from: a */
    public void mo23292a(int i, Bundle bundle) {
        if (i == 2) {
            this.f18780a.onNext(bundle.getString(Constants.VIDEO_TRACKING_EVENTS_KEY));
        }
    }
}
