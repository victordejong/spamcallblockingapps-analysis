package com.google.android.gms.common.server.response;

import android.os.Parcel;
import com.google.android.gms.common.internal.b;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/response/FieldMappingDictionary.class */
public class FieldMappingDictionary extends AbstractSafeParcelable {
    public static final c CREATOR = new c();

    /* renamed from: a  reason: collision with root package name */
    final int f4066a;

    /* renamed from: b  reason: collision with root package name */
    final HashMap<String, Map<String, FastJsonResponse.Field<?, ?>>> f4067b;
    final String c;
    private final ArrayList<Entry> d = null;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/response/FieldMappingDictionary$Entry.class */
    public static class Entry extends AbstractSafeParcelable {
        public static final d CREATOR = new d();

        /* renamed from: a  reason: collision with root package name */
        final int f4068a;

        /* renamed from: b  reason: collision with root package name */
        final String f4069b;
        final ArrayList<FieldMapPair> c;

        /* JADX INFO: Access modifiers changed from: package-private */
        public Entry(int i, String str, ArrayList<FieldMapPair> arrayList) {
            this.f4068a = i;
            this.f4069b = str;
            this.c = arrayList;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Entry(String str, Map<String, FastJsonResponse.Field<?, ?>> map) {
            ArrayList<FieldMapPair> arrayList;
            this.f4068a = 1;
            this.f4069b = str;
            if (map == null) {
                arrayList = null;
            } else {
                arrayList = new ArrayList<>();
                for (String str2 : map.keySet()) {
                    arrayList.add(new FieldMapPair(str2, map.get(str2)));
                }
            }
            this.c = arrayList;
        }

        final HashMap<String, FastJsonResponse.Field<?, ?>> a() {
            HashMap<String, FastJsonResponse.Field<?, ?>> hashMap = new HashMap<>();
            int size = this.c.size();
            for (int i = 0; i < size; i++) {
                FieldMapPair fieldMapPair = this.c.get(i);
                hashMap.put(fieldMapPair.f4071b, fieldMapPair.c);
            }
            return hashMap;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            d.a(this, parcel);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/response/FieldMappingDictionary$FieldMapPair.class */
    public static class FieldMapPair extends AbstractSafeParcelable {
        public static final b CREATOR = new b();

        /* renamed from: a  reason: collision with root package name */
        final int f4070a;

        /* renamed from: b  reason: collision with root package name */
        final String f4071b;
        final FastJsonResponse.Field<?, ?> c;

        /* JADX INFO: Access modifiers changed from: package-private */
        public FieldMapPair(int i, String str, FastJsonResponse.Field<?, ?> field) {
            this.f4070a = i;
            this.f4071b = str;
            this.c = field;
        }

        FieldMapPair(String str, FastJsonResponse.Field<?, ?> field) {
            this.f4070a = 1;
            this.f4071b = str;
            this.c = field;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            b.a(this, parcel, i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FieldMappingDictionary(int i, ArrayList<Entry> arrayList, String str) {
        this.f4066a = i;
        HashMap<String, Map<String, FastJsonResponse.Field<?, ?>>> hashMap = new HashMap<>();
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            Entry entry = arrayList.get(i2);
            hashMap.put(entry.f4069b, entry.a());
        }
        this.f4067b = hashMap;
        this.c = (String) b.a(str);
        a();
    }

    private void a() {
        for (String str : this.f4067b.keySet()) {
            Map<String, FastJsonResponse.Field<?, ?>> map = this.f4067b.get(str);
            for (String str2 : map.keySet()) {
                map.get(str2).j = this;
            }
        }
    }

    public final Map<String, FastJsonResponse.Field<?, ?>> a(String str) {
        return this.f4067b.get(str);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        for (String str : this.f4067b.keySet()) {
            sb.append(str).append(":\n");
            Map<String, FastJsonResponse.Field<?, ?>> map = this.f4067b.get(str);
            for (String str2 : map.keySet()) {
                sb.append("  ").append(str2).append(": ");
                sb.append(map.get(str2));
            }
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        c.a(this, parcel);
    }
}
