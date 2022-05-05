package com.google.android.gms.internal.icing;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@ShowFirstParty
@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzk.class */
public final class zzk extends AbstractSafeParcelable {

    /* renamed from: k */
    private static final zzt f8130k;
    @SafeParcelable.Field

    /* renamed from: f */
    private final String f8131f;
    @SafeParcelable.Field

    /* renamed from: g */
    private final zzt f8132g;
    @SafeParcelable.Field

    /* renamed from: h */
    public final int f8133h;
    @SafeParcelable.Field

    /* renamed from: i */
    private final byte[] f8134i;

    /* renamed from: j */
    private static final int f8129j = Integer.parseInt("-1");
    public static final Parcelable.Creator<zzk> CREATOR = new zzn();

    static {
        zzs zzsVar = new zzs("SsbContext");
        zzsVar.m13470a(true);
        zzsVar.m13469b("blob");
        f8130k = zzsVar.m13468c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zzk(@SafeParcelable.Param(id = 1) String str, @SafeParcelable.Param(id = 3) zzt zztVar, @SafeParcelable.Param(id = 4) int i, @SafeParcelable.Param(id = 5) byte[] bArr) {
        String str2;
        boolean z = i == f8129j || zzq.m13471a(i) != null;
        StringBuilder sb = new StringBuilder(32);
        sb.append("Invalid section type ");
        sb.append(i);
        Preconditions.m14532b(z, sb.toString());
        this.f8131f = str;
        this.f8132g = zztVar;
        this.f8133h = i;
        this.f8134i = bArr;
        if (i == f8129j || zzq.m13471a(i) != null) {
            str2 = (this.f8131f == null || this.f8134i == null) ? null : "Both content and blobContent set";
        } else {
            int i2 = this.f8133h;
            StringBuilder sb2 = new StringBuilder(32);
            sb2.append("Invalid section type ");
            sb2.append(i2);
            str2 = sb2.toString();
        }
        if (str2 != null) {
            throw new IllegalArgumentException(str2);
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m14463a(parcel);
        SafeParcelWriter.m14447q(parcel, 1, this.f8131f, false);
        SafeParcelWriter.m14448p(parcel, 3, this.f8132g, i, false);
        SafeParcelWriter.m14453k(parcel, 4, this.f8133h);
        SafeParcelWriter.m14458f(parcel, 5, this.f8134i, false);
        SafeParcelWriter.m14462b(parcel, a);
    }
}
