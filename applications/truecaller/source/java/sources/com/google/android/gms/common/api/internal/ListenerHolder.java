package com.google.android.gms.common.api.internal;

import android.os.Looper;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import p193e.p1577m.p1578a.p1642f.p1653e.p1654a.p1655a.HandlerC24909b0;
@KeepForSdk
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/internal/ListenerHolder.class */
public final class ListenerHolder<L> {

    /* renamed from: a */
    public final HandlerC24909b0 f5763a;

    /* renamed from: b */
    public volatile L f5764b;

    /* renamed from: c */
    public volatile ListenerKey<L> f5765c;

    @KeepForSdk
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/internal/ListenerHolder$ListenerKey.class */
    public static final class ListenerKey<L> {

        /* renamed from: a */
        public final L f5766a;

        /* renamed from: b */
        public final String f5767b;

        @KeepForSdk
        public ListenerKey(L l, String str) {
            this.f5766a = l;
            this.f5767b = str;
        }

        @KeepForSdk
        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ListenerKey)) {
                return false;
            }
            ListenerKey listenerKey = (ListenerKey) obj;
            return this.f5766a == listenerKey.f5766a && this.f5767b.equals(listenerKey.f5767b);
        }

        @KeepForSdk
        public int hashCode() {
            return this.f5767b.hashCode() + (System.identityHashCode(this.f5766a) * 31);
        }
    }

    @KeepForSdk
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/internal/ListenerHolder$Notifier.class */
    public interface Notifier<L> {
        @KeepForSdk
        void notifyListener(@RecentlyNonNull L l);

        @KeepForSdk
        void onNotifyListenerFailed();
    }

    @KeepForSdk
    public ListenerHolder(Looper looper, L l, String str) {
        this.f5763a = new HandlerC24909b0(this, looper);
        Preconditions.m38897k(l, "Listener must not be null");
        this.f5764b = l;
        Preconditions.m38901g(str);
        this.f5765c = new ListenerKey<>(l, str);
    }

    @KeepForSdk
    /* renamed from: a */
    public void m39023a() {
        this.f5764b = null;
        this.f5765c = null;
    }

    @KeepForSdk
    /* renamed from: b */
    public void m39022b(@RecentlyNonNull Notifier<? super L> notifier) {
        Preconditions.m38897k(notifier, "Notifier must not be null");
        this.f5763a.sendMessage(this.f5763a.obtainMessage(1, notifier));
    }
}
