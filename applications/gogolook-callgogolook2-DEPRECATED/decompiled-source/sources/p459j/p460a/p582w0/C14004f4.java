package p459j.p460a.p582w0;

import java.util.ArrayList;
import java.util.regex.Pattern;
import p459j.p460a.p551p0.C13317b;
/* renamed from: j.a.w0.f4 */
/* loaded from: classes3-dex2jar.jar:j/a/w0/f4.class */
public class C14004f4 {

    /* renamed from: a */
    public static final Pattern f31422a = Pattern.compile("[\\d+*#]*");

    /* renamed from: b */
    public static final Pattern f31423b = Pattern.compile("[\\p{Latin}]*");

    /* renamed from: c */
    public static final Pattern f31424c = Pattern.compile("[\\p{InCJKUnifiedIdeographs}\\p{Latin}]*");

    /* renamed from: d */
    public static final Pattern f31425d = Pattern.compile("[\\p{Hangul}\\p{Latin}]*");

    /* renamed from: e */
    public static final Pattern f31426e = Pattern.compile("[\\p{InHiragana}\\p{InKatakana}\\p{InCJKUnifiedIdeographs}]*");

    /* renamed from: f */
    public static final Pattern f31427f = Pattern.compile("[\\.\\-_\\s,]");

    /* renamed from: a */
    public static String m2900a(char c) {
        int i = c - 44032;
        if (i < 0 || i >= 11172) {
            return String.valueOf(c);
        }
        StringBuffer stringBuffer = new StringBuffer();
        int i2 = i / 588;
        int i3 = (i % 588) / 28;
        int i4 = (i % 28) + 4519;
        stringBuffer.append((char) (i2 + 4352));
        stringBuffer.append((char) (i3 + 4449));
        if (i4 != 4519) {
            stringBuffer.append((char) i4);
        }
        return stringBuffer.toString();
    }

