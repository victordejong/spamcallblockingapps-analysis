package com.google.android.gms.location;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Collections;
import java.util.List;
@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes-dex2jar.jar:com/google/android/gms/location/zzal.class */
public final class zzal extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzal> CREATOR = new zzam();
    @SafeParcelable.Field

    /* renamed from: a */
    public final List<String> f29763a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final PendingIntent f29764b;
    @SafeParcelable.Field

    /* renamed from: c */
    public final String f29765c;

    @SafeParcelable.Constructor
    public zzal(@SafeParcelable.Param(id = 1) List<String> list, @SafeParcelable.Param(id = 2) PendingIntent pendingIntent, @SafeParcelable.Param(id = 3) String str) {
        this.f29763a = list == null ? Collections.emptyList() : Collections.unmodifiableList(list);
        this.f29764b = pendingIntent;
        this.f29765c = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17209b(parcel, 1, this.f29763a, false);
        SafeParcelWriter.m17226a(parcel, 2, (Parcelable) this.f29764b, i, false);
        SafeParcelWriter.m17221a(parcel, 3, this.f29765c, false);
        SafeParcelWriter.m17234a(parcel, a);
    }
}
