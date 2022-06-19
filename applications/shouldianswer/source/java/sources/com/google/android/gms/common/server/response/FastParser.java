package com.google.android.gms.common.server.response;

import android.util.Log;
import com.google.android.flexbox.FlexItem;
import com.google.android.gms.common.server.response.FastJsonResponse;
import com.google.android.gms.common.util.Base64Utils;
import com.google.android.gms.common.util.JsonUtils;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Stack;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/response/FastParser.class */
public class FastParser<T extends FastJsonResponse> {
    private static final char[] zaqg = {'u', 'l', 'l'};
    private static final char[] zaqh = {'r', 'u', 'e'};
    private static final char[] zaqi = {'r', 'u', 'e', '\"'};
    private static final char[] zaqj = {'a', 'l', 's', 'e'};
    private static final char[] zaqk = {'a', 'l', 's', 'e', '\"'};
    private static final char[] zaql = {'\n'};
    private static final zaa<Integer> zaqn = new com.google.android.gms.common.server.response.zaa();
    private static final zaa<Long> zaqo = new zab();
    private static final zaa<Float> zaqp = new zac();
    private static final zaa<Double> zaqq = new zad();
    private static final zaa<Boolean> zaqr = new zae();
    private static final zaa<String> zaqs = new zaf();
    private static final zaa<BigInteger> zaqt = new zag();
    private static final zaa<BigDecimal> zaqu = new zah();
    private final char[] zaqb = new char[1];
    private final char[] zaqc = new char[32];
    private final char[] zaqd = new char[1024];
    private final StringBuilder zaqe = new StringBuilder(32);
    private final StringBuilder zaqf = new StringBuilder(1024);
    private final Stack<Integer> zaqm = new Stack<>();

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/response/FastParser$ParseException.class */
    public static class ParseException extends Exception {
        public ParseException(String str) {
            super(str);
        }

        public ParseException(String str, Throwable th) {
            super(str, th);
        }

