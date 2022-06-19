package com.google.android.gms.common.api.internal;

import android.os.Looper;
import android.util.Log;
import com.google.android.gms.common.api.AbstractC11826g;
import com.google.android.gms.common.api.AbstractC11921j;
import com.google.android.gms.common.api.AbstractC11924l;
import com.google.android.gms.common.api.AbstractC11925m;
import com.google.android.gms.common.api.AbstractC11926n;
import com.google.android.gms.common.api.AbstractC11927o;
import com.google.android.gms.common.api.AbstractC11928p;
import com.google.android.gms.common.api.AbstractC11929q;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.C12045o;
import java.lang.ref.WeakReference;
/* renamed from: com.google.android.gms.common.api.internal.bi */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/bi.class */
public final class C11868bi<R extends AbstractC11925m> extends AbstractC11929q<R> implements AbstractC11926n<R> {

    /* renamed from: g */
    final WeakReference<AbstractC11826g> f39291g;

    /* renamed from: h */
    final HandlerC11867bh f39292h;

    /* renamed from: a */
    AbstractC11928p<? super R, ? extends AbstractC11925m> f39285a = null;

    /* renamed from: b */
    C11868bi<? extends AbstractC11925m> f39286b = null;

    /* renamed from: c */
    volatile AbstractC11927o<? super R> f39287c = null;

    /* renamed from: d */
    AbstractC11921j<R> f39288d = null;

    /* renamed from: e */
    final Object f39289e = new Object();

    /* renamed from: f */
    Status f39290f = null;

    /* renamed from: i */
    boolean f39293i = false;

    public C11868bi(WeakReference<AbstractC11826g> weakReference) {
        C12045o.m19161a(weakReference, "GoogleApiClient reference must not be null");
        this.f39291g = weakReference;
        AbstractC11826g abstractC11826g = weakReference.get();
        this.f39292h = new HandlerC11867bh(this, abstractC11826g != null ? abstractC11826g.mo19403c() : Looper.getMainLooper());
    }

    /* renamed from: a */
    private final boolean m19390a() {
        return (this.f39287c == null || this.f39291g.get() == null) ? false : true;
    }

    /* renamed from: b */
    public static final void m19387b(AbstractC11925m abstractC11925m) {
        if (abstractC11925m instanceof AbstractC11924l) {
            try {
                ((AbstractC11924l) abstractC11925m).mo11351a();
            } catch (RuntimeException e) {
                String valueOf = String.valueOf(abstractC11925m);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 18);
                sb.append("Unable to release ");
                sb.append(valueOf);
                Log.w("TransformedResultImpl", sb.toString(), e);
            }
        }
    }

    /* renamed from: a */
    public final void m19389a(Status status) {
        synchronized (this.f39289e) {
            this.f39290f = status;
            m19388b(status);
        }
    }

    @Override // com.google.android.gms.common.api.AbstractC11926n
    /* renamed from: a */
    public final void mo19289a(R r) {
        synchronized (this.f39289e) {
            if (!r.getStatus().isSuccess()) {
                m19389a(r.getStatus());
                m19387b(r);
            } else if (this.f39285a != null) {
                C11856ax.m19398a().submit(new RunnableC11866bg(this, r));
            } else if (m19390a()) {
                C12045o.m19162a(this.f39287c);
            }
        }
    }

    /* renamed from: b */
    public final void m19388b(Status status) {
        synchronized (this.f39289e) {
            if (this.f39285a != null) {
                ((C11868bi) C12045o.m19162a(this.f39286b)).m19389a((Status) C12045o.m19161a(status, "onFailure must not return null"));
            } else if (m19390a()) {
                C12045o.m19162a(this.f39287c);
            }
        }
    }
}
