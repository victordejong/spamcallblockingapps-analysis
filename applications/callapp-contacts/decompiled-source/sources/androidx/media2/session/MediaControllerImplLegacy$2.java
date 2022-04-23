package androidx.media2.session;

import android.os.Bundle;
import android.os.Handler;
import android.os.ResultReceiver;
import androidx.c.a.b;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaControllerImplLegacy$2.class */
class MediaControllerImplLegacy$2 extends ResultReceiver {
    final /* synthetic */ i this$0;
    final /* synthetic */ b val$result;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MediaControllerImplLegacy$2(i iVar, Handler handler, b bVar) {
        super(handler);
        this.this$0 = iVar;
        this.val$result = bVar;
    }

    @Override // android.os.ResultReceiver
    protected void onReceiveResult(int i, Bundle bundle) {
        this.val$result.a((b) new SessionResult(i, bundle));
    }
}