        public ParseException(Throwable th) {
            super(th);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/response/FastParser$zaa.class */
    public interface zaa<O> {
        O zah(FastParser fastParser, BufferedReader bufferedReader);
    }

    private final int zaa(BufferedReader bufferedReader, char[] cArr) {
        int i;
        char zaj = zaj(bufferedReader);
        if (zaj != 0) {
            if (zaj == ',') {
                throw new ParseException("Missing value");
            }
            if (zaj == 'n') {
                zab(bufferedReader, zaqg);
                return 0;
            }
            bufferedReader.mark(1024);
            if (zaj != '\"') {
                cArr[0] = zaj;
                int i2 = 1;
                while (true) {
                    i = i2;
                    if (i2 >= cArr.length) {
                        break;
                    }
                    i = i2;
                    if (bufferedReader.read(cArr, i2, 1) == -1) {
                        break;
                    } else if (cArr[i2] == '}' || cArr[i2] == ',' || Character.isWhitespace(cArr[i2]) || cArr[i2] == ']') {
                        break;
                    } else {
                        i2++;
                    }
                }
                bufferedReader.reset();
                bufferedReader.skip(i2 - 1);
                cArr[i2] = (char) 0;
                return i2;
            }
            int i3 = 0;
            boolean z = false;
            while (true) {
                i = i3;
                if (i3 >= cArr.length) {
                    break;
                }
                i = i3;
                if (bufferedReader.read(cArr, i3, 1) == -1) {
                    break;
                }
                char c = cArr[i3];
                if (Character.isISOControl(c)) {
                    throw new ParseException("Unexpected control character while reading string");
                }
                if (c == '\"' && !z) {
                    bufferedReader.reset();
                    bufferedReader.skip(i3 + 1);
                    return i3;
                }
                z = c == '\\' ? !z : false;
                i3++;
            }
            if (i != cArr.length) {
                throw new ParseException("Unexpected EOF");
            }
            throw new ParseException("Absurdly long value");
        }
        throw new ParseException("Unexpected EOF");
    }

    private final String zaa(BufferedReader bufferedReader) {
        this.zaqm.push(2);
        char zaj = zaj(bufferedReader);
        if (zaj == '\"') {
            this.zaqm.push(3);
            String zab = zab(bufferedReader, this.zaqc, this.zaqe, null);
            zak(3);
            if (zaj(bufferedReader) != ':') {
                throw new ParseException("Expected key/value separator");
            }
            return zab;
        } else if (zaj == ']') {
            zak(2);
            zak(1);
            zak(5);
            return null;
        } else if (zaj == '}') {
            zak(2);
            return null;
        } else {
            StringBuilder sb = new StringBuilder(19);
            sb.append("Unexpected token: ");
            sb.append(zaj);
            throw new ParseException(sb.toString());
        }
    }

    private final String zaa(BufferedReader bufferedReader, char[] cArr, StringBuilder sb, char[] cArr2) {
        char zaj = zaj(bufferedReader);
        if (zaj != '\"') {
            if (zaj != 'n') {
                throw new ParseException("Expected string");
            }
            zab(bufferedReader, zaqg);
            return null;
        }
        return zab(bufferedReader, cArr, sb, cArr2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final <T extends FastJsonResponse> ArrayList<T> zaa(BufferedReader bufferedReader, FastJsonResponse.Field<?, ?> field) {
        ArrayList<T> arrayList = (ArrayList<T>) new ArrayList();
        char zaj = zaj(bufferedReader);
        if (zaj == ']') {
            zak(5);
            return arrayList;
        } else if (zaj == 'n') {
            zab(bufferedReader, zaqg);
            zak(5);
            return null;
        } else if (zaj != '{') {
            StringBuilder sb = new StringBuilder(19);
            sb.append("Unexpected token: ");
            sb.append(zaj);
            throw new ParseException(sb.toString());
        } else {
            this.zaqm.push(1);
            while (true) {
                try {
                    FastJsonResponse zacp = field.zacp();
                    if (!zaa(bufferedReader, zacp)) {
                        return arrayList;
                    }
                    arrayList.add(zacp);
                    char zaj2 = zaj(bufferedReader);
                    if (zaj2 != ',') {
                        if (zaj2 == ']') {
                            zak(5);
                            return arrayList;
                        }
                        StringBuilder sb2 = new StringBuilder(19);
                        sb2.append("Unexpected token: ");
                        sb2.append(zaj2);
                        throw new ParseException(sb2.toString());
                    } else if (zaj(bufferedReader) != '{') {
                        throw new ParseException("Expected start of next object in array");
                    } else {
                        this.zaqm.push(1);
                    }
                } catch (IllegalAccessException e) {
                    throw new ParseException("Error instantiating inner object", e);
                } catch (InstantiationException e2) {
                    throw new ParseException("Error instantiating inner object", e2);
                }
            }
        }
    }

    private final <O> ArrayList<O> zaa(BufferedReader bufferedReader, zaa<O> zaaVar) {
        char zaj = zaj(bufferedReader);
        if (zaj == 'n') {
            zab(bufferedReader, zaqg);
            return null;
        } else if (zaj != '[') {
            throw new ParseException("Expected start of array");
        } else {
            this.zaqm.push(5);
            ArrayList<O> arrayList = new ArrayList<>();
            while (true) {
                bufferedReader.mark(1024);
                char zaj2 = zaj(bufferedReader);
                if (zaj2 == 0) {
                    throw new ParseException("Unexpected EOF");
                }
                if (zaj2 != ',') {
                    if (zaj2 == ']') {
                        zak(5);
                        return arrayList;
                    }
                    bufferedReader.reset();
                    arrayList.add(zaaVar.zah(this, bufferedReader));
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final boolean zaa(BufferedReader bufferedReader, FastJsonResponse fastJsonResponse) {
        HashMap hashMap;
        Map<String, FastJsonResponse.Field<?, ?>> fieldMappings = fastJsonResponse.getFieldMappings();
        String zaa2 = zaa(bufferedReader);
        if (zaa2 == null) {
            zak(1);
            return false;
        }
        while (zaa2 != null) {
            FastJsonResponse.Field<?, ?> field = fieldMappings.get(zaa2);
            if (field == null) {
                zaa2 = zab(bufferedReader);
            } else {
                this.zaqm.push(4);
                switch (field.zapr) {
                    case 0:
                        if (!field.zaps) {
                            fastJsonResponse.zaa((FastJsonResponse.Field) field, zad(bufferedReader));
                            break;
                        } else {
                            fastJsonResponse.zaa((FastJsonResponse.Field) field, (ArrayList<Integer>) zaa(bufferedReader, zaqn));
                            break;
                        }
                    case 1:
                        if (!field.zaps) {
                            fastJsonResponse.zaa((FastJsonResponse.Field) field, zaf(bufferedReader));
                            break;
                        } else {
                            fastJsonResponse.zab((FastJsonResponse.Field) field, (ArrayList<BigInteger>) zaa(bufferedReader, zaqt));
                            break;
                        }
                    case 2:
                        if (!field.zaps) {
                            fastJsonResponse.zaa((FastJsonResponse.Field) field, zae(bufferedReader));
                            break;
                        } else {
                            fastJsonResponse.zac(field, zaa(bufferedReader, zaqo));
                            break;
                        }
                    case 3:
                        if (!field.zaps) {
                            fastJsonResponse.zaa((FastJsonResponse.Field) field, zag(bufferedReader));
                            break;
                        } else {
                            fastJsonResponse.zad(field, zaa(bufferedReader, zaqp));
                            break;
                        }
                    case 4:
                        if (!field.zaps) {
                            fastJsonResponse.zaa(field, zah(bufferedReader));
                            break;
                        } else {
                            fastJsonResponse.zae(field, zaa(bufferedReader, zaqq));
                            break;
                        }
                    case 5:
                        if (!field.zaps) {
                            fastJsonResponse.zaa((FastJsonResponse.Field) field, zai(bufferedReader));
                            break;
                        } else {
                            fastJsonResponse.zaf(field, zaa(bufferedReader, zaqu));
                            break;
                        }
                    case 6:
                        if (!field.zaps) {
                            fastJsonResponse.zaa(field, zaa(bufferedReader, false));
                            break;
                        } else {
                            fastJsonResponse.zag(field, zaa(bufferedReader, zaqr));
                            break;
                        }
                    case 7:
                        if (!field.zaps) {
                            fastJsonResponse.zaa((FastJsonResponse.Field) field, zac(bufferedReader));
                            break;
                        } else {
                            fastJsonResponse.zah(field, zaa(bufferedReader, zaqs));
                            break;
                        }
                    case 8:
                        fastJsonResponse.zaa((FastJsonResponse.Field) field, Base64Utils.decode(zaa(bufferedReader, this.zaqd, this.zaqf, zaql)));
                        break;
                    case 9:
                        fastJsonResponse.zaa((FastJsonResponse.Field) field, Base64Utils.decodeUrlSafe(zaa(bufferedReader, this.zaqd, this.zaqf, zaql)));
                        break;
                    case 10:
                        char zaj = zaj(bufferedReader);
                        if (zaj == 'n') {
                            zab(bufferedReader, zaqg);
                            hashMap = null;
                        } else if (zaj != '{') {
                            throw new ParseException("Expected start of a map object");
                        } else {
                            this.zaqm.push(1);
                            hashMap = new HashMap();
                            while (true) {
                                char zaj2 = zaj(bufferedReader);
                                if (zaj2 == 0) {
                                    throw new ParseException("Unexpected EOF");
                                }
                                if (zaj2 == '\"') {
                                    String zab = zab(bufferedReader, this.zaqc, this.zaqe, null);
                                    if (zaj(bufferedReader) != ':') {
                                        String valueOf = String.valueOf(zab);
                                        throw new ParseException(valueOf.length() != 0 ? "No map value found for key ".concat(valueOf) : new String("No map value found for key "));
                                    } else if (zaj(bufferedReader) != '\"') {
                                        String valueOf2 = String.valueOf(zab);
                                        throw new ParseException(valueOf2.length() != 0 ? "Expected String value for key ".concat(valueOf2) : new String("Expected String value for key "));
                                    } else {
                                        hashMap.put(zab, zab(bufferedReader, this.zaqc, this.zaqe, null));
                                        char zaj3 = zaj(bufferedReader);
                                        if (zaj3 != ',') {
                                            if (zaj3 != '}') {
                                                StringBuilder sb = new StringBuilder(48);
                                                sb.append("Unexpected character while parsing string map: ");
                                                sb.append(zaj3);
                                                throw new ParseException(sb.toString());
                                            }
                                            zak(1);
                                        }
                                    }
                                } else if (zaj2 == '}') {
                                    zak(1);
                                }
                            }
                        }
                        fastJsonResponse.zaa((FastJsonResponse.Field) field, (Map<String, String>) hashMap);
                        break;
                    case 11:
                        if (field.zaps) {
                            char zaj4 = zaj(bufferedReader);
                            if (zaj4 == 'n') {
                                zab(bufferedReader, zaqg);
                                fastJsonResponse.addConcreteTypeArrayInternal(field, field.zapv, null);
                                break;
                            } else {
                                this.zaqm.push(5);
                                if (zaj4 != '[') {
                                    throw new ParseException("Expected array start");
                                }
                                fastJsonResponse.addConcreteTypeArrayInternal(field, field.zapv, zaa(bufferedReader, field));
                                break;
                            }
                        } else {
                            char zaj5 = zaj(bufferedReader);
                            if (zaj5 == 'n') {
                                zab(bufferedReader, zaqg);
                                fastJsonResponse.addConcreteTypeInternal(field, field.zapv, null);
                                break;
                            } else {
                                this.zaqm.push(1);
                                if (zaj5 != '{') {
                                    throw new ParseException("Expected start of object");
                                }
                                try {
                                    FastJsonResponse zacp = field.zacp();
                                    zaa(bufferedReader, zacp);
                                    fastJsonResponse.addConcreteTypeInternal(field, field.zapv, zacp);
                                    break;
                                } catch (IllegalAccessException e) {
                                    throw new ParseException("Error instantiating inner object", e);
                                } catch (InstantiationException e2) {
                                    throw new ParseException("Error instantiating inner object", e2);
                                }
                            }
                        }
                    default:
                        int i = field.zapr;
                        StringBuilder sb2 = new StringBuilder(30);
                        sb2.append("Invalid field type ");
                        sb2.append(i);
                        throw new ParseException(sb2.toString());
                }
                zak(4);
                zak(2);
                char zaj6 = zaj(bufferedReader);
                if (zaj6 == ',') {
                    zaa2 = zaa(bufferedReader);
                } else if (zaj6 != '}') {
                    StringBuilder sb3 = new StringBuilder(55);
                    sb3.append("Expected end of object or field separator, but found: ");
                    sb3.append(zaj6);
                    throw new ParseException(sb3.toString());
                } else {
                    zaa2 = null;
                }
            }
        }
        zak(1);
        return true;
    }

    public final boolean zaa(BufferedReader bufferedReader, boolean z) {
        while (true) {
            char zaj = zaj(bufferedReader);
            if (zaj != '\"') {
                if (zaj == 'f') {
                    zab(bufferedReader, z ? zaqk : zaqj);
                    return false;
                } else if (zaj == 'n') {
                    zab(bufferedReader, zaqg);
                    return false;
                } else if (zaj == 't') {
                    zab(bufferedReader, z ? zaqi : zaqh);
                    return true;
                } else {
                    StringBuilder sb = new StringBuilder(19);
                    sb.append("Unexpected token: ");
                    sb.append(zaj);
                    throw new ParseException(sb.toString());
                }
            } else if (z) {
                throw new ParseException("No boolean value found in string");
            } else {
                z = true;
            }
        }
    }

    private final String zab(BufferedReader bufferedReader) {
        bufferedReader.mark(1024);
        char zaj = zaj(bufferedReader);
        if (zaj != '\"') {
            if (zaj == ',') {
                throw new ParseException("Missing value");
            }
            int i = 1;
            if (zaj == '[') {
                this.zaqm.push(5);
                bufferedReader.mark(32);
                if (zaj(bufferedReader) != ']') {
                    bufferedReader.reset();
                    boolean z = false;
                    boolean z2 = false;
                    while (true) {
                        boolean z3 = z2;
                        if (i <= 0) {
                            zak(5);
                            break;
                        }
                        char zaj2 = zaj(bufferedReader);
                        if (zaj2 == 0) {
                            throw new ParseException("Unexpected EOF while parsing array");
                        }
                        if (Character.isISOControl(zaj2)) {
                            throw new ParseException("Unexpected control character while reading array");
                        }
                        boolean z4 = z3;
                        if (zaj2 == '\"') {
                            z4 = z3;
                            if (!z) {
                                z4 = !z3;
                            }
                        }
                        int i2 = i;
                        if (zaj2 == '[') {
                            i2 = i;
                            if (!z4) {
                                i2 = i + 1;
                            }
                        }
                        i = i2;
                        if (zaj2 == ']') {
                            i = i2;
                            if (!z4) {
                                i = i2 - 1;
                            }
                        }
                        if (zaj2 != '\\' || !z4) {
                            z = false;
                            z2 = z4;
                        } else {
                            z = !z;
                            z2 = z4;
                        }
                    }
                } else {
                    zak(5);
                }
            } else if (zaj != '{') {
                bufferedReader.reset();
                zaa(bufferedReader, this.zaqd);
            } else {
                this.zaqm.push(1);
                bufferedReader.mark(32);
                char zaj3 = zaj(bufferedReader);
                if (zaj3 == '}') {
                    zak(1);
                } else if (zaj3 != '\"') {
                    StringBuilder sb = new StringBuilder(18);
                    sb.append("Unexpected token ");
                    sb.append(zaj3);
                    throw new ParseException(sb.toString());
                } else {
                    bufferedReader.reset();
                    zaa(bufferedReader);
                    do {
                    } while (zab(bufferedReader) != null);
                    zak(1);
                }
            }
        } else if (bufferedReader.read(this.zaqb) == -1) {
            throw new ParseException("Unexpected EOF while parsing string");
        } else {
            char c = this.zaqb[0];
            boolean z5 = false;
            while (true) {
                if (c == '\"' && !z5) {
                    break;
                }
                z5 = c == '\\' ? !z5 : false;
                if (bufferedReader.read(this.zaqb) == -1) {
                    throw new ParseException("Unexpected EOF while parsing string");
                }
                char c2 = this.zaqb[0];
                if (Character.isISOControl(c2)) {
                    throw new ParseException("Unexpected control character while reading string");
                }
                c = c2;
            }
        }
        char zaj4 = zaj(bufferedReader);
        if (zaj4 == ',') {
            zak(2);
            return zaa(bufferedReader);
        } else if (zaj4 == '}') {
            zak(2);
            return null;
        } else {
            StringBuilder sb2 = new StringBuilder(18);
            sb2.append("Unexpected token ");
            sb2.append(zaj4);
            throw new ParseException(sb2.toString());
        }
    }

    private static String zab(BufferedReader bufferedReader, char[] cArr, StringBuilder sb, char[] cArr2) {
        boolean z;
        sb.setLength(0);
        bufferedReader.mark(cArr.length);
        boolean z2 = false;
        boolean z3 = false;
        while (true) {
            int read = bufferedReader.read(cArr);
            if (read != -1) {
                boolean z4 = z3;
                boolean z5 = z2;
                boolean z6 = z4;
                for (int i = 0; i < read; i++) {
                    char c = cArr[i];
                    if (Character.isISOControl(c)) {
                        if (cArr2 != null) {
                            for (char c2 : cArr2) {
                                if (c2 == c) {
                                    z = true;
                                    break;
                                }
                            }
                        }
                        z = false;
                        if (!z) {
                            throw new ParseException("Unexpected control character while reading string");
                        }
                    }
                    if (c == '\"' && !z5) {
                        sb.append(cArr, 0, i);
                        bufferedReader.reset();
                        bufferedReader.skip(i + 1);
                        return z6 ? JsonUtils.unescapeString(sb.toString()) : sb.toString();
                    }
                    if (c == '\\') {
                        z5 = !z5;
                        z6 = true;
                    } else {
                        z5 = false;
                    }
                }
                sb.append(cArr, 0, read);
                bufferedReader.mark(cArr.length);
                boolean z7 = z5;
                z3 = z6;
                z2 = z7;
            } else {
                throw new ParseException("Unexpected EOF while parsing string");
            }
        }
    }

    private final void zab(BufferedReader bufferedReader, char[] cArr) {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < cArr.length) {
                int read = bufferedReader.read(this.zaqc, 0, cArr.length - i2);
                if (read == -1) {
                    throw new ParseException("Unexpected EOF");
                }
                for (int i3 = 0; i3 < read; i3++) {
                    if (cArr[i3 + i2] != this.zaqc[i3]) {
                        throw new ParseException("Unexpected character");
                    }
                }
                i = i2 + read;
            } else {
                return;
            }
        }
    }

    public final String zac(BufferedReader bufferedReader) {
        return zaa(bufferedReader, this.zaqc, this.zaqe, null);
    }

    public final int zad(BufferedReader bufferedReader) {
        boolean z;
        int i;
        int i2;
        int i3;
        int zaa2 = zaa(bufferedReader, this.zaqd);
        if (zaa2 == 0) {
            return 0;
        }
        char[] cArr = this.zaqd;
        if (zaa2 <= 0) {
            throw new ParseException("No number to parse");
        }
        if (cArr[0] == '-') {
            i2 = Integer.MIN_VALUE;
            i = 1;
            z = true;
        } else {
            z = false;
            i2 = -2147483647;
            i = 0;
        }
        if (i < zaa2) {
            int i4 = i + 1;
            int digit = Character.digit(cArr[i], 10);
            if (digit < 0) {
                throw new ParseException("Unexpected non-digit character");
            }
            i = i4;
            i3 = -digit;
        } else {
            i3 = 0;
        }
        while (i < zaa2) {
            int digit2 = Character.digit(cArr[i], 10);
            if (digit2 < 0) {
                throw new ParseException("Unexpected non-digit character");
            }
            if (i3 < -214748364) {
                throw new ParseException("Number too large");
            }
            int i5 = i3 * 10;
            if (i5 < i2 + digit2) {
                throw new ParseException("Number too large");
            }
            i3 = i5 - digit2;
            i++;
        }
        if (!z) {
            return -i3;
        }
        if (i <= 1) {
            throw new ParseException("No digits to parse");
        }
        return i3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    /* JADX WARN: Type inference failed for: r0v34, types: [long] */
    /* JADX WARN: Type inference failed for: r0v45, types: [long] */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Type inference failed for: r15v4 */
    /* JADX WARN: Type inference failed for: r15v5 */
    /* JADX WARN: Type inference failed for: r1v14 */
    public final long zae(BufferedReader bufferedReader) {
        ?? r13;
        ?? r11;
        ?? r15;
        int zaa2 = zaa(bufferedReader, this.zaqd);
        if (zaa2 == 0) {
            return 0L;
        }
        char[] cArr = this.zaqd;
        if (zaa2 <= 0) {
            throw new ParseException("No number to parse");
        }
        int i = 0;
        if (cArr[0] == '-') {
            r11 = true;
            i = 1;
            r13 = true;
        } else {
            r11 = true;
            r13 = false;
        }
        if (i < zaa2) {
            int i2 = i + 1;
            int digit = Character.digit(cArr[i], 10);
            if (digit < 0) {
                throw new ParseException("Unexpected non-digit character");
            }
            r15 = -digit;
            i = i2;
        } else {
            r15 = 0;
        }
        while (i < zaa2) {
            int digit2 = Character.digit(cArr[i], 10);
            if (digit2 < 0) {
                throw new ParseException("Unexpected non-digit character");
            }
            if (r15 < -922337203685477580L) {
                throw new ParseException("Number too large");
            }
            long j = r15 * '\n';
            long j2 = digit2;
            if (j < (r11 == true ? 1L : 0L) + j2) {
                throw new ParseException("Number too large");
            }
            r15 = j - j2;
            i++;
        }
        if (r13 != true) {
            return -r15;
        }
        if (i <= 1) {
            throw new ParseException("No digits to parse");
        }
        return r15;
    }

    public final BigInteger zaf(BufferedReader bufferedReader) {
        int zaa2 = zaa(bufferedReader, this.zaqd);
        if (zaa2 == 0) {
            return null;
        }
        return new BigInteger(new String(this.zaqd, 0, zaa2));
    }

    public final float zag(BufferedReader bufferedReader) {
        int zaa2 = zaa(bufferedReader, this.zaqd);
        return zaa2 == 0 ? FlexItem.FLEX_GROW_DEFAULT : Float.parseFloat(new String(this.zaqd, 0, zaa2));
    }

    public final double zah(BufferedReader bufferedReader) {
        int zaa2 = zaa(bufferedReader, this.zaqd);
        return zaa2 == 0 ? FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE : Double.parseDouble(new String(this.zaqd, 0, zaa2));
    }

    public final BigDecimal zai(BufferedReader bufferedReader) {
        int zaa2 = zaa(bufferedReader, this.zaqd);
        if (zaa2 == 0) {
            return null;
        }
        return new BigDecimal(new String(this.zaqd, 0, zaa2));
    }

    private final char zaj(BufferedReader bufferedReader) {
        if (bufferedReader.read(this.zaqb) == -1) {
            return (char) 0;
        }
        while (Character.isWhitespace(this.zaqb[0])) {
            if (bufferedReader.read(this.zaqb) == -1) {
                return (char) 0;
            }
        }
        return this.zaqb[0];
    }

    private final void zak(int i) {
        if (this.zaqm.isEmpty()) {
            StringBuilder sb = new StringBuilder(46);
            sb.append("Expected state ");
            sb.append(i);
            sb.append(" but had empty stack");
            throw new ParseException(sb.toString());
        }
        int intValue = this.zaqm.pop().intValue();
        if (intValue == i) {
            return;
        }
        StringBuilder sb2 = new StringBuilder(46);
        sb2.append("Expected state ");
        sb2.append(i);
        sb2.append(" but had ");
        sb2.append(intValue);
        throw new ParseException(sb2.toString());
    }

    public void parse(InputStream inputStream, T t) {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream), 1024);
        try {
            try {
                this.zaqm.push(0);
                char zaj = zaj(bufferedReader);
                if (zaj == 0) {
                    throw new ParseException("No data to parse");
                }
                if (zaj == '[') {
                    this.zaqm.push(5);
                    Map<String, FastJsonResponse.Field<?, ?>> fieldMappings = t.getFieldMappings();
                    if (fieldMappings.size() != 1) {
                        throw new ParseException("Object array response class must have a single Field");
                    }
                    FastJsonResponse.Field<?, ?> value = fieldMappings.entrySet().iterator().next().getValue();
                    t.addConcreteTypeArrayInternal(value, value.zapv, zaa(bufferedReader, value));
                } else if (zaj != '{') {
                    StringBuilder sb = new StringBuilder(19);
                    sb.append("Unexpected token: ");
                    sb.append(zaj);
                    throw new ParseException(sb.toString());
                } else {
                    this.zaqm.push(1);
                    zaa(bufferedReader, t);
                }
                zak(0);
                try {
                    bufferedReader.close();
                } catch (IOException e) {
                    Log.w("FastParser", "Failed to close reader while parsing.");
                }
            } catch (IOException e2) {
                throw new ParseException(e2);
            }
        } catch (Throwable th) {
            try {
                bufferedReader.close();
            } catch (IOException e3) {
                Log.w("FastParser", "Failed to close reader while parsing.");
            }
            throw th;
        }
    }
}
