package com.birbit.android.jobqueue.messaging.message;

import com.birbit.android.jobqueue.CancelResult;
import com.birbit.android.jobqueue.TagConstraint;
import com.birbit.android.jobqueue.messaging.Message;
import com.birbit.android.jobqueue.messaging.Type;
/* loaded from: classes-dex2jar.jar:com/birbit/android/jobqueue/messaging/message/CancelMessage.class */
public class CancelMessage extends Message {
    private CancelResult.AsyncCancelCallback callback;
    private TagConstraint constraint;
    private String[] tags;

    public CancelMessage() {
        super(Type.CANCEL);
    }

    public CancelResult.AsyncCancelCallback getCallback() {
        return this.callback;
    }

    public TagConstraint getConstraint() {
        return this.constraint;
    }

    public String[] getTags() {
        return this.tags;
    }

    @Override // com.birbit.android.jobqueue.messaging.Message
    protected void onRecycled() {
    }

    public void setCallback(CancelResult.AsyncCancelCallback asyncCancelCallback) {
        this.callback = asyncCancelCallback;
    }

    public void setConstraint(TagConstraint tagConstraint) {
        this.constraint = tagConstraint;
    }

    public void setTags(String[] strArr) {
        this.tags = strArr;
    }
}
