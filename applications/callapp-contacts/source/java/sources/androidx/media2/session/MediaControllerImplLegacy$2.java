package androidx.media2.session;

import android.os.Bundle;
import android.os.Handler;
import android.os.ResultReceiver;
import androidx.p024c.p025a.C0492b;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaControllerImplLegacy$2.class */
class MediaControllerImplLegacy$2 extends ResultReceiver {
    final /* synthetic */ C2272i this$0;
    final /* synthetic */ C0492b val$result;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MediaControllerImplLegacy$2(C2272i c2272i, Handler handler, C0492b c0492b) {
        super(handler);
        this.this$0 = c2272i;
        this.val$result = c0492b;
    }

    @Override // android.os.ResultReceiver
    protected void onReceiveResult(int i, Bundle bundle) {
        this.val$result.mo40774a((C0492b) new SessionResult(i, bundle));
    }
}
