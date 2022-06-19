package com.google.android.gms.common.api.internal;

import android.os.Looper;
import android.os.Message;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.base.zap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/ListenerHolder.class */
public final class ListenerHolder<L> {
    private final zaa zajj;
    private volatile L zajk;
    private final ListenerKey<L> zajl;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/ListenerHolder$ListenerKey.class */
    public static final class ListenerKey<L> {
        private final L zajk;
        private final String zajn;

        public ListenerKey(L l, String str) {
            this.zajk = l;
            this.zajn = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ListenerKey)) {
                return false;
            }
            ListenerKey listenerKey = (ListenerKey) obj;
            return this.zajk == listenerKey.zajk && this.zajn.equals(listenerKey.zajn);
        }

        public final int hashCode() {
            return (System.identityHashCode(this.zajk) * 31) + this.zajn.hashCode();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/ListenerHolder$Notifier.class */
    public interface Notifier<L> {
        void notifyListener(L l);

        void onNotifyListenerFailed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/ListenerHolder$zaa.class */
    public final class zaa extends zap {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public zaa(Looper looper) {
            super(looper);
            ListenerHolder.this = r4;
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            boolean z = true;
            if (message.what != 1) {
                z = false;
            }
            Preconditions.checkArgument(z);
            ListenerHolder.this.notifyListenerInternal((Notifier) message.obj);
        }
    }

    public ListenerHolder(Looper looper, L l, String str) {
        this.zajj = new zaa(looper);
        this.zajk = (L) Preconditions.checkNotNull(l, "Listener must not be null");
        this.zajl = new ListenerKey<>(l, Preconditions.checkNotEmpty(str));
    }

    public final void clear() {
        this.zajk = null;
    }

    public final ListenerKey<L> getListenerKey() {
        return this.zajl;
    }

    public final boolean hasListener() {
        return this.zajk != null;
    }

    public final void notifyListener(Notifier<? super L> notifier) {
        Preconditions.checkNotNull(notifier, "Notifier must not be null");
        this.zajj.sendMessage(this.zajj.obtainMessage(1, notifier));
    }

    final void notifyListenerInternal(Notifier<? super L> notifier) {
        Object obj = (L) this.zajk;
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
