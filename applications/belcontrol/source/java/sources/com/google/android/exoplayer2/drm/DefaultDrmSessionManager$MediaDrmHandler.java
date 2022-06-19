package com.google.android.exoplayer2.drm;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
@SuppressLint({"HandlerLeak"})
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/drm/DefaultDrmSessionManager$MediaDrmHandler.class */
public class DefaultDrmSessionManager$MediaDrmHandler extends Handler {
    public final /* synthetic */ DefaultDrmSessionManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DefaultDrmSessionManager$MediaDrmHandler(DefaultDrmSessionManager defaultDrmSessionManager, Looper looper) {
        super(looper);
        this.this$0 = defaultDrmSessionManager;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        byte[] bArr = (byte[]) message.obj;
        for (DefaultDrmSession defaultDrmSession : DefaultDrmSessionManager.access$200(this.this$0)) {
            if (defaultDrmSession.hasSessionId(bArr)) {
                defaultDrmSession.onMediaDrmEvent(message.what);
                return;
            }
        }
    }
}
