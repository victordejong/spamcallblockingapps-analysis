package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.server.converter.StringToIntConverter;
import com.google.android.gms.common.server.converter.zaa;
import com.google.android.gms.common.util.Base64Utils;
import com.google.android.gms.common.util.JsonUtils;
import com.google.android.gms.common.util.MapUtils;
import com.google.android.gms.common.util.VisibleForTesting;
import com.razorpay.AnalyticsConstants;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
@ShowFirstParty
@KeepForSdk
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/server/response/FastJsonResponse.class */
public abstract class FastJsonResponse {

    @VisibleForTesting
    @SafeParcelable.Class
    @ShowFirstParty
    @KeepForSdk
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/server/response/FastJsonResponse$Field.class */
    public static class Field<I, O> extends AbstractSafeParcelable {
        public static final zaj CREATOR = new zaj();
        @SafeParcelable.VersionField

        /* renamed from: a */
        public final int f6085a;
        @SafeParcelable.Field

        /* renamed from: b */
        public final int f6086b;
        @SafeParcelable.Field

        /* renamed from: c */
        public final boolean f6087c;
        @SafeParcelable.Field

        /* renamed from: d */
        public final int f6088d;
        @SafeParcelable.Field

        /* renamed from: e */
        public final boolean f6089e;
        @RecentlyNonNull
        @SafeParcelable.Field

        /* renamed from: f */
        public final String f6090f;
        @SafeParcelable.Field

        /* renamed from: g */
        public final int f6091g;
        @RecentlyNullable

        /* renamed from: h */
        public final Class<? extends FastJsonResponse> f6092h;
        @RecentlyNullable
        @SafeParcelable.Field

        /* renamed from: i */
        public final String f6093i;

        /* renamed from: j */
        public zan f6094j;
        @SafeParcelable.Field

        /* renamed from: k */
        public FieldConverter<I, O> f6095k;

        @SafeParcelable.Constructor
        public Field(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) int i2, @SafeParcelable.Param(id = 3) boolean z, @SafeParcelable.Param(id = 4) int i3, @SafeParcelable.Param(id = 5) boolean z2, @SafeParcelable.Param(id = 6) String str, @SafeParcelable.Param(id = 7) int i4, @SafeParcelable.Param(id = 8) String str2, @SafeParcelable.Param(id = 9) zaa zaaVar) {
            this.f6085a = i;
            this.f6086b = i2;
            this.f6087c = z;
            this.f6088d = i3;
            this.f6089e = z2;
            this.f6090f = str;
            this.f6091g = i4;
            if (str2 == null) {
                this.f6092h = null;
                this.f6093i = null;
            } else {
                this.f6092h = SafeParcelResponse.class;
                this.f6093i = str2;
            }
            if (zaaVar == null) {
                this.f6095k = null;
                return;
            }
            StringToIntConverter stringToIntConverter = zaaVar.f6081b;
            if (stringToIntConverter == null) {
                throw new IllegalStateException("There was no converter wrapped in this ConverterWrapper.");
            }
            this.f6095k = stringToIntConverter;
        }

        public Field(int i, boolean z, int i2, boolean z2, @RecentlyNonNull String str, int i3, Class<? extends FastJsonResponse> cls, FieldConverter<I, O> fieldConverter) {
            this.f6085a = 1;
            this.f6086b = i;
            this.f6087c = z;
            this.f6088d = i2;
            this.f6089e = z2;
            this.f6090f = str;
            this.f6091g = i3;
            this.f6092h = cls;
            if (cls == null) {
                this.f6093i = null;
            } else {
                this.f6093i = cls.getCanonicalName();
            }
            this.f6095k = null;
        }

        @RecentlyNonNull
        @KeepForSdk
        /* renamed from: o2 */
        public static <T extends FastJsonResponse> Field<T, T> m38816o2(@RecentlyNonNull String str, int i, @RecentlyNonNull Class<T> cls) {
            return new Field<>(11, false, 11, false, str, i, cls, null);
        }

        @RecentlyNonNull
        @KeepForSdk
        /* renamed from: p2 */
        public static Field<String, String> m38815p2(@RecentlyNonNull String str, int i) {
            return new Field<>(7, false, 7, false, str, i, null, null);
        }

