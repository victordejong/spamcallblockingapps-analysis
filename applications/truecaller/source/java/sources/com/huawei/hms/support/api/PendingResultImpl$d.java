package com.huawei.hms.support.api;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Pair;
import com.huawei.hms.support.api.client.Result;
import com.huawei.hms.support.api.client.ResultCallback;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/support/api/PendingResultImpl$d.class */
public class PendingResultImpl$d<R extends Result> extends Handler {
    public PendingResultImpl$d(Looper looper) {
        super(looper);
    }

    /* renamed from: a */
    public void m37223a(ResultCallback<? super R> resultCallback, R r) {
        sendMessage(obtainMessage(1, new Pair(resultCallback, r)));
    }

    /* renamed from: b */
    public void m37222b(ResultCallback<? super R> resultCallback, R r) {
        resultCallback.onResult(r);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.os.Handler
    public void handleMessage(Message message) {
        if (message.what != 1) {
            return;
        }
        Pair pair = (Pair) message.obj;
        m37222b((ResultCallback) pair.first, (Result) pair.second);
    }
}
