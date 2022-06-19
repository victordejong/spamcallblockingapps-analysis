package org.bouncycastle.util;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/util/IPAddress.class */
public class IPAddress {
    private static boolean isMaskValue(String str, int i) {
        boolean z;
        try {
            int parseInt = Integer.parseInt(str);
            z = false;
            if (parseInt >= 0) {
                z = false;
                if (parseInt <= i) {
                    z = true;
                }
            }
        } catch (NumberFormatException e) {
            z = false;
        }
        return z;
    }

    public static boolean isValid(String str) {
        return isValidIPv4(str) || isValidIPv6(str);
    }

    public static boolean isValidIPv4(String str) {
        int indexOf;
        boolean z = false;
        if (str.length() == 0) {
            return false;
        }
        String str2 = str + ".";
        int i = 0;
        int i2 = 0;
        while (i < str2.length() && (indexOf = str2.indexOf(46, i)) > i) {
            if (i2 == 4) {
                return false;
            }
            try {
                int parseInt = Integer.parseInt(str2.substring(i, indexOf));
                if (parseInt < 0 || parseInt > 255) {
                    return false;
                }
                i = indexOf + 1;
                i2++;
            } catch (NumberFormatException e) {
                return false;
            }
        }
        if (i2 == 4) {
            z = true;
        }
        return z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0037, code lost:
        if (isMaskValue(r0, 32) != false) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean isValidIPv4WithNetmask(java.lang.String r4) {
        /*
            r0 = r4
            java.lang.String r1 = "/"
            int r0 = r0.indexOf(r1)
            r5 = r0
            r0 = r4
            r1 = r5
            r2 = 1
            int r1 = r1 + r2
            java.lang.String r0 = r0.substring(r1)
            r6 = r0
            r0 = 0
            r7 = r0
            r0 = r7
            r8 = r0
            r0 = r5
            if (r0 <= 0) goto L3d
            r0 = r7
            r8 = r0
            r0 = r4
            r1 = 0
            r2 = r5
            java.lang.String r0 = r0.substring(r1, r2)
            boolean r0 = isValidIPv4(r0)
            if (r0 == 0) goto L3d
            r0 = r6
            boolean r0 = isValidIPv4(r0)
            if (r0 != 0) goto L3a
            r0 = r7
            r8 = r0
            r0 = r6
            r1 = 32
            boolean r0 = isMaskValue(r0, r1)
            if (r0 == 0) goto L3d
        L3a:
            r0 = 1
            r8 = r0
        L3d:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.util.IPAddress.isValidIPv4WithNetmask(java.lang.String):boolean");
    }

    public static boolean isValidIPv6(String str) {
        int indexOf;
        boolean z = false;
        if (str.length() == 0) {
            return false;
        }
        String str2 = str + ":";
        int i = 0;
        int i2 = 0;
        boolean z2 = false;
        while (i < str2.length() && (indexOf = str2.indexOf(58, i)) >= i) {
            if (i2 == 8) {
                return false;
            }
            if (i != indexOf) {
                String substring = str2.substring(i, indexOf);
                if (indexOf != str2.length() - 1 || substring.indexOf(46) <= 0) {
                    try {
                        int parseInt = Integer.parseInt(str2.substring(i, indexOf), 16);
                        if (parseInt < 0 || parseInt > 65535) {
                            return false;
                        }
                    } catch (NumberFormatException e) {
                        return false;
                    }
                } else if (!isValidIPv4(substring)) {
                    return false;
                } else {
                    i2++;
                }
            } else if (indexOf != 1 && indexOf != str2.length() - 1 && z2) {
                return false;
            } else {
                z2 = true;
            }
            i = indexOf + 1;
            i2++;
        }
        if (i2 == 8 || z2) {
            z = true;
        }
        return z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0038, code lost:
        if (isMaskValue(r0, 128) != false) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean isValidIPv6WithNetmask(java.lang.String r4) {
        /*
            r0 = r4
            java.lang.String r1 = "/"
            int r0 = r0.indexOf(r1)
            r5 = r0
            r0 = r4
            r1 = r5
            r2 = 1
            int r1 = r1 + r2
            java.lang.String r0 = r0.substring(r1)
            r6 = r0
            r0 = 0
            r7 = r0
            r0 = r7
            r8 = r0
            r0 = r5
            if (r0 <= 0) goto L3e
            r0 = r7
            r8 = r0
            r0 = r4
            r1 = 0
            r2 = r5
            java.lang.String r0 = r0.substring(r1, r2)
            boolean r0 = isValidIPv6(r0)
            if (r0 == 0) goto L3e
            r0 = r6
            boolean r0 = isValidIPv6(r0)
            if (r0 != 0) goto L3b
            r0 = r7
            r8 = r0
            r0 = r6
            r1 = 128(0x80, float:1.794E-43)
            boolean r0 = isMaskValue(r0, r1)
            if (r0 == 0) goto L3e
        L3b:
            r0 = 1
            r8 = r0
        L3e:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.util.IPAddress.isValidIPv6WithNetmask(java.lang.String):boolean");
    }

    public static boolean isValidWithNetMask(String str) {
        return isValidIPv4WithNetmask(str) || isValidIPv6WithNetmask(str);
    }
}
