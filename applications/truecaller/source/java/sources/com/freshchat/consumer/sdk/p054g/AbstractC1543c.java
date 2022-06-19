package com.freshchat.consumer.sdk.p054g;

import android.content.Context;
import java.util.List;
import p1727n3.p1869w.p1871b.AbstractC27049a;
/* renamed from: com.freshchat.consumer.sdk.g.c */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/g/c.class */
public abstract class AbstractC1543c<T> extends AbstractC27049a<List<T>> {

    /* renamed from: eQ */
    private List<T> f4173eQ;

    public AbstractC1543c(Context context) {
        super(context);
    }

    /* renamed from: dd */
    public abstract List<T> mo40564dd();

    /* renamed from: de */
    public List<T> loadInBackground() {
        return mo40564dd();
    }

    @Override // p1727n3.p1869w.p1871b.C27051b
    public void onReset() {
        super.onReset();
        onStopLoading();
        List<T> list = this.f4173eQ;
        if (list != null && list.size() > 0) {
            this.f4173eQ.clear();
        }
        this.f4173eQ = null;
    }

    @Override // p1727n3.p1869w.p1871b.C27051b
    public void onStartLoading() {
        List<T> list = this.f4173eQ;
        if (list != null) {
            deliverResult(list);
        }
        if (takeContentChanged() || this.f4173eQ == null) {
            forceLoad();
        }
    }

    @Override // p1727n3.p1869w.p1871b.C27051b
    public void onStopLoading() {
        cancelLoad();
    }

    /* renamed from: q */
    public void deliverResult(List<T> list) {
        if (isReset()) {
            if (list == null) {
                return;
            }
            list.clear();
            return;
        }
        List<T> list2 = this.f4173eQ;
        this.f4173eQ = list;
        if (isStarted()) {
            super.deliverResult(list);
        }
        if (list2 == null || list2 == list || list2.size() <= 0) {
            return;
        }
        list2.clear();
    }

    /* renamed from: r */
    public void onCanceled(List<T> list) {
        if (list == null || list.size() <= 0) {
            return;
        }
        list.clear();
    }
}
