package com.google.android.gms.common.api.internal;

import android.util.Log;
import com.google.android.gms.common.api.AbstractC6007i;
import com.google.android.gms.common.api.C5984a;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.AbstractC6019d;
import com.google.android.gms.common.internal.C6155o;
/* renamed from: com.google.android.gms.common.api.internal.y0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/y0.class */
public final class C6074y0<A extends AbstractC6019d<? extends AbstractC6007i, C5984a.AbstractC5986b>> extends AbstractC6014b1 {

    /* renamed from: b */
    protected final A f19368b;

    public C6074y0(int i, A a) {
        super(i);
        this.f19368b = (A) C6155o.m17017k(a, "Null methods are not runnable.");
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC6014b1
    /* renamed from: a */
    public final void mo17255a(Status status) {
        try {
            this.f19368b.m17382p(status);
        } catch (IllegalStateException e) {
            Log.w("ApiCallRunner", "Exception reporting failure", e);
        }
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC6014b1
    /* renamed from: b */
    public final void mo17254b(Exception exc) {
        String simpleName = exc.getClass().getSimpleName();
        String localizedMessage = exc.getLocalizedMessage();
        StringBuilder sb = new StringBuilder(simpleName.length() + 2 + String.valueOf(localizedMessage).length());
        sb.append(simpleName);
        sb.append(": ");
        sb.append(localizedMessage);
        try {
            this.f19368b.m17382p(new Status(10, sb.toString()));
        } catch (IllegalStateException e) {
            Log.w("ApiCallRunner", "Exception reporting failure", e);
        }
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC6014b1
    /* renamed from: c */
    public final void mo17253c(C6061s c6061s, boolean z) {
        c6061s.m17283a(this.f19368b, z);
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC6014b1
    /* renamed from: d */
    public final void mo17252d(C6017c0<?> c6017c0) {
        try {
            this.f19368b.m17384n(c6017c0.m17396s());
        } catch (RuntimeException e) {
            mo17254b(e);
        }
    }
}