    /* renamed from: a */
    public static ArrayList<String> m2899a(String str, int i, boolean z) {
        StringBuilder sb = new StringBuilder(C13317b.m4268a(str, false));
        ArrayList<String> arrayList = new ArrayList<>();
        for (int i2 = 0; i2 < sb.length(); i2++) {
            sb.append(sb.charAt(0));
            sb.deleteCharAt(0);
            if (i == 2 || i == 4 || i == 3) {
                String a = C13317b.m4268a(sb.toString(), z);
                if (a != null && !m2897a(arrayList, a)) {
                    if (i2 == sb.length() - 1) {
                        arrayList.add(0, a);
                    } else {
                        arrayList.add(a);
                    }
                }
            } else if (i == 3) {
                StringBuilder sb2 = new StringBuilder();
                StringBuilder sb3 = new StringBuilder();
                for (int i3 = 0; i3 < sb.length(); i3++) {
                    String a2 = m2900a(sb.charAt(i3));
                    sb2.append(a2);
                    sb3.append(a2.charAt(0));
                }
                String a3 = C13317b.m4268a(sb2.toString(), z);
                if (a3 != null && !m2897a(arrayList, a3)) {
                    if (i2 == sb.length() - 1) {
                        arrayList.add(0, a3);
                    } else {
                        arrayList.add(a3);
                    }
                }
                String a4 = C13317b.m4268a(sb3.toString(), z);
                if (a4 != null && !m2897a(arrayList, a4)) {
                    if (i2 == sb.length() - 1) {
                        arrayList.add(1, a4);
                    } else {
                        arrayList.add(a4);
                    }
                }
            }
        }
        if (arrayList.size() > 0) {
            return arrayList;
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x00ac, code lost:
        if (r4.size() == 0) goto L_0x00af;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.ArrayList<java.lang.String> m2898a(java.lang.String r4, boolean r5) {
        /*
            r0 = r4
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 == 0) goto L_0x0009
            r0 = 0
            return r0
        L_0x0009:
            r0 = r4
            r1 = 0
            java.lang.String r0 = p459j.p460a.p551p0.C13317b.m4268a(r0, r1)
            r6 = r0
            java.util.regex.Pattern r0 = p459j.p460a.p582w0.C14004f4.f31422a
            r1 = r6
            java.util.regex.Matcher r0 = r0.matcher(r1)
            boolean r0 = r0.matches()
            if (r0 == 0) goto L_0x002d
            java.util.ArrayList r0 = new java.util.ArrayList
            r1 = r0
            r1.<init>()
            r4 = r0
            r0 = r4
            r1 = r6
            boolean r0 = r0.add(r1)
            goto L_0x00a2
        L_0x002d:
            java.util.regex.Pattern r0 = p459j.p460a.p582w0.C14004f4.f31423b
            r1 = r6
            java.util.regex.Matcher r0 = r0.matcher(r1)
            boolean r0 = r0.matches()
            if (r0 == 0) goto L_0x0044
            r0 = r4
            r1 = 1
            r2 = r5
            java.util.ArrayList r0 = m2895b(r0, r1, r2)
            r4 = r0
            goto L_0x00a2
        L_0x0044:
            java.util.regex.Pattern r0 = p459j.p460a.p582w0.C14004f4.f31424c
            r1 = r6
            java.util.regex.Matcher r0 = r0.matcher(r1)
            boolean r0 = r0.matches()
            if (r0 == 0) goto L_0x005b
            r0 = r4
            r1 = 2
            r2 = r5
            java.util.ArrayList r0 = m2895b(r0, r1, r2)
            r4 = r0
            goto L_0x00a2
        L_0x005b:
            java.util.regex.Pattern r0 = p459j.p460a.p582w0.C14004f4.f31426e
            r1 = r6
            java.util.regex.Matcher r0 = r0.matcher(r1)
            boolean r0 = r0.matches()
            if (r0 == 0) goto L_0x0072
            r0 = r4
            r1 = 4
            r2 = r5
            java.util.ArrayList r0 = m2895b(r0, r1, r2)
            r4 = r0
            goto L_0x00a2
        L_0x0072:
            java.util.regex.Pattern r0 = p459j.p460a.p582w0.C14004f4.f31425d
            r1 = r6
            java.util.regex.Matcher r0 = r0.matcher(r1)
            boolean r0 = r0.matches()
            if (r0 == 0) goto L_0x0084
            r0 = 0
            r4 = r0
            goto L_0x00a2
        L_0x0084:
            java.util.regex.Pattern r0 = p459j.p460a.p582w0.C14004f4.f31427f
            r1 = r4
            java.util.regex.Matcher r0 = r0.matcher(r1)
            boolean r0 = r0.find()
            if (r0 == 0) goto L_0x009b
            r0 = r4
            r1 = 1
            r2 = r5
            java.util.ArrayList r0 = m2895b(r0, r1, r2)
            r4 = r0
            goto L_0x00a2
        L_0x009b:
            r0 = r4
            r1 = 0
            r2 = r5
            java.util.ArrayList r0 = m2895b(r0, r1, r2)
            r4 = r0
        L_0x00a2:
            r0 = r4
            if (r0 == 0) goto L_0x00af
            r0 = r4
            r6 = r0
            r0 = r4
            int r0 = r0.size()
            if (r0 != 0) goto L_0x00b1
        L_0x00af:
            r0 = 0
            r6 = r0
        L_0x00b1:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p582w0.C14004f4.m2898a(java.lang.String, boolean):java.util.ArrayList");
    }

    /* renamed from: a */
    public static ArrayList<String> m2896a(String[] strArr, boolean z) {
        int[] iArr = new int[strArr.length];
        for (int i = 0; i < strArr.length; i++) {
            iArr[i] = i;
        }
        ArrayList<String> arrayList = new ArrayList<>();
        for (int i2 = 0; i2 < strArr.length; i2++) {
            int i3 = 0;
            while (i3 < strArr.length - 1) {
                int i4 = iArr[i3];
                int i5 = i3 + 1;
                iArr[i3] = iArr[i5];
                iArr[i5] = i4;
                StringBuilder sb = new StringBuilder();
                for (int i6 = 0; i6 < strArr.length; i6++) {
                    sb.append(strArr[iArr[i6]]);
                }
                String a = C13317b.m4268a(sb.toString(), z);
                if (a != null && !m2897a(arrayList, a)) {
                    if (i2 == strArr.length - 1 && i3 == strArr.length - 2) {
                        arrayList.add(0, a);
                    } else {
                        arrayList.add(a);
                    }
                }
                i3 = i5;
            }
        }
        if (arrayList.size() > 0) {
            return arrayList;
        }
        return null;
    }

    /* renamed from: a */
    public static boolean m2897a(ArrayList<String> arrayList, String str) {
        for (int i = 0; i < arrayList.size(); i++) {
            if (arrayList.get(i).equalsIgnoreCase(str)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    public static ArrayList<String> m2895b(String str, int i, boolean z) {
        ArrayList<String> arrayList = new ArrayList<>();
        if (i == 0) {
            String a = C13317b.m4268a(str, z);
            if (a != null) {
                arrayList.add(a);
            }
        } else if (i == 1) {
            String[] split = str.split("[\\.\\-_\\s,]");
            if (split.length == 1) {
                String a2 = C13317b.m4268a(str, z);
                if (a2 != null) {
                    arrayList.add(a2);
                }
            } else {
                ArrayList<String> a3 = m2896a(split, z);
                if (a3 != null) {
                    arrayList.addAll(a3);
                }
            }
        } else if (i == 2 || i == 3) {
            ArrayList<String> a4 = m2899a(str, i, z);
            if (a4 != null) {
                arrayList.addAll(a4);
            }
        } else if (i == 4) {
            String[] split2 = str.split("[\\.\\-_\\s,]");
            ArrayList<String> a5 = split2.length == 1 ? m2899a(str, i, z) : m2896a(split2, z);
            if (a5 != null) {
                arrayList.addAll(a5);
            }
        }
        if (arrayList.size() > 0) {
            return arrayList;
        }
        return null;
    }
}
