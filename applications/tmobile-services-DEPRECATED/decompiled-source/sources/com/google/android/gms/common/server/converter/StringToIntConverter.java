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
    public static final Parcelable.Creator<StringToIntConverter> CREATOR = new zad();
    @SafeParcelable.VersionField

    /* renamed from: f */
    private final int f7583f;

    /* renamed from: g */
    private final HashMap<String, Integer> f7584g;

    /* renamed from: h */
    private final SparseArray<String> f7585h;

    @SafeParcelable.Class
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/converter/StringToIntConverter$zaa.class */
    public static final class zaa extends AbstractSafeParcelable {
        public static final Parcelable.Creator<zaa> CREATOR = new zac();
        @SafeParcelable.VersionField

        /* renamed from: f */
        private final int f7586f;
        @SafeParcelable.Field

        /* renamed from: g */
        final String f7587g;
        @SafeParcelable.Field

        /* renamed from: h */
        final int f7588h;

        /* JADX INFO: Access modifiers changed from: package-private */
        @SafeParcelable.Constructor
        public zaa(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) int i2) {
            this.f7586f = i;
            this.f7587g = str;
            this.f7588h = i2;
        }

        zaa(String str, int i) {
            this.f7586f = 1;
            this.f7587g = str;
            this.f7588h = i;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            int a = SafeParcelWriter.m14463a(parcel);
            SafeParcelWriter.m14453k(parcel, 1, this.f7586f);
            SafeParcelWriter.m14447q(parcel, 2, this.f7587g, false);
            SafeParcelWriter.m14453k(parcel, 3, this.f7588h);
            SafeParcelWriter.m14462b(parcel, a);
        }
    }

    @KeepForSdk
    public StringToIntConverter() {
        this.f7583f = 1;
        this.f7584g = new HashMap<>();
        this.f7585h = new SparseArray<>();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public StringToIntConverter(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) ArrayList<zaa> arrayList) {
        this.f7583f = i;
        this.f7584g = new HashMap<>();
        this.f7585h = new SparseArray<>();
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            zaa zaaVar = arrayList.get(i2);
            i2++;
            zaa zaaVar2 = zaaVar;
            m14396B(zaaVar2.f7587g, zaaVar2.f7588h);
        }
    }

    @KeepForSdk
    /* renamed from: B */
    public final StringToIntConverter m14396B(String str, int i) {
        this.f7584g.put(str, Integer.valueOf(i));
        this.f7585h.put(i, str);
        return this;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse.FieldConverter
    /* renamed from: e */
    public final /* synthetic */ String mo14383e(Integer num) {
        String str = this.f7585h.get(num.intValue());
        return (str != null || !this.f7584g.containsKey("gms_unknown")) ? str : "gms_unknown";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m14463a(parcel);
        SafeParcelWriter.m14453k(parcel, 1, this.f7583f);
        ArrayList arrayList = new ArrayList();
        for (String str : this.f7584g.keySet()) {
            arrayList.add(new zaa(str, this.f7584g.get(str).intValue()));
        }
        SafeParcelWriter.m14443u(parcel, 2, arrayList, false);
        SafeParcelWriter.m14462b(parcel, a);
    }
}
