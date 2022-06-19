package com.google.android.gms.common.server.response;

import android.support.p012v4.media.C0082b;
import android.util.Log;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.server.response.FastJsonResponse;
import com.google.android.gms.common.util.Base64Utils;
import com.google.android.gms.common.util.JsonUtils;
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
@ShowFirstParty
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/response/FastParser.class */
public class FastParser<T extends FastJsonResponse> {
    private static final char[] zaf = {'u', 'l', 'l'};
    private static final char[] zag = {'r', 'u', 'e'};
    private static final char[] zah = {'r', 'u', 'e', '\"'};
    private static final char[] zai = {'a', 'l', 's', 'e'};
    private static final char[] zaj = {'a', 'l', 's', 'e', '\"'};
    private static final char[] zak = {'\n'};
    private static final zai<Integer> zam = new zaa();
    private static final zai<Long> zan = new zab();
    private static final zai<Float> zao = new zac();
    private static final zai<Double> zap = new zad();
    private static final zai<Boolean> zaq = new zae();
    private static final zai<String> zar = new zaf();
    private static final zai<BigInteger> zas = new zag();
    private static final zai<BigDecimal> zat = new zah();
    private final char[] zaa = new char[1];
    private final char[] zab = new char[32];
    private final char[] zac = new char[1024];
    private final StringBuilder zad = new StringBuilder(32);
    private final StringBuilder zae = new StringBuilder(1024);
    private final Stack<Integer> zal = new Stack<>();

    @ShowFirstParty
    @KeepForSdk
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/response/FastParser$ParseException.class */
    public static class ParseException extends Exception {
        public ParseException(@RecentlyNonNull String str) {
            super(str);
        }

        public ParseException(@RecentlyNonNull String str, @RecentlyNonNull Throwable th) {
            super("Error instantiating inner object", th);
        }

        public ParseException(@RecentlyNonNull Throwable th) {
            super(th);
        }
    }

