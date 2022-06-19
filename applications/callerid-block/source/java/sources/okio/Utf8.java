package okio;
/* loaded from: classes2-dex2jar.jar:okio/Utf8.class */
public final class Utf8 {
    private Utf8() {
    }

    public static long size(String str) {
        return size(str, 0, str.length());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v49, types: [long] */
    /* JADX WARN: Type inference failed for: r0v54, types: [long] */
    /* JADX WARN: Type inference failed for: r0v60, types: [long] */
    /* JADX WARN: Type inference failed for: r1v24 */
    /* JADX WARN: Type inference failed for: r1v36 */
    public static long size(String str, int i, int i2) {
        char c;
        long j;
        boolean z;
        if (str != null) {
            if (i < 0) {
                throw new IllegalArgumentException("beginIndex < 0: " + i);
            } else if (i2 < i) {
                throw new IllegalArgumentException("endIndex < beginIndex: " + i2 + " < " + i);
            } else if (i2 > str.length()) {
                throw new IllegalArgumentException("endIndex > string.length: " + i2 + " > " + str.length());
            } else {
                char c2 = 0;
                while (i < i2) {
                    char charAt = str.charAt(i);
                    if (charAt < 128) {
                        c = c2;
                        j = 1;
                    } else {
                        if (charAt < 2048) {
                            z = true;
                        } else if (charAt < 55296 || charAt > 57343) {
                            z = true;
                        } else {
                            int i3 = i + 1;
                            char charAt2 = i3 < i2 ? str.charAt(i3) : (char) 0;
                            if (charAt > 56319 || charAt2 < 56320 || charAt2 > 57343) {
                                c2++;
                                i = i3;
                            } else {
                                c2 += 4;
                                i += 2;
                            }
                        }
                        c = c2;
                        j = z;
                    }
                    c2 = c + j;
                    i++;
                }
                return c2;
            }
        }
        throw new IllegalArgumentException("string == null");
    }
}
