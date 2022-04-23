package com.google.android.gms.common.api.internal;

import android.os.Looper;
import com.google.android.gms.common.internal.o;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/i.class */
public final class i<L> {

    /* renamed from: a  reason: collision with root package name */
    volatile L f22739a;

    /* renamed from: b  reason: collision with root package name */
    public volatile a<L> f22740b;

    /* renamed from: c  reason: collision with root package name */
    private final al f22741c;

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/i$a.class */
    public static final class a<L> {

        /* renamed from: a  reason: collision with root package name */
        private final L f22742a;

        /* renamed from: b  reason: collision with root package name */
        private final String f22743b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(L l, String str) {
            this.f22742a = l;
            this.f22743b = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.f22742a == aVar.f22742a && this.f22743b.equals(aVar.f22743b);
        }

        public final int hashCode() {
            return (System.identityHashCode(this.f22742a) * 31) + this.f22743b.hashCode();
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/i$b.class */
    public interface b<L> {
        void a();

        void a(L l);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(Looper looper, L l, String str) {
        this.f22741c = new al(this, looper);
        this.f22739a = (L) o.a(l, "Listener must not be null");
        this.f22740b = new a<>(l, o.a(str));
    }

    public final void a() {
        this.f22739a = null;
        this.f22740b = null;
    }

    public final void a(b<? super L> bVar) {
        o.a(bVar, "Notifier must not be null");
        this.f22741c.sendMessage(this.f22741c.obtainMessage(1, bVar));
    }
}
