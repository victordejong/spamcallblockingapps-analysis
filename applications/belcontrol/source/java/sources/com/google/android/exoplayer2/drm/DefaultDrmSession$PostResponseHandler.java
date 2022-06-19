package com.google.android.exoplayer2.drm;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Pair;
@SuppressLint({"HandlerLeak"})
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/drm/DefaultDrmSession$PostResponseHandler.class */
public class DefaultDrmSession$PostResponseHandler extends Handler {
    public final /* synthetic */ DefaultDrmSession this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DefaultDrmSession$PostResponseHandler(DefaultDrmSession defaultDrmSession, Looper looper) {
        super(looper);
        this.this$0 = defaultDrmSession;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        Pair pair = (Pair) message.obj;
        Object obj = pair.first;
        Object obj2 = pair.second;
        int i = message.what;
        if (i == 0) {
            DefaultDrmSession.access$000(this.this$0, obj, obj2);
        } else if (i != 1) {
        } else {
            DefaultDrmSession.access$100(this.this$0, obj, obj2);
        }
    }
}
