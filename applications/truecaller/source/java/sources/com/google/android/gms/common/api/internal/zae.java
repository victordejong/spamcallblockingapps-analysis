package com.google.android.gms.common.api.internal;

import android.os.DeadObjectException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl;
import com.google.android.gms.common.internal.Preconditions;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1577m.p1578a.p1642f.p1653e.p1654a.p1655a.C24956y0;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/internal/zae.class */
public final class zae<A extends BaseImplementation.ApiMethodImpl<? extends Result, Api.AnyClient>> extends zai {

    /* renamed from: b */
    public final A f5891b;

    public zae(int i, A a) {
        super(i);
        Preconditions.m38897k(a, "Null methods are not runnable.");
        this.f5891b = a;
    }

    @Override // com.google.android.gms.common.api.internal.zai
    /* renamed from: a */
    public final void mo4286a(Status status) {
        try {
            this.f5891b.setFailedResult(status);
        } catch (IllegalStateException e) {
        }
    }

    @Override // com.google.android.gms.common.api.internal.zai
    /* renamed from: b */
    public final void mo4285b(Exception exc) {
        String simpleName = exc.getClass().getSimpleName();
        String localizedMessage = exc.getLocalizedMessage();
        try {
            this.f5891b.setFailedResult(new Status(10, C22128a.m8610j(new StringBuilder(simpleName.length() + 2 + String.valueOf(localizedMessage).length()), simpleName, ": ", localizedMessage)));
        } catch (IllegalStateException e) {
        }
    }

    @Override // com.google.android.gms.common.api.internal.zai
    /* renamed from: c */
    public final void mo38939c(zaaa zaaaVar, boolean z) {
        A a = this.f5891b;
        zaaaVar.f5780a.put(a, Boolean.valueOf(z));
        a.addStatusListener(new C24956y0(zaaaVar, a));
    }

    @Override // com.google.android.gms.common.api.internal.zai
    /* renamed from: d */
    public final void mo4284d(zabl<?> zablVar) throws DeadObjectException {
        try {
            this.f5891b.run(zablVar.f5850b);
        } catch (RuntimeException e) {
            mo4285b(e);
        }
    }
}
