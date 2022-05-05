package com.google.android.gms.internal.icing;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
@ShowFirstParty
@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzm.class */
public final class zzm extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzm> CREATOR = new zzp();
    @SafeParcelable.Field

    /* renamed from: f */
    private final int f8135f;
    @SafeParcelable.Field

    /* renamed from: g */
    private final Bundle f8136g;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zzm(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) Bundle bundle) {
        this.f8135f = i;
        this.f8136g = bundle;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0065  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean equals(java.lang.Object r5) {
        /*
            r4 = this;
            r0 = r4
            r1 = r5
            if (r0 != r1) goto L_0x0007
            r0 = 1
            return r0
        L_0x0007:
            r0 = r5
            boolean r0 = r0 instanceof com.google.android.gms.internal.icing.zzm
            if (r0 != 0) goto L_0x0010
            r0 = 0
            return r0
        L_0x0010:
            r0 = r5
            com.google.android.gms.internal.icing.zzm r0 = (com.google.android.gms.internal.icing.zzm) r0
            r5 = r0
            r0 = r4
            int r0 = r0.f8135f
            r1 = r5
            int r1 = r1.f8135f
            if (r0 == r1) goto L_0x0022
            r0 = 0
            return r0
        L_0x0022:
            r0 = r4
            android.os.Bundle r0 = r0.f8136g
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L_0x0036
            r0 = r5
            android.os.Bundle r0 = r0.f8136g
            if (r0 != 0) goto L_0x0034
            r0 = 1
            return r0
        L_0x0034:
            r0 = 0
            return r0
        L_0x0036:
            r0 = r5
            android.os.Bundle r0 = r0.f8136g
            if (r0 != 0) goto L_0x003f
            r0 = 0
            return r0
        L_0x003f:
            r0 = r6
            int r0 = r0.size()
            r1 = r5
            android.os.Bundle r1 = r1.f8136g
            int r1 = r1.size()
            if (r0 == r1) goto L_0x004f
            r0 = 0
            return r0
        L_0x004f:
            r0 = r4
            android.os.Bundle r0 = r0.f8136g
            java.util.Set r0 = r0.keySet()
            java.util.Iterator r0 = r0.iterator()
            r6 = r0
        L_0x005c:
            r0 = r6
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x0092
            r0 = r6
            java.lang.Object r0 = r0.next()
            java.lang.String r0 = (java.lang.String) r0
            r7 = r0
            r0 = r5
            android.os.Bundle r0 = r0.f8136g
            r1 = r7
            boolean r0 = r0.containsKey(r1)
            if (r0 == 0) goto L_0x0090
            r0 = r4
            android.os.Bundle r0 = r0.f8136g
            r1 = r7
            java.lang.String r0 = r0.getString(r1)
            r1 = r5
            android.os.Bundle r1 = r1.f8136g
            r2 = r7
            java.lang.String r1 = r1.getString(r2)
            boolean r0 = com.google.android.gms.common.internal.Objects.m14537a(r0, r1)
            if (r0 != 0) goto L_0x005c
        L_0x0090:
            r0 = 0
            return r0
        L_0x0092:
            r0 = 1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.icing.zzm.equals(java.lang.Object):boolean");
    }

    public final int hashCode() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(Integer.valueOf(this.f8135f));
        Bundle bundle = this.f8136g;
        if (bundle != null) {
            for (String str : bundle.keySet()) {
                arrayList.add(str);
                arrayList.add(this.f8136g.getString(str));
            }
        }
        return Objects.m14536b(arrayList.toArray(new Object[0]));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m14463a(parcel);
        SafeParcelWriter.m14453k(parcel, 1, this.f8135f);
        SafeParcelWriter.m14459e(parcel, 2, this.f8136g, false);
        SafeParcelWriter.m14462b(parcel, a);
    }
}
