package com.google.android.gms.common.server.response;

import android.util.Log;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.util.Base64Utils;
import com.google.android.gms.common.util.JsonUtils;
import com.google.android.gms.common.util.MapUtils;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
@ShowFirstParty
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/response/FastJsonResponse.class */
public abstract class FastJsonResponse {

    @ShowFirstParty
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/response/FastJsonResponse$FieldConverter.class */
    public interface FieldConverter<I, O> {
        int zaa();

        I zaa(O o);

        int zab();

        O zab(I i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <O, I> I zaa(Field<I, O> field, Object obj) {
        return Field.zaa(field) != null ? (I) field.zab(obj) : obj;
    }

    private static <O> void zaa(String str) {
        if (Log.isLoggable("FastJsonResponse", 6)) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 58);
            sb.append("Output field (");
            sb.append(str);
            sb.append(") has a null value, but expected a primitive");
            Log.e("FastJsonResponse", sb.toString());
        }
    }

    private static void zaa(StringBuilder sb, Field field, Object obj) {
        String str;
        int i = field.zaa;
        if (i == 11) {
            Class cls = field.zag;
            Preconditions.checkNotNull(cls);
            str = ((FastJsonResponse) cls.cast(obj)).toString();
        } else if (i != 7) {
            sb.append(obj);
            return;
        } else {
            str = "\"";
            sb.append("\"");
            sb.append(JsonUtils.escapeString((String) obj));
        }
        sb.append(str);
    }

    private final <I, O> void zab(Field<I, O> field, I i) {
        String str = field.zae;
        Object zaa = field.zaa(i);
        switch (field.zac) {
            case 0:
                if (zaa != null) {
                    setIntegerInternal(field, str, ((Integer) zaa).intValue());
                    return;
                } else {
                    zaa(str);
                    return;
                }
            case 1:
                zaa((Field<?, ?>) field, str, (BigInteger) zaa);
                return;
            case 2:
                if (zaa != null) {
                    setLongInternal(field, str, ((Long) zaa).longValue());
                    return;
                } else {
                    zaa(str);
                    return;
                }
            case 3:
            default:
                int i2 = field.zac;
                StringBuilder sb = new StringBuilder(44);
                sb.append("Unsupported type for conversion: ");
                sb.append(i2);
                throw new IllegalStateException(sb.toString());
            case 4:
                if (zaa != null) {
                    zaa((Field<?, ?>) field, str, ((Double) zaa).doubleValue());
                    return;
                } else {
                    zaa(str);
                    return;
                }
            case 5:
                zaa((Field<?, ?>) field, str, (BigDecimal) zaa);
                return;
            case 6:
                if (zaa != null) {
                    setBooleanInternal(field, str, ((Boolean) zaa).booleanValue());
                    return;
                } else {
                    zaa(str);
                    return;
                }
            case 7:
                setStringInternal(field, str, (String) zaa);
                return;
            case 8:
            case 9:
                if (zaa != null) {
                    setDecodedBytesInternal(field, str, (byte[]) zaa);
                    return;
                } else {
                    zaa(str);
                    return;
                }
        }
    }

    @KeepForSdk
    public <T extends FastJsonResponse> void addConcreteTypeArrayInternal(Field<?, ?> field, String str, ArrayList<T> arrayList) {
        throw new UnsupportedOperationException("Concrete type array not supported");
    }

    @KeepForSdk
    public <T extends FastJsonResponse> void addConcreteTypeInternal(Field<?, ?> field, String str, T t) {
        throw new UnsupportedOperationException("Concrete type not supported");
    }

    @KeepForSdk
    public abstract Map<String, Field<?, ?>> getFieldMappings();

