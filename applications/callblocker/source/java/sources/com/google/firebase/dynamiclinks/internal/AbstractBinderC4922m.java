package com.google.firebase.dynamiclinks.internal;

import android.os.Parcel;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.p139f.BinderC3730a;
import com.google.android.gms.internal.p139f.C3733d;
/* renamed from: com.google.firebase.dynamiclinks.internal.m */
/* loaded from: classes-dex2jar.jar:com/google/firebase/dynamiclinks/internal/m.class */
public abstract class AbstractBinderC4922m extends BinderC3730a implements AbstractC4919j {
    public AbstractBinderC4922m() {
        super("com.google.firebase.dynamiclinks.internal.IDynamicLinksCallbacks");
    }

    @Override // com.google.android.gms.internal.p139f.BinderC3730a
    /* renamed from: a */
    protected final boolean mo2026a(int i, Parcel parcel, Parcel parcel2, int i2) {
        boolean z;
        switch (i) {
            case 1:
                mo2029a((Status) C3733d.m6507a(parcel, Status.CREATOR), (C4910a) C3733d.m6507a(parcel, C4910a.CREATOR));
                z = true;
                break;
            case 2:
                mo2028a((Status) C3733d.m6507a(parcel, Status.CREATOR), (C4923n) C3733d.m6507a(parcel, C4923n.CREATOR));
                z = true;
                break;
            default:
                z = false;
                break;
        }
        return z;
    }
}
