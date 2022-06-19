package com.google.android.gms.common.server.response;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.common.internal.safeparcel.C12050a;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;
import com.google.android.gms.common.util.C12098b;
import com.google.android.gms.common.util.C12099c;
import com.google.android.gms.common.util.C12109m;
import com.google.android.gms.common.util.JsonUtils;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/server/response/SafeParcelResponse.class */
public class SafeParcelResponse extends FastSafeParcelableJsonResponse {
    public static final Parcelable.Creator<SafeParcelResponse> CREATOR = new C12087n();
    private final int zaa;
    private final Parcel zab;
    private final int zac;
    private final zan zad;
    private final String zae;
    private int zaf;
    private int zag;

    public SafeParcelResponse(int i, Parcel parcel, zan zanVar) {
        this.zaa = i;
        this.zab = (Parcel) C12045o.m19162a(parcel);
        this.zac = 2;
        this.zad = zanVar;
        this.zae = zanVar == null ? null : zanVar.zaf();
        this.zaf = 2;
    }

    private SafeParcelResponse(SafeParcelable safeParcelable, zan zanVar, String str) {
        this.zaa = 1;
        Parcel obtain = Parcel.obtain();
        this.zab = obtain;
        safeParcelable.writeToParcel(obtain, 0);
        this.zac = 1;
        this.zad = (zan) C12045o.m19162a(zanVar);
        this.zae = (String) C12045o.m19162a(str);
        this.zaf = 2;
    }

    public SafeParcelResponse(zan zanVar, String str) {
        this.zaa = 1;
        this.zab = Parcel.obtain();
        this.zac = 0;
        this.zad = (zan) C12045o.m19162a(zanVar);
        this.zae = (String) C12045o.m19162a(str);
        this.zaf = 0;
    }

    public static <T extends FastJsonResponse & SafeParcelable> SafeParcelResponse from(T t) {
        String str = (String) C12045o.m19162a(t.getClass().getCanonicalName());
        zan zanVar = new zan(t.getClass());
        zaF(zanVar, t);
        zanVar.zab();
        zanVar.zaa();
        return new SafeParcelResponse(t, zanVar, str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static void zaF(zan zanVar, FastJsonResponse fastJsonResponse) {
        Class<?> cls = fastJsonResponse.getClass();
        if (!zanVar.zae(cls)) {
            Map<String, FastJsonResponse.Field<?, ?>> fieldMappings = fastJsonResponse.getFieldMappings();
            zanVar.zac(cls, fieldMappings);
            for (String str : fieldMappings.keySet()) {
                FastJsonResponse.Field<?, ?> field = fieldMappings.get(str);
                Class<? extends FastJsonResponse> cls2 = field.zag;
                if (cls2 != null) {
                    try {
                        zaF(zanVar, cls2.newInstance());
                    } catch (IllegalAccessException e) {
                        String valueOf = String.valueOf(((Class) C12045o.m19162a(field.zag)).getCanonicalName());
                        throw new IllegalStateException(valueOf.length() != 0 ? "Could not access object of type ".concat(valueOf) : new String("Could not access object of type "), e);
                    } catch (InstantiationException e2) {
                        String valueOf2 = String.valueOf(((Class) C12045o.m19162a(field.zag)).getCanonicalName());
                        throw new IllegalStateException(valueOf2.length() != 0 ? "Could not instantiate an object of type ".concat(valueOf2) : new String("Could not instantiate an object of type "), e2);
                    }
                }
            }
        }
    }

    private final void zaG(FastJsonResponse.Field<?, ?> field) {
        if (field.zaf != -1) {
            Parcel parcel = this.zab;
            if (parcel == null) {
                throw new IllegalStateException("Internal Parcel object is null.");
            }
            int i = this.zaf;
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException("Attempted to parse JSON with a SafeParcelResponse object that is already filled with data.");
                }
                return;
            }
            this.zag = C12050a.m19116a(parcel, 20293);
            this.zaf = 1;
            return;
        }
        throw new IllegalStateException("Field does not have a valid safe parcelable field id.");
    }

