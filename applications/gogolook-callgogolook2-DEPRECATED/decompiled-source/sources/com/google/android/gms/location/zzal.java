package com.google.android.gms.location;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.Collections;
import java.util.List;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p280k.C8848u;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/zzal.class */
public final class zzal extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzal> CREATOR = new C8848u();

    /* renamed from: a */
    public final List<String> f6971a;

    /* renamed from: b */
    public final PendingIntent f6972b;

    /* renamed from: c */
    public final String f6973c;

    public zzal(@Nullable List<String> list, @Nullable PendingIntent pendingIntent, String str) {
        this.f6971a = list == null ? Collections.emptyList() : Collections.unmodifiableList(list);
        this.f6972b = pendingIntent;
        this.f6973c = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21203b(parcel, 1, this.f6971a, false);
        C7031b.m21220a(parcel, 2, (Parcelable) this.f6972b, i, false);
        C7031b.m21215a(parcel, 3, this.f6973c, false);
        C7031b.m21229a(parcel, a);
    }
}
