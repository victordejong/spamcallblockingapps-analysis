package p193e.p1577m.p1578a.p1642f.p1653e.p1654a.p1655a;

import android.os.Handler;
import com.google.android.gms.common.api.internal.BackgroundDetector;
import com.google.android.gms.common.api.internal.GoogleApiManager;
/* renamed from: e.m.a.f.e.a.a.t */
/* loaded from: classes2-dex2jar.jar:e/m/a/f/e/a/a/t.class */
public final class C24945t implements BackgroundDetector.BackgroundStateChangeListener {

    /* renamed from: a */
    public final /* synthetic */ GoogleApiManager f69871a;

    public C24945t(GoogleApiManager googleApiManager) {
        this.f69871a = googleApiManager;
    }

    @Override // com.google.android.gms.common.api.internal.BackgroundDetector.BackgroundStateChangeListener
    /* renamed from: a */
    public final void mo4280a(boolean z) {
        Handler handler = this.f69871a.f5759n;
        handler.sendMessage(handler.obtainMessage(1, Boolean.valueOf(z)));
    }
}
