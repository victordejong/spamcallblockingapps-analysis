package com.google.android.gms.common.server.converter;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;
import java.util.ArrayList;
import java.util.HashMap;
@KeepForSdk
@SafeParcelable.Class
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/server/converter/StringToIntConverter.class */
public final class StringToIntConverter extends AbstractSafeParcelable implements FastJsonResponse.FieldConverter<String, Integer> {
    @RecentlyNonNull
    public static final Parcelable.Creator<StringToIntConverter> CREATOR = new zad();
    @SafeParcelable.VersionField

    /* renamed from: a */
    public final int f6077a;

    /* renamed from: b */
    public final HashMap<String, Integer> f6078b;

    /* renamed from: c */
    public final SparseArray<String> f6079c;

    @KeepForSdk
    public StringToIntConverter() {
        this.f6077a = 1;
        this.f6078b = new HashMap<>();
        this.f6079c = new SparseArray<>();
    }

    @SafeParcelable.Constructor
    public StringToIntConverter(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) ArrayList<zac> arrayList) {
        this.f6077a = i;
        this.f6078b = new HashMap<>();
        this.f6079c = new SparseArray<>();
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            zac zacVar = arrayList.get(i2);
            String str = zacVar.f6083b;
            int i3 = zacVar.f6084c;
            this.f6078b.put(str, Integer.valueOf(i3));
            this.f6079c.put(i3, str);
        }
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse.FieldConverter
    @RecentlyNullable
    /* renamed from: M1 */
    public final /* bridge */ /* synthetic */ Integer mo38812M1(@RecentlyNonNull String str) {
        Integer num = this.f6078b.get(str);
        Integer num2 = num;
        if (num == null) {
            num2 = this.f6078b.get("gms_unknown");
        }
        return num2;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse.FieldConverter
    @RecentlyNonNull
    /* renamed from: O1 */
    public final /* bridge */ /* synthetic */ String mo38811O1(@RecentlyNonNull Integer num) {
        String str = this.f6079c.get(num.intValue());
        return (str != null || !this.f6078b.containsKey("gms_unknown")) ? str : "gms_unknown";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@RecentlyNonNull Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        int i2 = this.f6077a;
        parcel.writeInt(262145);
        parcel.writeInt(i2);
        ArrayList arrayList = new ArrayList();
        for (String str : this.f6078b.keySet()) {
            arrayList.add(new zac(str, this.f6078b.get(str).intValue()));
        }
        SafeParcelWriter.m38842u(parcel, 2, arrayList, false);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}
