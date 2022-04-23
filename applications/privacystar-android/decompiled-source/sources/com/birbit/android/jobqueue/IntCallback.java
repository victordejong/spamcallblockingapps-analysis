package com.birbit.android.jobqueue;
/* loaded from: classes-dex2jar.jar:com/birbit/android/jobqueue/IntCallback.class */
public interface IntCallback {

    /* loaded from: classes-dex2jar.jar:com/birbit/android/jobqueue/IntCallback$MessageWithCallback.class */
    public interface MessageWithCallback {
        void setCallback(IntCallback intCallback);
    }

    void onResult(int i);
}
