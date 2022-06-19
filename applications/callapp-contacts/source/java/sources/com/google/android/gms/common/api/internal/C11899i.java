package com.google.android.gms.common.api.internal;

import android.os.Looper;
import com.google.android.gms.common.internal.C12045o;
/* renamed from: com.google.android.gms.common.api.internal.i */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/i.class */
public final class C11899i<L> {

    /* renamed from: a */
    volatile L f39365a;

    /* renamed from: b */
    public volatile C11900a<L> f39366b;

    /* renamed from: c */
    private final HandlerC11844al f39367c;

    /* renamed from: com.google.android.gms.common.api.internal.i$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/i$a.class */
    public static final class C11900a<L> {

        /* renamed from: a */
        private final L f39368a;

        /* renamed from: b */
        private final String f39369b;

        public C11900a(L l, String str) {
            this.f39368a = l;
            this.f39369b = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C11900a)) {
                return false;
            }
            C11900a c11900a = (C11900a) obj;
            return this.f39368a == c11900a.f39368a && this.f39369b.equals(c11900a.f39369b);
        }

        public final int hashCode() {
            return (System.identityHashCode(this.f39368a) * 31) + this.f39369b.hashCode();
        }
    }

    /* renamed from: com.google.android.gms.common.api.internal.i$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/i$b.class */
    public interface AbstractC11901b<L> {
        /* renamed from: a */
        void mo11373a();

        /* renamed from: a */
        void mo11372a(L l);
    }

    public C11899i(Looper looper, L l, String str) {
        this.f39367c = new HandlerC11844al(this, looper);
        this.f39365a = (L) C12045o.m19161a(l, "Listener must not be null");
        this.f39366b = new C11900a<>(l, C12045o.m19160a(str));
    }

    /* renamed from: a */
    public final void m19324a() {
        this.f39365a = null;
        this.f39366b = null;
    }

    /* renamed from: a */
    public final void m19323a(AbstractC11901b<? super L> abstractC11901b) {
        C12045o.m19161a(abstractC11901b, "Notifier must not be null");
        this.f39367c.sendMessage(this.f39367c.obtainMessage(1, abstractC11901b));
    }
}
