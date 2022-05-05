package com.birbit.android.jobqueue.messaging.message;

import com.birbit.android.jobqueue.CancelResult;
import com.birbit.android.jobqueue.messaging.Message;
import com.birbit.android.jobqueue.messaging.Type;
/* loaded from: classes-dex2jar.jar:com/birbit/android/jobqueue/messaging/message/CancelResultMessage.class */
public class CancelResultMessage extends Message {
    CancelResult.AsyncCancelCallback callback;
    CancelResult result;

    public CancelResultMessage() {
        super(Type.CANCEL_RESULT_CALLBACK);
    }

    public CancelResult.AsyncCancelCallback getCallback() {
        return this.callback;
    }

    public CancelResult getResult() {
        return this.result;
    }

    @Override // com.birbit.android.jobqueue.messaging.Message
    protected void onRecycled() {
        this.result = null;
        this.callback = null;
    }

    public void set(CancelResult.AsyncCancelCallback asyncCancelCallback, CancelResult cancelResult) {
        this.callback = asyncCancelCallback;
        this.result = cancelResult;
    }
}
