package com.google.android.gms.common.server.converter;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;
import java.util.ArrayList;
import java.util.HashMap;
@KeepForSdk
@SafeParcelable.Class
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/converter/StringToIntConverter.class */
public final class StringToIntConverter extends AbstractSafeParcelable implements FastJsonResponse.FieldConverter<String, Integer> {
    public static final Parcelable.Creator<StringToIntConverter> CREATOR = new zac();
    @SafeParcelable.VersionField

    /* renamed from: a */
    public final int f23504a;

    /* renamed from: b */
    public final HashMap<String, Integer> f23505b;

    /* renamed from: c */
    public final SparseArray<String> f23506c;

    @SafeParcelable.Class
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/converter/StringToIntConverter$zaa.class */
    public static final class zaa extends AbstractSafeParcelable {
        public static final Parcelable.Creator<zaa> CREATOR = new zad();
        @SafeParcelable.VersionField

        /* renamed from: a */
        public final int f23507a;
        @SafeParcelable.Field

        /* renamed from: b */
        public final String f23508b;
        @SafeParcelable.Field

        /* renamed from: c */
        public final int f23509c;

        @SafeParcelable.Constructor
        public zaa(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) int i2) {
            this.f23507a = i;
            this.f23508b = str;
            this.f23509c = i2;
        }

        public zaa(String str, int i) {
            this.f23507a = 1;
            this.f23508b = str;
            this.f23509c = i;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            int a = SafeParcelWriter.m17235a(parcel);
            SafeParcelWriter.m17231a(parcel, 1, this.f23507a);
            SafeParcelWriter.m17221a(parcel, 2, this.f23508b, false);
            SafeParcelWriter.m17231a(parcel, 3, this.f23509c);
            SafeParcelWriter.m17234a(parcel, a);
        }
    }

    @KeepForSdk
    public StringToIntConverter() {
        this.f23504a = 1;
        this.f23505b = new HashMap<>();
        this.f23506c = new SparseArray<>();
    }

    @SafeParcelable.Constructor
    public StringToIntConverter(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) ArrayList<zaa> arrayList) {
        this.f23504a = i;
        this.f23505b = new HashMap<>();
        this.f23506c = new SparseArray<>();
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            zaa zaaVar = arrayList.get(i2);
            i2++;
            zaa zaaVar2 = zaaVar;
            m17153a(zaaVar2.f23508b, zaaVar2.f23509c);
        }
    }

    @KeepForSdk
    /* renamed from: a */
    public final StringToIntConverter m17153a(String str, int i) {
        this.f23505b.put(str, Integer.valueOf(i));
        this.f23506c.put(i, str);
        return this;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse.FieldConverter
    /* renamed from: a */
    public final /* synthetic */ String mo17140a(Integer num) {
        String str = this.f23506c.get(num.intValue());
        return (str != null || !this.f23505b.containsKey("gms_unknown")) ? str : "gms_unknown";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17231a(parcel, 1, this.f23504a);
        ArrayList arrayList = new ArrayList();
        for (String str : this.f23505b.keySet()) {
            arrayList.add(new zaa(str, this.f23505b.get(str).intValue()));
        }
        SafeParcelWriter.m17207c(parcel, 2, arrayList, false);
        SafeParcelWriter.m17234a(parcel, a);
    }
}
