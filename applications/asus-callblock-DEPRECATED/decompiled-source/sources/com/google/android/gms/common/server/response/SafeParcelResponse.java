package com.google.android.gms.common.server.response;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.a.j;
import com.google.android.gms.common.internal.b;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.server.response.FastJsonResponse;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/response/SafeParcelResponse.class */
public class SafeParcelResponse extends FastSafeParcelableJsonResponse {
    public static final e CREATOR = new e();

    /* renamed from: a  reason: collision with root package name */
    final int f4072a;

    /* renamed from: b  reason: collision with root package name */
    final int f4073b = 2;
    final FieldMappingDictionary c;
    private final Parcel d;
    private final String e;
    private int f;
    private int g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SafeParcelResponse(int i, Parcel parcel, FieldMappingDictionary fieldMappingDictionary) {
        this.f4072a = i;
        this.d = (Parcel) b.a(parcel);
        this.c = fieldMappingDictionary;
        if (this.c == null) {
            this.e = null;
        } else {
            this.e = this.c.c;
        }
        this.f = 2;
    }

    private static HashMap<String, String> a(Bundle bundle) {
        HashMap<String, String> hashMap = new HashMap<>();
        for (String str : bundle.keySet()) {
            hashMap.put(str, bundle.getString(str));
        }
        return hashMap;
    }

