package com.google.android.gms.auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/AccountChangeEventsResponse.class */
public class AccountChangeEventsResponse extends AbstractSafeParcelable {
    public static final Parcelable.Creator<AccountChangeEventsResponse> CREATOR = new C11771d();
    private final int zze;
    private final List<AccountChangeEvent> zzl;

    public AccountChangeEventsResponse(int i, List<AccountChangeEvent> list) {
        this.zze = i;
        this.zzl = (List) C12045o.m19162a(list);
    }

    public AccountChangeEventsResponse(List<AccountChangeEvent> list) {
        this.zze = 1;
        this.zzl = (List) C12045o.m19162a(list);
    }

    public List<AccountChangeEvent> getEvents() {
        return this.zzl;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19112a(parcel, 1, this.zze);
        C12050a.m19102a(parcel, 2, (List) this.zzl, false);
        C12050a.m19095b(parcel, m19116a);
    }
}
