package com.asus.callguardhelper;

import android.util.SparseIntArray;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/asus/callguardhelper/f.class */
public final class f {
    private static final SparseIntArray c;

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f2564a = Pattern.compile("[\\+]?[0-9.-]+");

    /* renamed from: b  reason: collision with root package name */
    private static final String[] f2565b = {"US", "CA", "AS", "AI", "AG", "BS", "BB", "BM", "VG", "KY", "DM", "DO", "GD", "GU", "JM", "PR", "MS", "MP", "KN", "LC", "VC", "TT", "TC", "VI"};
    private static final boolean[] d = {true, true, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, true, true, false, true, true, true, true, true, false, true, false, false, true, true, false, false, true, true, true, true, true, true, true, false, true, true, true, true, true, true, true, true, false, true, true, true, true, true, true, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, true, true, false, true, false, false, true, true, true, true, true, true, true, false, false, true, false};
    private static final int e = 100;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/asus/callguardhelper/f$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f2566a;

        /* renamed from: b  reason: collision with root package name */
        public final int f2567b;

        public a(int i, int i2) {
            this.f2566a = i;
            this.f2567b = i2;
        }
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        c = sparseIntArray;
        sparseIntArray.put(97, 50);
        c.put(98, 50);
        c.put(99, 50);
        c.put(65, 50);
        c.put(66, 50);
        c.put(67, 50);
        c.put(100, 51);
        c.put(101, 51);
        c.put(102, 51);
        c.put(68, 51);
        c.put(69, 51);
        c.put(70, 51);
        c.put(103, 52);
        c.put(104, 52);
        c.put(105, 52);
        c.put(71, 52);
        c.put(72, 52);
        c.put(73, 52);
        c.put(106, 53);
        c.put(107, 53);
        c.put(108, 53);
        c.put(74, 53);
        c.put(75, 53);
        c.put(76, 53);
        c.put(109, 54);
        c.put(110, 54);
        c.put(111, 54);
        c.put(77, 54);
        c.put(78, 54);
        c.put(79, 54);
        c.put(112, 55);
        c.put(113, 55);
        c.put(114, 55);
        c.put(115, 55);
        c.put(80, 55);
        c.put(81, 55);
        c.put(82, 55);
        c.put(83, 55);
        c.put(116, 56);
        c.put(117, 56);
        c.put(118, 56);
        c.put(84, 56);
        c.put(85, 56);
        c.put(86, 56);
        c.put(119, 57);
        c.put(120, 57);
        c.put(121, 57);
        c.put(122, 57);
        c.put(87, 57);
        c.put(88, 57);
        c.put(89, 57);
        c.put(90, 57);
    }

    private static int a(String str) {
        int i;
        int length = str.length();
        int indexOf = str.indexOf(44);
        int indexOf2 = str.indexOf(59);
        if (indexOf < 0 || indexOf2 < 0) {
            i = indexOf;
            if (indexOf < 0) {
                i = indexOf2 >= 0 ? indexOf2 : -1;
            }
        } else {
            i = indexOf < indexOf2 ? indexOf : indexOf2;
        }
        return i < 0 ? length - 1 : i - 1;
    }

    private static boolean a(char c2) {
        return c2 >= '0' && c2 <= '9';
    }

    private static boolean a(String str, int i) {
        boolean z;
        int i2 = 0;
        char c2 = 0;
        while (true) {
            if (i2 < i) {
                char charAt = str.charAt(i2);
                switch (c2) {
                    case 0:
                        if (charAt != '+') {
                            if (charAt != '0') {
                                if (!c(charAt)) {
                                    break;
                                } else {
                                    z = false;
                                    break;
                                }
                            } else {
                                c2 = 2;
                                break;
                            }
                        } else {
                            c2 = 1;
                            break;
                        }
                    case 1:
                    case 3:
                    default:
                        if (!c(charAt)) {
                            break;
                        } else {
                            z = false;
                            break;
                        }
                    case 2:
                        if (charAt != '0') {
                            if (charAt != '1') {
                                if (!c(charAt)) {
                                    break;
                                } else {
                                    z = false;
                                    break;
                                }
                            } else {
                                c2 = 4;
                                break;
                            }
                        } else {
                            c2 = 3;
                            break;
                        }
                    case 4:
                        if (charAt != '1') {
                            if (!c(charAt)) {
                                break;
                            } else {
                                z = false;
                                break;
                            }
                        } else {
                            c2 = 5;
                            break;
                        }
                }
                i2++;
            } else {
                z = true;
                if (c2 != 1) {
                    z = true;
                    if (c2 != 3) {
                        z = true;
                        if (c2 != 5) {
                            z = false;
                        }
                    }
                }
            }
        }
        return z;
    }

    private static boolean a(String str, int i, int i2) {
        boolean z = true;
        boolean z2 = false;
        while (true) {
            if (i2 < i) {
                break;
            } else if (e(str.charAt(i2)) >= 0) {
                if (z2) {
                    z = false;
                    break;
                }
                z2 = true;
                i2--;
            } else if (b(str.charAt(i2))) {
                z = false;
                break;
            } else {
                i2--;
            }
        }
        return z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0020, code lost:
        if (r5.length() != 0) goto L_0x0023;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean a(java.lang.String r4, java.lang.String r5) {
        /*
            Method dump skipped, instructions count: 603
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.callguardhelper.f.a(java.lang.String, java.lang.String):boolean");
    }

    private static a b(String str) {
        a aVar;
        int i;
        int length = str.length();
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (true) {
            if (i2 < length) {
                char charAt = str.charAt(i2);
                switch (i4) {
                    case 0:
                        if (charAt != '+') {
                            if (charAt != '0') {
                                if (charAt != '1') {
                                    if (!b(charAt)) {
                                        break;
                                    } else {
                                        aVar = null;
                                        break;
                                    }
                                } else {
                                    i4 = 8;
                                    break;
                                }
                            } else {
                                i4 = 2;
                                break;
                            }
                        } else {
                            i4 = 1;
                            break;
                        }
                    case 1:
                    case 3:
                    case 5:
                    case 6:
                    case 7:
                        int e2 = e(charAt);
                        if (e2 <= 0) {
                            if (!b(charAt)) {
                                break;
                            } else {
                                aVar = null;
                                break;
                            }
                        } else {
                            i = (i3 * 10) + e2;
                            if (i < 100) {
                                if (!(i > 0 && i < e && d[i])) {
                                    if (i4 != 1 && i4 != 3 && i4 != 5) {
                                        i4++;
                                        i3 = i;
                                        break;
                                    } else {
                                        i4 = 6;
                                        i3 = i;
                                        break;
                                    }
                                } else {
                                    break;
                                }
                            } else {
                                break;
                            }
                        }
                        break;
                    case 2:
                        if (charAt != '0') {
                            if (charAt != '1') {
                                if (!b(charAt)) {
                                    break;
                                } else {
                                    aVar = null;
                                    break;
                                }
                            } else {
                                i4 = 4;
                                break;
                            }
                        } else {
                            i4 = 3;
                            break;
                        }
                    case 4:
                        if (charAt != '1') {
                            if (!b(charAt)) {
                                break;
                            } else {
                                aVar = null;
                                break;
                            }
                        } else {
                            i4 = 5;
                            break;
                        }
                    case 8:
                        if (charAt != '6') {
                            if (!b(charAt)) {
                                break;
                            } else {
                                aVar = null;
                                break;
                            }
                        } else {
                            i4 = 9;
                            break;
                        }
                    case 9:
                        if (charAt != '6') {
                            aVar = null;
                            break;
                        } else {
                            aVar = new a(66, i2 + 1);
                            break;
                        }
                    default:
                        aVar = null;
                        break;
                }
                i2++;
            } else {
                aVar = null;
            }
        }
        aVar = new a(i, i2 + 1);
        return aVar;
    }

    private static boolean b(char c2) {
        return (c2 >= '0' && c2 <= '9') || c2 == '*' || c2 == '#' || c2 == '+' || c2 == 'N';
    }

    private static boolean b(String str, int i) {
        boolean z;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            if (i2 < i) {
                char charAt = str.charAt(i2);
                switch (i3) {
                    case 0:
                        if (charAt != '+') {
                            if (charAt != '0') {
                                if (!c(charAt)) {
                                    break;
                                } else {
                                    z = false;
                                    break;
                                }
                            } else {
                                i3 = 2;
                                break;
                            }
                        } else {
                            i3 = 1;
                            break;
                        }
                    case 1:
                    case 3:
                    case 5:
                        if (!a(charAt)) {
                            if (!c(charAt)) {
                                break;
                            } else {
                                z = false;
                                break;
                            }
                        } else {
                            i3 = 6;
                            break;
                        }
                    case 2:
                        if (charAt != '0') {
                            if (charAt != '1') {
                                if (!c(charAt)) {
                                    break;
                                } else {
                                    z = false;
                                    break;
                                }
                            } else {
                                i3 = 4;
                                break;
                            }
                        } else {
                            i3 = 3;
                            break;
                        }
                    case 4:
                        if (charAt != '1') {
                            if (!c(charAt)) {
                                break;
                            } else {
                                z = false;
                                break;
                            }
                        } else {
                            i3 = 5;
                            break;
                        }
                    case 6:
                    case 7:
                        if (!a(charAt)) {
                            if (!c(charAt)) {
                                break;
                            } else {
                                z = false;
                                break;
                            }
                        } else {
                            i3++;
                            break;
                        }
                    default:
                        if (!c(charAt)) {
                            break;
                        } else {
                            z = false;
                            break;
                        }
                }
                i2++;
            } else {
                z = true;
                if (i3 != 6) {
                    z = true;
                    if (i3 != 7) {
                        z = true;
                        if (i3 != 8) {
                            z = false;
                        }
                    }
                }
            }
        }
        return z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x010d, code lost:
        if (r0 != r12) goto L_0x0110;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0127, code lost:
        if (r15 >= 0) goto L_0x012a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x013f, code lost:
        if (a(r5, r15 + 1) == false) goto L_0x0142;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0157, code lost:
        if (b(r5, r15 + 1) == false) goto L_0x015a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x016f, code lost:
        if (b(r4, r14 + 1) == false) goto L_0x0172;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean b(java.lang.String r4, java.lang.String r5) {
        /*
            Method dump skipped, instructions count: 388
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.callguardhelper.f.b(java.lang.String, java.lang.String):boolean");
    }

    private static int c(String str) {
        int i;
        int length = str.length();
        int i2 = 0;
        while (true) {
            i = -1;
            if (i2 >= length) {
                break;
            }
            char charAt = str.charAt(i2);
            if (e(charAt) < 0) {
                i = -1;
                if (b(charAt)) {
                    break;
                }
                i2++;
            } else {
                i = i2 + 1;
                break;
            }
        }
        return i;
    }

    private static boolean c(char c2) {
        return (c2 >= '0' && c2 <= '9') || c2 == '*' || c2 == '#' || c2 == '+' || c2 == 'N' || c2 == ';' || c2 == ',';
    }

    private static boolean c(String str, int i) {
        boolean z;
        int i2 = 0;
        boolean z2 = false;
        while (true) {
            z = z2;
            if (i2 >= i) {
                break;
            }
            char charAt = str.charAt(i2);
            if (charAt == '0' && !z2) {
                z2 = true;
            } else if (c(charAt)) {
                z = false;
                break;
            }
            i2++;
        }
        return z;
    }

    private static boolean d(char c2) {
        return !b(c2) && ('a' > c2 || c2 > 'z') && ('A' > c2 || c2 > 'Z');
    }

    private static int e(char c2) {
        return ('0' > c2 || c2 > '9') ? -1 : c2 - '0';
    }
}
