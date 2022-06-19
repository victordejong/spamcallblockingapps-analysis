package io.realm.internal;

import io.realm.internal.ObserverPairList.ObserverPair;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes2-dex2jar.jar:io/realm/internal/ObserverPairList.class */
public class ObserverPairList<T extends ObserverPair> {
    private List<T> pairs = new CopyOnWriteArrayList();
    private boolean cleared = false;

    /* loaded from: classes2-dex2jar.jar:io/realm/internal/ObserverPairList$Callback.class */
    public interface Callback<T extends ObserverPair> {
        void onCalled(T t, Object obj);
    }

    /* loaded from: classes2-dex2jar.jar:io/realm/internal/ObserverPairList$ObserverPair.class */
    public static abstract class ObserverPair<T, S> {
        protected final S listener;
        final WeakReference<T> observerRef;
        boolean removed = false;

        public ObserverPair(T t, S s) {
            this.listener = s;
            this.observerRef = new WeakReference<>(t);
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ObserverPair)) {
                return false;
            }
            ObserverPair observerPair = (ObserverPair) obj;
            if (!this.listener.equals(observerPair.listener) || this.observerRef.get() != observerPair.observerRef.get()) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            T t = this.observerRef.get();
            int i = 0;
            int hashCode = t != null ? t.hashCode() : 0;
            S s = this.listener;
            if (s != null) {
                i = s.hashCode();
            }
            return ((527 + hashCode) * 31) + i;
        }
    }

    public void add(T t) {
        if (!this.pairs.contains(t)) {
            this.pairs.add(t);
            t.removed = false;
        }
        if (this.cleared) {
            this.cleared = false;
        }
    }

    public void clear() {
        this.cleared = true;
        this.pairs.clear();
    }

    public void foreach(Callback<T> callback) {
        for (T t : this.pairs) {
            if (this.cleared) {
                return;
            }
            Object obj = t.observerRef.get();
            if (obj == null) {
                this.pairs.remove(t);
            } else if (!t.removed) {
                callback.onCalled(t, obj);
            }
        }
    }

    public boolean isEmpty() {
        return this.pairs.isEmpty();
    }

    public <S, U> void remove(S s, U u) {
        for (T t : this.pairs) {
            if (s == t.observerRef.get() && u.equals(t.listener)) {
                t.removed = true;
                this.pairs.remove(t);
                return;
            }
        }
    }

    public void removeByObserver(Object obj) {
        for (T t : this.pairs) {
            Object obj2 = t.observerRef.get();
            if (obj2 == null || obj2 == obj) {
                t.removed = true;
                this.pairs.remove(t);
            }
        }
    }

    public int size() {
        return this.pairs.size();
    }
}