    private static final String zaA(BufferedReader bufferedReader, char[] cArr, StringBuilder sb, char[] cArr2) throws ParseException, IOException {
        sb.setLength(0);
        bufferedReader.mark(cArr.length);
        boolean z = false;
        boolean z2 = false;
        loop0: while (true) {
            int read = bufferedReader.read(cArr);
            if (read == -1) {
                throw new ParseException("Unexpected EOF while parsing string");
            }
            for (int i = 0; i < read; i++) {
                char c = cArr[i];
                if (Character.isISOControl(c)) {
                    if (cArr2 == null) {
                        break loop0;
                    }
                    for (char c2 : cArr2) {
                        if (c2 != c) {
                        }
                    }
                    break loop0;
                }
                if (c == '\"') {
                    if (!z2) {
                        sb.append(cArr, 0, i);
                        bufferedReader.reset();
                        bufferedReader.skip(i + 1);
                        return z ? JsonUtils.unescapeString(sb.toString()) : sb.toString();
                    }
                } else if (c == '\\') {
                    z2 = !z2;
                    z = true;
                }
                z2 = false;
            }
            sb.append(cArr, 0, read);
            bufferedReader.mark(cArr.length);
        }
        throw new ParseException("Unexpected control character while reading string");
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final boolean zai(BufferedReader bufferedReader, FastJsonResponse fastJsonResponse) throws ParseException, IOException {
        HashMap hashMap;
        Map<String, FastJsonResponse.Field<?, ?>> fieldMappings = fastJsonResponse.getFieldMappings();
        String zaj2 = zaj(bufferedReader);
        if (zaj2 == null) {
            zaz(1);
            return false;
        }
        while (zaj2 != null) {
            FastJsonResponse.Field<?, ?> field = fieldMappings.get(zaj2);
            if (field == null) {
                zaj2 = zak(bufferedReader);
            } else {
                this.zal.push(4);
                int i = field.zaa;
                switch (i) {
                    case 0:
                        if (!field.zab) {
                            fastJsonResponse.zaa(field, zao(bufferedReader));
                            break;
                        } else {
                            fastJsonResponse.zab(field, zam(bufferedReader, zam));
                            break;
                        }
                    case 1:
                        if (!field.zab) {
                            fastJsonResponse.zac(field, zaq(bufferedReader));
                            break;
                        } else {
                            fastJsonResponse.zad(field, zam(bufferedReader, zas));
                            break;
                        }
                    case 2:
                        if (!field.zab) {
                            fastJsonResponse.zae(field, zap(bufferedReader));
                            break;
                        } else {
                            fastJsonResponse.zaf(field, zam(bufferedReader, zan));
                            break;
                        }
                    case 3:
                        if (!field.zab) {
                            fastJsonResponse.zag(field, zas(bufferedReader));
                            break;
                        } else {
                            fastJsonResponse.zah(field, zam(bufferedReader, zao));
                            break;
                        }
                    case 4:
                        if (!field.zab) {
                            fastJsonResponse.zai(field, zat(bufferedReader));
                            break;
                        } else {
                            fastJsonResponse.zaj(field, zam(bufferedReader, zap));
                            break;
                        }
                    case 5:
                        if (!field.zab) {
                            fastJsonResponse.zak(field, zau(bufferedReader));
                            break;
                        } else {
                            fastJsonResponse.zal(field, zam(bufferedReader, zat));
                            break;
                        }
                    case 6:
                        if (!field.zab) {
                            fastJsonResponse.zam(field, zar(bufferedReader, false));
                            break;
                        } else {
                            fastJsonResponse.zan(field, zam(bufferedReader, zaq));
                            break;
                        }
                    case 7:
                        if (!field.zab) {
                            fastJsonResponse.zao(field, zal(bufferedReader));
                            break;
                        } else {
                            fastJsonResponse.zap(field, zam(bufferedReader, zar));
                            break;
                        }
                    case 8:
                        fastJsonResponse.zaq(field, Base64Utils.decode(zan(bufferedReader, this.zac, this.zae, zak)));
                        break;
                    case 9:
                        fastJsonResponse.zaq(field, Base64Utils.decodeUrlSafe(zan(bufferedReader, this.zac, this.zae, zak)));
                        break;
                    case 10:
                        char zaw = zaw(bufferedReader);
                        if (zaw == 'n') {
                            zay(bufferedReader, zaf);
                            hashMap = null;
                        } else if (zaw != '{') {
                            throw new ParseException("Expected start of a map object");
                        } else {
                            this.zal.push(1);
                            hashMap = new HashMap();
                            while (true) {
                                char zaw2 = zaw(bufferedReader);
                                if (zaw2 == 0) {
                                    throw new ParseException("Unexpected EOF");
                                }
                                if (zaw2 == '\"') {
                                    String zaA = zaA(bufferedReader, this.zab, this.zad, null);
                                    if (zaw(bufferedReader) != ':') {
                                        String valueOf = String.valueOf(zaA);
                                        throw new ParseException(valueOf.length() != 0 ? "No map value found for key ".concat(valueOf) : new String("No map value found for key "));
                                    } else if (zaw(bufferedReader) != '\"') {
                                        String valueOf2 = String.valueOf(zaA);
                                        throw new ParseException(valueOf2.length() != 0 ? "Expected String value for key ".concat(valueOf2) : new String("Expected String value for key "));
                                    } else {
                                        hashMap.put(zaA, zaA(bufferedReader, this.zab, this.zad, null));
                                        char zaw3 = zaw(bufferedReader);
                                        if (zaw3 != ',') {
                                            if (zaw3 != '}') {
                                                StringBuilder sb = new StringBuilder(48);
                                                sb.append("Unexpected character while parsing string map: ");
                                                sb.append(zaw3);
                                                throw new ParseException(sb.toString());
                                            }
                                            zaz(1);
                                        }
                                    }
                                } else if (zaw2 == '}') {
                                    zaz(1);
                                }
                            }
                        }
                        fastJsonResponse.zar(field, hashMap);
                        break;
                    case 11:
                        if (field.zab) {
                            char zaw4 = zaw(bufferedReader);
                            if (zaw4 == 'n') {
                                zay(bufferedReader, zaf);
                                fastJsonResponse.addConcreteTypeArrayInternal(field, field.zae, null);
                                break;
                            } else {
                                this.zal.push(5);
                                if (zaw4 != '[') {
                                    throw new ParseException("Expected array start");
                                }
                                fastJsonResponse.addConcreteTypeArrayInternal(field, field.zae, zav(bufferedReader, field));
                                break;
                            }
                        } else {
                            char zaw5 = zaw(bufferedReader);
                            if (zaw5 == 'n') {
                                zay(bufferedReader, zaf);
                                fastJsonResponse.addConcreteTypeInternal(field, field.zae, null);
                                break;
                            } else {
                                this.zal.push(1);
                                if (zaw5 != '{') {
                                    throw new ParseException("Expected start of object");
                                }
                                try {
                                    FastJsonResponse zaf2 = field.zaf();
                                    zai(bufferedReader, zaf2);
                                    fastJsonResponse.addConcreteTypeInternal(field, field.zae, zaf2);
                                    break;
                                } catch (IllegalAccessException e) {
                                    throw new ParseException("Error instantiating inner object", e);
                                } catch (InstantiationException e2) {
                                    throw new ParseException("Error instantiating inner object", e2);
                                }
                            }
                        }
                    default:
                        throw new ParseException(C0082b.m8758d(30, "Invalid field type ", i));
                }
                zaz(4);
                zaz(2);
                char zaw6 = zaw(bufferedReader);
                if (zaw6 == ',') {
                    zaj2 = zaj(bufferedReader);
                } else if (zaw6 != '}') {
                    StringBuilder sb2 = new StringBuilder(55);
                    sb2.append("Expected end of object or field separator, but found: ");
                    sb2.append(zaw6);
                    throw new ParseException(sb2.toString());
                } else {
                    zaj2 = null;
                }
            }
        }
        zaz(1);
        return true;
    }

    private final String zaj(BufferedReader bufferedReader) throws ParseException, IOException {
        this.zal.push(2);
        char zaw = zaw(bufferedReader);
        if (zaw == '\"') {
            this.zal.push(3);
            String zaA = zaA(bufferedReader, this.zab, this.zad, null);
            zaz(3);
            if (zaw(bufferedReader) != ':') {
                throw new ParseException("Expected key/value separator");
            }
            return zaA;
        } else if (zaw == ']') {
            zaz(2);
            zaz(1);
            zaz(5);
            return null;
        } else if (zaw == '}') {
            zaz(2);
            return null;
        } else {
            StringBuilder sb = new StringBuilder(19);
            sb.append("Unexpected token: ");
            sb.append(zaw);
            throw new ParseException(sb.toString());
        }
    }

    private final String zak(BufferedReader bufferedReader) throws ParseException, IOException {
        bufferedReader.mark(1024);
        char zaw = zaw(bufferedReader);
        int i = 1;
        if (zaw != '\"') {
            if (zaw == ',') {
                throw new ParseException("Missing value");
            }
            if (zaw == '[') {
                this.zal.push(5);
                bufferedReader.mark(32);
                if (zaw(bufferedReader) != ']') {
                    bufferedReader.reset();
                    boolean z = false;
                    loop1: while (true) {
                        boolean z2 = false;
                        int i2 = i;
                        boolean z3 = z;
                        while (true) {
                            boolean z4 = z3;
                            if (i2 <= 0) {
                                zaz(5);
                                break loop1;
                            }
                            char zaw2 = zaw(bufferedReader);
                            if (zaw2 == 0) {
                                throw new ParseException("Unexpected EOF while parsing array");
                            }
                            if (Character.isISOControl(zaw2)) {
                                throw new ParseException("Unexpected control character while reading array");
                            }
                            boolean z5 = z4;
                            char c = zaw2;
                            if (zaw2 == '\"') {
                                z5 = z4;
                                if (!z2) {
                                    z5 = !z4;
                                }
                                c = '\"';
                            }
                            int i3 = i2;
                            char c2 = c;
                            if (c == '[') {
                                i3 = i2;
                                if (!z5) {
                                    i3 = i2 + 1;
                                }
                                c2 = '[';
                            }
                            i2 = i3;
                            if (c2 == ']') {
                                i2 = i3;
                                if (!z5) {
                                    i2 = i3 - 1;
                                }
                            }
                            z = z5;
                            i = i2;
                            if (c2 == '\\') {
                                z = z5;
                                i = i2;
                                if (z5) {
                                    z2 = !z2;
                                    z3 = z5;
                                }
                            }
                        }
                    }
                } else {
                    zaz(5);
                }
            } else if (zaw != '{') {
                bufferedReader.reset();
                zax(bufferedReader, this.zac);
            } else {
                this.zal.push(1);
                bufferedReader.mark(32);
                char zaw3 = zaw(bufferedReader);
                if (zaw3 == '}') {
                    zaz(1);
                } else if (zaw3 != '\"') {
                    StringBuilder sb = new StringBuilder(18);
                    sb.append("Unexpected token ");
                    sb.append(zaw3);
                    throw new ParseException(sb.toString());
                } else {
                    bufferedReader.reset();
                    zaj(bufferedReader);
                    do {
                    } while (zak(bufferedReader) != null);
                    zaz(1);
                }
            }
        } else if (bufferedReader.read(this.zaa) == -1) {
            throw new ParseException("Unexpected EOF while parsing string");
        } else {
            char c3 = this.zaa[0];
            boolean z6 = false;
            while (true) {
                char c4 = c3;
                boolean z7 = z6;
                if (c3 == '\"') {
                    if (!z6) {
                        break;
                    }
                    c4 = '\"';
                    z7 = true;
                }
                z6 = c4 == '\\' ? !z7 : false;
                if (bufferedReader.read(this.zaa) == -1) {
                    throw new ParseException("Unexpected EOF while parsing string");
                }
                char c5 = this.zaa[0];
                if (Character.isISOControl(c5)) {
                    throw new ParseException("Unexpected control character while reading string");
                }
                c3 = c5;
            }
        }
        char zaw4 = zaw(bufferedReader);
        if (zaw4 == ',') {
            zaz(2);
            return zaj(bufferedReader);
        } else if (zaw4 == '}') {
            zaz(2);
            return null;
        } else {
            StringBuilder sb2 = new StringBuilder(18);
            sb2.append("Unexpected token ");
            sb2.append(zaw4);
            throw new ParseException(sb2.toString());
        }
    }

    public final String zal(BufferedReader bufferedReader) throws ParseException, IOException {
        return zan(bufferedReader, this.zab, this.zad, null);
    }

    private final <O> ArrayList<O> zam(BufferedReader bufferedReader, zai<O> zaiVar) throws ParseException, IOException {
        char zaw = zaw(bufferedReader);
        if (zaw == 'n') {
            zay(bufferedReader, zaf);
            return null;
        } else if (zaw != '[') {
            throw new ParseException("Expected start of array");
        } else {
            this.zal.push(5);
            ArrayList<O> arrayList = new ArrayList<>();
            while (true) {
                bufferedReader.mark(1024);
                char zaw2 = zaw(bufferedReader);
                if (zaw2 == 0) {
                    throw new ParseException("Unexpected EOF");
                }
                if (zaw2 != ',') {
                    if (zaw2 == ']') {
                        zaz(5);
                        return arrayList;
                    }
                    bufferedReader.reset();
                    arrayList.add(zaiVar.zaa(this, bufferedReader));
                }
            }
        }
    }

    private final String zan(BufferedReader bufferedReader, char[] cArr, StringBuilder sb, char[] cArr2) throws ParseException, IOException {
        char zaw = zaw(bufferedReader);
        if (zaw != '\"') {
            if (zaw != 'n') {
                throw new ParseException("Expected string");
            }
            zay(bufferedReader, zaf);
            return null;
        }
        return zaA(bufferedReader, cArr, sb, cArr2);
    }

    public final int zao(BufferedReader bufferedReader) throws ParseException, IOException {
        int i;
        int i2;
        int zax = zax(bufferedReader, this.zac);
        if (zax == 0) {
            return 0;
        }
        char[] cArr = this.zac;
        if (zax <= 0) {
            throw new ParseException("No number to parse");
        }
        char c = cArr[0];
        int i3 = c == '-' ? Integer.MIN_VALUE : -2147483647;
        int i4 = c == '-' ? 1 : 0;
        if (i4 < zax) {
            i = i4 + 1;
            int digit = Character.digit(cArr[i4], 10);
            if (digit < 0) {
                throw new ParseException("Unexpected non-digit character");
            }
            i2 = -digit;
        } else {
            i = i4;
            i2 = 0;
        }
        while (i < zax) {
            int digit2 = Character.digit(cArr[i], 10);
            if (digit2 < 0) {
                throw new ParseException("Unexpected non-digit character");
            }
            if (i2 < -214748364) {
                throw new ParseException("Number too large");
            }
            int i5 = i2 * 10;
            if (i5 < i3 + digit2) {
                throw new ParseException("Number too large");
            }
            i2 = i5 - digit2;
            i++;
        }
        if (i4 == 0) {
            i2 = -i2;
        } else if (i <= 1) {
            throw new ParseException("No digits to parse");
        }
        return i2;
    }

    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r0v36, types: [long] */
    /* JADX WARN: Type inference failed for: r0v48, types: [long] */
    public final long zap(BufferedReader bufferedReader) throws ParseException, IOException {
        char c;
        int i;
        char c2;
        int zax = zax(bufferedReader, this.zac);
        if (zax == 0) {
            return 0L;
        }
        char[] cArr = this.zac;
        if (zax <= 0) {
            throw new ParseException("No number to parse");
        }
        int i2 = 0;
        char c3 = cArr[0];
        boolean z = c3 == '-' ? true : true;
        if (c3 == '-') {
            i2 = 1;
        }
        if (i2 < zax) {
            i = i2 + 1;
            int digit = Character.digit(cArr[i2], 10);
            if (digit < 0) {
                throw new ParseException("Unexpected non-digit character");
            }
            c = -digit;
        } else {
            c = 0;
            i = i2;
        }
        while (i < zax) {
            int digit2 = Character.digit(cArr[i], 10);
            if (digit2 < 0) {
                throw new ParseException("Unexpected non-digit character");
            }
            if (c < -922337203685477580L) {
                throw new ParseException("Number too large");
            }
            long j = c * '\n';
            long j2 = digit2;
            if (j < (z ? 1L : 0L) + j2) {
                throw new ParseException("Number too large");
            }
            c = j - j2;
            i++;
        }
        if (i2 != 0) {
            c2 = c;
            if (i <= 1) {
                throw new ParseException("No digits to parse");
            }
        } else {
            c2 = -c;
        }
        return c2;
    }

    public final BigInteger zaq(BufferedReader bufferedReader) throws ParseException, IOException {
        int zax = zax(bufferedReader, this.zac);
        if (zax == 0) {
            return null;
        }
        return new BigInteger(new String(this.zac, 0, zax));
    }

    public final boolean zar(BufferedReader bufferedReader, boolean z) throws ParseException, IOException {
        char zaw = zaw(bufferedReader);
        if (zaw == '\"') {
            if (z) {
                throw new ParseException("No boolean value found in string");
            }
            return zar(bufferedReader, true);
        } else if (zaw == 'f') {
            zay(bufferedReader, z ? zaj : zai);
            return false;
        } else if (zaw == 'n') {
            zay(bufferedReader, zaf);
            return false;
        } else if (zaw == 't') {
            zay(bufferedReader, z ? zah : zag);
            return true;
        } else {
            StringBuilder sb = new StringBuilder(19);
            sb.append("Unexpected token: ");
            sb.append(zaw);
            throw new ParseException(sb.toString());
        }
    }

    public final float zas(BufferedReader bufferedReader) throws ParseException, IOException {
        int zax = zax(bufferedReader, this.zac);
        if (zax == 0) {
            return 0.0f;
        }
        return Float.parseFloat(new String(this.zac, 0, zax));
    }

    public final double zat(BufferedReader bufferedReader) throws ParseException, IOException {
        int zax = zax(bufferedReader, this.zac);
        if (zax == 0) {
            return 0.0d;
        }
        return Double.parseDouble(new String(this.zac, 0, zax));
    }

    public final BigDecimal zau(BufferedReader bufferedReader) throws ParseException, IOException {
        int zax = zax(bufferedReader, this.zac);
        if (zax == 0) {
            return null;
        }
        return new BigDecimal(new String(this.zac, 0, zax));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final <T extends FastJsonResponse> ArrayList<T> zav(BufferedReader bufferedReader, FastJsonResponse.Field<?, ?> field) throws ParseException, IOException {
        ArrayList<T> arrayList = (ArrayList<T>) new ArrayList();
        char zaw = zaw(bufferedReader);
        if (zaw == ']') {
            zaz(5);
            return arrayList;
        } else if (zaw == 'n') {
            zay(bufferedReader, zaf);
            zaz(5);
            return null;
        } else if (zaw != '{') {
            StringBuilder sb = new StringBuilder(19);
            sb.append("Unexpected token: ");
            sb.append(zaw);
            throw new ParseException(sb.toString());
        } else {
            this.zal.push(1);
            while (true) {
                try {
                    FastJsonResponse zaf2 = field.zaf();
                    if (!zai(bufferedReader, zaf2)) {
                        return arrayList;
                    }
                    arrayList.add(zaf2);
                    char zaw2 = zaw(bufferedReader);
                    if (zaw2 != ',') {
                        if (zaw2 == ']') {
                            zaz(5);
                            return arrayList;
                        }
                        StringBuilder sb2 = new StringBuilder(19);
                        sb2.append("Unexpected token: ");
                        sb2.append(zaw2);
                        throw new ParseException(sb2.toString());
                    } else if (zaw(bufferedReader) != '{') {
                        throw new ParseException("Expected start of next object in array");
                    } else {
                        this.zal.push(1);
                    }
                } catch (IllegalAccessException e) {
                    throw new ParseException("Error instantiating inner object", e);
                } catch (InstantiationException e2) {
                    throw new ParseException("Error instantiating inner object", e2);
                }
            }
        }
    }

    private final char zaw(BufferedReader bufferedReader) throws ParseException, IOException {
        if (bufferedReader.read(this.zaa) != -1) {
            while (Character.isWhitespace(this.zaa[0])) {
                if (bufferedReader.read(this.zaa) == -1) {
                    return (char) 0;
                }
            }
            return this.zaa[0];
        }
        return (char) 0;
    }

    private final int zax(BufferedReader bufferedReader, char[] cArr) throws ParseException, IOException {
        int i;
        boolean z;
        char zaw = zaw(bufferedReader);
        if (zaw != 0) {
            if (zaw == ',') {
                throw new ParseException("Missing value");
            }
            if (zaw == 'n') {
                zay(bufferedReader, zaf);
                return 0;
            }
            bufferedReader.mark(1024);
            if (zaw != '\"') {
                cArr[0] = zaw;
                int i2 = 1;
                while (true) {
                    i = i2;
                    if (i2 >= cArr.length) {
                        break;
                    }
                    i = i2;
                    if (bufferedReader.read(cArr, i2, 1) == -1) {
                        break;
                    }
                    char c = cArr[i2];
                    if (c == '}' || c == ',' || Character.isWhitespace(c) || cArr[i2] == ']') {
                        break;
                    }
                    i2++;
                }
                bufferedReader.reset();
                bufferedReader.skip(i2 - 1);
                cArr[i2] = (char) 0;
                return i2;
            }
            int i3 = 0;
            boolean z2 = false;
            while (true) {
                boolean z3 = z2;
                i = i3;
                if (i3 >= cArr.length) {
                    break;
                }
                i = i3;
                if (bufferedReader.read(cArr, i3, 1) == -1) {
                    break;
                }
                char c2 = cArr[i3];
                if (Character.isISOControl(c2)) {
                    throw new ParseException("Unexpected control character while reading string");
                }
                if (c2 == '\"') {
                    if (!z3) {
                        bufferedReader.reset();
                        bufferedReader.skip(i3 + 1);
                        return i3;
                    }
                } else if (c2 == '\\') {
                    z = !z3;
                    i3++;
                    z2 = z;
                }
                z = false;
                i3++;
                z2 = z;
            }
            if (i != cArr.length) {
                throw new ParseException("Unexpected EOF");
            }
            throw new ParseException("Absurdly long value");
        }
        throw new ParseException("Unexpected EOF");
    }

    private final void zay(BufferedReader bufferedReader, char[] cArr) throws ParseException, IOException {
        int i = 0;
        while (true) {
            int i2 = i;
            int length = cArr.length;
            if (i2 < length) {
                int read = bufferedReader.read(this.zab, 0, length - i2);
                if (read == -1) {
                    throw new ParseException("Unexpected EOF");
                }
                for (int i3 = 0; i3 < read; i3++) {
                    if (cArr[i3 + i2] != this.zab[i3]) {
                        throw new ParseException("Unexpected character");
                    }
                }
                i = i2 + read;
            } else {
                return;
            }
        }
    }

    private final void zaz(int i) throws ParseException {
        if (!this.zal.isEmpty()) {
            int intValue = this.zal.pop().intValue();
            if (intValue != i) {
                throw new ParseException(C0082b.m8757e(46, "Expected state ", i, " but had ", intValue));
            }
            return;
        }
        StringBuilder sb = new StringBuilder(46);
        sb.append("Expected state ");
        sb.append(i);
        sb.append(" but had empty stack");
        throw new ParseException(sb.toString());
    }

    @KeepForSdk
    public void parse(@RecentlyNonNull InputStream inputStream, @RecentlyNonNull T t) throws ParseException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream), 1024);
        try {
            try {
                this.zal.push(0);
                char zaw = zaw(bufferedReader);
                if (zaw == 0) {
                    throw new ParseException("No data to parse");
                }
                if (zaw == '[') {
                    this.zal.push(5);
                    Map<String, FastJsonResponse.Field<?, ?>> fieldMappings = t.getFieldMappings();
                    if (fieldMappings.size() != 1) {
                        throw new ParseException("Object array response class must have a single Field");
                    }
                    FastJsonResponse.Field<?, ?> value = fieldMappings.entrySet().iterator().next().getValue();
                    t.addConcreteTypeArrayInternal(value, value.zae, zav(bufferedReader, value));
                } else if (zaw != '{') {
                    StringBuilder sb = new StringBuilder(19);
                    sb.append("Unexpected token: ");
                    sb.append(zaw);
                    throw new ParseException(sb.toString());
                } else {
                    this.zal.push(1);
                    zai(bufferedReader, t);
                }
                zaz(0);
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
