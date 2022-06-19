package com.google.android.gms.location;

import android.os.RemoteException;
import com.google.android.gms.common.api.internal.C11899i;
import com.google.android.gms.internal.location.AbstractC13331f;
import com.google.android.gms.internal.location.C13341p;
import com.google.android.gms.tasks.C14186i;
/* renamed from: com.google.android.gms.location.h */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/h.class */
public final class C13758h extends AbstractC13763m {

    /* renamed from: a */
    final /* synthetic */ C11899i f51107a;

    /* renamed from: b */
    final /* synthetic */ C13752b f51108b;

    public C13758h(C13752b c13752b, C11899i c11899i) {
        this.f51108b = c13752b;
        this.f51107a = c11899i;
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC11909p
    /* renamed from: a */
    public final /* synthetic */ void mo12270a(C13341p c13341p, C14186i<Boolean> c14186i) throws RemoteException {
        C13341p c13341p2 = c13341p;
        C14186i<Boolean> c14186i2 = c14186i;
        if (this.f51112c) {
            AbstractC13331f binderC13759i = new BinderC13759i(this.f51108b, c14186i2);
            try {
                C11899i.C11900a<L> c11900a = this.f51107a.f39366b;
                if (c11900a == 0) {
                    return;
                }
                c13341p2.m13327a(c11900a, binderC13759i);
            } catch (RuntimeException e) {
                c14186i2.m11470b(e);
            }
        }
    }
}
