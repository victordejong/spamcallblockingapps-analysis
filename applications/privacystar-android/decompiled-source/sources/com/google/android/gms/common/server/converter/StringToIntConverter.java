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
@SafeParcelable.Class(creator = "StringToIntConverterCreator")
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/converter/StringToIntConverter.class */
public final class StringToIntConverter extends AbstractSafeParcelable implements FastJsonResponse.FieldConverter<String, Integer> {
    public static final Parcelable.Creator<StringToIntConverter> CREATOR = new zac();
    @SafeParcelable.VersionField(m342id = 1)
    private final int zale;
    private final HashMap<String, Integer> zapl;
    private final SparseArray<String> zapm;
    @SafeParcelable.Field(getter = "getSerializedMap", m344id = 2)
    private final ArrayList<zaa> zapn;

    @SafeParcelable.Class(creator = "StringToIntConverterEntryCreator")
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/converter/StringToIntConverter$zaa.class */
    public static final class zaa extends AbstractSafeParcelable {
        public static final Parcelable.Creator<zaa> CREATOR = new zad();
        @SafeParcelable.VersionField(m342id = 1)
        private final int versionCode;
        @SafeParcelable.Field(m344id = 2)
        final String zapo;
        @SafeParcelable.Field(m344id = 3)
        final int zapp;

        /* JADX INFO: Access modifiers changed from: package-private */
        @SafeParcelable.Constructor
        public zaa(@SafeParcelable.Param(m343id = 1) int i, @SafeParcelable.Param(m343id = 2) String str, @SafeParcelable.Param(m343id = 3) int i2) {
            this.versionCode = i;
            this.zapo = str;
            this.zapp = i2;
        }

        zaa(String str, int i) {
            this.versionCode = 1;
            this.zapo = str;
            this.zapp = i;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
            SafeParcelWriter.writeInt(parcel, 1, this.versionCode);
            SafeParcelWriter.writeString(parcel, 2, this.zapo, false);
            SafeParcelWriter.writeInt(parcel, 3, this.zapp);
            SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
        }
    }

    @KeepForSdk
    public StringToIntConverter() {
        this.zale = 1;
        this.zapl = new HashMap<>();
        this.zapm = new SparseArray<>();
        this.zapn = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public StringToIntConverter(@SafeParcelable.Param(m343id = 1) int i, @SafeParcelable.Param(m343id = 2) ArrayList<zaa> arrayList) {
        this.zale = i;
        this.zapl = new HashMap<>();
        this.zapm = new SparseArray<>();
        this.zapn = null;
        ArrayList<zaa> arrayList2 = arrayList;
        int size = arrayList2.size();
        int i2 = 0;
        while (i2 < size) {
            zaa zaaVar = arrayList2.get(i2);
            i2++;
            zaa zaaVar2 = zaaVar;
            add(zaaVar2.zapo, zaaVar2.zapp);
        }
    }

    @KeepForSdk
    public final StringToIntConverter add(String str, int i) {
        this.zapl.put(str, Integer.valueOf(i));
        this.zapm.put(i, str);
        return this;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse.FieldConverter
    public final /* synthetic */ Integer convert(String str) {
        Integer num = this.zapl.get(str);
        Integer num2 = num;
        if (num == null) {
            num2 = this.zapl.get("gms_unknown");
        }
        return num2;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse.FieldConverter
    public final /* synthetic */ String convertBack(Integer num) {
        String str = this.zapm.get(num.intValue());
        return (str != null || !this.zapl.containsKey("gms_unknown")) ? str : "gms_unknown";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.zale);
        ArrayList arrayList = new ArrayList();
        for (String str : this.zapl.keySet()) {
            arrayList.add(new zaa(str, this.zapl.get(str).intValue()));
        }
        SafeParcelWriter.writeTypedList(parcel, 2, arrayList, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse.FieldConverter
    public final int zacj() {
        return 7;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse.FieldConverter
    public final int zack() {
        return 0;
    }
}
