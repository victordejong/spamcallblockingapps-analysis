package com.google.android.exoplayer2.drm;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Pair;
import com.google.android.exoplayer2.drm.ExoMediaDrm;
@SuppressLint({"HandlerLeak"})
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler.class */
public class DefaultDrmSession$PostRequestHandler extends Handler {
    public final /* synthetic */ DefaultDrmSession this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DefaultDrmSession$PostRequestHandler(DefaultDrmSession defaultDrmSession, Looper looper) {
        super(looper);
        this.this$0 = defaultDrmSession;
    }

    private long getRetryDelayMillis(int i) {
        return Math.min((i - 1) * 1000, 5000);
    }

    private boolean maybeRetryRequest(Message message) {
        int i;
        if ((message.arg1 == 1) && (i = message.arg2 + 1) <= DefaultDrmSession.access$200(this.this$0)) {
            Message obtain = Message.obtain(message);
            obtain.arg2 = i;
            sendMessageDelayed(obtain, getRetryDelayMillis(i));
            return true;
        }
        return false;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        Object e;
        Object obj = message.obj;
        try {
            int i = message.what;
            if (i == 0) {
                DefaultDrmSession defaultDrmSession = this.this$0;
                e = defaultDrmSession.callback.executeProvisionRequest(defaultDrmSession.uuid, (ExoMediaDrm.ProvisionRequest) obj);
            } else if (i != 1) {
                throw new RuntimeException();
            } else {
                Pair pair = (Pair) obj;
                ExoMediaDrm.KeyRequest keyRequest = (ExoMediaDrm.KeyRequest) pair.first;
                String str = (String) pair.second;
                DefaultDrmSession defaultDrmSession2 = this.this$0;
                e = defaultDrmSession2.callback.executeKeyRequest(defaultDrmSession2.uuid, keyRequest, str);
            }
        } catch (Exception e2) {
            e = e2;
            if (maybeRetryRequest(message)) {
                return;
            }
        }
        this.this$0.postResponseHandler.obtainMessage(message.what, Pair.create(obj, e)).sendToTarget();
    }

    public void post(int i, Object obj, boolean z) {
        obtainMessage(i, z ? 1 : 0, 0, obj).sendToTarget();
    }
}
