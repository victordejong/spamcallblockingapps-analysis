package com.google.android.gms.common.server.response;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.server.response.FastJsonResponse;
import com.google.android.gms.common.util.JsonUtils;
import com.google.android.gms.common.util.b;
import com.google.android.gms.common.util.c;
import com.google.android.gms.common.util.m;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/server/response/SafeParcelResponse.class */
public class SafeParcelResponse extends FastSafeParcelableJsonResponse {
    public static final Parcelable.Creator<SafeParcelResponse> CREATOR = new n();
    private final int zaa;
    private final Parcel zab;
    private final int zac;
    private final zan zad;
    private final String zae;
    private int zaf;
    private int zag;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SafeParcelResponse(int i, Parcel parcel, zan zanVar) {
        this.zaa = i;
        this.zab = (Parcel) o.a(parcel);
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
        this.zad = (zan) o.a(zanVar);
        this.zae = (String) o.a(str);
        this.zaf = 2;
    }

    public SafeParcelResponse(zan zanVar, String str) {
        this.zaa = 1;
        this.zab = Parcel.obtain();
        this.zac = 0;
        this.zad = (zan) o.a(zanVar);
        this.zae = (String) o.a(str);
        this.zaf = 0;
    }

    public static <T extends FastJsonResponse & SafeParcelable> SafeParcelResponse from(T t) {
        String str = (String) o.a(t.getClass().getCanonicalName());
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
                        zaF(zanVar, (FastJsonResponse) cls2.newInstance());
                    } catch (IllegalAccessException e) {
                        String valueOf = String.valueOf(((Class) o.a(field.zag)).getCanonicalName());
                        throw new IllegalStateException(valueOf.length() != 0 ? "Could not access object of type ".concat(valueOf) : new String("Could not access object of type "), e);
                    } catch (InstantiationException e2) {
                        String valueOf2 = String.valueOf(((Class) o.a(field.zag)).getCanonicalName());
                        throw new IllegalStateException(valueOf2.length() != 0 ? "Could not instantiate an object of type ".concat(valueOf2) : new String("Could not instantiate an object of type "), e2);
                    }
                }
            }
        }
    }

    private final void zaG(FastJsonResponse.Field<?, ?> field) {
        if (field.zaf != -1) {
            Parcel parcel = this.zab;
            if (parcel != null) {
                int i = this.zaf;
                if (i == 0) {
                    this.zag = a.a(parcel, 20293);
                    this.zaf = 1;
                } else if (i != 1) {
                    throw new IllegalStateException("Attempted to parse JSON with a SafeParcelResponse object that is already filled with data.");
                }
            } else {
                throw new IllegalStateException("Internal Parcel object is null.");
            }
        } else {
            throw new IllegalStateException("Field does not have a valid safe parcelable field id.");
        }
    }

    private final void zaH(StringBuilder sb, Map<String, FastJsonResponse.Field<?, ?>> map, Parcel parcel) {
        SparseArray sparseArray = new SparseArray();
        for (Map.Entry<String, FastJsonResponse.Field<?, ?>> entry : map.entrySet()) {
            sparseArray.put(entry.getValue().getSafeParcelableFieldId(), entry);
        }
        sb.append('{');
        int a2 = SafeParcelReader.a(parcel);
        boolean z = false;
        while (parcel.dataPosition() < a2) {
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
                            zaJ(sb, field, zaD(field, Integer.valueOf(SafeParcelReader.e(parcel, readInt))));
                            break;
                        case 1:
                            zaJ(sb, field, zaD(field, SafeParcelReader.h(parcel, readInt)));
                            break;
                        case 2:
                            zaJ(sb, field, zaD(field, Long.valueOf(SafeParcelReader.f(parcel, readInt))));
                            break;
                        case 3:
                            zaJ(sb, field, zaD(field, Float.valueOf(SafeParcelReader.i(parcel, readInt))));
                            break;
                        case 4:
                            zaJ(sb, field, zaD(field, Double.valueOf(SafeParcelReader.k(parcel, readInt))));
                            break;
                        case 5:
                            zaJ(sb, field, zaD(field, SafeParcelReader.l(parcel, readInt)));
                            break;
                        case 6:
                            zaJ(sb, field, zaD(field, Boolean.valueOf(SafeParcelReader.c(parcel, readInt))));
                            break;
                        case 7:
                            zaJ(sb, field, zaD(field, SafeParcelReader.m(parcel, readInt)));
                            break;
                        case 8:
                        case 9:
                            zaJ(sb, field, zaD(field, SafeParcelReader.p(parcel, readInt)));
                            break;
                        case 10:
                            Bundle o = SafeParcelReader.o(parcel, readInt);
                            HashMap hashMap = new HashMap();
                            for (String str2 : o.keySet()) {
                                hashMap.put(str2, (String) o.a(o.getString(str2)));
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
                    double[] dArr = null;
                    float[] fArr = null;
                    long[] jArr = null;
                    boolean[] zArr = null;
                    switch (field.zac) {
                        case 0:
                            b.a(sb, SafeParcelReader.q(parcel, readInt));
                            break;
                        case 1:
                            b.a(sb, SafeParcelReader.r(parcel, readInt));
                            break;
                        case 2:
                            int a3 = SafeParcelReader.a(parcel, readInt);
                            int dataPosition = parcel.dataPosition();
                            if (a3 != 0) {
                                jArr = parcel.createLongArray();
                                parcel.setDataPosition(dataPosition + a3);
                            }
                            b.a(sb, jArr);
                            break;
                        case 3:
                            int a4 = SafeParcelReader.a(parcel, readInt);
                            int dataPosition2 = parcel.dataPosition();
                            if (a4 != 0) {
                                fArr = parcel.createFloatArray();
                                parcel.setDataPosition(dataPosition2 + a4);
                            }
                            b.a(sb, fArr);
                            break;
                        case 4:
                            int a5 = SafeParcelReader.a(parcel, readInt);
                            int dataPosition3 = parcel.dataPosition();
                            if (a5 != 0) {
                                dArr = parcel.createDoubleArray();
                                parcel.setDataPosition(dataPosition3 + a5);
                            }
                            b.a(sb, dArr);
                            break;
                        case 5:
                            b.a(sb, SafeParcelReader.s(parcel, readInt));
                            break;
                        case 6:
                            int a6 = SafeParcelReader.a(parcel, readInt);
                            int dataPosition4 = parcel.dataPosition();
                            if (a6 != 0) {
                                zArr = parcel.createBooleanArray();
                                parcel.setDataPosition(dataPosition4 + a6);
                            }
                            b.a(sb, zArr);
                            break;
                        case 7:
                            b.a(sb, SafeParcelReader.t(parcel, readInt));
                            break;
                        case 8:
                        case 9:
                        case 10:
                            throw new UnsupportedOperationException("List of type BASE64, BASE64_URL_SAFE, or STRING_MAP is not supported");
                        case 11:
                            Parcel[] w = SafeParcelReader.w(parcel, readInt);
                            int length = w.length;
                            for (int i2 = 0; i2 < length; i2++) {
                                if (i2 > 0) {
                                    sb.append(",");
                                }
                                w[i2].setDataPosition(0);
                                zaH(sb, field.zag(), w[i2]);
                            }
                            break;
                        default:
                            throw new IllegalStateException("Unknown field type out.");
                    }
                    sb.append("]");
                } else {
                    switch (field.zac) {
                        case 0:
                            sb.append(SafeParcelReader.e(parcel, readInt));
                            break;
                        case 1:
                            sb.append(SafeParcelReader.h(parcel, readInt));
                            break;
                        case 2:
                            sb.append(SafeParcelReader.f(parcel, readInt));
                            break;
                        case 3:
                            sb.append(SafeParcelReader.i(parcel, readInt));
                            break;
                        case 4:
                            sb.append(SafeParcelReader.k(parcel, readInt));
                            break;
                        case 5:
                            sb.append(SafeParcelReader.l(parcel, readInt));
                            break;
                        case 6:
                            sb.append(SafeParcelReader.c(parcel, readInt));
                            break;
                        case 7:
                            String m = SafeParcelReader.m(parcel, readInt);
                            sb.append("\"");
                            sb.append(JsonUtils.escapeString(m));
                            sb.append("\"");
                            break;
                        case 8:
                            byte[] p = SafeParcelReader.p(parcel, readInt);
                            sb.append("\"");
                            sb.append(c.a(p));
                            sb.append("\"");
                            break;
                        case 9:
                            byte[] p2 = SafeParcelReader.p(parcel, readInt);
                            sb.append("\"");
                            sb.append(c.b(p2));
                            sb.append("\"");
                            break;
                        case 10:
                            Bundle o2 = SafeParcelReader.o(parcel, readInt);
                            Set<String> keySet = o2.keySet();
                            sb.append("{");
                            boolean z2 = true;
                            for (String str3 : keySet) {
                                if (!z2) {
                                    sb.append(",");
                                }
                                sb.append("\"");
                                sb.append(str3);
                                sb.append("\":\"");
                                sb.append(JsonUtils.escapeString(o2.getString(str3)));
                                sb.append("\"");
                                z2 = false;
                            }
                            sb.append("}");
                            break;
                        case 11:
                            Parcel v = SafeParcelReader.v(parcel, readInt);
                            v.setDataPosition(0);
                            zaH(sb, field.zag(), v);
                            break;
                        default:
                            throw new IllegalStateException("Unknown field type out");
                    }
                }
                z = true;
            }
        }
        if (parcel.dataPosition() == a2) {
            sb.append('}');
            return;
        }
        StringBuilder sb3 = new StringBuilder(37);
        sb3.append("Overread allowed size end=");
        sb3.append(a2);
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
                sb.append(JsonUtils.escapeString(o.a(obj).toString()));
                sb.append("\"");
                return;
            case 8:
                sb.append("\"");
                sb.append(c.a((byte[]) obj));
                sb.append("\"");
                return;
            case 9:
                sb.append("\"");
                sb.append(c.b((byte[]) obj));
                sb.append("\"");
                return;
            case 10:
                m.a(sb, (HashMap) o.a(obj));
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
        if (field.zab) {
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
            return;
        }
        zaI(sb, field.zaa, obj);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final <T extends FastJsonResponse> void addConcreteTypeArrayInternal(FastJsonResponse.Field field, String str, ArrayList<T> arrayList) {
        zaG(field);
        ArrayList arrayList2 = new ArrayList();
        ((ArrayList) o.a(arrayList)).size();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            arrayList2.add(((SafeParcelResponse) arrayList.get(i)).zaE());
        }
        a.b(this.zab, field.getSafeParcelableFieldId(), arrayList2);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final <T extends FastJsonResponse> void addConcreteTypeInternal(FastJsonResponse.Field field, String str, T t) {
        zaG(field);
        a.a(this.zab, field.getSafeParcelableFieldId(), ((SafeParcelResponse) t).zaE(), true);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final Map<String, FastJsonResponse.Field<?, ?>> getFieldMappings() {
        zan zanVar = this.zad;
        if (zanVar == null) {
            return null;
        }
        return zanVar.zad((String) o.a(this.zae));
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
        a.a(this.zab, field.getSafeParcelableFieldId(), z);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    protected final void setDecodedBytesInternal(FastJsonResponse.Field<?, ?> field, String str, byte[] bArr) {
        zaG(field);
        a.a(this.zab, field.getSafeParcelableFieldId(), bArr, true);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    protected final void setIntegerInternal(FastJsonResponse.Field<?, ?> field, String str, int i) {
        zaG(field);
        a.a(this.zab, field.getSafeParcelableFieldId(), i);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    protected final void setLongInternal(FastJsonResponse.Field<?, ?> field, String str, long j) {
        zaG(field);
        a.a(this.zab, field.getSafeParcelableFieldId(), j);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    protected final void setStringInternal(FastJsonResponse.Field<?, ?> field, String str, String str2) {
        zaG(field);
        a.a(this.zab, field.getSafeParcelableFieldId(), str2, true);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    protected final void setStringMapInternal(FastJsonResponse.Field<?, ?> field, String str, Map<String, String> map) {
        zaG(field);
        Bundle bundle = new Bundle();
        for (String str2 : ((Map) o.a(map)).keySet()) {
            bundle.putString(str2, map.get(str2));
        }
        a.a(this.zab, field.getSafeParcelableFieldId(), bundle, true);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    protected final void setStringsInternal(FastJsonResponse.Field<?, ?> field, String str, ArrayList<String> arrayList) {
        zaG(field);
        int size = ((ArrayList) o.a(arrayList)).size();
        String[] strArr = new String[size];
        for (int i = 0; i < size; i++) {
            strArr[i] = arrayList.get(i);
        }
        a.a(this.zab, field.getSafeParcelableFieldId(), strArr, true);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final String toString() {
        o.a(this.zad, "Cannot convert to JSON on client side.");
        Parcel zaE = zaE();
        zaE.setDataPosition(0);
        StringBuilder sb = new StringBuilder(100);
        zaH(sb, (Map) o.a(this.zad.zad((String) o.a(this.zae))), zaE);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 1, this.zaa);
        a.a(parcel, 2, zaE(), false);
        int i2 = this.zac;
        a.a(parcel, 3, i2 != 0 ? i2 != 1 ? this.zad : this.zad : null, i, false);
        a.b(parcel, a2);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    protected final void zaA(FastJsonResponse.Field<?, ?> field, String str, BigDecimal bigDecimal) {
        zaG(field);
        Parcel parcel = this.zab;
        int safeParcelableFieldId = field.getSafeParcelableFieldId();
        if (bigDecimal == null) {
            a.b(parcel, safeParcelableFieldId, 0);
            return;
        }
        int a2 = a.a(parcel, safeParcelableFieldId);
        parcel.writeByteArray(bigDecimal.unscaledValue().toByteArray());
        parcel.writeInt(bigDecimal.scale());
        a.b(parcel, a2);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    protected final void zaB(FastJsonResponse.Field<?, ?> field, String str, ArrayList<BigDecimal> arrayList) {
        zaG(field);
        int size = ((ArrayList) o.a(arrayList)).size();
        BigDecimal[] bigDecimalArr = new BigDecimal[size];
        for (int i = 0; i < size; i++) {
            bigDecimalArr[i] = arrayList.get(i);
        }
        Parcel parcel = this.zab;
        int a2 = a.a(parcel, field.getSafeParcelableFieldId());
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            parcel.writeByteArray(bigDecimalArr[i2].unscaledValue().toByteArray());
            parcel.writeInt(bigDecimalArr[i2].scale());
        }
        a.b(parcel, a2);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    protected final void zaC(FastJsonResponse.Field<?, ?> field, String str, ArrayList<Boolean> arrayList) {
        zaG(field);
        int size = ((ArrayList) o.a(arrayList)).size();
        boolean[] zArr = new boolean[size];
        for (int i = 0; i < size; i++) {
            zArr[i] = arrayList.get(i).booleanValue();
        }
        Parcel parcel = this.zab;
        int a2 = a.a(parcel, field.getSafeParcelableFieldId());
        parcel.writeBooleanArray(zArr);
        a.b(parcel, a2);
    }

    public final Parcel zaE() {
        int i = this.zaf;
        if (i == 0) {
            int a2 = a.a(this.zab, 20293);
            this.zag = a2;
            a.b(this.zab, a2);
            this.zaf = 2;
        } else if (i == 1) {
            a.b(this.zab, this.zag);
            this.zaf = 2;
        }
        return this.zab;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    protected final void zas(FastJsonResponse.Field<?, ?> field, String str, ArrayList<Integer> arrayList) {
        zaG(field);
        int size = ((ArrayList) o.a(arrayList)).size();
        int[] iArr = new int[size];
        for (int i = 0; i < size; i++) {
            iArr[i] = arrayList.get(i).intValue();
        }
        a.a(this.zab, field.getSafeParcelableFieldId(), iArr, true);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    protected final void zat(FastJsonResponse.Field<?, ?> field, String str, BigInteger bigInteger) {
        zaG(field);
        Parcel parcel = this.zab;
        int safeParcelableFieldId = field.getSafeParcelableFieldId();
        if (bigInteger == null) {
            a.b(parcel, safeParcelableFieldId, 0);
            return;
        }
        int a2 = a.a(parcel, safeParcelableFieldId);
        parcel.writeByteArray(bigInteger.toByteArray());
        a.b(parcel, a2);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    protected final void zau(FastJsonResponse.Field<?, ?> field, String str, ArrayList<BigInteger> arrayList) {
        zaG(field);
        int size = ((ArrayList) o.a(arrayList)).size();
        BigInteger[] bigIntegerArr = new BigInteger[size];
        for (int i = 0; i < size; i++) {
            bigIntegerArr[i] = arrayList.get(i);
        }
        Parcel parcel = this.zab;
        int a2 = a.a(parcel, field.getSafeParcelableFieldId());
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            parcel.writeByteArray(bigIntegerArr[i2].toByteArray());
        }
        a.b(parcel, a2);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    protected final void zav(FastJsonResponse.Field<?, ?> field, String str, ArrayList<Long> arrayList) {
        zaG(field);
        int size = ((ArrayList) o.a(arrayList)).size();
        long[] jArr = new long[size];
        for (int i = 0; i < size; i++) {
            jArr[i] = arrayList.get(i).longValue();
        }
        Parcel parcel = this.zab;
        int a2 = a.a(parcel, field.getSafeParcelableFieldId());
        parcel.writeLongArray(jArr);
        a.b(parcel, a2);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    protected final void zaw(FastJsonResponse.Field<?, ?> field, String str, float f) {
        zaG(field);
        a.a(this.zab, field.getSafeParcelableFieldId(), f);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    protected final void zax(FastJsonResponse.Field<?, ?> field, String str, ArrayList<Float> arrayList) {
        zaG(field);
        int size = ((ArrayList) o.a(arrayList)).size();
        float[] fArr = new float[size];
        for (int i = 0; i < size; i++) {
            fArr[i] = arrayList.get(i).floatValue();
        }
        Parcel parcel = this.zab;
        int a2 = a.a(parcel, field.getSafeParcelableFieldId());
        parcel.writeFloatArray(fArr);
        a.b(parcel, a2);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    protected final void zay(FastJsonResponse.Field<?, ?> field, String str, double d2) {
        zaG(field);
        a.a(this.zab, field.getSafeParcelableFieldId(), d2);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    protected final void zaz(FastJsonResponse.Field<?, ?> field, String str, ArrayList<Double> arrayList) {
        zaG(field);
        int size = ((ArrayList) o.a(arrayList)).size();
        double[] dArr = new double[size];
        for (int i = 0; i < size; i++) {
            dArr[i] = arrayList.get(i).doubleValue();
        }
        Parcel parcel = this.zab;
        int a2 = a.a(parcel, field.getSafeParcelableFieldId());
        parcel.writeDoubleArray(dArr);
        a.b(parcel, a2);
    }
}
