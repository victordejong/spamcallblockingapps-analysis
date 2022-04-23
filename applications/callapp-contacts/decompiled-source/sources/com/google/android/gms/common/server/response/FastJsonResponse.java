package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.util.Log;
import com.google.android.gms.common.internal.m;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.server.converter.zaa;
import com.google.android.gms.common.util.JsonUtils;
import com.google.android.gms.common.util.c;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import kotlinx.serialization.json.internal.JsonReaderKt;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/server/response/FastJsonResponse.class */
public abstract class FastJsonResponse {

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/server/response/FastJsonResponse$Field.class */
    public static class Field<I, O> extends AbstractSafeParcelable {
        public static final j CREATOR = new j();
        protected final int zaa;
        protected final boolean zab;
        protected final int zac;
        protected final boolean zad;
        protected final String zae;
        protected final int zaf;
        protected final Class<? extends FastJsonResponse> zag;
        protected final String zah;
        private final int zai;
        private zan zaj;
        private FieldConverter<I, O> zak;

        /* JADX INFO: Access modifiers changed from: package-private */
        public Field(int i, int i2, boolean z, int i3, boolean z2, String str, int i4, String str2, zaa zaaVar) {
            this.zai = i;
            this.zaa = i2;
            this.zab = z;
            this.zac = i3;
            this.zad = z2;
            this.zae = str;
            this.zaf = i4;
            if (str2 == null) {
                this.zag = null;
                this.zah = null;
            } else {
                this.zag = SafeParcelResponse.class;
                this.zah = str2;
            }
            if (zaaVar == null) {
                this.zak = null;
            } else {
                this.zak = (FieldConverter<I, O>) zaaVar.zab();
            }
        }

        protected Field(int i, boolean z, int i2, boolean z2, String str, int i3, Class<? extends FastJsonResponse> cls, FieldConverter<I, O> fieldConverter) {
            this.zai = 1;
            this.zaa = i;
            this.zab = z;
            this.zac = i2;
            this.zad = z2;
            this.zae = str;
            this.zaf = i3;
            this.zag = cls;
            if (cls == null) {
                this.zah = null;
            } else {
                this.zah = cls.getCanonicalName();
            }
            this.zak = fieldConverter;
        }

        public static Field<byte[], byte[]> forBase64(String str, int i) {
            return new Field<>(8, false, 8, false, str, i, null, null);
        }

        public static Field<Boolean, Boolean> forBoolean(String str, int i) {
            return new Field<>(6, false, 6, false, str, i, null, null);
        }

        public static <T extends FastJsonResponse> Field<T, T> forConcreteType(String str, int i, Class<T> cls) {
            return new Field<>(11, false, 11, false, str, i, cls, null);
        }

        public static <T extends FastJsonResponse> Field<ArrayList<T>, ArrayList<T>> forConcreteTypeArray(String str, int i, Class<T> cls) {
            return new Field<>(11, true, 11, true, str, i, cls, null);
        }

        public static Field<Double, Double> forDouble(String str, int i) {
            return new Field<>(4, false, 4, false, str, i, null, null);
        }

        public static Field<Float, Float> forFloat(String str, int i) {
            return new Field<>(3, false, 3, false, str, i, null, null);
        }

        public static Field<Integer, Integer> forInteger(String str, int i) {
            return new Field<>(0, false, 0, false, str, i, null, null);
        }

        public static Field<Long, Long> forLong(String str, int i) {
            return new Field<>(2, false, 2, false, str, i, null, null);
        }

        public static Field<String, String> forString(String str, int i) {
            return new Field<>(7, false, 7, false, str, i, null, null);
        }

        public static Field<HashMap<String, String>, HashMap<String, String>> forStringMap(String str, int i) {
            return new Field<>(10, false, 10, false, str, i, null, null);
        }

        public static Field<ArrayList<String>, ArrayList<String>> forStrings(String str, int i) {
            return new Field<>(7, true, 7, true, str, i, null, null);
        }

        public static Field withConverter(String str, int i, FieldConverter<?, ?> fieldConverter, boolean z) {
            fieldConverter.zaa();
            fieldConverter.zab();
            return new Field(7, z, 0, false, str, i, null, fieldConverter);
        }

