package p000;

import android.os.Environment;
import android.text.TextUtils;
import com.kedlin.cca.core.sync.ServerSync;
import java.io.BufferedReader;
import java.io.File;
import java.io.FilenameFilter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import p000.i91;
import p000.q71;
import p000.r71;
import p000.x61;
/* renamed from: w71 */
/* loaded from: classes3-dex2jar.jar:w71.class */
public class w71 {

    /* renamed from: a */
    public static final String f8430a = "w71";

    /* renamed from: w71$a */
    /* loaded from: classes3-dex2jar.jar:w71$a.class */
    public static final class C1703a implements FilenameFilter {
        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return str.matches("\\d{12}_[\\d\\.]+[_[\\d+]]+.csv");
        }
    }

    /* renamed from: w71$b */
    /* loaded from: classes3-dex2jar.jar:w71$b.class */
    public static /* synthetic */ class C1704b {

        /* renamed from: a */
        public static final /* synthetic */ int[] f8431a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC1705c.values().length];
            f8431a = iArr;
            try {
                iArr[EnumC1705c.Rule.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f8431a[EnumC1705c.Contact.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f8431a[EnumC1705c.Call.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f8431a[EnumC1705c.SMS.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f8431a[EnumC1705c.MMS.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    /* renamed from: w71$c */
    /* loaded from: classes3-dex2jar.jar:w71$c.class */
    public enum EnumC1705c {
        Rule,
        Contact,
        Call,
        SMS,
        MMS
    }

    /* renamed from: a */
    public static ArrayList<x61.C1719a> m289a() {
        return k61.m1450l().f8606a;
    }

    /* renamed from: b */
    public static List<File> m288b() {
        try {
            List<File> asList = Arrays.asList(new File(Environment.getExternalStorageDirectory(), "com.flexaspect.android.everycallcontrol.backup").listFiles(new C1703a()));
            Collections.sort(asList);
            Collections.reverse(asList);
            return asList;
        } catch (Exception e) {
            return new ArrayList(0);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x05cd A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m287c() {
        /*
            Method dump skipped, instructions count: 1498
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p000.w71.m287c():boolean");
    }

    /* renamed from: d */
    public static boolean m286d(String str) {
        try {
            k61.m1468A(str);
            r71.EnumC1638a.f7992u0.m682n(0L);
            r71.EnumC1638a.f7995v0.m682n(0L);
            r71.EnumC1638a.f7998w0.m682n(0L);
            ServerSync.m4356l();
            return true;
        } catch (Throwable th) {
            j91.m1505k(f8430a, "Unable to restore data from the given device");
            return false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:25:0x009e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Boolean] */
    /* JADX WARN: Type inference failed for: r0v26, types: [java.lang.Boolean] */
    /* JADX WARN: Type inference failed for: r0v29, types: [java.lang.Boolean] */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.Boolean] */
    /* JADX WARN: Type inference failed for: r0v32, types: [java.lang.Boolean] */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Boolean m285e(java.io.File r4) {
        /*
            java.lang.Boolean r0 = java.lang.Boolean.FALSE
            r5 = r0
            java.io.BufferedReader r0 = new java.io.BufferedReader     // Catch: java.lang.Exception -> L69
            r6 = r0
            java.io.InputStreamReader r0 = new java.io.InputStreamReader     // Catch: java.lang.Exception -> L69
            r7 = r0
            java.io.FileInputStream r0 = new java.io.FileInputStream     // Catch: java.lang.Exception -> L69
            r8 = r0
            r0 = r8
            r1 = r4
            r0.<init>(r1)     // Catch: java.lang.Exception -> L69
            r0 = r7
            r1 = r8
            r0.<init>(r1)     // Catch: java.lang.Exception -> L69
            r0 = r6
            r1 = r7
            r0.<init>(r1)     // Catch: java.lang.Exception -> L69
            r0 = r6
            java.lang.String r0 = r0.readLine()     // Catch: java.lang.Exception -> L65
            r7 = r0
            r0 = r7
            android.app.Application r1 = p000.fa1.m1840j()     // Catch: java.lang.Exception -> L65
            int r2 = p000.i61.backup_csv_header_2_0     // Catch: java.lang.Exception -> L65
            java.lang.String r1 = r1.getString(r2)     // Catch: java.lang.Exception -> L65
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Exception -> L65
            if (r0 == 0) goto L41
            r0 = r6
            java.lang.Boolean r0 = m284f(r0)     // Catch: java.lang.Exception -> L65
            r7 = r0
            r0 = r7
            r4 = r0
        L3e:
            goto L9a
        L41:
            r0 = r7
            android.app.Application r1 = p000.fa1.m1840j()     // Catch: java.lang.Exception -> L65
            int r2 = p000.i61.backup_csv_header_3_0     // Catch: java.lang.Exception -> L65
            java.lang.String r1 = r1.getString(r2)     // Catch: java.lang.Exception -> L65
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Exception -> L65
            if (r0 == 0) goto L5b
            r0 = r6
            java.lang.Boolean r0 = m283g(r0)     // Catch: java.lang.Exception -> L65
            r7 = r0
            r0 = r7
            r4 = r0
            goto L3e
        L5b:
            r0 = r6
            java.lang.Boolean r0 = m282h(r0)     // Catch: java.lang.Exception -> L65
            r7 = r0
            r0 = r7
            r4 = r0
            goto L3e
        L65:
            r7 = move-exception
            goto L6c
        L69:
            r7 = move-exception
            r0 = 0
            r6 = r0
        L6c:
            java.lang.String r0 = p000.w71.f8430a
            r9 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r8 = r0
            r0 = r8
            java.lang.String r1 = "Unable to process file "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r8
            r1 = r4
            java.lang.String r1 = r1.getName()
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r9
            r1 = r8
            java.lang.String r1 = r1.toString()
            r2 = r7
            p000.j91.m1504l(r0, r1, r2)
            r0 = r5
            r4 = r0
        L9a:
            r0 = r6
            if (r0 == 0) goto La2
            r0 = r6
            r0.close()     // Catch: java.lang.Throwable -> La4
        La2:
            r0 = r4
            return r0
        La4:
            r6 = move-exception
            goto La2
        */
        throw new UnsupportedOperationException("Method not decompiled: p000.w71.m285e(java.io.File):java.lang.Boolean");
    }

    /* renamed from: f */
    public static Boolean m284f(BufferedReader bufferedReader) {
        boolean z;
        try {
            new x81().m380f();
            new q81().m885M();
            while (true) {
                String readLine = bufferedReader.readLine();
                z = true;
                if (readLine == null) {
                    break;
                }
                String[] split = TextUtils.split(readLine.substring(0, readLine.length() - 1).substring(1), "\",\"");
                try {
                    if (split[9].equals("0")) {
                        x81 x81Var = new x81();
                        x81Var.f8639j = q71.EnumC1618e.m901c(Integer.valueOf(split[6]));
                        i91.EnumC1446b enumC1446b = i91.EnumC1446b.values()[Integer.valueOf(split[5]).intValue()];
                        x81Var.f8638h = enumC1446b;
                        x81Var.f8637g = enumC1446b == i91.EnumC1446b.ARBITRARY ? new i91(split[2].replace("\\\"", "\""), split[3], split[1]) : new i91(split[2].replace("\\\"", "\""), split[3]);
                        x81Var.f8636f = !TextUtils.isEmpty(split[0]) ? split[0].replace("\\\"", "\"") : null;
                        x81Var.f8640k = q71.EnumC1614a.m908h(Integer.valueOf(split[7]));
                        x81Var.f8641l = q71.EnumC1620g.values()[Integer.valueOf(split[8]).intValue()];
                        x81Var.mo148z();
                    } else {
                        q81 q81Var = new q81();
                        q81Var.m373n(split[9]);
                        if (q81Var.f7778d == 0) {
                            j91.m1499q(f8430a, "Contact " + split[0] + "(" + split[9] + ") not found");
                        } else {
                            q81Var.f7781h = q71.EnumC1618e.m901c(Integer.valueOf(split[6]));
                            q81Var.f7782j = q71.EnumC1614a.m908h(Integer.valueOf(split[7]));
                            q81Var.f7783k = q71.EnumC1620g.values()[Integer.valueOf(split[8]).intValue()];
                            q81Var.mo148z();
                        }
                    }
                } catch (Exception e) {
                    j91.m1504l(f8430a, "Unable to parse: " + readLine, e);
                }
            }
        } catch (Exception e2) {
            j91.m1504l(f8430a, "Unable to read", e2);
            z = false;
        }
        if (bufferedReader != null) {
            try {
                bufferedReader.close();
            } catch (Exception e3) {
            }
        }
        return Boolean.valueOf(z);
    }

    /* renamed from: g */
    public static Boolean m283g(BufferedReader bufferedReader) {
        boolean z;
        int i;
        boolean mo148z;
        try {
            new x81().m380f();
            new q81().m885M();
            boolean z2 = true;
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    break;
                }
                String[] split = TextUtils.split(readLine.substring(0, readLine.length() - 1).substring(1), "\",\"");
                String str = split[0];
                if (TextUtils.isEmpty(str)) {
                    j91.m1505k(f8430a, "Marker is absent");
                } else {
                    try {
                        i = C1704b.f8431a[EnumC1705c.values()[Integer.valueOf(str).intValue()].ordinal()];
                    } catch (Exception e) {
                        j91.m1504l(f8430a, "Unable to parse: " + readLine, e);
                    }
                    if (i == 1) {
                        x81 x81Var = new x81();
                        x81Var.f8639j = q71.EnumC1618e.m901c(Integer.valueOf(split[7]));
                        i91.EnumC1446b enumC1446b = i91.EnumC1446b.values()[Integer.valueOf(split[6]).intValue()];
                        x81Var.f8638h = enumC1446b;
                        x81Var.f8637g = enumC1446b == i91.EnumC1446b.ARBITRARY ? new i91(split[3].replace("\\\"", "\""), split[4], split[2]) : new i91(split[3].replace("\\\"", "\""), split[4]);
                        x81Var.f8636f = !TextUtils.isEmpty(split[1]) ? split[1].replace("\\\"", "\"") : null;
                        x81Var.f8640k = q71.EnumC1614a.m908h(Integer.valueOf(split[8]));
                        x81Var.f8641l = q71.EnumC1620g.values()[Integer.valueOf(split[9]).intValue()];
                        mo148z = x81Var.mo148z();
                    } else if (i == 2) {
                        q81 q81Var = new q81();
                        q81Var.m373n(split[10]);
                        if (q81Var.f7778d == 0) {
                            j91.m1499q(f8430a, "Contact " + split[1] + "(" + split[10] + ") not found");
                        } else {
                            q81Var.f7781h = q71.EnumC1618e.m901c(Integer.valueOf(split[7]));
                            q81Var.f7782j = q71.EnumC1614a.m908h(Integer.valueOf(split[8]));
                            q81Var.f7783k = q71.EnumC1620g.values()[Integer.valueOf(split[9]).intValue()];
                            mo148z = q81Var.mo148z();
                        }
                    } else if (i == 3) {
                        mo148z = x71.m169b(split);
                    } else if (i == 4) {
                        mo148z = z71.m69b(split);
                    } else if (i == 5) {
                        mo148z = y71.m97b(split);
                    }
                    z2 &= mo148z;
                }
                z2 = false;
            }
            z = z2;
        } catch (Exception e2) {
            j91.m1504l(f8430a, "Unable to read", e2);
            z = false;
        }
        if (bufferedReader != null) {
            try {
                bufferedReader.close();
            } catch (Exception e3) {
            }
        }
        return Boolean.valueOf(z);
    }

    /* JADX WARN: Removed duplicated region for block: B:142:0x02a5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Boolean m282h(java.io.BufferedReader r6) {
        /*
            Method dump skipped, instructions count: 700
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p000.w71.m282h(java.io.BufferedReader):java.lang.Boolean");
    }
}