        @RecentlyNonNull
        @KeepForSdk
        /* renamed from: q2 */
        public static Field<ArrayList<String>, ArrayList<String>> m38814q2(@RecentlyNonNull String str, int i) {
            return new Field<>(7, true, 7, true, str, i, null, null);
        }

        @RecentlyNonNull
        /* renamed from: r2 */
        public final Map<String, Field<?, ?>> m38813r2() {
            Objects.requireNonNull(this.f6093i, "null reference");
            Objects.requireNonNull(this.f6094j, "null reference");
            Map<String, Field<?, ?>> m38805o2 = this.f6094j.m38805o2(this.f6093i);
            Objects.requireNonNull(m38805o2, "null reference");
            return m38805o2;
        }

        @RecentlyNonNull
        public final String toString() {
            Objects.ToStringHelper toStringHelper = new Objects.ToStringHelper(this);
            toStringHelper.m38909a("versionCode", Integer.valueOf(this.f6085a));
            toStringHelper.m38909a("typeIn", Integer.valueOf(this.f6086b));
            toStringHelper.m38909a("typeInArray", Boolean.valueOf(this.f6087c));
            toStringHelper.m38909a("typeOut", Integer.valueOf(this.f6088d));
            toStringHelper.m38909a("typeOutArray", Boolean.valueOf(this.f6089e));
            toStringHelper.m38909a("outputFieldName", this.f6090f);
            toStringHelper.m38909a("safeParcelFieldId", Integer.valueOf(this.f6091g));
            String str = this.f6093i;
            String str2 = str;
            if (str == null) {
                str2 = null;
            }
            toStringHelper.m38909a("concreteTypeName", str2);
            Class<? extends FastJsonResponse> cls = this.f6092h;
            if (cls != null) {
                toStringHelper.m38909a("concreteType.class", cls.getCanonicalName());
            }
            FieldConverter<I, O> fieldConverter = this.f6095k;
            if (fieldConverter != null) {
                toStringHelper.m38909a("converterName", fieldConverter.getClass().getCanonicalName());
            }
            return toStringHelper.toString();
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(@RecentlyNonNull Parcel parcel, int i) {
            zaa zaaVar;
            int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
            int i2 = this.f6085a;
            parcel.writeInt(262145);
            parcel.writeInt(i2);
            int i3 = this.f6086b;
            parcel.writeInt(262146);
            parcel.writeInt(i3);
            boolean z = this.f6087c;
            parcel.writeInt(262147);
            parcel.writeInt(z ? 1 : 0);
            int i4 = this.f6088d;
            parcel.writeInt(262148);
            parcel.writeInt(i4);
            boolean z2 = this.f6089e;
            parcel.writeInt(262149);
            parcel.writeInt(z2 ? 1 : 0);
            SafeParcelWriter.m38846q(parcel, 6, this.f6090f, false);
            int i5 = this.f6091g;
            parcel.writeInt(262151);
            parcel.writeInt(i5);
            String str = this.f6093i;
            String str2 = str;
            if (str == null) {
                str2 = null;
            }
            SafeParcelWriter.m38846q(parcel, 8, str2, false);
            FieldConverter<I, O> fieldConverter = this.f6095k;
            if (fieldConverter == null) {
                zaaVar = null;
            } else {
                Parcelable.Creator<zaa> creator = zaa.CREATOR;
                if (!(fieldConverter instanceof StringToIntConverter)) {
                    throw new IllegalArgumentException("Unsupported safe parcelable field converter class.");
                }
                zaaVar = new zaa((StringToIntConverter) fieldConverter);
            }
            SafeParcelWriter.m38847p(parcel, 9, zaaVar, i, false);
            SafeParcelWriter.m38840w(parcel, m38841v);
        }
    }

    @ShowFirstParty
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/server/response/FastJsonResponse$FieldConverter.class */
    public interface FieldConverter<I, O> {
        @RecentlyNullable
        /* renamed from: M1 */
        O mo38812M1(@RecentlyNonNull I i);

        @RecentlyNonNull
        /* renamed from: O1 */
        I mo38811O1(@RecentlyNonNull O o);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @RecentlyNonNull
    public static final <O, I> I zaD(@RecentlyNonNull Field<I, O> field, Object obj) {
        FieldConverter<I, O> fieldConverter = field.f6095k;
        if (fieldConverter != null) {
            java.util.Objects.requireNonNull(fieldConverter, "null reference");
            return field.f6095k.mo38811O1(obj);
        }
        return obj;
    }

