package com.squareup.picasso;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import com.squareup.picasso.Picasso;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/squareup/picasso/Action.class */
public abstract class Action<T> {
    boolean cancelled;
    final Drawable errorDrawable;
    final int errorResId;
    final String key;
    final int memoryPolicy;
    final int networkPolicy;
    final boolean noFade;
    final Picasso picasso;
    final Request request;
    final Object tag;
    final WeakReference<T> target;
    boolean willReplay;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/squareup/picasso/Action$RequestWeakReference.class */
    public static class RequestWeakReference<M> extends WeakReference<M> {
        final Action action;

        RequestWeakReference(Action action, M m, ReferenceQueue<? super M> referenceQueue) {
            super(m, referenceQueue);
            this.action = action;
        }
    }

    public Action(Picasso picasso, T t, Request request, int i, int i2, int i3, Drawable drawable, String str, Object obj, boolean z) {
        this.picasso = picasso;
        this.request = request;
        this.target = t == null ? null : new RequestWeakReference(this, t, picasso.referenceQueue);
        this.memoryPolicy = i;
        this.networkPolicy = i2;
        this.noFade = z;
        this.errorResId = i3;
        this.errorDrawable = drawable;
        this.key = str;
        this.tag = obj == null ? this : obj;
    }

    public void cancel() {
        this.cancelled = true;
    }

    public abstract void complete(Bitmap bitmap, Picasso.LoadedFrom loadedFrom);

    public abstract void error(Exception exc);

    public String getKey() {
        return this.key;
    }

    public int getMemoryPolicy() {
        return this.memoryPolicy;
    }

    public int getNetworkPolicy() {
        return this.networkPolicy;
    }

    public Picasso getPicasso() {
        return this.picasso;
    }

    public Picasso.Priority getPriority() {
        return this.request.priority;
    }

    public Request getRequest() {
        return this.request;
    }

    public Object getTag() {
        return this.tag;
    }

    public T getTarget() {
        WeakReference<T> weakReference = this.target;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    public boolean isCancelled() {
        return this.cancelled;
    }

    public boolean willReplay() {
        return this.willReplay;
    }
}