    @KeepForSdk
    public Object getFieldValue(Field field) {
        String str = field.zae;
        if (field.zag != null) {
            Preconditions.checkState(getValueObject(str) == null, "Concrete field shouldn't be value object: %s", field.zae);
            boolean z = field.zad;
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

    @KeepForSdk
    public abstract Object getValueObject(String str);

    @KeepForSdk
    public boolean isFieldSet(Field field) {
        UnsupportedOperationException unsupportedOperationException;
        if (field.zac == 11) {
            boolean z = field.zad;
            String str = field.zae;
            if (unsupportedOperationException == null) {
                throw new UnsupportedOperationException("Concrete types not supported");
            }
            throw new UnsupportedOperationException("Concrete type arrays not supported");
        }
        return isPrimitiveFieldSet(field.zae);
    }

    @KeepForSdk
    public abstract boolean isPrimitiveFieldSet(String str);

    @KeepForSdk
    public void setBooleanInternal(Field<?, ?> field, String str, boolean z) {
        throw new UnsupportedOperationException("Boolean not supported");
    }

    @KeepForSdk
    public void setDecodedBytesInternal(Field<?, ?> field, String str, byte[] bArr) {
        throw new UnsupportedOperationException("byte[] not supported");
    }

    @KeepForSdk
    public void setIntegerInternal(Field<?, ?> field, String str, int i) {
        throw new UnsupportedOperationException("Integer not supported");
    }

    @KeepForSdk
    public void setLongInternal(Field<?, ?> field, String str, long j) {
        throw new UnsupportedOperationException("Long not supported");
    }

    @KeepForSdk
    public void setStringInternal(Field<?, ?> field, String str, String str2) {
        throw new UnsupportedOperationException("String not supported");
    }

    @KeepForSdk
    public void setStringMapInternal(Field<?, ?> field, String str, Map<String, String> map) {
        throw new UnsupportedOperationException("String map not supported");
    }

    @KeepForSdk
    public void setStringsInternal(Field<?, ?> field, String str, ArrayList<String> arrayList) {
        throw new UnsupportedOperationException("String list not supported");
    }

    @KeepForSdk
    public String toString() {
        String str;
        String encode;
        Map<String, Field<?, ?>> fieldMappings = getFieldMappings();
        StringBuilder sb = new StringBuilder(100);
        for (String str2 : fieldMappings.keySet()) {
            Field<?, ?> field = fieldMappings.get(str2);
            if (isFieldSet(field)) {
                Object zaa = zaa(field, getFieldValue(field));
                if (sb.length() == 0) {
                    sb.append("{");
                } else {
                    sb.append(",");
                }
                sb.append("\"");
                sb.append(str2);
                sb.append("\":");
                if (zaa != null) {
                    switch (field.zac) {
                        case 8:
                            sb.append("\"");
                            encode = Base64Utils.encode((byte[]) zaa);
                            sb.append(encode);
                            sb.append("\"");
                            break;
                        case 9:
                            sb.append("\"");
                            encode = Base64Utils.encodeUrlSafe((byte[]) zaa);
                            sb.append(encode);
                            sb.append("\"");
                            break;
                        case 10:
                            MapUtils.writeStringMapToJson(sb, (HashMap) zaa);
                            break;
                        default:
                            if (field.zab) {
                                ArrayList arrayList = (ArrayList) zaa;
                                sb.append("[");
                                int size = arrayList.size();
                                for (int i = 0; i < size; i++) {
                                    if (i > 0) {
                                        sb.append(",");
                                    }
                                    Object obj = arrayList.get(i);
                                    if (obj != null) {
                                        zaa(sb, field, obj);
                                    }
                                }
                                str = "]";
                                break;
                            } else {
                                zaa(sb, field, zaa);
                                break;
                            }
                    }
                } else {
                    str = "null";
                }
                sb.append(str);
            }
        }
        sb.append(sb.length() > 0 ? "}" : "{}");
        return sb.toString();
    }

    public final <O> void zaa(Field<Double, O> field, double d) {
        if (Field.zaa(field) != null) {
            zab((Field<Field<Double, O>, O>) field, (Field<Double, O>) Double.valueOf(d));
        } else {
            zaa(field, field.zae, d);
        }
    }

    public final <O> void zaa(Field<Float, O> field, float f) {
        if (Field.zaa(field) != null) {
            zab((Field<Field<Float, O>, O>) field, (Field<Float, O>) Float.valueOf(f));
        } else {
            zaa((Field<?, ?>) field, field.zae, f);
        }
    }

    public final <O> void zaa(Field<Integer, O> field, int i) {
        if (Field.zaa(field) != null) {
            zab((Field<Field<Integer, O>, O>) field, (Field<Integer, O>) Integer.valueOf(i));
        } else {
            setIntegerInternal(field, field.zae, i);
        }
    }

    public final <O> void zaa(Field<Long, O> field, long j) {
        if (Field.zaa(field) != null) {
            zab((Field<Field<Long, O>, O>) field, (Field<Long, O>) Long.valueOf(j));
        } else {
            setLongInternal(field, field.zae, j);
        }
    }

    public final <O> void zaa(Field<String, O> field, String str) {
        if (Field.zaa(field) != null) {
            zab((Field<Field<String, O>, O>) field, (Field<String, O>) str);
        } else {
            setStringInternal(field, field.zae, str);
        }
    }

    public void zaa(Field<?, ?> field, String str, double d) {
        throw new UnsupportedOperationException("Double not supported");
    }

    public void zaa(Field<?, ?> field, String str, float f) {
        throw new UnsupportedOperationException("Float not supported");
    }

    public void zaa(Field<?, ?> field, String str, BigDecimal bigDecimal) {
        throw new UnsupportedOperationException("BigDecimal not supported");
    }

    public void zaa(Field<?, ?> field, String str, BigInteger bigInteger) {
        throw new UnsupportedOperationException("BigInteger not supported");
    }

    public void zaa(Field<?, ?> field, String str, ArrayList<Integer> arrayList) {
        throw new UnsupportedOperationException("Integer list not supported");
    }

    public final <O> void zaa(Field<BigDecimal, O> field, BigDecimal bigDecimal) {
        if (Field.zaa(field) != null) {
            zab((Field<Field<BigDecimal, O>, O>) field, (Field<BigDecimal, O>) bigDecimal);
        } else {
            zaa(field, field.zae, bigDecimal);
        }
    }

    public final <O> void zaa(Field<BigInteger, O> field, BigInteger bigInteger) {
        if (Field.zaa(field) != null) {
            zab((Field<Field<BigInteger, O>, O>) field, (Field<BigInteger, O>) bigInteger);
        } else {
            zaa(field, field.zae, bigInteger);
        }
    }

    public final <O> void zaa(Field<ArrayList<Integer>, O> field, ArrayList<Integer> arrayList) {
        if (Field.zaa(field) != null) {
            zab((Field<Field<ArrayList<Integer>, O>, O>) field, (Field<ArrayList<Integer>, O>) arrayList);
        } else {
            zaa(field, field.zae, arrayList);
        }
    }

    public final <O> void zaa(Field<Map<String, String>, O> field, Map<String, String> map) {
        if (Field.zaa(field) != null) {
            zab((Field<Field<Map<String, String>, O>, O>) field, (Field<Map<String, String>, O>) map);
        } else {
            setStringMapInternal(field, field.zae, map);
        }
    }

    public final <O> void zaa(Field<Boolean, O> field, boolean z) {
        if (Field.zaa(field) != null) {
            zab((Field<Field<Boolean, O>, O>) field, (Field<Boolean, O>) Boolean.valueOf(z));
        } else {
            setBooleanInternal(field, field.zae, z);
        }
    }

    public final <O> void zaa(Field<byte[], O> field, byte[] bArr) {
        if (Field.zaa(field) != null) {
            zab((Field<Field<byte[], O>, O>) field, (Field<byte[], O>) bArr);
        } else {
            setDecodedBytesInternal(field, field.zae, bArr);
        }
    }

    public void zab(Field<?, ?> field, String str, ArrayList<BigInteger> arrayList) {
        throw new UnsupportedOperationException("BigInteger list not supported");
    }

    public final <O> void zab(Field<ArrayList<BigInteger>, O> field, ArrayList<BigInteger> arrayList) {
        if (Field.zaa(field) != null) {
            zab((Field<Field<ArrayList<BigInteger>, O>, O>) field, (Field<ArrayList<BigInteger>, O>) arrayList);
        } else {
            zab(field, field.zae, arrayList);
        }
    }

    public void zac(Field<?, ?> field, String str, ArrayList<Long> arrayList) {
        throw new UnsupportedOperationException("Long list not supported");
    }

    public final <O> void zac(Field<ArrayList<Long>, O> field, ArrayList<Long> arrayList) {
        if (Field.zaa(field) != null) {
            zab((Field<Field<ArrayList<Long>, O>, O>) field, (Field<ArrayList<Long>, O>) arrayList);
        } else {
            zac(field, field.zae, arrayList);
        }
    }

    public void zad(Field<?, ?> field, String str, ArrayList<Float> arrayList) {
        throw new UnsupportedOperationException("Float list not supported");
    }

    public final <O> void zad(Field<ArrayList<Float>, O> field, ArrayList<Float> arrayList) {
        if (Field.zaa(field) != null) {
            zab((Field<Field<ArrayList<Float>, O>, O>) field, (Field<ArrayList<Float>, O>) arrayList);
        } else {
            zad(field, field.zae, arrayList);
        }
    }

    public void zae(Field<?, ?> field, String str, ArrayList<Double> arrayList) {
        throw new UnsupportedOperationException("Double list not supported");
    }

    public final <O> void zae(Field<ArrayList<Double>, O> field, ArrayList<Double> arrayList) {
        if (Field.zaa(field) != null) {
            zab((Field<Field<ArrayList<Double>, O>, O>) field, (Field<ArrayList<Double>, O>) arrayList);
        } else {
            zae(field, field.zae, arrayList);
        }
    }

    public void zaf(Field<?, ?> field, String str, ArrayList<BigDecimal> arrayList) {
        throw new UnsupportedOperationException("BigDecimal list not supported");
    }

    public final <O> void zaf(Field<ArrayList<BigDecimal>, O> field, ArrayList<BigDecimal> arrayList) {
        if (Field.zaa(field) != null) {
            zab((Field<Field<ArrayList<BigDecimal>, O>, O>) field, (Field<ArrayList<BigDecimal>, O>) arrayList);
        } else {
            zaf(field, field.zae, arrayList);
        }
    }

    public void zag(Field<?, ?> field, String str, ArrayList<Boolean> arrayList) {
        throw new UnsupportedOperationException("Boolean list not supported");
    }

    public final <O> void zag(Field<ArrayList<Boolean>, O> field, ArrayList<Boolean> arrayList) {
        if (Field.zaa(field) != null) {
            zab((Field<Field<ArrayList<Boolean>, O>, O>) field, (Field<ArrayList<Boolean>, O>) arrayList);
        } else {
            zag(field, field.zae, arrayList);
        }
    }

    public final <O> void zah(Field<ArrayList<String>, O> field, ArrayList<String> arrayList) {
        if (Field.zaa(field) != null) {
            zab((Field<Field<ArrayList<String>, O>, O>) field, (Field<ArrayList<String>, O>) arrayList);
        } else {
            setStringsInternal(field, field.zae, arrayList);
        }
    }
}
