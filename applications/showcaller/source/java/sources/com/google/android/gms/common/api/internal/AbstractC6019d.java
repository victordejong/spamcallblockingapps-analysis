package com.google.android.gms.common.api.internal;

import android.app.PendingIntent;
import android.os.DeadObjectException;
import android.os.RemoteException;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.api.AbstractC5999d;
import com.google.android.gms.common.api.AbstractC6007i;
import com.google.android.gms.common.api.C5984a;
import com.google.android.gms.common.api.C5984a.AbstractC5986b;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.C6155o;
/* renamed from: com.google.android.gms.common.api.internal.d */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/d.class */
public abstract class AbstractC6019d<R extends AbstractC6007i, A extends C5984a.AbstractC5986b> extends BasePendingResult<R> {

    /* renamed from: r */
    private final C5984a.C5987c<A> f19248r;

    /* renamed from: s */
    private final C5984a<?> f19249s;

    public AbstractC6019d(@RecentlyNonNull C5984a<?> c5984a, @RecentlyNonNull AbstractC5999d abstractC5999d) {
        super((AbstractC5999d) C6155o.m17017k(abstractC5999d, "GoogleApiClient must not be null"));
        C6155o.m17017k(c5984a, "Api must not be null");
        this.f19248r = (C5984a.C5987c<A>) c5984a.m17482b();
        this.f19249s = c5984a;
    }

    /* renamed from: o */
    private void m17383o(RemoteException remoteException) {
        m17382p(new Status(8, remoteException.getLocalizedMessage(), (PendingIntent) null));
    }

    /* renamed from: l */
    protected abstract void mo17386l(@RecentlyNonNull A a);

    /* renamed from: m */
    protected void m17385m(@RecentlyNonNull R r) {
    }

    /* renamed from: n */
    public final void m17384n(@RecentlyNonNull A a) {
        try {
            mo17386l(a);
        } catch (DeadObjectException e) {
            m17383o(e);
            throw e;
        } catch (RemoteException e2) {
            m17383o(e2);
        }
    }

    /* renamed from: p */
    public final void m17382p(@RecentlyNonNull Status status) {
        C6155o.m17026b(!status.m17486p0(), "Failed result must not be success");
        R mo17240c = mo17240c(status);
        m17448f(mo17240c);
        m17385m(mo17240c);
    }
}