    private final void zaH(StringBuilder sb, Map<String, FastJsonResponse.Field<?, ?>> map, Parcel parcel) {
        long[] jArr;
        float[] fArr;
        double[] dArr;
        SparseArray sparseArray = new SparseArray();
        for (Map.Entry<String, FastJsonResponse.Field<?, ?>> entry : map.entrySet()) {
            sparseArray.put(entry.getValue().getSafeParcelableFieldId(), entry);
        }
        sb.append('{');
        int m19146a = SafeParcelReader.m19146a(parcel);
        boolean z = false;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            Map.Entry entry2 = (Map.Entry) sparseArray.get((char) readInt);
            if (entry2 != null) {
                if (z) {
                    sb.append(",");
                }
                String str = (String) entry2.getKey();
                FastJsonResponse.Field field = (FastJsonResponse.Field) entry2.getValue();
                sb.append("\"");
                sb.append(str);
                sb.append("\":");
                if (field.zac()) {
                    int i = field.zac;
                    switch (i) {
                        case 0:
                            zaJ(sb, field, zaD(field, Integer.valueOf(SafeParcelReader.m19136e(parcel, readInt))));
                            break;
                        case 1:
                            zaJ(sb, field, zaD(field, SafeParcelReader.m19133h(parcel, readInt)));
                            break;
                        case 2:
                            zaJ(sb, field, zaD(field, Long.valueOf(SafeParcelReader.m19135f(parcel, readInt))));
                            break;
                        case 3:
                            zaJ(sb, field, zaD(field, Float.valueOf(SafeParcelReader.m19132i(parcel, readInt))));
                            break;
                        case 4:
                            zaJ(sb, field, zaD(field, Double.valueOf(SafeParcelReader.m19130k(parcel, readInt))));
                            break;
                        case 5:
                            zaJ(sb, field, zaD(field, SafeParcelReader.m19129l(parcel, readInt)));
                            break;
                        case 6:
                            zaJ(sb, field, zaD(field, Boolean.valueOf(SafeParcelReader.m19139c(parcel, readInt))));
                            break;
                        case 7:
                            zaJ(sb, field, zaD(field, SafeParcelReader.m19128m(parcel, readInt)));
                            break;
                        case 8:
                        case 9:
                            zaJ(sb, field, zaD(field, SafeParcelReader.m19125p(parcel, readInt)));
                            break;
                        case 10:
                            Bundle m19126o = SafeParcelReader.m19126o(parcel, readInt);
                            HashMap hashMap = new HashMap();
                            for (String str2 : m19126o.keySet()) {
                                hashMap.put(str2, (String) C12045o.m19162a(m19126o.getString(str2)));
                            }
                            zaJ(sb, field, zaD(field, hashMap));
                            break;
                        case 11:
                            throw new IllegalArgumentException("Method does not accept concrete type.");
                        default:
                            StringBuilder sb2 = new StringBuilder(36);
                            sb2.append("Unknown field out type = ");
                            sb2.append(i);
                            throw new IllegalArgumentException(sb2.toString());
                    }
                } else if (field.zad) {
                    sb.append("[");
                    boolean[] zArr = null;
                    switch (field.zac) {
                        case 0:
                            C12098b.m19054a(sb, SafeParcelReader.m19124q(parcel, readInt));
                            break;
                        case 1:
                            C12098b.m19052a(sb, SafeParcelReader.m19123r(parcel, readInt));
                            break;
                        case 2:
                            int m19145a = SafeParcelReader.m19145a(parcel, readInt);
                            int dataPosition = parcel.dataPosition();
                            if (m19145a == 0) {
                                jArr = null;
                            } else {
                                jArr = parcel.createLongArray();
                                parcel.setDataPosition(dataPosition + m19145a);
                            }
                            C12098b.m19053a(sb, jArr);
                            break;
                        case 3:
                            int m19145a2 = SafeParcelReader.m19145a(parcel, readInt);
                            int dataPosition2 = parcel.dataPosition();
                            if (m19145a2 == 0) {
                                fArr = null;
                            } else {
                                fArr = parcel.createFloatArray();
                                parcel.setDataPosition(dataPosition2 + m19145a2);
                            }
                            C12098b.m19055a(sb, fArr);
                            break;
                        case 4:
                            int m19145a3 = SafeParcelReader.m19145a(parcel, readInt);
                            int dataPosition3 = parcel.dataPosition();
                            if (m19145a3 == 0) {
                                dArr = null;
                            } else {
                                dArr = parcel.createDoubleArray();
                                parcel.setDataPosition(dataPosition3 + m19145a3);
                            }
                            C12098b.m19056a(sb, dArr);
                            break;
                        case 5:
                            C12098b.m19052a(sb, SafeParcelReader.m19122s(parcel, readInt));
                            break;
                        case 6:
                            int m19145a4 = SafeParcelReader.m19145a(parcel, readInt);
                            int dataPosition4 = parcel.dataPosition();
                            if (m19145a4 != 0) {
                                zArr = parcel.createBooleanArray();
                                parcel.setDataPosition(dataPosition4 + m19145a4);
                            }
                            C12098b.m19050a(sb, zArr);
                            break;
                        case 7:
                            C12098b.m19051a(sb, SafeParcelReader.m19121t(parcel, readInt));
                            break;
                        case 8:
                        case 9:
                        case 10:
                            throw new UnsupportedOperationException("List of type BASE64, BASE64_URL_SAFE, or STRING_MAP is not supported");
                        case 11:
                            Parcel[] m19118w = SafeParcelReader.m19118w(parcel, readInt);
                            int length = m19118w.length;
                            for (int i2 = 0; i2 < length; i2++) {
                                if (i2 > 0) {
                                    sb.append(",");
                                }
                                m19118w[i2].setDataPosition(0);
                                zaH(sb, field.zag(), m19118w[i2]);
                            }
                            break;
                        default:
                            throw new IllegalStateException("Unknown field type out.");
                    }
                    sb.append("]");
                } else {
                    switch (field.zac) {
                        case 0:
                            sb.append(SafeParcelReader.m19136e(parcel, readInt));
                            break;
                        case 1:
                            sb.append(SafeParcelReader.m19133h(parcel, readInt));
                            break;
                        case 2:
                            sb.append(SafeParcelReader.m19135f(parcel, readInt));
                            break;
                        case 3:
                            sb.append(SafeParcelReader.m19132i(parcel, readInt));
                            break;
                        case 4:
                            sb.append(SafeParcelReader.m19130k(parcel, readInt));
                            break;
                        case 5:
                            sb.append(SafeParcelReader.m19129l(parcel, readInt));
                            break;
                        case 6:
                            sb.append(SafeParcelReader.m19139c(parcel, readInt));
                            break;
                        case 7:
                            String m19128m = SafeParcelReader.m19128m(parcel, readInt);
                            sb.append("\"");
                            sb.append(JsonUtils.escapeString(m19128m));
                            sb.append("\"");
                            break;
                        case 8:
                            byte[] m19125p = SafeParcelReader.m19125p(parcel, readInt);
                            sb.append("\"");
                            sb.append(C12099c.m19046a(m19125p));
                            sb.append("\"");
                            break;
                        case 9:
                            byte[] m19125p2 = SafeParcelReader.m19125p(parcel, readInt);
                            sb.append("\"");
                            sb.append(C12099c.m19045b(m19125p2));
                            sb.append("\"");
                            break;
                        case 10:
                            Bundle m19126o2 = SafeParcelReader.m19126o(parcel, readInt);
                            Set<String> keySet = m19126o2.keySet();
                            sb.append("{");
                            Iterator<String> it2 = keySet.iterator();
                            boolean z2 = true;
                            while (true) {
                                boolean z3 = z2;
                                if (!it2.hasNext()) {
                                    sb.append("}");
                                    break;
                                } else {
                                    String next = it2.next();
                                    if (!z3) {
                                        sb.append(",");
                                    }
                                    sb.append("\"");
                                    sb.append(next);
                                    sb.append("\":\"");
                                    sb.append(JsonUtils.escapeString(m19126o2.getString(next)));
                                    sb.append("\"");
                                    z2 = false;
                                }
                            }
                        case 11:
                            Parcel m19119v = SafeParcelReader.m19119v(parcel, readInt);
                            m19119v.setDataPosition(0);
                            zaH(sb, field.zag(), m19119v);
                            break;
                        default:
                            throw new IllegalStateException("Unknown field type out");
                    }
                }
                z = true;
            }
        }
        if (parcel.dataPosition() == m19146a) {
            sb.append('}');
            return;
        }
        StringBuilder sb3 = new StringBuilder(37);
        sb3.append("Overread allowed size end=");
        sb3.append(m19146a);
        throw new SafeParcelReader.ParseException(sb3.toString(), parcel);
    }

    private static final void zaI(StringBuilder sb, int i, Object obj) {
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
                sb.append(JsonUtils.escapeString(C12045o.m19162a(obj).toString()));
                sb.append("\"");
                return;
            case 8:
                sb.append("\"");
                sb.append(C12099c.m19046a((byte[]) obj));
                sb.append("\"");
                return;
            case 9:
                sb.append("\"");
                sb.append(C12099c.m19045b((byte[]) obj));
                sb.append("\"");
                return;
            case 10:
                C12109m.m19022a(sb, (HashMap) C12045o.m19162a(obj));
                return;
            case 11:
                throw new IllegalArgumentException("Method does not accept concrete type.");
            default:
                StringBuilder sb2 = new StringBuilder(26);
                sb2.append("Unknown type = ");
                sb2.append(i);
                throw new IllegalArgumentException(sb2.toString());
        }
    }

    private static final void zaJ(StringBuilder sb, FastJsonResponse.Field<?, ?> field, Object obj) {
        if (!field.zab) {
            zaI(sb, field.zaa, obj);
            return;
        }
        ArrayList arrayList = (ArrayList) obj;
        sb.append("[");
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            if (i != 0) {
                sb.append(",");
            }
            zaI(sb, field.zaa, arrayList.get(i));
        }
        sb.append("]");
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final <T extends FastJsonResponse> void addConcreteTypeArrayInternal(FastJsonResponse.Field field, String str, ArrayList<T> arrayList) {
        zaG(field);
        ArrayList arrayList2 = new ArrayList();
        ((ArrayList) C12045o.m19162a(arrayList)).size();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            arrayList2.add(((SafeParcelResponse) arrayList.get(i)).zaE());
        }
        C12050a.m19093b(this.zab, field.getSafeParcelableFieldId(), arrayList2);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final <T extends FastJsonResponse> void addConcreteTypeInternal(FastJsonResponse.Field field, String str, T t) {
        zaG(field);
        C12050a.m19108a(this.zab, field.getSafeParcelableFieldId(), ((SafeParcelResponse) t).zaE(), true);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final Map<String, FastJsonResponse.Field<?, ?>> getFieldMappings() {
        zan zanVar = this.zad;
        if (zanVar == null) {
            return null;
        }
        return zanVar.zad((String) C12045o.m19162a(this.zae));
    }

    @Override // com.google.android.gms.common.server.response.FastSafeParcelableJsonResponse, com.google.android.gms.common.server.response.FastJsonResponse
    public final Object getValueObject(String str) {
        throw new UnsupportedOperationException("Converting to JSON does not require this method.");
    }

    @Override // com.google.android.gms.common.server.response.FastSafeParcelableJsonResponse, com.google.android.gms.common.server.response.FastJsonResponse
    public final boolean isPrimitiveFieldSet(String str) {
        throw new UnsupportedOperationException("Converting to JSON does not require this method.");
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    protected final void setBooleanInternal(FastJsonResponse.Field<?, ?> field, String str, boolean z) {
        zaG(field);
        C12050a.m19101a(this.zab, field.getSafeParcelableFieldId(), z);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    protected final void setDecodedBytesInternal(FastJsonResponse.Field<?, ?> field, String str, byte[] bArr) {
        zaG(field);
        C12050a.m19100a(this.zab, field.getSafeParcelableFieldId(), bArr, true);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    protected final void setIntegerInternal(FastJsonResponse.Field<?, ?> field, String str, int i) {
        zaG(field);
        C12050a.m19112a(this.zab, field.getSafeParcelableFieldId(), i);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    protected final void setLongInternal(FastJsonResponse.Field<?, ?> field, String str, long j) {
        zaG(field);
        C12050a.m19111a(this.zab, field.getSafeParcelableFieldId(), j);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    protected final void setStringInternal(FastJsonResponse.Field<?, ?> field, String str, String str2) {
        zaG(field);
        C12050a.m19104a(this.zab, field.getSafeParcelableFieldId(), str2, true);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    protected final void setStringMapInternal(FastJsonResponse.Field<?, ?> field, String str, Map<String, String> map) {
        zaG(field);
        Bundle bundle = new Bundle();
        for (String str2 : ((Map) C12045o.m19162a(map)).keySet()) {
            bundle.putString(str2, map.get(str2));
        }
        C12050a.m19110a(this.zab, field.getSafeParcelableFieldId(), bundle, true);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    protected final void setStringsInternal(FastJsonResponse.Field<?, ?> field, String str, ArrayList<String> arrayList) {
        zaG(field);
        int size = ((ArrayList) C12045o.m19162a(arrayList)).size();
        String[] strArr = new String[size];
        for (int i = 0; i < size; i++) {
            strArr[i] = arrayList.get(i);
        }
        C12050a.m19097a(this.zab, field.getSafeParcelableFieldId(), strArr, true);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final String toString() {
        C12045o.m19161a(this.zad, "Cannot convert to JSON on client side.");
        Parcel zaE = zaE();
        zaE.setDataPosition(0);
        StringBuilder sb = new StringBuilder(100);
        zaH(sb, (Map) C12045o.m19162a(this.zad.zad((String) C12045o.m19162a(this.zae))), zaE);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19112a(parcel, 1, this.zaa);
        C12050a.m19108a(parcel, 2, zaE(), false);
        int i2 = this.zac;
        C12050a.m19107a(parcel, 3, i2 != 0 ? i2 != 1 ? this.zad : this.zad : null, i, false);
        C12050a.m19095b(parcel, m19116a);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    protected final void zaA(FastJsonResponse.Field<?, ?> field, String str, BigDecimal bigDecimal) {
        zaG(field);
        Parcel parcel = this.zab;
        int safeParcelableFieldId = field.getSafeParcelableFieldId();
        if (bigDecimal == null) {
            C12050a.m19094b(parcel, safeParcelableFieldId, 0);
            return;
        }
        int m19116a = C12050a.m19116a(parcel, safeParcelableFieldId);
        parcel.writeByteArray(bigDecimal.unscaledValue().toByteArray());
        parcel.writeInt(bigDecimal.scale());
        C12050a.m19095b(parcel, m19116a);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    protected final void zaB(FastJsonResponse.Field<?, ?> field, String str, ArrayList<BigDecimal> arrayList) {
        zaG(field);
        int size = ((ArrayList) C12045o.m19162a(arrayList)).size();
        BigDecimal[] bigDecimalArr = new BigDecimal[size];
        for (int i = 0; i < size; i++) {
            bigDecimalArr[i] = arrayList.get(i);
        }
        Parcel parcel = this.zab;
        int m19116a = C12050a.m19116a(parcel, field.getSafeParcelableFieldId());
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            parcel.writeByteArray(bigDecimalArr[i2].unscaledValue().toByteArray());
            parcel.writeInt(bigDecimalArr[i2].scale());
        }
        C12050a.m19095b(parcel, m19116a);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    protected final void zaC(FastJsonResponse.Field<?, ?> field, String str, ArrayList<Boolean> arrayList) {
        zaG(field);
        int size = ((ArrayList) C12045o.m19162a(arrayList)).size();
        boolean[] zArr = new boolean[size];
        for (int i = 0; i < size; i++) {
            zArr[i] = arrayList.get(i).booleanValue();
        }
        Parcel parcel = this.zab;
        int m19116a = C12050a.m19116a(parcel, field.getSafeParcelableFieldId());
        parcel.writeBooleanArray(zArr);
        C12050a.m19095b(parcel, m19116a);
    }

    public final Parcel zaE() {
        int i = this.zaf;
        if (i == 0) {
            int m19116a = C12050a.m19116a(this.zab, 20293);
            this.zag = m19116a;
            C12050a.m19095b(this.zab, m19116a);
            this.zaf = 2;
        } else if (i == 1) {
            C12050a.m19095b(this.zab, this.zag);
            this.zaf = 2;
        }
        return this.zab;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    protected final void zas(FastJsonResponse.Field<?, ?> field, String str, ArrayList<Integer> arrayList) {
        zaG(field);
        int size = ((ArrayList) C12045o.m19162a(arrayList)).size();
        int[] iArr = new int[size];
        for (int i = 0; i < size; i++) {
            iArr[i] = arrayList.get(i).intValue();
        }
        C12050a.m19099a(this.zab, field.getSafeParcelableFieldId(), iArr, true);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    protected final void zat(FastJsonResponse.Field<?, ?> field, String str, BigInteger bigInteger) {
        zaG(field);
        Parcel parcel = this.zab;
        int safeParcelableFieldId = field.getSafeParcelableFieldId();
        if (bigInteger == null) {
            C12050a.m19094b(parcel, safeParcelableFieldId, 0);
            return;
        }
        int m19116a = C12050a.m19116a(parcel, safeParcelableFieldId);
        parcel.writeByteArray(bigInteger.toByteArray());
        C12050a.m19095b(parcel, m19116a);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    protected final void zau(FastJsonResponse.Field<?, ?> field, String str, ArrayList<BigInteger> arrayList) {
        zaG(field);
        int size = ((ArrayList) C12045o.m19162a(arrayList)).size();
        BigInteger[] bigIntegerArr = new BigInteger[size];
        for (int i = 0; i < size; i++) {
            bigIntegerArr[i] = arrayList.get(i);
        }
        Parcel parcel = this.zab;
        int m19116a = C12050a.m19116a(parcel, field.getSafeParcelableFieldId());
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            parcel.writeByteArray(bigIntegerArr[i2].toByteArray());
        }
        C12050a.m19095b(parcel, m19116a);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    protected final void zav(FastJsonResponse.Field<?, ?> field, String str, ArrayList<Long> arrayList) {
        zaG(field);
        int size = ((ArrayList) C12045o.m19162a(arrayList)).size();
        long[] jArr = new long[size];
        for (int i = 0; i < size; i++) {
            jArr[i] = arrayList.get(i).longValue();
        }
        Parcel parcel = this.zab;
        int m19116a = C12050a.m19116a(parcel, field.getSafeParcelableFieldId());
        parcel.writeLongArray(jArr);
        C12050a.m19095b(parcel, m19116a);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    protected final void zaw(FastJsonResponse.Field<?, ?> field, String str, float f) {
        zaG(field);
        C12050a.m19113a(this.zab, field.getSafeParcelableFieldId(), f);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    protected final void zax(FastJsonResponse.Field<?, ?> field, String str, ArrayList<Float> arrayList) {
        zaG(field);
        int size = ((ArrayList) C12045o.m19162a(arrayList)).size();
        float[] fArr = new float[size];
        for (int i = 0; i < size; i++) {
            fArr[i] = arrayList.get(i).floatValue();
        }
        Parcel parcel = this.zab;
        int m19116a = C12050a.m19116a(parcel, field.getSafeParcelableFieldId());
        parcel.writeFloatArray(fArr);
        C12050a.m19095b(parcel, m19116a);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    protected final void zay(FastJsonResponse.Field<?, ?> field, String str, double d) {
        zaG(field);
        C12050a.m19114a(this.zab, field.getSafeParcelableFieldId(), d);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    protected final void zaz(FastJsonResponse.Field<?, ?> field, String str, ArrayList<Double> arrayList) {
        zaG(field);
        int size = ((ArrayList) C12045o.m19162a(arrayList)).size();
        double[] dArr = new double[size];
        for (int i = 0; i < size; i++) {
            dArr[i] = arrayList.get(i).doubleValue();
        }
        Parcel parcel = this.zab;
        int m19116a = C12050a.m19116a(parcel, field.getSafeParcelableFieldId());
        parcel.writeDoubleArray(dArr);
        C12050a.m19095b(parcel, m19116a);
    }
}