        public int getSafeParcelableFieldId() {
            return this.zaf;
        }

        public final String toString() {
            m.a a2 = m.a(this).a("versionCode", Integer.valueOf(this.zai)).a("typeIn", Integer.valueOf(this.zaa)).a("typeInArray", Boolean.valueOf(this.zab)).a("typeOut", Integer.valueOf(this.zac)).a("typeOutArray", Boolean.valueOf(this.zad)).a("outputFieldName", this.zae).a("safeParcelFieldId", Integer.valueOf(this.zaf)).a("concreteTypeName", zab());
            Class<? extends FastJsonResponse> cls = this.zag;
            if (cls != null) {
                a2.a("concreteType.class", cls.getCanonicalName());
            }
            FieldConverter<I, O> fieldConverter = this.zak;
            if (fieldConverter != null) {
                a2.a("converterName", fieldConverter.getClass().getCanonicalName());
            }
            return a2.toString();
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            int a2 = a.a(parcel, 20293);
            a.a(parcel, 1, this.zai);
            a.a(parcel, 2, this.zaa);
            a.a(parcel, 3, this.zab);
            a.a(parcel, 4, this.zac);
            a.a(parcel, 5, this.zad);
            a.a(parcel, 6, this.zae, false);
            a.a(parcel, 7, getSafeParcelableFieldId());
            a.a(parcel, 8, zab(), false);
            a.a(parcel, 9, zae(), i, false);
            a.b(parcel, a2);
        }

        public final Field<I, O> zaa() {
            return new Field<>(this.zai, this.zaa, this.zab, this.zac, this.zad, this.zae, this.zaf, this.zah, zae());
        }

        final String zab() {
            String str = this.zah;
            String str2 = str;
            if (str == null) {
                str2 = null;
            }
            return str2;
        }

        public final boolean zac() {
            return this.zak != null;
        }

        public final void zad(zan zanVar) {
            this.zaj = zanVar;
        }

        final zaa zae() {
            FieldConverter<I, O> fieldConverter = this.zak;
            if (fieldConverter == null) {
                return null;
            }
            return zaa.zaa(fieldConverter);
        }

        public final FastJsonResponse zaf() throws InstantiationException, IllegalAccessException {
            o.a(this.zag);
            Class<? extends FastJsonResponse> cls = this.zag;
            if (cls != SafeParcelResponse.class) {
                return (FastJsonResponse) cls.newInstance();
            }
            o.a(this.zah);
            o.a(this.zaj, "The field mapping dictionary must be set if the concrete type is a SafeParcelResponse object.");
            return new SafeParcelResponse(this.zaj, this.zah);
        }

        public final Map<String, Field<?, ?>> zag() {
            o.a(this.zah);
            o.a(this.zaj);
            return (Map) o.a(this.zaj.zad(this.zah));
        }

        public final O zah(I i) {
            o.a(this.zak);
            return (O) o.a(this.zak.zad(i));
        }

