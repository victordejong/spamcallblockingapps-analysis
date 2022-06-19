package com.google.android.gms.common.api.internal;

import android.os.DeadObjectException;
import android.util.Log;
import com.google.android.gms.common.api.AbstractC11925m;
import com.google.android.gms.common.api.C11808a;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.C11892d;
import com.google.android.gms.common.api.internal.C11892d.AbstractC11893a;
import com.google.android.gms.common.internal.C12045o;
/* renamed from: com.google.android.gms.common.api.internal.bm */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/bm.class */
public final class C11872bm<A extends C11892d.AbstractC11893a<? extends AbstractC11925m, C11808a.AbstractC11810b>> extends AbstractC11876bq {

    /* renamed from: a */
    protected final A f39299a;

    public C11872bm(int i, A a) {
        super(i);
        this.f39299a = (A) C12045o.m19161a(a, "Null methods are not runnable.");
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC11876bq
    /* renamed from: a */
    public final void mo19382a(Status status) {
        try {
            this.f39299a.mo11400b(status);
        } catch (IllegalStateException e) {
            Log.w("ApiCallRunner", "Exception reporting failure", e);
        }
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC11876bq
    /* renamed from: a */
    public final void mo19381a(C11916v c11916v, boolean z) {
        A a = this.f39299a;
        c11916v.f39406a.put(a, Boolean.valueOf(z));
        a.mo19292a(new C11885bz(c11916v, a));
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC11876bq
    /* renamed from: a */
    public final void mo19380a(Exception exc) {
        String simpleName = exc.getClass().getSimpleName();
        String localizedMessage = exc.getLocalizedMessage();
        StringBuilder sb = new StringBuilder(String.valueOf(simpleName).length() + 2 + String.valueOf(localizedMessage).length());
        sb.append(simpleName);
        sb.append(": ");
        sb.append(localizedMessage);
        try {
            this.f39299a.mo11400b(new Status(10, sb.toString()));
        } catch (IllegalStateException e) {
            Log.w("ApiCallRunner", "Exception reporting failure", e);
        }
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC11876bq
    /* renamed from: c */
    public final void mo19379c(C11838af<?> c11838af) throws DeadObjectException {
        try {
            this.f39299a.m19359b(c11838af.f39219a);
        } catch (RuntimeException e) {
            mo19380a(e);
        }
    }
}
