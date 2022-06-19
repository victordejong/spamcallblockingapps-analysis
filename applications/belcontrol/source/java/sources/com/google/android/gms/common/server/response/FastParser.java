package com.google.android.gms.common.server.response;

import android.util.Log;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.server.response.FastJsonResponse;
import com.google.android.gms.common.util.JsonUtils;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
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
    private static final zaa<Integer> zam = new com.google.android.gms.common.server.response.zaa();
    private static final zaa<Long> zan = new zac();
    private static final zaa<Float> zao = new zab();
    private static final zaa<Double> zap = new zae();
    private static final zaa<Boolean> zaq = new zad();
    private static final zaa<String> zar = new zag();
    private static final zaa<BigInteger> zas = new zaf();
    private static final zaa<BigDecimal> zat = new zah();
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
        O zaa(FastParser fastParser, BufferedReader bufferedReader);
    }

    private final int zaa(BufferedReader bufferedReader, char[] cArr) {
        int i;
        char zaj2 = zaj(bufferedReader);
        if (zaj2 != 0) {
            if (zaj2 == ',') {
                throw new ParseException("Missing value");
            }
            if (zaj2 == 'n') {
                zab(bufferedReader, zaf);
                return 0;
            }
            bufferedReader.mark(1024);
            if (zaj2 != '\"') {
                cArr[0] = zaj2;
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
                boolean z2 = z;
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
                if (c == '\"' && !z2) {
                    bufferedReader.reset();
                    bufferedReader.skip(i3 + 1);
                    return i3;
                }
                i3++;
                z = c == '\\' ? !z2 : false;
            }
            if (i != cArr.length) {
                throw new ParseException("Unexpected EOF");
            }
            throw new ParseException("Absurdly long value");
        }
        throw new ParseException("Unexpected EOF");
    }

    private final String zaa(BufferedReader bufferedReader) {
        this.zal.push(2);
        char zaj2 = zaj(bufferedReader);
        if (zaj2 == '\"') {
            this.zal.push(3);
            String zab = zab(bufferedReader, this.zab, this.zad, null);
            zaa(3);
            if (zaj(bufferedReader) != ':') {
                throw new ParseException("Expected key/value separator");
            }
            return zab;
        } else if (zaj2 == ']') {
            zaa(2);
            zaa(1);
            zaa(5);
            return null;
        } else if (zaj2 == '}') {
            zaa(2);
            return null;
        } else {
            StringBuilder sb = new StringBuilder(19);
            sb.append("Unexpected token: ");
            sb.append(zaj2);
            throw new ParseException(sb.toString());
        }
    }

    private final String zaa(BufferedReader bufferedReader, char[] cArr, StringBuilder sb, char[] cArr2) {
        char zaj2 = zaj(bufferedReader);
        if (zaj2 != '\"') {
            if (zaj2 != 'n') {
                throw new ParseException("Expected string");
            }
            zab(bufferedReader, zaf);
            return null;
        }
        return zab(bufferedReader, cArr, sb, cArr2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final <T extends FastJsonResponse> ArrayList<T> zaa(BufferedReader bufferedReader, FastJsonResponse.Field<?, ?> field) {
        ArrayList<T> arrayList = (ArrayList<T>) new ArrayList();
        char zaj2 = zaj(bufferedReader);
        if (zaj2 == ']') {
            zaa(5);
            return arrayList;
        } else if (zaj2 == 'n') {
            zab(bufferedReader, zaf);
            zaa(5);
            return null;
        } else if (zaj2 != '{') {
            StringBuilder sb = new StringBuilder(19);
            sb.append("Unexpected token: ");
            sb.append(zaj2);
            throw new ParseException(sb.toString());
        } else {
            Stack<Integer> stack = this.zal;
            while (true) {
                stack.push(1);
                try {
                    FastJsonResponse zac = field.zac();
                    if (!zaa(bufferedReader, zac)) {
                        return arrayList;
                    }
                    arrayList.add(zac);
                    char zaj3 = zaj(bufferedReader);
                    if (zaj3 != ',') {
                        if (zaj3 == ']') {
                            zaa(5);
                            return arrayList;
                        }
                        StringBuilder sb2 = new StringBuilder(19);
                        sb2.append("Unexpected token: ");
                        sb2.append(zaj3);
                        throw new ParseException(sb2.toString());
                    } else if (zaj(bufferedReader) != '{') {
                        throw new ParseException("Expected start of next object in array");
                    } else {
                        stack = this.zal;
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
        char zaj2 = zaj(bufferedReader);
        if (zaj2 == 'n') {
            zab(bufferedReader, zaf);
            return null;
        } else if (zaj2 != '[') {
            throw new ParseException("Expected start of array");
        } else {
            this.zal.push(5);
            ArrayList<O> arrayList = new ArrayList<>();
            while (true) {
                bufferedReader.mark(1024);
                char zaj3 = zaj(bufferedReader);
                if (zaj3 == 0) {
                    throw new ParseException("Unexpected EOF");
                }
                if (zaj3 != ',') {
                    if (zaj3 == ']') {
                        zaa(5);
                        return arrayList;
                    }
                    bufferedReader.reset();
                    arrayList.add(zaaVar.zaa(this, bufferedReader));
                }
            }
        }
    }

    private final void zaa(int i) {
        if (this.zal.isEmpty()) {
            StringBuilder sb = new StringBuilder(46);
            sb.append("Expected state ");
            sb.append(i);
            sb.append(" but had empty stack");
            throw new ParseException(sb.toString());
        }
        int intValue = this.zal.pop().intValue();
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

    /* JADX WARN: Code restructure failed: missing block: B:51:0x01e7, code lost:
        zaa(1);
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean zaa(java.io.BufferedReader r9, com.google.android.gms.common.server.response.FastJsonResponse r10) {
        /*
            Method dump skipped, instructions count: 1192
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.server.response.FastParser.zaa(java.io.BufferedReader, com.google.android.gms.common.server.response.FastJsonResponse):boolean");
    }

    public final boolean zaa(BufferedReader bufferedReader, boolean z) {
        while (true) {
            char zaj2 = zaj(bufferedReader);
            if (zaj2 != '\"') {
                if (zaj2 == 'f') {
                    zab(bufferedReader, z ? zaj : zai);
                    return false;
                } else if (zaj2 == 'n') {
                    zab(bufferedReader, zaf);
                    return false;
                } else if (zaj2 == 't') {
                    zab(bufferedReader, z ? zah : zag);
                    return true;
                } else {
                    StringBuilder sb = new StringBuilder(19);
                    sb.append("Unexpected token: ");
                    sb.append(zaj2);
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
        char zaj2 = zaj(bufferedReader);
        if (zaj2 != '\"') {
            if (zaj2 == ',') {
                throw new ParseException("Missing value");
            }
            int i = 1;
            if (zaj2 == '[') {
                this.zal.push(5);
                bufferedReader.mark(32);
                if (zaj(bufferedReader) != ']') {
                    bufferedReader.reset();
                    boolean z = false;
                    boolean z2 = false;
                    while (true) {
                        boolean z3 = z2;
                        if (i <= 0) {
                            break;
                        }
                        char zaj3 = zaj(bufferedReader);
                        if (zaj3 == 0) {
                            throw new ParseException("Unexpected EOF while parsing array");
                        }
                        if (Character.isISOControl(zaj3)) {
                            throw new ParseException("Unexpected control character while reading array");
                        }
                        boolean z4 = z3;
                        if (zaj3 == '\"') {
                            z4 = z3;
                            if (!z) {
                                z4 = !z3;
                            }
                        }
                        int i2 = i;
                        if (zaj3 == '[') {
                            i2 = i;
                            if (!z4) {
                                i2 = i + 1;
                            }
                        }
                        i = i2;
                        if (zaj3 == ']') {
                            i = i2;
                            if (!z4) {
                                i = i2 - 1;
                            }
                        }
                        if (zaj3 != '\\' || !z4) {
                            z = false;
                            z2 = z4;
                        } else {
                            z = !z;
                            z2 = z4;
                        }
                    }
                }
                zaa(5);
            } else if (zaj2 != '{') {
                bufferedReader.reset();
                zaa(bufferedReader, this.zac);
            } else {
                this.zal.push(1);
                bufferedReader.mark(32);
                char zaj4 = zaj(bufferedReader);
                if (zaj4 == '}') {
                    zaa(1);
                } else if (zaj4 != '\"') {
                    StringBuilder sb = new StringBuilder(18);
                    sb.append("Unexpected token ");
                    sb.append(zaj4);
                    throw new ParseException(sb.toString());
                } else {
                    bufferedReader.reset();
                    zaa(bufferedReader);
                    do {
                    } while (zab(bufferedReader) != null);
                    zaa(1);
                }
            }
        } else if (bufferedReader.read(this.zaa) == -1) {
            throw new ParseException("Unexpected EOF while parsing string");
        } else {
            char c = this.zaa[0];
            boolean z5 = false;
            while (true) {
                if (c == '\"' && !z5) {
                    break;
                }
                z5 = c == '\\' ? !z5 : false;
                if (bufferedReader.read(this.zaa) == -1) {
                    throw new ParseException("Unexpected EOF while parsing string");
                }
                char c2 = this.zaa[0];
                if (Character.isISOControl(c2)) {
                    throw new ParseException("Unexpected control character while reading string");
                }
                c = c2;
            }
        }
        char zaj5 = zaj(bufferedReader);
        if (zaj5 == ',') {
            zaa(2);
            return zaa(bufferedReader);
        } else if (zaj5 == '}') {
            zaa(2);
            return null;
        } else {
            StringBuilder sb2 = new StringBuilder(18);
            sb2.append("Unexpected token ");
            sb2.append(zaj5);
            throw new ParseException(sb2.toString());
        }
    }

    private static String zab(BufferedReader bufferedReader, char[] cArr, StringBuilder sb, char[] cArr2) {
        boolean z;
        boolean z2;
        boolean z3;
        sb.setLength(0);
        bufferedReader.mark(cArr.length);
        boolean z4 = false;
        boolean z5 = false;
        while (true) {
            int read = bufferedReader.read(cArr);
            if (read != -1) {
                int i = 0;
                while (i < read) {
                    char c = cArr[i];
                    if (Character.isISOControl(c)) {
                        if (cArr2 != null) {
                            for (char c2 : cArr2) {
                                if (c2 == c) {
                                    z3 = true;
                                    break;
                                }
                            }
                        }
                        z3 = false;
                        if (!z3) {
                            throw new ParseException("Unexpected control character while reading string");
                        }
                    }
                    if (c == '\"' && !z4) {
                        sb.append(cArr, 0, i);
                        bufferedReader.reset();
                        bufferedReader.skip(i + 1);
                        String sb2 = sb.toString();
                        String str = sb2;
                        if (z5) {
                            str = JsonUtils.unescapeString(sb2);
                        }
                        return str;
                    }
                    if (c == '\\') {
                        z2 = !z4;
                        z = true;
                    } else {
                        z = z5;
                        z2 = false;
                    }
                    i++;
                    z4 = z2;
                    z5 = z;
                }
                sb.append(cArr, 0, read);
                bufferedReader.mark(cArr.length);
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
                int read = bufferedReader.read(this.zab, 0, cArr.length - i2);
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

    public final String zac(BufferedReader bufferedReader) {
        return zaa(bufferedReader, this.zab, this.zad, null);
    }

    public final int zad(BufferedReader bufferedReader) {
        boolean z;
        int i;
        int i2;
        int zaa2 = zaa(bufferedReader, this.zac);
        int i3 = 0;
        if (zaa2 == 0) {
            return 0;
        }
        char[] cArr = this.zac;
        if (zaa2 <= 0) {
            throw new ParseException("No number to parse");
        }
        if (cArr[0] == '-') {
            i2 = Integer.MIN_VALUE;
            i = 1;
            z = true;
        } else {
            i2 = -2147483647;
            i = 0;
            z = false;
        }
        int i4 = i;
        if (i < zaa2) {
            int digit = Character.digit(cArr[i], 10);
            if (digit < 0) {
                throw new ParseException("Unexpected non-digit character");
            }
            i3 = -digit;
            i4 = i + 1;
        }
        while (i4 < zaa2) {
            int digit2 = Character.digit(cArr[i4], 10);
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
            i4++;
        }
        if (!z) {
            return -i3;
        }
        if (i4 <= 1) {
            throw new ParseException("No digits to parse");
        }
        return i3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /* JADX WARN: Type inference failed for: r0v28, types: [long] */
    /* JADX WARN: Type inference failed for: r0v36, types: [long] */
    /* JADX WARN: Type inference failed for: r0v44, types: [long] */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r1v14 */
    public final long zae(BufferedReader bufferedReader) {
        ?? r15;
        ?? r13;
        int zaa2 = zaa(bufferedReader, this.zac);
        ?? r10 = 0;
        if (zaa2 == 0) {
            return 0L;
        }
        char[] cArr = this.zac;
        if (zaa2 <= 0) {
            throw new ParseException("No number to parse");
        }
        int i = 0;
        if (cArr[0] == '-') {
            r13 = true;
            i = 1;
            r15 = true;
        } else {
            r13 = true;
            r15 = false;
        }
        int i2 = i;
        if (i < zaa2) {
            int digit = Character.digit(cArr[i], 10);
            if (digit < 0) {
                throw new ParseException("Unexpected non-digit character");
            }
            r10 = -digit;
            i2 = i + 1;
        }
        while (i2 < zaa2) {
            int digit2 = Character.digit(cArr[i2], 10);
            if (digit2 < 0) {
                throw new ParseException("Unexpected non-digit character");
            }
            if (r10 < -922337203685477580L) {
                throw new ParseException("Number too large");
            }
            long j = r10 * '\n';
            long j2 = digit2;
            if (j < (r13 == true ? 1L : 0L) + j2) {
                throw new ParseException("Number too large");
            }
            r10 = j - j2;
            i2++;
        }
        if (r15 != true) {
            return -r10;
        }
        if (i2 <= 1) {
            throw new ParseException("No digits to parse");
        }
        return r10;
    }

    public final BigInteger zaf(BufferedReader bufferedReader) {
        int zaa2 = zaa(bufferedReader, this.zac);
        if (zaa2 == 0) {
            return null;
        }
        return new BigInteger(new String(this.zac, 0, zaa2));
    }

    public final float zag(BufferedReader bufferedReader) {
        int zaa2 = zaa(bufferedReader, this.zac);
        if (zaa2 == 0) {
            return 0.0f;
        }
        return Float.parseFloat(new String(this.zac, 0, zaa2));
    }

    public final double zah(BufferedReader bufferedReader) {
        int zaa2 = zaa(bufferedReader, this.zac);
        if (zaa2 == 0) {
            return 0.0d;
        }
        return Double.parseDouble(new String(this.zac, 0, zaa2));
    }

    public final BigDecimal zai(BufferedReader bufferedReader) {
        int zaa2 = zaa(bufferedReader, this.zac);
        if (zaa2 == 0) {
            return null;
        }
        return new BigDecimal(new String(this.zac, 0, zaa2));
    }

    private final char zaj(BufferedReader bufferedReader) {
        if (bufferedReader.read(this.zaa) == -1) {
            return (char) 0;
        }
        while (Character.isWhitespace(this.zaa[0])) {
            if (bufferedReader.read(this.zaa) == -1) {
                return (char) 0;
            }
        }
        return this.zaa[0];
    }

    @KeepForSdk
    public void parse(InputStream inputStream, T t) {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream), 1024);
        try {
            try {
                this.zal.push(0);
                char zaj2 = zaj(bufferedReader);
                if (zaj2 == 0) {
                    throw new ParseException("No data to parse");
                }
                if (zaj2 == '[') {
                    this.zal.push(5);
                    Map<String, FastJsonResponse.Field<?, ?>> fieldMappings = t.getFieldMappings();
                    if (fieldMappings.size() != 1) {
                        throw new ParseException("Object array response class must have a single Field");
                    }
                    FastJsonResponse.Field<?, ?> value = fieldMappings.entrySet().iterator().next().getValue();
                    t.addConcreteTypeArrayInternal(value, value.zae, zaa(bufferedReader, value));
                } else if (zaj2 != '{') {
                    StringBuilder sb = new StringBuilder(19);
                    sb.append("Unexpected token: ");
                    sb.append(zaj2);
                    throw new ParseException(sb.toString());
                } else {
                    this.zal.push(1);
                    zaa(bufferedReader, t);
                }
                zaa(0);
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
