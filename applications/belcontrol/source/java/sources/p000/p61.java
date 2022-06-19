package p000;

import android.text.TextUtils;
import com.google.android.exoplayer2.C0515C;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.zip.GZIPInputStream;
import org.json.JSONObject;
import p000.fa1;
/* renamed from: p61 */
/* loaded from: classes3-dex2jar.jar:p61.class */
public class p61 implements u61 {

    /* renamed from: a */
    public long f7684a = 0;

    /* renamed from: b */
    public long f7685b = 50;

    @Override // p000.u61
    /* renamed from: a */
    public JSONObject mo73a() {
        return null;
    }

    /* renamed from: b */
    public void m949b(String str) {
        m948c(str, true, -1, "");
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0070, code lost:
        if (r9.equals("V2") == false) goto L20;
     */
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* JADX WARN: Type inference failed for: r0v35, types: [long] */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m948c(java.lang.String r6, boolean r7, int r8, java.lang.String r9) {
        /*
            r5 = this;
            r0 = r6
            if (r0 == 0) goto Lbd
            r0 = r6
            java.lang.String r0 = r0.trim()
            int r0 = r0.length()
            if (r0 != 0) goto L11
            goto Lbd
        L11:
            r0 = r5
            java.lang.String r1 = "PROTO_FROM_SERVER"
            java.lang.String r0 = p000.j91.C1453b.m1488b(r0, r1)
            p000.j91.m1522B(r0)
            r0 = r7
            if (r0 == 0) goto L28
            r0 = r5
            r1 = r6
            boolean r0 = r0.m946e(r1)
            r10 = r0
            goto L2f
        L28:
            r0 = r5
            r1 = r6
            boolean r0 = r0.m947d(r1)
            r10 = r0
        L2f:
            r0 = r10
            if (r0 == 0) goto Lb0
            r71$a r0 = p000.r71.EnumC1638a.f8005y1
            r6 = r0
            r0 = r6
            int r0 = r0.m691e()
            r11 = r0
            long r0 = java.lang.System.currentTimeMillis()
            r12 = r0
            r0 = r12
            r14 = r0
            r0 = r8
            r16 = r0
            r0 = r7
            if (r0 != 0) goto L96
            r0 = r12
            r14 = r0
            r0 = r8
            r16 = r0
            r0 = r8
            r1 = -1
            if (r0 == r1) goto L96
            r0 = r9
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L73
            r0 = r12
            r14 = r0
            r0 = r8
            r16 = r0
            r0 = r9
            java.lang.String r1 = "V2"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L96
        L73:
            r0 = r11
            r1 = 1
            int r0 = r0 + r1
            r16 = r0
            r0 = r8
            r1 = r16
            if (r0 <= r1) goto L92
            r0 = r8
            r1 = 1
            int r0 = r0 + r1
            r16 = r0
            r0 = r12
            r71$a r1 = p000.r71.EnumC1638a.f7999w1
            long r1 = r1.m689g()
            long r0 = r0 - r1
            r14 = r0
            goto L96
        L92:
            r0 = r12
            r14 = r0
        L96:
            r0 = r16
            r1 = -1
            if (r0 == r1) goto La5
            r0 = r6
            r1 = r16
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            r0.m683m(r1)
        La5:
            r71$a r0 = p000.r71.EnumC1638a.f7931X0
            r1 = r14
            java.lang.Long r1 = java.lang.Long.valueOf(r1)
            r0.m682n(r1)
        Lb0:
            r0 = r5
            java.lang.String r1 = "PROTO_FROM_SERVER"
            java.lang.String r0 = p000.j91.C1453b.m1488b(r0, r1)
            r1 = 1
            p000.j91.m1520D(r0, r1)
            r0 = r10
            return r0
        Lbd:
            r0 = r5
            java.lang.String r1 = "Community list is empty!"
            p000.j91.m1505k(r0, r1)
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p000.p61.m948c(java.lang.String, boolean, int, java.lang.String):boolean");
    }

    /* renamed from: d */
    public boolean m947d(String str) {
        int i;
        Long l;
        o81 o81Var = new o81();
        ArrayList arrayList = new ArrayList();
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new GZIPInputStream(new ByteArrayInputStream(da1.m2715a(str))), C0515C.UTF8_NAME));
            while (true) {
                String readLine = bufferedReader.readLine();
                Long l2 = null;
                if (readLine == null) {
                    break;
                }
                String[] split = readLine.split(";");
                if (split.length == 2) {
                    String[] split2 = split[0].split(",");
                    if (split2.length >= 2) {
                        if (split2[0].equals("A")) {
                            arrayList.add(readLine);
                        } else if (split2[0].equals("D")) {
                            try {
                                l2 = Long.valueOf(split2[1]);
                            } catch (Throwable th) {
                            }
                            if (l2 != null) {
                                o81Var.m1144E();
                                o81Var.m1143F(l2.longValue());
                            }
                        }
                    }
                }
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                String[] split3 = ((String) it.next()).split(";")[0].split(",");
                try {
                    Long valueOf = Long.valueOf(split3[1]);
                    i = -1;
                    l = valueOf;
                    try {
                        if (!TextUtils.isEmpty(split3[2].trim())) {
                            i = Integer.parseInt(split3[2]);
                            l = valueOf;
                        }
                    } catch (Throwable th2) {
                        i = -1;
                        l = valueOf;
                    }
                } catch (Throwable th3) {
                    l = null;
                    i = -1;
                }
                if (l != null) {
                    o81Var.m1144E();
                    o81Var.m1142G(l.longValue());
                    if (o81Var.m1139K() == null) {
                        try {
                            String m1638a = ha1.m1638a(ha1.m1635d(l.longValue()));
                            if (m1638a != null) {
                                o81Var.m1137M(l.longValue(), fa1.C1420e.m1800o(m1638a));
                                o81Var.f7166d = i;
                                o81Var.mo148z();
                            }
                        } catch (Throwable th4) {
                        }
                    }
                }
            }
            try {
                bufferedReader.close();
                return true;
            } catch (Throwable th5) {
                return true;
            }
        } catch (Exception e) {
            j91.m1504l(this, "Error updating community.", e);
            return false;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x011f, code lost:
        if (r6.f7685b >= 1000) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x012e, code lost:
        if ((java.lang.System.currentTimeMillis() - r6.f7684a) <= 30000) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0131, code lost:
        r0 = r6.f7685b + 50;
        r6.f7685b = r0;
        r6.f7685b = java.lang.Math.min(r0, 1000L);
        r6.f7684a = java.lang.System.currentTimeMillis();
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0155, code lost:
        java.lang.Thread.sleep(r6.f7685b);
     */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m946e(java.lang.String r7) {
        /*
            Method dump skipped, instructions count: 383
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p000.p61.m946e(java.lang.String):boolean");
    }
}