        public final I zai(O o) {
            o.a(this.zak);
            return this.zak.zac(o);
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/server/response/FastJsonResponse$FieldConverter.class */
    public interface FieldConverter<I, O> {
        int zaa();

        int zab();

        I zac(O o);

        O zad(I i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    public static final <O, I> I zaD(Field<I, O> field, Object obj) {
        return ((Field) field).zak != null ? field.zai(obj) : obj;
    }

    private final <I, O> void zaE(Field<I, O> field, I i) {
        String str = field.zae;
        O zah = field.zah(i);
        int i2 = field.zac;
        switch (i2) {
            case 0:
                if (zah != null) {
                    setIntegerInternal(field, str, ((Integer) zah).intValue());
                    return;
                } else {
                    zaG(str);
                    return;
                }
            case 1:
                zat(field, str, (BigInteger) zah);
                return;
            case 2:
                if (zah != null) {
                    setLongInternal(field, str, ((Long) zah).longValue());
                    return;
                } else {
                    zaG(str);
                    return;
                }
            case 3:
            default:
                StringBuilder sb = new StringBuilder(44);
                sb.append("Unsupported type for conversion: ");
                sb.append(i2);
                throw new IllegalStateException(sb.toString());
            case 4:
                if (zah != null) {
                    zay(field, str, ((Double) zah).doubleValue());
                    return;
                } else {
                    zaG(str);
                    return;
                }
            case 5:
                zaA(field, str, (BigDecimal) zah);
                return;
            case 6:
                if (zah != null) {
                    setBooleanInternal(field, str, ((Boolean) zah).booleanValue());
                    return;
                } else {
                    zaG(str);
                    return;
                }
            case 7:
                setStringInternal(field, str, (String) zah);
                return;
            case 8:
            case 9:
                if (zah != null) {
                    setDecodedBytesInternal(field, str, (byte[]) zah);
                    return;
                } else {
                    zaG(str);
                    return;
                }
        }
    }

    private static final void zaF(StringBuilder sb, Field field, Object obj) {
        int i = field.zaa;
        if (i == 11) {
            Class<? extends FastJsonResponse> cls = field.zag;
            o.a(cls);
            sb.append(((FastJsonResponse) cls.cast(obj)).toString());
        } else if (i == 7) {
            sb.append("\"");
            sb.append(JsonUtils.escapeString((String) obj));
            sb.append("\"");
        } else {
            sb.append(obj);
        }
    }

    private static final <O> void zaG(String str) {
        if (Log.isLoggable("FastJsonResponse", 6)) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 58);
            sb.append("Output field (");
            sb.append(str);
            sb.append(") has a null value, but expected a primitive");
            Log.e("FastJsonResponse", sb.toString());
        }
    }

    public <T extends FastJsonResponse> void addConcreteTypeArrayInternal(Field field, String str, ArrayList<T> arrayList) {
        throw new UnsupportedOperationException("Concrete type array not supported");
    }

    public <T extends FastJsonResponse> void addConcreteTypeInternal(Field field, String str, T t) {
        throw new UnsupportedOperationException("Concrete type not supported");
    }

    public abstract Map<String, Field<?, ?>> getFieldMappings();

    /* JADX INFO: Access modifiers changed from: protected */
    public Object getFieldValue(Field field) {
        String str = field.zae;
        if (field.zag == null) {
            return getValueObject(str);
        }
        boolean z = getValueObject(str) == null;
        String str2 = field.zae;
        if (z) {
            try {
                char upperCase = Character.toUpperCase(str.charAt(0));
                String substring = str.substring(1);
                StringBuilder sb = new StringBuilder(String.valueOf(substring).length() + 4);
                sb.append("get");
                sb.append(upperCase);
                sb.append(substring);
                return getClass().getMethod(sb.toString(), new Class[0]).invoke(this, new Object[0]);
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        } else {
            throw new IllegalStateException(String.format("Concrete field shouldn't be value object: %s", str2));
        }
    }

    protected abstract Object getValueObject(String str);

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean isFieldSet(Field field) {
        if (field.zac != 11) {
            return isPrimitiveFieldSet(field.zae);
        }
        if (field.zad) {
            throw new UnsupportedOperationException("Concrete type arrays not supported");
        }
        throw new UnsupportedOperationException("Concrete types not supported");
    }

    protected abstract boolean isPrimitiveFieldSet(String str);

    protected void setBooleanInternal(Field<?, ?> field, String str, boolean z) {
        throw new UnsupportedOperationException("Boolean not supported");
    }

    protected void setDecodedBytesInternal(Field<?, ?> field, String str, byte[] bArr) {
        throw new UnsupportedOperationException("byte[] not supported");
    }

    protected void setIntegerInternal(Field<?, ?> field, String str, int i) {
        throw new UnsupportedOperationException("Integer not supported");
    }

    protected void setLongInternal(Field<?, ?> field, String str, long j) {
        throw new UnsupportedOperationException("Long not supported");
    }

    protected void setStringInternal(Field<?, ?> field, String str, String str2) {
        throw new UnsupportedOperationException("String not supported");
    }

    protected void setStringMapInternal(Field<?, ?> field, String str, Map<String, String> map) {
        throw new UnsupportedOperationException("String map not supported");
    }

    protected void setStringsInternal(Field<?, ?> field, String str, ArrayList<String> arrayList) {
        throw new UnsupportedOperationException("String list not supported");
    }

    public String toString() {
        Map<String, Field<?, ?>> fieldMappings = getFieldMappings();
        StringBuilder sb = new StringBuilder(100);
        for (String str : fieldMappings.keySet()) {
            Field<?, ?> field = fieldMappings.get(str);
            if (isFieldSet(field)) {
                Object zaD = zaD(field, getFieldValue(field));
                if (sb.length() == 0) {
                    sb.append("{");
                } else {
                    sb.append(",");
                }
                sb.append("\"");
                sb.append(str);
                sb.append("\":");
                if (zaD != null) {
                    switch (field.zac) {
                        case 8:
                            sb.append("\"");
                            sb.append(c.a((byte[]) zaD));
                            sb.append("\"");
                            continue;
                        case 9:
                            sb.append("\"");
                            sb.append(c.b((byte[]) zaD));
                            sb.append("\"");
                            continue;
                        case 10:
                            com.google.android.gms.common.util.m.a(sb, (HashMap) zaD);
                            continue;
                        default:
                            if (!field.zab) {
                                zaF(sb, field, zaD);
                                break;
                            } else {
                                ArrayList arrayList = (ArrayList) zaD;
                                sb.append("[");
                                int size = arrayList.size();
                                for (int i = 0; i < size; i++) {
                                    if (i > 0) {
                                        sb.append(",");
                                    }
                                    Object obj = arrayList.get(i);
                                    if (obj != null) {
                                        zaF(sb, field, obj);
                                    }
                                }
                                sb.append("]");
                                continue;
                            }
                    }
                } else {
                    sb.append(JsonReaderKt.NULL);
                }
            }
        }
        if (sb.length() > 0) {
            sb.append("}");
        } else {
            sb.append("{}");
        }
        return sb.toString();
    }

    protected void zaA(Field<?, ?> field, String str, BigDecimal bigDecimal) {
        throw new UnsupportedOperationException("BigDecimal not supported");
    }

    protected void zaB(Field<?, ?> field, String str, ArrayList<BigDecimal> arrayList) {
        throw new UnsupportedOperationException("BigDecimal list not supported");
    }

    protected void zaC(Field<?, ?> field, String str, ArrayList<Boolean> arrayList) {
        throw new UnsupportedOperationException("Boolean list not supported");
    }

    public final <O> void zaa(Field<Integer, O> field, int i) {
        if (((Field) field).zak != null) {
            zaE(field, Integer.valueOf(i));
        } else {
            setIntegerInternal(field, field.zae, i);
        }
    }

    public final <O> void zab(Field<ArrayList<Integer>, O> field, ArrayList<Integer> arrayList) {
        if (((Field) field).zak != null) {
            zaE(field, arrayList);
        } else {
            zas(field, field.zae, arrayList);
        }
    }

    public final <O> void zac(Field<BigInteger, O> field, BigInteger bigInteger) {
        if (((Field) field).zak != null) {
            zaE(field, bigInteger);
        } else {
            zat(field, field.zae, bigInteger);
        }
    }

    public final <O> void zad(Field<ArrayList<BigInteger>, O> field, ArrayList<BigInteger> arrayList) {
        if (((Field) field).zak != null) {
            zaE(field, arrayList);
        } else {
            zau(field, field.zae, arrayList);
        }
    }

    public final <O> void zae(Field<Long, O> field, long j) {
        if (((Field) field).zak != null) {
            zaE(field, Long.valueOf(j));
        } else {
            setLongInternal(field, field.zae, j);
        }
    }

    public final <O> void zaf(Field<ArrayList<Long>, O> field, ArrayList<Long> arrayList) {
        if (((Field) field).zak != null) {
            zaE(field, arrayList);
        } else {
            zav(field, field.zae, arrayList);
        }
    }

    public final <O> void zag(Field<Float, O> field, float f) {
        if (((Field) field).zak != null) {
            zaE(field, Float.valueOf(f));
        } else {
            zaw(field, field.zae, f);
        }
    }

    public final <O> void zah(Field<ArrayList<Float>, O> field, ArrayList<Float> arrayList) {
        if (((Field) field).zak != null) {
            zaE(field, arrayList);
        } else {
            zax(field, field.zae, arrayList);
        }
    }

    public final <O> void zai(Field<Double, O> field, double d2) {
        if (((Field) field).zak != null) {
            zaE(field, Double.valueOf(d2));
        } else {
            zay(field, field.zae, d2);
        }
    }

    public final <O> void zaj(Field<ArrayList<Double>, O> field, ArrayList<Double> arrayList) {
        if (((Field) field).zak != null) {
            zaE(field, arrayList);
        } else {
            zaz(field, field.zae, arrayList);
        }
    }

    public final <O> void zak(Field<BigDecimal, O> field, BigDecimal bigDecimal) {
        if (((Field) field).zak != null) {
            zaE(field, bigDecimal);
        } else {
            zaA(field, field.zae, bigDecimal);
        }
    }

    public final <O> void zal(Field<ArrayList<BigDecimal>, O> field, ArrayList<BigDecimal> arrayList) {
        if (((Field) field).zak != null) {
            zaE(field, arrayList);
        } else {
            zaB(field, field.zae, arrayList);
        }
    }

    public final <O> void zam(Field<Boolean, O> field, boolean z) {
        if (((Field) field).zak != null) {
            zaE(field, Boolean.valueOf(z));
        } else {
            setBooleanInternal(field, field.zae, z);
        }
    }

    public final <O> void zan(Field<ArrayList<Boolean>, O> field, ArrayList<Boolean> arrayList) {
        if (((Field) field).zak != null) {
            zaE(field, arrayList);
        } else {
            zaC(field, field.zae, arrayList);
        }
    }

    public final <O> void zao(Field<String, O> field, String str) {
        if (((Field) field).zak != null) {
            zaE(field, str);
        } else {
            setStringInternal(field, field.zae, str);
        }
    }

    public final <O> void zap(Field<ArrayList<String>, O> field, ArrayList<String> arrayList) {
        if (((Field) field).zak != null) {
            zaE(field, arrayList);
        } else {
            setStringsInternal(field, field.zae, arrayList);
        }
    }

    public final <O> void zaq(Field<byte[], O> field, byte[] bArr) {
        if (((Field) field).zak != null) {
            zaE(field, bArr);
        } else {
            setDecodedBytesInternal(field, field.zae, bArr);
        }
    }

    public final <O> void zar(Field<Map<String, String>, O> field, Map<String, String> map) {
        if (((Field) field).zak != null) {
            zaE(field, map);
        } else {
            setStringMapInternal(field, field.zae, map);
        }
    }

    protected void zas(Field<?, ?> field, String str, ArrayList<Integer> arrayList) {
        throw new UnsupportedOperationException("Integer list not supported");
    }

    protected void zat(Field<?, ?> field, String str, BigInteger bigInteger) {
        throw new UnsupportedOperationException("BigInteger not supported");
    }

    protected void zau(Field<?, ?> field, String str, ArrayList<BigInteger> arrayList) {
        throw new UnsupportedOperationException("BigInteger list not supported");
    }

    protected void zav(Field<?, ?> field, String str, ArrayList<Long> arrayList) {
        throw new UnsupportedOperationException("Long list not supported");
    }

    protected void zaw(Field<?, ?> field, String str, float f) {
        throw new UnsupportedOperationException("Float not supported");
    }

    protected void zax(Field<?, ?> field, String str, ArrayList<Float> arrayList) {
        throw new UnsupportedOperationException("Float list not supported");
    }

    protected void zay(Field<?, ?> field, String str, double d2) {
        throw new UnsupportedOperationException("Double not supported");
    }

    protected void zaz(Field<?, ?> field, String str, ArrayList<Double> arrayList) {
        throw new UnsupportedOperationException("Double list not supported");
    }
}
