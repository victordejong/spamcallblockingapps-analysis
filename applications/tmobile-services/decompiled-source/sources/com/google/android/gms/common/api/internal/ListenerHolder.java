package com.google.android.gms.common.api.internal;

import android.os.Looper;
import android.os.Message;
import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.base.zar;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/ListenerHolder.class */
public final class ListenerHolder<L> {

    /* renamed from: a */
    private volatile L f7109a;

    /* renamed from: b */
    private final ListenerKey<L> f7110b;

    @KeepForSdk
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/ListenerHolder$ListenerKey.class */
    public static final class ListenerKey<L> {

        /* renamed from: a */
        private final L f7111a;

        /* renamed from: b */
        private final String f7112b;

        @KeepForSdk
        ListenerKey(L l, String str) {
            this.f7111a = l;
            this.f7112b = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ListenerKey)) {
                return false;
            }
            ListenerKey listenerKey = (ListenerKey) obj;
            return this.f7111a == listenerKey.f7111a && this.f7112b.equals(listenerKey.f7112b);
        }

        public final int hashCode() {
            return (System.identityHashCode(this.f7111a) * 31) + this.f7112b.hashCode();
        }
    }

    @KeepForSdk
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/ListenerHolder$Notifier.class */
    public interface Notifier<L> {
        @KeepForSdk
        /* renamed from: a */
        void mo14875a(L l);

        @KeepForSdk
        /* renamed from: b */
        void mo14874b();
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/ListenerHolder$zaa.class */
    private final class zaa extends zar {
        public zaa(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            boolean z = true;
            if (message.what != 1) {
                z = false;
            }
            Preconditions.m14533a(z);
            ListenerHolder.this.m14876c((Notifier) message.obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @KeepForSdk
    public ListenerHolder(@NonNull Looper looper, @NonNull L l, @NonNull String str) {
        new zaa(looper);
        Preconditions.m14522l(l, "Listener must not be null");
        this.f7109a = l;
        Preconditions.m14527g(str);
        this.f7110b = new ListenerKey<>(l, str);
    }

    @KeepForSdk
    /* renamed from: a */
    public final void m14878a() {
        this.f7109a = null;
    }

    @NonNull
    @KeepForSdk
    /* renamed from: b */
    public final ListenerKey<L> m14877b() {
        return this.f7110b;
    }

    @KeepForSdk
    /* renamed from: c */
    final void m14876c(Notifier<? super L> notifier) {
        Object obj = (L) this.f7109a;
        if (obj == null) {
            notifier.mo14874b();
            return;
        }
        try {
            notifier.mo14875a(obj);
        } catch (RuntimeException e) {
            notifier.mo14874b();
            throw e;
        }
    }
}
