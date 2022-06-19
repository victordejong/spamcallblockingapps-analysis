package com.google.android.gms.common.server.response;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;
import com.google.android.gms.common.util.ArrayUtils;
import com.google.android.gms.common.util.Base64Utils;
import com.google.android.gms.common.util.JsonUtils;
import com.google.android.gms.common.util.MapUtils;
import com.google.android.gms.common.util.VisibleForTesting;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import p193e.p1432d.p1439c.p1440a.C22128a;
@VisibleForTesting
@KeepForSdk
@SafeParcelable.Class
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/server/response/SafeParcelResponse.class */
public class SafeParcelResponse extends FastSafeParcelableJsonResponse {
    @RecentlyNonNull
    @KeepForSdk
    public static final Parcelable.Creator<SafeParcelResponse> CREATOR = new zaq();
    @SafeParcelable.VersionField

    /* renamed from: a */
    public final int f6096a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final Parcel f6097b;

    /* renamed from: c */
    public final int f6098c = 2;
    @SafeParcelable.Field

    /* renamed from: d */
    public final zan f6099d;

    /* renamed from: e */
    public final String f6100e;

    /* renamed from: f */
    public int f6101f;

    /* renamed from: g */
    public int f6102g;

    @SafeParcelable.Constructor
    public SafeParcelResponse(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) Parcel parcel, @SafeParcelable.Param(id = 3) zan zanVar) {
        this.f6096a = i;
        Objects.requireNonNull(parcel, "null reference");
        this.f6097b = parcel;
        this.f6099d = zanVar;
        this.f6100e = zanVar == null ? null : zanVar.f6111c;
        this.f6101f = 2;
    }

    /* renamed from: d */
    public static final void m38807d(StringBuilder sb, int i, Object obj) {
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
                sb.append("\"");
                Objects.requireNonNull(obj, "null reference");
                sb.append(JsonUtils.m38778a(obj.toString()));
                sb.append("\"");
                return;
            case 8:
                sb.append("\"");
                sb.append(Base64Utils.m38793a((byte[]) obj));
                sb.append("\"");
                return;
            case 9:
                sb.append("\"");
                sb.append(Base64Utils.m38792b((byte[]) obj));
                sb.append("\"");
                return;
            case 10:
                Objects.requireNonNull(obj, "null reference");
                MapUtils.m38777a(sb, (HashMap) obj);
                return;
            case 11:
                throw new IllegalArgumentException("Method does not accept concrete type.");
            default:
                throw new IllegalArgumentException(C22128a.m8690L1(26, "Unknown type = ", i));
        }
    }

    /* renamed from: e */
    public static final void m38806e(StringBuilder sb, FastJsonResponse.Field<?, ?> field, Object obj) {
        if (!field.f6087c) {
            m38807d(sb, field.f6086b, obj);
            return;
        }
        ArrayList arrayList = (ArrayList) obj;
        sb.append("[");
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            if (i != 0) {
                sb.append(",");
            }
            m38807d(sb, field.f6086b, arrayList.get(i));
        }
        sb.append("]");
    }

    @RecentlyNonNull
    /* renamed from: a */
    public final Parcel m38810a() {
        int i = this.f6101f;
        if (i == 0) {
            int m38862a = SafeParcelWriter.m38862a(this.f6097b);
            this.f6102g = m38862a;
            SafeParcelWriter.m38840w(this.f6097b, m38862a);
            this.f6101f = 2;
        } else if (i == 1) {
            SafeParcelWriter.m38840w(this.f6097b, this.f6102g);
            this.f6101f = 2;
        }
        return this.f6097b;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final <T extends FastJsonResponse> void addConcreteTypeArrayInternal(@RecentlyNonNull FastJsonResponse.Field field, @RecentlyNonNull String str, ArrayList<T> arrayList) {
        m38809b(field);
        ArrayList arrayList2 = new ArrayList();
        Objects.requireNonNull(arrayList, "null reference");
        arrayList.size();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            arrayList2.add(((SafeParcelResponse) arrayList.get(i)).m38810a());
        }
        Parcel parcel = this.f6097b;
        int m38841v = SafeParcelWriter.m38841v(parcel, field.f6091g);
        int size2 = arrayList2.size();
        parcel.writeInt(size2);
        for (int i2 = 0; i2 < size2; i2++) {
            Parcel parcel2 = (Parcel) arrayList2.get(i2);
            if (parcel2 != null) {
                parcel.writeInt(parcel2.dataSize());
                parcel.appendFrom(parcel2, 0, parcel2.dataSize());
            } else {
                parcel.writeInt(0);
            }
        }
        SafeParcelWriter.m38840w(parcel, m38841v);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final <T extends FastJsonResponse> void addConcreteTypeInternal(@RecentlyNonNull FastJsonResponse.Field field, @RecentlyNonNull String str, @RecentlyNonNull T t) {
        m38809b(field);
        SafeParcelWriter.m38848o(this.f6097b, field.f6091g, ((SafeParcelResponse) t).m38810a(), true);
    }

    /* renamed from: b */
    public final void m38809b(FastJsonResponse.Field<?, ?> field) {
        if (field.f6091g != -1) {
            Parcel parcel = this.f6097b;
            if (parcel == null) {
                throw new IllegalStateException("Internal Parcel object is null.");
            }
            int i = this.f6101f;
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException("Attempted to parse JSON with a SafeParcelResponse object that is already filled with data.");
                }
                return;
            }
            this.f6102g = SafeParcelWriter.m38841v(parcel, 20293);
            this.f6101f = 1;
            return;
        }
        throw new IllegalStateException("Field does not have a valid safe parcelable field id.");
    }

    /* renamed from: c */
    public final void m38808c(StringBuilder sb, Map<String, FastJsonResponse.Field<?, ?>> map, Parcel parcel) {
        BigInteger[] bigIntegerArr;
        long[] jArr;
        float[] fArr;
        double[] dArr;
        BigDecimal[] bigDecimalArr;
        boolean[] zArr;
        SparseArray sparseArray = new SparseArray();
        for (Map.Entry<String, FastJsonResponse.Field<?, ?>> entry : map.entrySet()) {
            sparseArray.put(entry.getValue().f6091g, entry);
        }
        sb.append('{');
        int m38891A = SafeParcelReader.m38891A(parcel);
        boolean z = false;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            Map.Entry entry2 = (Map.Entry) sparseArray.get((char) readInt);
            if (entry2 != null) {
                if (z) {
                    sb.append(",");
                }
                String str = (String) entry2.getKey();
                FastJsonResponse.Field field = (FastJsonResponse.Field) entry2.getValue();
                C22128a.m8669S0(sb, "\"", str, "\":");
                if (field.f6095k != null) {
                    int i = field.f6088d;
                    switch (i) {
                        case 0:
                            m38806e(sb, field, FastJsonResponse.zaD(field, Integer.valueOf(SafeParcelReader.m38867v(parcel, readInt))));
                            break;
                        case 1:
                            m38806e(sb, field, FastJsonResponse.zaD(field, SafeParcelReader.m38887b(parcel, readInt)));
                            break;
                        case 2:
                            m38806e(sb, field, FastJsonResponse.zaD(field, Long.valueOf(SafeParcelReader.m38866w(parcel, readInt))));
                            break;
                        case 3:
                            m38806e(sb, field, FastJsonResponse.zaD(field, Float.valueOf(SafeParcelReader.m38870s(parcel, readInt))));
                            break;
                        case 4:
                            m38806e(sb, field, FastJsonResponse.zaD(field, Double.valueOf(SafeParcelReader.m38871r(parcel, readInt))));
                            break;
                        case 5:
                            m38806e(sb, field, FastJsonResponse.zaD(field, SafeParcelReader.m38888a(parcel, readInt)));
                            break;
                        case 6:
                            m38806e(sb, field, FastJsonResponse.zaD(field, Boolean.valueOf(SafeParcelReader.m38873p(parcel, readInt))));
                            break;
                        case 7:
                            m38806e(sb, field, FastJsonResponse.zaD(field, SafeParcelReader.m38879j(parcel, readInt)));
                            break;
                        case 8:
                        case 9:
                            m38806e(sb, field, FastJsonResponse.zaD(field, SafeParcelReader.m38885d(parcel, readInt)));
                            break;
                        case 10:
                            Bundle m38886c = SafeParcelReader.m38886c(parcel, readInt);
                            HashMap hashMap = new HashMap();
                            for (String str2 : m38886c.keySet()) {
                                String string = m38886c.getString(str2);
                                Objects.requireNonNull(string, "null reference");
                                hashMap.put(str2, string);
                            }
                            m38806e(sb, field, FastJsonResponse.zaD(field, hashMap));
                            break;
                        case 11:
                            throw new IllegalArgumentException("Method does not accept concrete type.");
                        default:
                            throw new IllegalArgumentException(C22128a.m8690L1(36, "Unknown field out type = ", i));
                    }
                } else if (field.f6089e) {
                    sb.append("[");
                    Parcel[] parcelArr = null;
                    switch (field.f6088d) {
                        case 0:
                            int[] m38883f = SafeParcelReader.m38883f(parcel, readInt);
                            int length = m38883f.length;
                            for (int i2 = 0; i2 < length; i2++) {
                                if (i2 != 0) {
                                    sb.append(",");
                                }
                                sb.append(Integer.toString(m38883f[i2]));
                            }
                            break;
                        case 1:
                            int m38864y = SafeParcelReader.m38864y(parcel, readInt);
                            int dataPosition = parcel.dataPosition();
                            if (m38864y == 0) {
                                bigIntegerArr = null;
                            } else {
                                int readInt2 = parcel.readInt();
                                bigIntegerArr = new BigInteger[readInt2];
                                for (int i3 = 0; i3 < readInt2; i3++) {
                                    bigIntegerArr[i3] = new BigInteger(parcel.createByteArray());
                                }
                                parcel.setDataPosition(dataPosition + m38864y);
                            }
                            ArrayUtils.m38794c(sb, bigIntegerArr);
                            break;
                        case 2:
                            int m38864y2 = SafeParcelReader.m38864y(parcel, readInt);
                            int dataPosition2 = parcel.dataPosition();
                            if (m38864y2 == 0) {
                                jArr = null;
                            } else {
                                jArr = parcel.createLongArray();
                                parcel.setDataPosition(dataPosition2 + m38864y2);
                            }
                            int length2 = jArr.length;
                            for (int i4 = 0; i4 < length2; i4++) {
                                if (i4 != 0) {
                                    sb.append(",");
                                }
                                sb.append(Long.toString(jArr[i4]));
                            }
                            break;
                        case 3:
                            int m38864y3 = SafeParcelReader.m38864y(parcel, readInt);
                            int dataPosition3 = parcel.dataPosition();
                            if (m38864y3 == 0) {
                                fArr = null;
                            } else {
                                fArr = parcel.createFloatArray();
                                parcel.setDataPosition(dataPosition3 + m38864y3);
                            }
                            int length3 = fArr.length;
                            for (int i5 = 0; i5 < length3; i5++) {
                                if (i5 != 0) {
                                    sb.append(",");
                                }
                                sb.append(Float.toString(fArr[i5]));
                            }
                            break;
                        case 4:
                            int m38864y4 = SafeParcelReader.m38864y(parcel, readInt);
                            int dataPosition4 = parcel.dataPosition();
                            if (m38864y4 == 0) {
                                dArr = null;
                            } else {
                                dArr = parcel.createDoubleArray();
                                parcel.setDataPosition(dataPosition4 + m38864y4);
                            }
                            int length4 = dArr.length;
                            for (int i6 = 0; i6 < length4; i6++) {
                                if (i6 != 0) {
                                    sb.append(",");
                                }
                                sb.append(Double.toString(dArr[i6]));
                            }
                            break;
                        case 5:
                            int m38864y5 = SafeParcelReader.m38864y(parcel, readInt);
                            int dataPosition5 = parcel.dataPosition();
                            if (m38864y5 == 0) {
                                bigDecimalArr = null;
                            } else {
                                int readInt3 = parcel.readInt();
                                bigDecimalArr = new BigDecimal[readInt3];
                                for (int i7 = 0; i7 < readInt3; i7++) {
                                    bigDecimalArr[i7] = new BigDecimal(new BigInteger(parcel.createByteArray()), parcel.readInt());
                                }
                                parcel.setDataPosition(dataPosition5 + m38864y5);
                            }
                            ArrayUtils.m38794c(sb, bigDecimalArr);
                            break;
                        case 6:
                            int m38864y6 = SafeParcelReader.m38864y(parcel, readInt);
                            int dataPosition6 = parcel.dataPosition();
                            if (m38864y6 == 0) {
                                zArr = null;
                            } else {
                                zArr = parcel.createBooleanArray();
                                parcel.setDataPosition(dataPosition6 + m38864y6);
                            }
                            int length5 = zArr.length;
                            for (int i8 = 0; i8 < length5; i8++) {
                                if (i8 != 0) {
                                    sb.append(",");
                                }
                                sb.append(Boolean.toString(zArr[i8]));
                            }
                            break;
                        case 7:
                            String[] m38878k = SafeParcelReader.m38878k(parcel, readInt);
                            int length6 = m38878k.length;
                            for (int i9 = 0; i9 < length6; i9++) {
                                if (i9 != 0) {
                                    sb.append(",");
                                }
                                sb.append("\"");
                                sb.append(m38878k[i9]);
                                sb.append("\"");
                            }
                            break;
                        case 8:
                        case 9:
                        case 10:
                            throw new UnsupportedOperationException("List of type BASE64, BASE64_URL_SAFE, or STRING_MAP is not supported");
                        case 11:
                            int m38864y7 = SafeParcelReader.m38864y(parcel, readInt);
                            int dataPosition7 = parcel.dataPosition();
                            if (m38864y7 != 0) {
                                int readInt4 = parcel.readInt();
                                parcelArr = new Parcel[readInt4];
                                for (int i10 = 0; i10 < readInt4; i10++) {
                                    int readInt5 = parcel.readInt();
                                    if (readInt5 != 0) {
                                        int dataPosition8 = parcel.dataPosition();
                                        Parcel obtain = Parcel.obtain();
                                        obtain.appendFrom(parcel, dataPosition8, readInt5);
                                        parcelArr[i10] = obtain;
                                        parcel.setDataPosition(dataPosition8 + readInt5);
                                    } else {
                                        parcelArr[i10] = null;
                                    }
                                }
                                parcel.setDataPosition(dataPosition7 + m38864y7);
                            }
                            int length7 = parcelArr.length;
                            for (int i11 = 0; i11 < length7; i11++) {
                                if (i11 > 0) {
                                    sb.append(",");
                                }
                                parcelArr[i11].setDataPosition(0);
                                m38808c(sb, field.m38813r2(), parcelArr[i11]);
                            }
                            break;
                        default:
                            throw new IllegalStateException("Unknown field type out.");
                    }
                    sb.append("]");
                } else {
                    switch (field.f6088d) {
                        case 0:
                            sb.append(SafeParcelReader.m38867v(parcel, readInt));
                            break;
                        case 1:
                            sb.append(SafeParcelReader.m38887b(parcel, readInt));
                            break;
                        case 2:
                            sb.append(SafeParcelReader.m38866w(parcel, readInt));
                            break;
                        case 3:
                            sb.append(SafeParcelReader.m38870s(parcel, readInt));
                            break;
                        case 4:
                            sb.append(SafeParcelReader.m38871r(parcel, readInt));
                            break;
                        case 5:
                            sb.append(SafeParcelReader.m38888a(parcel, readInt));
                            break;
                        case 6:
                            sb.append(SafeParcelReader.m38873p(parcel, readInt));
                            break;
                        case 7:
                            String m38879j = SafeParcelReader.m38879j(parcel, readInt);
                            sb.append("\"");
                            sb.append(JsonUtils.m38778a(m38879j));
                            sb.append("\"");
                            break;
                        case 8:
                            byte[] m38885d = SafeParcelReader.m38885d(parcel, readInt);
                            sb.append("\"");
                            sb.append(Base64Utils.m38793a(m38885d));
                            sb.append("\"");
                            break;
                        case 9:
                            byte[] m38885d2 = SafeParcelReader.m38885d(parcel, readInt);
                            sb.append("\"");
                            sb.append(Base64Utils.m38792b(m38885d2));
                            sb.append("\"");
                            break;
                        case 10:
                            Bundle m38886c2 = SafeParcelReader.m38886c(parcel, readInt);
                            Set<String> keySet = m38886c2.keySet();
                            sb.append("{");
                            Iterator<String> it = keySet.iterator();
                            boolean z2 = true;
                            while (true) {
                                boolean z3 = z2;
                                if (!it.hasNext()) {
                                    sb.append("}");
                                    break;
                                } else {
                                    String next = it.next();
                                    if (!z3) {
                                        sb.append(",");
                                    }
                                    C22128a.m8669S0(sb, "\"", next, "\":\"");
                                    sb.append(JsonUtils.m38778a(m38886c2.getString(next)));
                                    sb.append("\"");
                                    z2 = false;
                                }
                            }
                        case 11:
                            Parcel m38881h = SafeParcelReader.m38881h(parcel, readInt);
                            m38881h.setDataPosition(0);
                            m38808c(sb, field.m38813r2(), m38881h);
                            break;
                        default:
                            throw new IllegalStateException("Unknown field type out");
                    }
                }
                z = true;
            }
        }
        if (parcel.dataPosition() == m38891A) {
            sb.append('}');
            return;
        }
        throw new SafeParcelReader.ParseException(C22128a.m8690L1(37, "Overread allowed size end=", m38891A), parcel);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    @RecentlyNullable
    public final Map<String, FastJsonResponse.Field<?, ?>> getFieldMappings() {
        zan zanVar = this.f6099d;
        if (zanVar == null) {
            return null;
        }
        String str = this.f6100e;
        Objects.requireNonNull(str, "null reference");
        return zanVar.f6110b.get(str);
    }

    @Override // com.google.android.gms.common.server.response.FastSafeParcelableJsonResponse, com.google.android.gms.common.server.response.FastJsonResponse
    @RecentlyNonNull
    public final Object getValueObject(@RecentlyNonNull String str) {
        throw new UnsupportedOperationException("Converting to JSON does not require this method.");
    }

    @Override // com.google.android.gms.common.server.response.FastSafeParcelableJsonResponse, com.google.android.gms.common.server.response.FastJsonResponse
    public final boolean isPrimitiveFieldSet(@RecentlyNonNull String str) {
        throw new UnsupportedOperationException("Converting to JSON does not require this method.");
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final void setBooleanInternal(@RecentlyNonNull FastJsonResponse.Field<?, ?> field, @RecentlyNonNull String str, boolean z) {
        m38809b(field);
        SafeParcelWriter.m38861b(this.f6097b, field.f6091g, z);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final void setDecodedBytesInternal(@RecentlyNonNull FastJsonResponse.Field<?, ?> field, @RecentlyNonNull String str, byte[] bArr) {
        m38809b(field);
        SafeParcelWriter.m38859d(this.f6097b, field.f6091g, bArr, true);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final void setIntegerInternal(@RecentlyNonNull FastJsonResponse.Field<?, ?> field, @RecentlyNonNull String str, int i) {
        m38809b(field);
        SafeParcelWriter.m38853j(this.f6097b, field.f6091g, i);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final void setLongInternal(@RecentlyNonNull FastJsonResponse.Field<?, ?> field, @RecentlyNonNull String str, long j) {
        m38809b(field);
        SafeParcelWriter.m38850m(this.f6097b, field.f6091g, j);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final void setStringInternal(@RecentlyNonNull FastJsonResponse.Field<?, ?> field, @RecentlyNonNull String str, String str2) {
        m38809b(field);
        SafeParcelWriter.m38846q(this.f6097b, field.f6091g, str2, true);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final void setStringMapInternal(@RecentlyNonNull FastJsonResponse.Field<?, ?> field, @RecentlyNonNull String str, Map<String, String> map) {
        m38809b(field);
        Bundle bundle = new Bundle();
        Objects.requireNonNull(map, "null reference");
        for (String str2 : map.keySet()) {
            bundle.putString(str2, map.get(str2));
        }
        SafeParcelWriter.m38860c(this.f6097b, field.f6091g, bundle, true);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final void setStringsInternal(@RecentlyNonNull FastJsonResponse.Field<?, ?> field, @RecentlyNonNull String str, ArrayList<String> arrayList) {
        m38809b(field);
        Objects.requireNonNull(arrayList, "null reference");
        int size = arrayList.size();
        String[] strArr = new String[size];
        for (int i = 0; i < size; i++) {
            strArr[i] = arrayList.get(i);
        }
        SafeParcelWriter.m38845r(this.f6097b, field.f6091g, strArr, true);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    @RecentlyNonNull
    public final String toString() {
        Preconditions.m38897k(this.f6099d, "Cannot convert to JSON on client side.");
        Parcel m38810a = m38810a();
        m38810a.setDataPosition(0);
        StringBuilder sb = new StringBuilder(100);
        zan zanVar = this.f6099d;
        String str = this.f6100e;
        Objects.requireNonNull(str, "null reference");
        Map<String, FastJsonResponse.Field<?, ?>> map = zanVar.f6110b.get(str);
        Objects.requireNonNull(map, "null reference");
        m38808c(sb, map, m38810a);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@RecentlyNonNull Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        int i2 = this.f6096a;
        parcel.writeInt(262145);
        parcel.writeInt(i2);
        SafeParcelWriter.m38848o(parcel, 2, m38810a(), false);
        int i3 = this.f6098c;
        SafeParcelWriter.m38847p(parcel, 3, i3 != 0 ? i3 != 1 ? this.f6099d : this.f6099d : null, i, false);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final void zaA(@RecentlyNonNull FastJsonResponse.Field<?, ?> field, @RecentlyNonNull String str, BigDecimal bigDecimal) {
        m38809b(field);
        Parcel parcel = this.f6097b;
        int i = field.f6091g;
        if (bigDecimal == null) {
            parcel.writeInt(i | 0);
            return;
        }
        int m38841v = SafeParcelWriter.m38841v(parcel, i);
        parcel.writeByteArray(bigDecimal.unscaledValue().toByteArray());
        parcel.writeInt(bigDecimal.scale());
        SafeParcelWriter.m38840w(parcel, m38841v);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final void zaB(@RecentlyNonNull FastJsonResponse.Field<?, ?> field, @RecentlyNonNull String str, ArrayList<BigDecimal> arrayList) {
        m38809b(field);
        Objects.requireNonNull(arrayList, "null reference");
        int size = arrayList.size();
        BigDecimal[] bigDecimalArr = new BigDecimal[size];
        for (int i = 0; i < size; i++) {
            bigDecimalArr[i] = arrayList.get(i);
        }
        Parcel parcel = this.f6097b;
        int m38841v = SafeParcelWriter.m38841v(parcel, field.f6091g);
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            parcel.writeByteArray(bigDecimalArr[i2].unscaledValue().toByteArray());
            parcel.writeInt(bigDecimalArr[i2].scale());
        }
        SafeParcelWriter.m38840w(parcel, m38841v);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final void zaC(@RecentlyNonNull FastJsonResponse.Field<?, ?> field, @RecentlyNonNull String str, ArrayList<Boolean> arrayList) {
        m38809b(field);
        Objects.requireNonNull(arrayList, "null reference");
        int size = arrayList.size();
        boolean[] zArr = new boolean[size];
        for (int i = 0; i < size; i++) {
            zArr[i] = arrayList.get(i).booleanValue();
        }
        Parcel parcel = this.f6097b;
        int m38841v = SafeParcelWriter.m38841v(parcel, field.f6091g);
        parcel.writeBooleanArray(zArr);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final void zas(@RecentlyNonNull FastJsonResponse.Field<?, ?> field, @RecentlyNonNull String str, ArrayList<Integer> arrayList) {
        m38809b(field);
        Objects.requireNonNull(arrayList, "null reference");
        int size = arrayList.size();
        int[] iArr = new int[size];
        for (int i = 0; i < size; i++) {
            iArr[i] = arrayList.get(i).intValue();
        }
        SafeParcelWriter.m38852k(this.f6097b, field.f6091g, iArr, true);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final void zat(@RecentlyNonNull FastJsonResponse.Field<?, ?> field, @RecentlyNonNull String str, BigInteger bigInteger) {
        m38809b(field);
        Parcel parcel = this.f6097b;
        int i = field.f6091g;
        if (bigInteger == null) {
            parcel.writeInt(i | 0);
            return;
        }
        int m38841v = SafeParcelWriter.m38841v(parcel, i);
        parcel.writeByteArray(bigInteger.toByteArray());
        SafeParcelWriter.m38840w(parcel, m38841v);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final void zau(@RecentlyNonNull FastJsonResponse.Field<?, ?> field, @RecentlyNonNull String str, ArrayList<BigInteger> arrayList) {
        m38809b(field);
        Objects.requireNonNull(arrayList, "null reference");
        int size = arrayList.size();
        BigInteger[] bigIntegerArr = new BigInteger[size];
        for (int i = 0; i < size; i++) {
            bigIntegerArr[i] = arrayList.get(i);
        }
        Parcel parcel = this.f6097b;
        int m38841v = SafeParcelWriter.m38841v(parcel, field.f6091g);
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            parcel.writeByteArray(bigIntegerArr[i2].toByteArray());
        }
        SafeParcelWriter.m38840w(parcel, m38841v);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final void zav(@RecentlyNonNull FastJsonResponse.Field<?, ?> field, @RecentlyNonNull String str, ArrayList<Long> arrayList) {
        m38809b(field);
        Objects.requireNonNull(arrayList, "null reference");
        int size = arrayList.size();
        long[] jArr = new long[size];
        for (int i = 0; i < size; i++) {
            jArr[i] = arrayList.get(i).longValue();
        }
        Parcel parcel = this.f6097b;
        int m38841v = SafeParcelWriter.m38841v(parcel, field.f6091g);
        parcel.writeLongArray(jArr);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final void zaw(@RecentlyNonNull FastJsonResponse.Field<?, ?> field, @RecentlyNonNull String str, float f) {
        m38809b(field);
        SafeParcelWriter.m38856g(this.f6097b, field.f6091g, f);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final void zax(@RecentlyNonNull FastJsonResponse.Field<?, ?> field, @RecentlyNonNull String str, ArrayList<Float> arrayList) {
        m38809b(field);
        Objects.requireNonNull(arrayList, "null reference");
        int size = arrayList.size();
        float[] fArr = new float[size];
        for (int i = 0; i < size; i++) {
            fArr[i] = arrayList.get(i).floatValue();
        }
        Parcel parcel = this.f6097b;
        int m38841v = SafeParcelWriter.m38841v(parcel, field.f6091g);
        parcel.writeFloatArray(fArr);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final void zay(@RecentlyNonNull FastJsonResponse.Field<?, ?> field, @RecentlyNonNull String str, double d) {
        m38809b(field);
        SafeParcelWriter.m38857f(this.f6097b, field.f6091g, d);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final void zaz(@RecentlyNonNull FastJsonResponse.Field<?, ?> field, @RecentlyNonNull String str, ArrayList<Double> arrayList) {
        m38809b(field);
        Objects.requireNonNull(arrayList, "null reference");
        int size = arrayList.size();
        double[] dArr = new double[size];
        for (int i = 0; i < size; i++) {
            dArr[i] = arrayList.get(i).doubleValue();
        }
        Parcel parcel = this.f6097b;
        int m38841v = SafeParcelWriter.m38841v(parcel, field.f6091g);
        parcel.writeDoubleArray(dArr);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}
