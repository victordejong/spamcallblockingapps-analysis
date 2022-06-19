package com.freshchat.consumer.sdk.p054g;

import android.content.Context;
import p1727n3.p1869w.p1871b.AbstractC27049a;
/* renamed from: com.freshchat.consumer.sdk.g.d */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/g/d.class */
public abstract class AbstractC1544d<T> extends AbstractC27049a<T> {

    /* renamed from: eR */
    private T f4174eR;

    public AbstractC1544d(Context context) {
        super(context);
    }

    @Override // p1727n3.p1869w.p1871b.C27051b
    public void deliverResult(T t) {
        if (isReset()) {
            this.f4174eR = null;
            return;
        }
        this.f4174eR = t;
        if (!isStarted()) {
            return;
        }
        super.deliverResult(t);
    }

    public abstract T getData();

    @Override // p1727n3.p1869w.p1871b.AbstractC27049a
    public T loadInBackground() {
        return getData();
    }

    @Override // p1727n3.p1869w.p1871b.AbstractC27049a
    public void onCanceled(T t) {
        this.f4174eR = null;
    }

    @Override // p1727n3.p1869w.p1871b.C27051b
    public void onReset() {
        super.onReset();
        onStopLoading();
        this.f4174eR = null;
    }

    @Override // p1727n3.p1869w.p1871b.C27051b
    public void onStartLoading() {
        T t = this.f4174eR;
        if (t != null) {
            deliverResult(t);
        }
        if (takeContentChanged() || this.f4174eR == null) {
            forceLoad();
        }
    }

    @Override // p1727n3.p1869w.p1871b.C27051b
    public void onStopLoading() {
        cancelLoad();
    }
}
