package com.google.firebase.dynamiclinks.internal;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.internal.p139f.C3731b;
import com.google.android.gms.internal.p139f.C3733d;
/* renamed from: com.google.firebase.dynamiclinks.internal.o */
/* loaded from: classes-dex2jar.jar:com/google/firebase/dynamiclinks/internal/o.class */
public final class C4924o extends C3731b implements AbstractC4921l {
    public C4924o(IBinder iBinder) {
        super(iBinder, "com.google.firebase.dynamiclinks.internal.IDynamicLinksService");
    }

    @Override // com.google.firebase.dynamiclinks.internal.AbstractC4921l
    /* renamed from: a */
    public final void mo2022a(AbstractC4919j abstractC4919j, String str) {
        Parcel m6510a = m6510a();
        C3733d.m6508a(m6510a, abstractC4919j);
        m6510a.writeString(str);
        m6509a(1, m6510a);
    }
}
