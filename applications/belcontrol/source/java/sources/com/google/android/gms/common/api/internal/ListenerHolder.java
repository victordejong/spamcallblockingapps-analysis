package com.google.android.gms.common.api.internal;

import android.os.Looper;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/ListenerHolder.class */
public final class ListenerHolder<L> {
    private final zaa zaa;
    private volatile L zab;
    private volatile ListenerKey<L> zac;

    @KeepForSdk
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/ListenerHolder$ListenerKey.class */
    public static final class ListenerKey<L> {
        private final L zaa;
        private final String zab;

        @KeepForSdk
        public ListenerKey(L l, String str) {
            this.zaa = l;
            this.zab = str;
        }

        @KeepForSdk
        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ListenerKey)) {
                return false;
            }
            ListenerKey listenerKey = (ListenerKey) obj;
            return this.zaa == listenerKey.zaa && this.zab.equals(listenerKey.zab);
        }

        @KeepForSdk
        public final int hashCode() {
            return (System.identityHashCode(this.zaa) * 31) + this.zab.hashCode();
        }
    }

    @KeepForSdk
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/ListenerHolder$Notifier.class */
    public interface Notifier<L> {
        @KeepForSdk
        void notifyListener(L l);

        @KeepForSdk
        void onNotifyListenerFailed();
    }

    @KeepForSdk
    public ListenerHolder(Looper looper, L l, String str) {
        this.zaa = new zaa(this, looper);
        this.zab = (L) Preconditions.checkNotNull(l, "Listener must not be null");
        this.zac = new ListenerKey<>(l, Preconditions.checkNotEmpty(str));
    }

    @KeepForSdk
    public final void clear() {
        this.zab = null;
        this.zac = null;
    }

    @KeepForSdk
    public final ListenerKey<L> getListenerKey() {
        return this.zac;
    }

    @KeepForSdk
    public final boolean hasListener() {
        return this.zab != null;
    }

    @KeepForSdk
    public final void notifyListener(Notifier<? super L> notifier) {
        Preconditions.checkNotNull(notifier, "Notifier must not be null");
        this.zaa.sendMessage(this.zaa.obtainMessage(1, notifier));
    }

    @KeepForSdk
    public final void notifyListenerInternal(Notifier<? super L> notifier) {
        Object obj = (L) this.zab;
        if (obj == null) {
            notifier.onNotifyListenerFailed();
            return;
        }
        try {
            notifier.notifyListener(obj);
        } catch (RuntimeException e) {
            notifier.onNotifyListenerFailed();
            throw e;
        }
    }
}