    private final <I, O> void zaE(Field<I, O> field, I i) {
        String str = field.f6090f;
        java.util.Objects.requireNonNull(field.f6095k, "null reference");
        O mo38812M1 = field.f6095k.mo38812M1(i);
        java.util.Objects.requireNonNull(mo38812M1, "null reference");
        int i2 = field.f6088d;
        switch (i2) {
            case 0:
                setIntegerInternal(field, str, ((Integer) mo38812M1).intValue());
                return;
            case 1:
                zat(field, str, (BigInteger) mo38812M1);
                return;
            case 2:
                setLongInternal(field, str, ((Long) mo38812M1).longValue());
                return;
            case 3:
            default:
                throw new IllegalStateException(C22128a.m8690L1(44, "Unsupported type for conversion: ", i2));
            case 4:
                zay(field, str, ((Double) mo38812M1).doubleValue());
                return;
            case 5:
                zaA(field, str, (BigDecimal) mo38812M1);
                return;
            case 6:
                setBooleanInternal(field, str, ((Boolean) mo38812M1).booleanValue());
                return;
            case 7:
                setStringInternal(field, str, (String) mo38812M1);
                return;
            case 8:
            case 9:
                setDecodedBytesInternal(field, str, (byte[]) mo38812M1);
                return;
        }
    }

    private static final void zaF(StringBuilder sb, Field field, Object obj) {
        int i = field.f6086b;
        if (i == 11) {
            Class<? extends FastJsonResponse> cls = field.f6092h;
            java.util.Objects.requireNonNull(cls, "null reference");
            sb.append(cls.cast(obj).toString());
        } else if (i != 7) {
            sb.append(obj);
        } else {
            sb.append("\"");
            sb.append(JsonUtils.m38778a((String) obj));
            sb.append("\"");
        }
    }

    private static final <O> void zaG(String str) {
        if (Log.isLoggable("FastJsonResponse", 6)) {
            String.valueOf(str).length();
        }
    }

    @KeepForSdk
    public <T extends FastJsonResponse> void addConcreteTypeArrayInternal(@RecentlyNonNull Field field, @RecentlyNonNull String str, ArrayList<T> arrayList) {
        throw new UnsupportedOperationException("Concrete type array not supported");
    }

    @KeepForSdk
    public <T extends FastJsonResponse> void addConcreteTypeInternal(@RecentlyNonNull Field field, @RecentlyNonNull String str, @RecentlyNonNull T t) {
        throw new UnsupportedOperationException("Concrete type not supported");
    }

    @RecentlyNonNull
    @KeepForSdk
    public abstract Map<String, Field<?, ?>> getFieldMappings();

    @RecentlyNullable
    @KeepForSdk
    public Object getFieldValue(@RecentlyNonNull Field field) {
        String str = field.f6090f;
        if (field.f6092h != null) {
            Preconditions.m38894n(getValueObject(str) == null, "Concrete field shouldn't be value object: %s", field.f6090f);
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
        }
        return getValueObject(str);
    }

    @RecentlyNullable
    @KeepForSdk
    public abstract Object getValueObject(@RecentlyNonNull String str);

    @KeepForSdk
    public boolean isFieldSet(@RecentlyNonNull Field field) {
        if (field.f6088d == 11) {
            if (!field.f6089e) {
                throw new UnsupportedOperationException("Concrete types not supported");
            }
            throw new UnsupportedOperationException("Concrete type arrays not supported");
        }
        return isPrimitiveFieldSet(field.f6090f);
    }

    @KeepForSdk
    public abstract boolean isPrimitiveFieldSet(@RecentlyNonNull String str);

    @KeepForSdk
    public void setBooleanInternal(@RecentlyNonNull Field<?, ?> field, @RecentlyNonNull String str, boolean z) {
        throw new UnsupportedOperationException("Boolean not supported");
    }

    @KeepForSdk
    public void setDecodedBytesInternal(@RecentlyNonNull Field<?, ?> field, @RecentlyNonNull String str, byte[] bArr) {
        throw new UnsupportedOperationException("byte[] not supported");
    }

    @KeepForSdk
    public void setIntegerInternal(@RecentlyNonNull Field<?, ?> field, @RecentlyNonNull String str, int i) {
        throw new UnsupportedOperationException("Integer not supported");
    }

