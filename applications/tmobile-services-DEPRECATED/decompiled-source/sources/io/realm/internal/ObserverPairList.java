package io.realm.internal;

import io.realm.internal.ObserverPairList.ObserverPair;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes2-dex2jar.jar:io/realm/internal/ObserverPairList.class */
public class ObserverPairList<T extends ObserverPair> {

    /* renamed from: a */
    private List<T> f20109a = new CopyOnWriteArrayList();

    /* renamed from: b */
    private boolean f20110b = false;

    /* loaded from: classes2-dex2jar.jar:io/realm/internal/ObserverPairList$Callback.class */
    public interface Callback<T extends ObserverPair> {
        /* renamed from: a */
        void mo2544a(T t, Object obj);
    }

    /* loaded from: classes2-dex2jar.jar:io/realm/internal/ObserverPairList$ObserverPair.class */
    public static abstract class ObserverPair<T, S> {

        /* renamed from: a */
        final WeakReference<T> f20111a;

        /* renamed from: b */
        protected final S f20112b;

        /* renamed from: c */
        boolean f20113c = false;

        public ObserverPair(T t, S s) {
            this.f20112b = s;
            this.f20111a = new WeakReference<>(t);
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
            if (!this.f20112b.equals(observerPair.f20112b) || this.f20111a.get() != observerPair.f20111a.get()) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            T t = this.f20111a.get();
            int i = 0;
            int hashCode = t != null ? t.hashCode() : 0;
            S s = this.f20112b;
            if (s != null) {
                i = s.hashCode();
            }
            return ((527 + hashCode) * 31) + i;
        }
    }

    /* renamed from: a */
    public void m2807a(T t) {
        if (!this.f20109a.contains(t)) {
            this.f20109a.add(t);
            t.f20113c = false;
        }
        if (this.f20110b) {
            this.f20110b = false;
        }
    }

    /* renamed from: b */
    public void m2806b() {
        this.f20110b = true;
        this.f20109a.clear();
    }

    /* renamed from: c */
    public void m2805c(Callback<T> callback) {
        for (T t : this.f20109a) {
            if (!this.f20110b) {
                Object obj = t.f20111a.get();
                if (obj == null) {
                    this.f20109a.remove(t);
                } else if (!t.f20113c) {
                    callback.mo2544a(t, obj);
                }
            } else {
                return;
            }
        }
    }

    /* renamed from: d */
    public boolean m2804d() {
        return this.f20109a.isEmpty();
    }

    /* renamed from: e */
    public <S, U> void m2803e(S s, U u) {
        for (T t : this.f20109a) {
            if (s == t.f20111a.get() && u.equals(t.f20112b)) {
                t.f20113c = true;
                this.f20109a.remove(t);
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public void m2802f(Object obj) {
        for (T t : this.f20109a) {
            Object obj2 = t.f20111a.get();
            if (obj2 == null || obj2 == obj) {
                t.f20113c = true;
                this.f20109a.remove(t);
            }
        }
    }

    /* renamed from: g */
    public int m2801g() {
        return this.f20109a.size();
    }
}
