package com.google.android.gms.common.api.internal;

import android.os.DeadObjectException;
import android.util.Log;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.internal.d;
import com.google.android.gms.common.api.internal.d.a;
import com.google.android.gms.common.api.m;
import com.google.android.gms.common.internal.o;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/bm.class */
public final class bm<A extends d.a<? extends m, a.b>> extends bq {

    /* renamed from: a  reason: collision with root package name */
    protected final A f22693a;

    public bm(int i, A a2) {
        super(i);
        this.f22693a = (A) ((d.a) o.a(a2, "Null methods are not runnable."));
    }

    @Override // com.google.android.gms.common.api.internal.bq
    public final void a(Status status) {
        try {
            this.f22693a.b(status);
        } catch (IllegalStateException e) {
            Log.w("ApiCallRunner", "Exception reporting failure", e);
        }
    }

    @Override // com.google.android.gms.common.api.internal.bq
    public final void a(v vVar, boolean z) {
        A a2 = this.f22693a;
        vVar.f22769a.put(a2, Boolean.valueOf(z));
        a2.a(new bz(vVar, a2));
    }

    @Override // com.google.android.gms.common.api.internal.bq
    public final void a(Exception exc) {
        String simpleName = exc.getClass().getSimpleName();
        String localizedMessage = exc.getLocalizedMessage();
        StringBuilder sb = new StringBuilder(String.valueOf(simpleName).length() + 2 + String.valueOf(localizedMessage).length());
        sb.append(simpleName);
        sb.append(": ");
        sb.append(localizedMessage);
        try {
            this.f22693a.b(new Status(10, sb.toString()));
        } catch (IllegalStateException e) {
            Log.w("ApiCallRunner", "Exception reporting failure", e);
        }
    }

    @Override // com.google.android.gms.common.api.internal.bq
    public final void c(af<?> afVar) throws DeadObjectException {
        try {
            this.f22693a.b(afVar.f22634a);
        } catch (RuntimeException e) {
            a(e);
        }
    }
}
