package p459j.p460a.p533l;

import android.text.TextUtils;
import androidx.room.RoomMasterTable;
import com.appsflyer.AppsFlyerLibCore;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.R$string;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
import p459j.p460a.p582w0.C13915b3;
/* renamed from: j.a.l.k */
/* loaded from: classes2-dex2jar.jar:j/a/l/k.class */
public class C12944k {

    /* renamed from: b */
    public static final String[] f29299b = {"11", "12", "13", "14", "15", "16", "17", "18", "19", "21", "22", "24", "27", "28", "31", "32", "33", "34", "35", "37", AppsFlyerLibCore.f1666, "41", RoomMasterTable.DEFAULT_ID, "43", "44", "45", "46", "47", "48", "49", "51", "53", "54", "55", "61", "62", "63", "64", "65", "66", "67", "68", "69", "71", "73", "74", "75", "77", "79", "81", "82", "83", "84", "85", "86", "87", "88", "89", "91", "92", "93", "94", "95", "96", "97", "98", "99"};

    /* renamed from: a */
    public HashSet<String> f29300a;

    /* renamed from: j.a.l.k$b */
    /* loaded from: classes2-dex2jar.jar:j/a/l/k$b.class */
    public static class C12946b {

        /* renamed from: a */
        public static final C12944k f29301a = new C12944k();
    }

    public C12944k() {
        m4954a(m4959a());
    }

    /* renamed from: a */
    public static void m4956a(String str, boolean[] zArr) {
        long a = C13915b3.m3065a(str + 0, 0L);
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (i < zArr.length) {
            if (i2 < 64) {
                if (((1 << i2) & a) != 0) {
                    zArr[i] = true;
                } else {
                    zArr[i] = false;
                }
                i2++;
                i++;
            } else {
                i3++;
                a = C13915b3.m3065a(str + i3, 0L);
                i2 = 0;
            }
        }
    }

    /* renamed from: a */
    public static void m4955a(JSONObject jSONObject, String str) {
        int i = 0;
        while (true) {
            try {
                if (jSONObject.has(str + i)) {
                    long j = jSONObject.getLong(str + i);
                    C13915b3.m3057b(str + i, j);
                    i++;
                } else {
                    return;
                }
            } catch (JSONException e) {
                return;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1, types: [long] */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m4951b(java.lang.String r6, boolean[] r7) {
        /*
            r0 = 0
            r8 = r0
            r0 = 0
            r10 = r0
            r0 = 0
            r11 = r0
            r0 = 0
            r12 = r0
        L_0x000b:
            r0 = r10
            r1 = r7
            int r1 = r1.length
            if (r0 >= r1) goto L_0x0063
            r0 = r11
            r1 = 64
            if (r0 >= r1) goto L_0x0037
            r0 = r8
            r13 = r0
            r0 = r7
            r1 = r10
            r0 = r0[r1]
            if (r0 == 0) goto L_0x002b
            r0 = r8
            r1 = 1
            r2 = r11
            long r1 = r1 << r2
            long r0 = r0 + r1
            r13 = r0
        L_0x002b:
            int r11 = r11 + 1
            int r10 = r10 + 1
            r0 = r13
            r8 = r0
            goto L_0x000b
        L_0x0037:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r15 = r0
            r0 = r15
            r1 = r6
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r15
            r1 = r12
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r15
            java.lang.String r0 = r0.toString()
            r1 = r8
            p459j.p460a.p582w0.C13915b3.m3057b(r0, r1)
            int r12 = r12 + 1
            r0 = 0
            r8 = r0
            r0 = 0
            r11 = r0
            goto L_0x000b
        L_0x0063:
            r0 = r11
            if (r0 <= 0) goto L_0x0085
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r7 = r0
            r0 = r7
            r1 = r6
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r7
            r1 = r12
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r7
            java.lang.String r0 = r0.toString()
            r1 = r8
            p459j.p460a.p582w0.C13915b3.m3057b(r0, r1)
        L_0x0085:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p533l.C12944k.m4951b(java.lang.String, boolean[]):void");
    }

    /* renamed from: b */
    public static boolean m4950b(JSONObject jSONObject, String str) {
        boolean z = false;
        int i = 0;
        while (true) {
            try {
                if (!C13915b3.m3067a(str + i)) {
                    break;
                }
                jSONObject.put(str + i, C13915b3.m3065a(str + i, 0L));
                i++;
            } catch (JSONException e) {
                e.printStackTrace();
                return false;
            }
        }
        if (i != 0) {
            z = true;
        }
        return z;
    }

    /* renamed from: c */
    public static List<String> m4948c() {
        ArrayList arrayList = new ArrayList();
        if (C13915b3.m3062a("pref_block_other_ddd", false)) {
            arrayList.add(MyApplication.m29013o().getString(R$string.blocklist_menu_block_other_desc));
        } else {
            boolean[] a = m4947d().m4959a();
            for (int i = 0; i < a.length; i++) {
                if (a[i]) {
                    arrayList.add(f29299b[i]);
                }
            }
        }
        return arrayList;
    }

    /* renamed from: d */
    public static C12944k m4947d() {
        return C12946b.f29301a;
    }

    /* renamed from: a */
    public List<C12943j> m4957a(String str) {
        ArrayList arrayList = new ArrayList();
        if (!TextUtils.isEmpty(str) && str.length() >= 6 && str.startsWith("+55")) {
            String substring = str.substring(3, 5);
            boolean[] a = m4959a();
            int i = 0;
            while (true) {
                String[] strArr = f29299b;
                if (i >= strArr.length) {
                    break;
                }
                if (a[i] && strArr[i].equals(substring)) {
                    C12943j jVar = new C12943j(3, String.format(MyApplication.m29013o().getString(R$string.blockhistory_reason_specific_ddd_short), f29299b[i]));
                    jVar.f29296b = substring;
                    arrayList.add(jVar);
                }
                i++;
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public void m4958a(C12943j jVar) {
        if (jVar.f29295a == 3) {
            boolean[] a = m4959a();
            int i = 0;
            while (true) {
                String[] strArr = f29299b;
                if (i < strArr.length) {
                    if (a[i] && strArr[i].equals(jVar.f29296b)) {
                        a[i] = false;
                    }
                    i++;
                } else {
                    m4949b(a);
                    return;
                }
            }
        }
    }

    /* renamed from: a */
    public final void m4954a(boolean[] zArr) {
        this.f29300a = new HashSet<>();
        for (int i = 0; i < zArr.length; i++) {
            if (zArr[i]) {
                this.f29300a.add(f29299b[i]);
            }
        }
    }

    /* renamed from: a */
    public boolean[] m4959a() {
        boolean[] zArr = new boolean[f29299b.length];
        m4956a("prefs_block_specific_ddd", zArr);
        return zArr;
    }

    /* renamed from: b */
    public void m4953b() {
        m4954a(m4959a());
    }

    /* renamed from: b */
    public void m4949b(boolean[] zArr) {
        m4951b("prefs_block_specific_ddd", zArr);
        m4954a(zArr);
    }

    /* renamed from: b */
    public boolean m4952b(String str) {
        if (!str.startsWith("+55")) {
            return false;
        }
        return this.f29300a.contains(str.substring(3, 5));
    }
}