    @KeepForSdk
    public void setLongInternal(@RecentlyNonNull Field<?, ?> field, @RecentlyNonNull String str, long j) {
        throw new UnsupportedOperationException("Long not supported");
    }

    @KeepForSdk
    public void setStringInternal(@RecentlyNonNull Field<?, ?> field, @RecentlyNonNull String str, String str2) {
        throw new UnsupportedOperationException("String not supported");
    }

    @KeepForSdk
    public void setStringMapInternal(@RecentlyNonNull Field<?, ?> field, @RecentlyNonNull String str, Map<String, String> map) {
        throw new UnsupportedOperationException("String map not supported");
    }

    @KeepForSdk
    public void setStringsInternal(@RecentlyNonNull Field<?, ?> field, @RecentlyNonNull String str, ArrayList<String> arrayList) {
        throw new UnsupportedOperationException("String list not supported");
    }

    @RecentlyNonNull
    @KeepForSdk
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
                C22128a.m8669S0(sb, "\"", str, "\":");
                if (zaD != null) {
                    switch (field.f6088d) {
                        case 8:
                            sb.append("\"");
                            sb.append(Base64Utils.m38793a((byte[]) zaD));
                            sb.append("\"");
                            continue;
                        case 9:
                            sb.append("\"");
                            sb.append(Base64Utils.m38792b((byte[]) zaD));
                            sb.append("\"");
                            continue;
                        case 10:
                            MapUtils.m38777a(sb, (HashMap) zaD);
                            continue;
                        default:
                            if (!field.f6087c) {
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
                    sb.append(AnalyticsConstants.NULL);
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

    public void zaA(@RecentlyNonNull Field<?, ?> field, @RecentlyNonNull String str, BigDecimal bigDecimal) {
        throw new UnsupportedOperationException("BigDecimal not supported");
    }

    public void zaB(@RecentlyNonNull Field<?, ?> field, @RecentlyNonNull String str, ArrayList<BigDecimal> arrayList) {
        throw new UnsupportedOperationException("BigDecimal list not supported");
    }

    public void zaC(@RecentlyNonNull Field<?, ?> field, @RecentlyNonNull String str, ArrayList<Boolean> arrayList) {
        throw new UnsupportedOperationException("Boolean list not supported");
    }

    public final <O> void zaa(@RecentlyNonNull Field<Integer, O> field, int i) {
        if (field.f6095k != null) {
            zaE(field, Integer.valueOf(i));
        } else {
            setIntegerInternal(field, field.f6090f, i);
        }
    }

    public final <O> void zab(@RecentlyNonNull Field<ArrayList<Integer>, O> field, ArrayList<Integer> arrayList) {
        if (field.f6095k != null) {
            zaE(field, arrayList);
        } else {
            zas(field, field.f6090f, arrayList);
        }
    }

    public final <O> void zac(@RecentlyNonNull Field<BigInteger, O> field, BigInteger bigInteger) {
        if (field.f6095k != null) {
            zaE(field, bigInteger);
        } else {
            zat(field, field.f6090f, bigInteger);
        }
    }

    public final <O> void zad(@RecentlyNonNull Field<ArrayList<BigInteger>, O> field, ArrayList<BigInteger> arrayList) {
        if (field.f6095k != null) {
            zaE(field, arrayList);
        } else {
            zau(field, field.f6090f, arrayList);
        }
    }

    public final <O> void zae(@RecentlyNonNull Field<Long, O> field, long j) {
        if (field.f6095k != null) {
            zaE(field, Long.valueOf(j));
        } else {
            setLongInternal(field, field.f6090f, j);
        }
    }

    public final <O> void zaf(@RecentlyNonNull Field<ArrayList<Long>, O> field, ArrayList<Long> arrayList) {
        if (field.f6095k != null) {
            zaE(field, arrayList);
        } else {
            zav(field, field.f6090f, arrayList);
        }
    }

    public final <O> void zag(@RecentlyNonNull Field<Float, O> field, float f) {
        if (field.f6095k != null) {
            zaE(field, Float.valueOf(f));
        } else {
            zaw(field, field.f6090f, f);
        }
    }

    public final <O> void zah(@RecentlyNonNull Field<ArrayList<Float>, O> field, ArrayList<Float> arrayList) {
        if (field.f6095k != null) {
            zaE(field, arrayList);
        } else {
            zax(field, field.f6090f, arrayList);
        }
    }

    public final <O> void zai(@RecentlyNonNull Field<Double, O> field, double d) {
        if (field.f6095k != null) {
            zaE(field, Double.valueOf(d));
        } else {
            zay(field, field.f6090f, d);
        }
    }

    public final <O> void zaj(@RecentlyNonNull Field<ArrayList<Double>, O> field, ArrayList<Double> arrayList) {
        if (field.f6095k != null) {
            zaE(field, arrayList);
        } else {
            zaz(field, field.f6090f, arrayList);
        }
    }

    public final <O> void zak(@RecentlyNonNull Field<BigDecimal, O> field, BigDecimal bigDecimal) {
        if (field.f6095k != null) {
            zaE(field, bigDecimal);
        } else {
            zaA(field, field.f6090f, bigDecimal);
        }
    }

    public final <O> void zal(@RecentlyNonNull Field<ArrayList<BigDecimal>, O> field, ArrayList<BigDecimal> arrayList) {
        if (field.f6095k != null) {
            zaE(field, arrayList);
        } else {
            zaB(field, field.f6090f, arrayList);
        }
    }

    public final <O> void zam(@RecentlyNonNull Field<Boolean, O> field, boolean z) {
        if (field.f6095k != null) {
            zaE(field, Boolean.valueOf(z));
        } else {
            setBooleanInternal(field, field.f6090f, z);
        }
    }

    public final <O> void zan(@RecentlyNonNull Field<ArrayList<Boolean>, O> field, ArrayList<Boolean> arrayList) {
        if (field.f6095k != null) {
            zaE(field, arrayList);
        } else {
            zaC(field, field.f6090f, arrayList);
        }
    }

    public final <O> void zao(@RecentlyNonNull Field<String, O> field, String str) {
        if (field.f6095k != null) {
            zaE(field, str);
        } else {
            setStringInternal(field, field.f6090f, str);
        }
    }

    public final <O> void zap(@RecentlyNonNull Field<ArrayList<String>, O> field, ArrayList<String> arrayList) {
        if (field.f6095k != null) {
            zaE(field, arrayList);
        } else {
            setStringsInternal(field, field.f6090f, arrayList);
        }
    }

    public final <O> void zaq(@RecentlyNonNull Field<byte[], O> field, byte[] bArr) {
        if (field.f6095k != null) {
            zaE(field, bArr);
        } else {
            setDecodedBytesInternal(field, field.f6090f, bArr);
        }
    }

    public final <O> void zar(@RecentlyNonNull Field<Map<String, String>, O> field, Map<String, String> map) {
        if (field.f6095k != null) {
            zaE(field, map);
        } else {
            setStringMapInternal(field, field.f6090f, map);
        }
    }

    public void zas(@RecentlyNonNull Field<?, ?> field, @RecentlyNonNull String str, ArrayList<Integer> arrayList) {
        throw new UnsupportedOperationException("Integer list not supported");
    }

    public void zat(@RecentlyNonNull Field<?, ?> field, @RecentlyNonNull String str, BigInteger bigInteger) {
        throw new UnsupportedOperationException("BigInteger not supported");
    }

    public void zau(@RecentlyNonNull Field<?, ?> field, @RecentlyNonNull String str, ArrayList<BigInteger> arrayList) {
        throw new UnsupportedOperationException("BigInteger list not supported");
    }

    public void zav(@RecentlyNonNull Field<?, ?> field, @RecentlyNonNull String str, ArrayList<Long> arrayList) {
        throw new UnsupportedOperationException("Long list not supported");
    }

    public void zaw(@RecentlyNonNull Field<?, ?> field, @RecentlyNonNull String str, float f) {
        throw new UnsupportedOperationException("Float not supported");
    }

    public void zax(@RecentlyNonNull Field<?, ?> field, @RecentlyNonNull String str, ArrayList<Float> arrayList) {
        throw new UnsupportedOperationException("Float list not supported");
    }

    public void zay(@RecentlyNonNull Field<?, ?> field, @RecentlyNonNull String str, double d) {
        throw new UnsupportedOperationException("Double not supported");
    }

    public void zaz(@RecentlyNonNull Field<?, ?> field, @RecentlyNonNull String str, ArrayList<Double> arrayList) {
        throw new UnsupportedOperationException("Double list not supported");
    }
}
