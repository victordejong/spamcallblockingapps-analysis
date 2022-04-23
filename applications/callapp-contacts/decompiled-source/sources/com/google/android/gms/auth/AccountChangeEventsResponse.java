package com.google.android.gms.auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/AccountChangeEventsResponse.class */
public class AccountChangeEventsResponse extends AbstractSafeParcelable {
    public static final Parcelable.Creator<AccountChangeEventsResponse> CREATOR = new d();
    private final int zze;
    private final List<AccountChangeEvent> zzl;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AccountChangeEventsResponse(int i, List<AccountChangeEvent> list) {
        this.zze = i;
        this.zzl = (List) o.a(list);
    }

    public AccountChangeEventsResponse(List<AccountChangeEvent> list) {
        this.zze = 1;
        this.zzl = (List) o.a(list);
    }

    public List<AccountChangeEvent> getEvents() {
        return this.zzl;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 1, this.zze);
        a.a(parcel, 2, (List) this.zzl, false);
        a.b(parcel, a2);
    }
}
