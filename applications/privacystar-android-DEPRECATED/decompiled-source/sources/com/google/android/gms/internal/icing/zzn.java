package com.google.android.gms.internal.icing;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
@SafeParcelable.Class(creator = "FeatureCreator")
@SafeParcelable.Reserved({1000})
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzn.class */
public final class zzn extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzn> CREATOR = new zzo();
    @SafeParcelable.Field(m344id = 1)

    /* renamed from: id */
    private final int f163id;
    @SafeParcelable.Field(m344id = 2)
    private final Bundle zzu;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zzn(@SafeParcelable.Param(m343id = 1) int i, @SafeParcelable.Param(m343id = 2) Bundle bundle) {
        this.f163id = i;
        this.zzu = bundle;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0066  */
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
            boolean r0 = r0 instanceof com.google.android.gms.internal.icing.zzn
            if (r0 != 0) goto L_0x0010
            r0 = 0
            return r0
        L_0x0010:
            r0 = r5
            com.google.android.gms.internal.icing.zzn r0 = (com.google.android.gms.internal.icing.zzn) r0
            r5 = r0
            r0 = r4
            int r0 = r0.f163id
            r1 = r5
            int r1 = r1.f163id
            if (r0 == r1) goto L_0x0022
            r0 = 0
            return r0
        L_0x0022:
            r0 = r4
            android.os.Bundle r0 = r0.zzu
            if (r0 != 0) goto L_0x0034
            r0 = r5
            android.os.Bundle r0 = r0.zzu
            if (r0 != 0) goto L_0x0032
            r0 = 1
            return r0
        L_0x0032:
            r0 = 0
            return r0
        L_0x0034:
            r0 = r5
            android.os.Bundle r0 = r0.zzu
            if (r0 != 0) goto L_0x003d
            r0 = 0
            return r0
        L_0x003d:
            r0 = r4
            android.os.Bundle r0 = r0.zzu
            int r0 = r0.size()
            r1 = r5
            android.os.Bundle r1 = r1.zzu
            int r1 = r1.size()
            if (r0 == r1) goto L_0x0050
            r0 = 0
            return r0
        L_0x0050:
            r0 = r4
            android.os.Bundle r0 = r0.zzu
            java.util.Set r0 = r0.keySet()
            java.util.Iterator r0 = r0.iterator()
            r6 = r0
        L_0x005d:
            r0 = r6
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x0093
            r0 = r6
            java.lang.Object r0 = r0.next()
            java.lang.String r0 = (java.lang.String) r0
            r7 = r0
            r0 = r5
            android.os.Bundle r0 = r0.zzu
            r1 = r7
            boolean r0 = r0.containsKey(r1)
            if (r0 == 0) goto L_0x0091
            r0 = r4
            android.os.Bundle r0 = r0.zzu
            r1 = r7
            java.lang.String r0 = r0.getString(r1)
            r1 = r5
            android.os.Bundle r1 = r1.zzu
            r2 = r7
            java.lang.String r1 = r1.getString(r2)
            boolean r0 = com.google.android.gms.common.internal.Objects.equal(r0, r1)
            if (r0 != 0) goto L_0x005d
        L_0x0091:
            r0 = 0
            return r0
        L_0x0093:
            r0 = 1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.icing.zzn.equals(java.lang.Object):boolean");
    }

    public final int hashCode() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(Integer.valueOf(this.f163id));
        if (this.zzu != null) {
            for (String str : this.zzu.keySet()) {
                arrayList.add(str);
                arrayList.add(this.zzu.getString(str));
            }
        }
        return Objects.hashCode(arrayList.toArray(new Object[0]));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f163id);
        SafeParcelWriter.writeBundle(parcel, 2, this.zzu, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
