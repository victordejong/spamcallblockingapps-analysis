package com.google.android.gms.internal.appset;

import android.os.Parcel;
import com.google.android.gms.appset.zzc;
import com.google.android.gms.common.api.Status;
/* renamed from: com.google.android.gms.internal.appset.e */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/appset/e.class */
public abstract class AbstractBinderC7243e extends BinderC7240b implements AbstractC7244f {
    public AbstractBinderC7243e() {
        super("com.google.android.gms.appset.internal.IAppSetIdCallback");
    }

    @Override // com.google.android.gms.internal.appset.BinderC7240b
    /* renamed from: c0 */
    protected final boolean mo7843c0(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            mo7832K3((Status) C7241c.m7849a(parcel, Status.CREATOR), (zzc) C7241c.m7849a(parcel, zzc.CREATOR));
            return true;
        }
        return false;
    }
}
