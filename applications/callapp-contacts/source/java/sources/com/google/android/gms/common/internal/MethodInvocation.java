package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/MethodInvocation.class */
public class MethodInvocation extends AbstractSafeParcelable {
    public static final Parcelable.Creator<MethodInvocation> CREATOR = new C11982ah();
    private final int zaa;
    private final int zab;
    private final int zac;
    private final long zad;
    private final long zae;
    private final String zaf;
    private final String zag;
    private final int zah;

    public MethodInvocation(int i, int i2, int i3, long j, long j2, String str, String str2, int i4) {
        this.zaa = i;
        this.zab = i2;
        this.zac = i3;
        this.zad = j;
        this.zae = j2;
        this.zaf = str;
        this.zag = str2;
        this.zah = i4;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19112a(parcel, 1, this.zaa);
        C12050a.m19112a(parcel, 2, this.zab);
        C12050a.m19112a(parcel, 3, this.zac);
        C12050a.m19111a(parcel, 4, this.zad);
        C12050a.m19111a(parcel, 5, this.zae);
        C12050a.m19104a(parcel, 6, this.zaf, false);
        C12050a.m19104a(parcel, 7, this.zag, false);
        C12050a.m19112a(parcel, 8, this.zah);
        C12050a.m19095b(parcel, m19116a);
    }
}
