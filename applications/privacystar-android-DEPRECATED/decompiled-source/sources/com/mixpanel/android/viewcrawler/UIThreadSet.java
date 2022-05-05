package com.mixpanel.android.viewcrawler;

import android.os.Looper;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/mixpanel/android/viewcrawler/UIThreadSet.class */
class UIThreadSet<T> {
    private Set<T> mSet = new HashSet();

    public void add(T t) {
        if (Thread.currentThread() != Looper.getMainLooper().getThread()) {
            throw new RuntimeException("Can't add an activity when not on the UI thread");
        }
        this.mSet.add(t);
    }

    public Set<T> getAll() {
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            return Collections.unmodifiableSet(this.mSet);
        }
        throw new RuntimeException("Can't remove an activity when not on the UI thread");
    }

    public boolean isEmpty() {
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            return this.mSet.isEmpty();
        }
        throw new RuntimeException("Can't check isEmpty() when not on the UI thread");
    }

    public void remove(T t) {
        if (Thread.currentThread() != Looper.getMainLooper().getThread()) {
            throw new RuntimeException("Can't remove an activity when not on the UI thread");
        }
        this.mSet.remove(t);
    }
}
