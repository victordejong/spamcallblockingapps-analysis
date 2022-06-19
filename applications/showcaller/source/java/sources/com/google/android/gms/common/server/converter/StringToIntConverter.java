package com.google.android.gms.common.server.converter;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
import com.google.android.gms.common.server.response.FastJsonResponse;
import java.util.ArrayList;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/converter/StringToIntConverter.class */
public final class StringToIntConverter extends AbstractSafeParcelable implements FastJsonResponse.AbstractC6211a<String, Integer> {
    @RecentlyNonNull
    public static final Parcelable.Creator<StringToIntConverter> CREATOR = new C6209b();

    /* renamed from: d */
    final int f19651d;

    /* renamed from: e */
    private final HashMap<String, Integer> f19652e;

    /* renamed from: f */
    private final SparseArray<String> f19653f;

    public StringToIntConverter() {
        this.f19651d = 1;
        this.f19652e = new HashMap<>();
        this.f19653f = new SparseArray<>();
    }

    public StringToIntConverter(int i, ArrayList<zac> arrayList) {
        this.f19651d = i;
        this.f19652e = new HashMap<>();
        this.f19653f = new SparseArray<>();
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            zac zacVar = arrayList.get(i2);
            m16883k0(zacVar.f19657e, zacVar.f19658f);
        }
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse.AbstractC6211a
    @RecentlyNonNull
    /* renamed from: D */
    public final /* bridge */ /* synthetic */ String mo16862D(@RecentlyNonNull Integer num) {
        String str = this.f19653f.get(num.intValue());
        return (str != null || !this.f19652e.containsKey("gms_unknown")) ? str : "gms_unknown";
    }

    @RecentlyNonNull
    /* renamed from: k0 */
    public StringToIntConverter m16883k0(@RecentlyNonNull String str, int i) {
        this.f19652e.put(str, Integer.valueOf(i));
        this.f19653f.put(i, str);
        return this;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@RecentlyNonNull Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16937k(parcel, 1, this.f19651d);
        ArrayList arrayList = new ArrayList();
        for (String str : this.f19652e.keySet()) {
            arrayList.add(new zac(str, this.f19652e.get(str).intValue()));
        }
        C6170a.m16926v(parcel, 2, arrayList, false);
        C6170a.m16946b(parcel, m16947a);
    }
}