    private static void a(StringBuilder sb, int i, Object obj) {
        switch (i) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                sb.append(obj);
                return;
            case 7:
                sb.append("\"").append(j.a(obj.toString())).append("\"");
                return;
            case 8:
                sb.append("\"").append(com.google.android.gms.common.a.b.a((byte[]) obj)).append("\"");
                return;
            case 9:
                sb.append("\"").append(com.google.android.gms.common.a.b.b((byte[]) obj));
                sb.append("\"");
                return;
            case 10:
                HashMap hashMap = (HashMap) obj;
                sb.append("{");
                boolean z = true;
                for (String str : hashMap.keySet()) {
                    if (!z) {
                        sb.append(",");
                    } else {
                        z = false;
                    }
                    String str2 = (String) hashMap.get(str);
                    sb.append("\"").append(str).append("\":");
                    if (str2 == null) {
                        sb.append("null");
                    } else {
                        sb.append("\"").append(str2).append("\"");
                    }
                }
                sb.append("}");
                return;
            case 11:
                throw new IllegalArgumentException("Method does not accept concrete type.");
            default:
                throw new IllegalArgumentException(new StringBuilder(26).append("Unknown type = ").append(i).toString());
        }
    }

    private void a(StringBuilder sb, FastJsonResponse.Field<?, ?> field, Parcel parcel, int i) {
        long[] createLongArray = null;
        float[] createFloatArray = null;
        double[] createDoubleArray = null;
        boolean[] createBooleanArray = null;
        BigInteger[] bigIntegerArr = null;
        if (field.d()) {
            sb.append("[");
            switch (field.c()) {
                case 0:
                    int[] o = a.o(parcel, i);
                    int length = o.length;
                    for (int i2 = 0; i2 < length; i2++) {
                        if (i2 != 0) {
                            sb.append(",");
                        }
                        sb.append(Integer.toString(o[i2]));
                    }
                    break;
                case 1:
                    int a2 = a.a(parcel, i);
                    int dataPosition = parcel.dataPosition();
                    if (a2 != 0) {
                        int readInt = parcel.readInt();
                        bigIntegerArr = new BigInteger[readInt];
                        for (int i3 = 0; i3 < readInt; i3++) {
                            bigIntegerArr[i3] = new BigInteger(parcel.createByteArray());
                        }
                        parcel.setDataPosition(a2 + dataPosition);
                    }
                    com.google.android.gms.common.a.a.a(sb, bigIntegerArr);
                    break;
                case 2:
                    int a3 = a.a(parcel, i);
                    int dataPosition2 = parcel.dataPosition();
                    if (a3 != 0) {
                        createLongArray = parcel.createLongArray();
                        parcel.setDataPosition(a3 + dataPosition2);
                    }
                    com.google.android.gms.common.a.a.a(sb, createLongArray);
                    break;
                case 3:
                    int a4 = a.a(parcel, i);
                    int dataPosition3 = parcel.dataPosition();
                    if (a4 != 0) {
                        createFloatArray = parcel.createFloatArray();
                        parcel.setDataPosition(a4 + dataPosition3);
                    }
                    com.google.android.gms.common.a.a.a(sb, createFloatArray);
                    break;
                case 4:
                    int a5 = a.a(parcel, i);
                    int dataPosition4 = parcel.dataPosition();
                    if (a5 != 0) {
                        createDoubleArray = parcel.createDoubleArray();
                        parcel.setDataPosition(a5 + dataPosition4);
                    }
                    com.google.android.gms.common.a.a.a(sb, createDoubleArray);
                    break;
                case 5:
                    com.google.android.gms.common.a.a.a(sb, a.p(parcel, i));
                    break;
                case 6:
                    int a6 = a.a(parcel, i);
                    int dataPosition5 = parcel.dataPosition();
                    if (a6 != 0) {
                        createBooleanArray = parcel.createBooleanArray();
                        parcel.setDataPosition(a6 + dataPosition5);
                    }
                    com.google.android.gms.common.a.a.a(sb, createBooleanArray);
                    break;
                case 7:
                    com.google.android.gms.common.a.a.a(sb, a.q(parcel, i));
                    break;
                case 8:
                case 9:
                case 10:
                    throw new UnsupportedOperationException("List of type BASE64, BASE64_URL_SAFE, or STRING_MAP is not supported");
                case 11:
                    Parcel[] s = a.s(parcel, i);
                    int length2 = s.length;
                    for (int i4 = 0; i4 < length2; i4++) {
                        if (i4 > 0) {
                            sb.append(",");
                        }
                        s[i4].setDataPosition(0);
                        a(sb, field.h(), s[i4]);
                    }
                    break;
                default:
                    throw new IllegalStateException("Unknown field type out.");
            }
            sb.append("]");
            return;
        }
        switch (field.c()) {
            case 0:
                sb.append(a.d(parcel, i));
                return;
            case 1:
                sb.append(a.g(parcel, i));
                return;
            case 2:
                sb.append(a.f(parcel, i));
                return;
            case 3:
                sb.append(a.h(parcel, i));
                return;
            case 4:
                sb.append(a.i(parcel, i));
                return;
            case 5:
                sb.append(a.j(parcel, i));
                return;
            case 6:
                sb.append(a.c(parcel, i));
                return;
            case 7:
                sb.append("\"").append(j.a(a.k(parcel, i))).append("\"");
                return;
            case 8:
                sb.append("\"").append(com.google.android.gms.common.a.b.a(a.n(parcel, i))).append("\"");
                return;
            case 9:
                sb.append("\"").append(com.google.android.gms.common.a.b.b(a.n(parcel, i)));
                sb.append("\"");
                return;
            case 10:
                Bundle m = a.m(parcel, i);
                Set<String> keySet = m.keySet();
                keySet.size();
                sb.append("{");
                boolean z = true;
                for (String str : keySet) {
                    if (!z) {
                        sb.append(",");
                    }
                    sb.append("\"").append(str).append("\"");
                    sb.append(":");
                    sb.append("\"").append(j.a(m.getString(str))).append("\"");
                    z = false;
                }
                sb.append("}");
                return;
            case 11:
                Parcel r = a.r(parcel, i);
                r.setDataPosition(0);
                a(sb, field.h(), r);
                return;
            default:
                throw new IllegalStateException("Unknown field type out");
        }
    }

    private static void a(StringBuilder sb, FastJsonResponse.Field<?, ?> field, Object obj) {
        if (field.b()) {
            ArrayList arrayList = (ArrayList) obj;
            sb.append("[");
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                if (i != 0) {
                    sb.append(",");
                }
                a(sb, field.a(), arrayList.get(i));
            }
            sb.append("]");
            return;
        }
        a(sb, field.a(), obj);
    }

    private void a(StringBuilder sb, Map<String, FastJsonResponse.Field<?, ?>> map, Parcel parcel) {
        HashMap hashMap = new HashMap();
        for (Map.Entry<String, FastJsonResponse.Field<?, ?>> entry : map.entrySet()) {
            hashMap.put(Integer.valueOf(entry.getValue().f()), entry);
        }
        sb.append('{');
        int a2 = a.a(parcel);
        boolean z = false;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            Map.Entry entry2 = (Map.Entry) hashMap.get(Integer.valueOf(65535 & readInt));
            if (entry2 != null) {
                if (z) {
                    sb.append(",");
                }
                String str = (String) entry2.getKey();
                FastJsonResponse.Field<?, ?> field = (FastJsonResponse.Field) entry2.getValue();
                sb.append("\"").append(str).append("\":");
                if (field.k != null) {
                    switch (field.c()) {
                        case 0:
                            a(sb, field, a(field, Integer.valueOf(a.d(parcel, readInt))));
                            break;
                        case 1:
                            a(sb, field, a(field, a.g(parcel, readInt)));
                            break;
                        case 2:
                            a(sb, field, a(field, Long.valueOf(a.f(parcel, readInt))));
                            break;
                        case 3:
                            a(sb, field, a(field, Float.valueOf(a.h(parcel, readInt))));
                            break;
                        case 4:
                            a(sb, field, a(field, Double.valueOf(a.i(parcel, readInt))));
                            break;
                        case 5:
                            a(sb, field, a(field, a.j(parcel, readInt)));
                            break;
                        case 6:
                            a(sb, field, a(field, Boolean.valueOf(a.c(parcel, readInt))));
                            break;
                        case 7:
                            a(sb, field, a(field, a.k(parcel, readInt)));
                            break;
                        case 8:
                        case 9:
                            a(sb, field, a(field, a.n(parcel, readInt)));
                            break;
                        case 10:
                            a(sb, field, a(field, a(a.m(parcel, readInt))));
                            break;
                        case 11:
                            throw new IllegalArgumentException("Method does not accept concrete type.");
                        default:
                            throw new IllegalArgumentException(new StringBuilder(36).append("Unknown field out type = ").append(field.c()).toString());
                    }
                } else {
                    a(sb, field, parcel, readInt);
                }
                z = true;
            }
        }
        if (parcel.dataPosition() != a2) {
            throw new a.C0116a(new StringBuilder(37).append("Overread allowed size end=").append(a2).toString(), parcel);
        }
        sb.append('}');
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final Map<String, FastJsonResponse.Field<?, ?>> a() {
        return this.c == null ? null : this.c.a(this.e);
    }

    @Override // com.google.android.gms.common.server.response.FastSafeParcelableJsonResponse, com.google.android.gms.common.server.response.FastJsonResponse
    public final boolean b() {
        throw new UnsupportedOperationException("Converting to JSON does not require this method.");
    }

    public final Parcel c() {
        switch (this.f) {
            case 0:
                this.g = com.google.android.gms.common.internal.safeparcel.b.a(this.d, 20293);
            case 1:
                com.google.android.gms.common.internal.safeparcel.b.b(this.d, this.g);
                this.f = 2;
                break;
        }
        return this.d;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public String toString() {
        b.a(this.c, "Cannot convert to JSON on client side.");
        Parcel c = c();
        c.setDataPosition(0);
        StringBuilder sb = new StringBuilder(100);
        a(sb, this.c.a(this.e), c);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        e.a(this, parcel, i);
    }
}
