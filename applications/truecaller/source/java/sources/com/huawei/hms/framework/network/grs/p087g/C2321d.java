package com.huawei.hms.framework.network.grs.p087g;

import android.text.TextUtils;
import com.huawei.hms.framework.common.Logger;
import com.huawei.hms.framework.common.StringUtils;
import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
/* renamed from: com.huawei.hms.framework.network.grs.g.d */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/framework/network/grs/g/d.class */
public class C2321d {

    /* renamed from: o */
    private static final String f7444o = "d";

    /* renamed from: a */
    private Map<String, List<String>> f7445a;

    /* renamed from: b */
    private byte[] f7446b;

    /* renamed from: c */
    private int f7447c;

    /* renamed from: d */
    private long f7448d;

    /* renamed from: e */
    private long f7449e;

    /* renamed from: f */
    private long f7450f;

    /* renamed from: g */
    private String f7451g;

    /* renamed from: h */
    private int f7452h;

    /* renamed from: i */
    private int f7453i;

    /* renamed from: j */
    private String f7454j;

    /* renamed from: k */
    private long f7455k;

    /* renamed from: l */
    private String f7456l;

    /* renamed from: m */
    private Exception f7457m;

    /* renamed from: n */
    private String f7458n;

    public C2321d(int i, Map<String, List<String>> map, byte[] bArr, long j) {
        this.f7447c = 0;
        this.f7452h = 2;
        this.f7453i = 9001;
        this.f7454j = "";
        this.f7455k = 0L;
        this.f7456l = "";
        this.f7447c = i;
        this.f7445a = map;
        this.f7446b = ByteBuffer.wrap(bArr).array();
        this.f7448d = j;
        m37894s();
    }

    public C2321d(Exception exc, long j) {
        this.f7447c = 0;
        this.f7452h = 2;
        this.f7453i = 9001;
        this.f7454j = "";
        this.f7455k = 0L;
        this.f7456l = "";
        this.f7457m = exc;
        this.f7448d = j;
    }

    /* renamed from: a */
    private void m37923a(Map<String, String> map) {
        Object obj;
        String str;
        if (map.containsKey("ETag")) {
            String str2 = map.get("ETag");
            if (!TextUtils.isEmpty(str2)) {
                Logger.m38044i(f7444o, "success get Etag from server");
                m37924a(str2);
                return;
            }
            str = f7444o;
            obj = "The Response Heads Etag is Empty";
        } else {
            str = f7444o;
            obj = "Response Heads has not Etag";
        }
        Logger.m38044i(str, obj);
    }

    /* renamed from: b */
    private void m37921b(int i) {
        this.f7453i = i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x0110, code lost:
        if (r10 > 2592000) goto L36;
     */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0108  */
    /* JADX WARN: Type inference failed for: r0v32, types: [long] */
    /* JADX WARN: Type inference failed for: r0v51, types: [long] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m37918b(java.util.Map<java.lang.String, java.lang.String> r9) {
        /*
            Method dump skipped, instructions count: 319
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hms.framework.network.grs.p087g.C2321d.m37918b(java.util.Map):void");
    }

    /* renamed from: c */
    private void m37916c(int i) {
        this.f7452h = i;
    }

    /* renamed from: c */
    private void m37915c(long j) {
        this.f7455k = j;
    }

    /* renamed from: c */
    private void m37914c(String str) {
        this.f7454j = str;
    }

    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* renamed from: c */
    private void m37913c(Map<String, String> map) {
        char c;
        if (map.containsKey("Retry-After")) {
            String str = map.get("Retry-After");
            if (!TextUtils.isEmpty(str)) {
                try {
                    c = Long.parseLong(str);
                } catch (NumberFormatException e) {
                    Logger.m38039w(f7444o, "getRetryAfter addHeadersToResult NumberFormatException", e);
                }
                long j = c * 1000;
                Logger.m38041v(f7444o, "convert retry-afterTime{%s}", Long.valueOf(j));
                m37915c(j);
            }
        }
        c = 0;
        long j2 = c * 1000;
        Logger.m38041v(f7444o, "convert retry-afterTime{%s}", Long.valueOf(j2));
        m37915c(j2);
    }

    /* renamed from: d */
    private void m37911d(String str) {
    }

    /* renamed from: e */
    private void m37909e(String str) {
    }

    /* renamed from: f */
    private void m37907f(String str) {
        this.f7451g = str;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0062, code lost:
        if (r0.getInt("resultCode") == 0) goto L21;
     */
    /* renamed from: p */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m37897p() {
        /*
            Method dump skipped, instructions count: 316
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hms.framework.network.grs.p087g.C2321d.m37897p():void");
    }

    /* renamed from: q */
    private void m37896q() {
        if (m37898o() || m37899n() || m37900m()) {
            Map<String, String> m37895r = m37895r();
            if (m37895r.size() <= 0) {
                Logger.m38040w(f7444o, "parseHeader {headers.size() <= 0}");
                return;
            }
            try {
                if (m37898o() || m37900m()) {
                    m37918b(m37895r);
                    m37923a(m37895r);
                }
                if (!m37899n()) {
                    return;
                }
                m37913c(m37895r);
            } catch (JSONException e) {
                Logger.m38038w(f7444o, "parseHeader catch JSONException: %s", StringUtils.anonymizeMessage(e.getMessage()));
            }
        }
    }

    /* renamed from: r */
    private Map<String, String> m37895r() {
        HashMap hashMap = new HashMap(16);
        Map<String, List<String>> map = this.f7445a;
        if (map == null || map.size() <= 0) {
            Logger.m38042v(f7444o, "parseRespHeaders {respHeaders == null} or {respHeaders.size() <= 0}");
            return hashMap;
        }
        for (Map.Entry<String, List<String>> entry : this.f7445a.entrySet()) {
            String key = entry.getKey();
            for (String str : entry.getValue()) {
                hashMap.put(key, str);
            }
        }
        return hashMap;
    }

    /* renamed from: s */
    private void m37894s() {
        m37896q();
        m37897p();
    }

    /* renamed from: a */
    public String m37927a() {
        return this.f7454j;
    }

    /* renamed from: a */
    public void m37926a(int i) {
    }

    /* renamed from: a */
    public void m37925a(long j) {
        this.f7450f = j;
    }

    /* renamed from: a */
    public void m37924a(String str) {
        this.f7456l = str;
    }

    /* renamed from: b */
    public int m37922b() {
        return this.f7447c;
    }

    /* renamed from: b */
    public void m37920b(long j) {
        this.f7449e = j;
    }

    /* renamed from: b */
    public void m37919b(String str) {
        this.f7458n = str;
    }

    /* renamed from: c */
    public int m37917c() {
        return this.f7453i;
    }

    /* renamed from: d */
    public Exception m37912d() {
        return this.f7457m;
    }

    /* renamed from: e */
    public String m37910e() {
        return this.f7456l;
    }

    /* renamed from: f */
    public int m37908f() {
        return this.f7452h;
    }

    /* renamed from: g */
    public long m37906g() {
        return this.f7450f;
    }

    /* renamed from: h */
    public long m37905h() {
        return this.f7449e;
    }

    /* renamed from: i */
    public long m37904i() {
        return this.f7448d;
    }

    /* renamed from: j */
    public String m37903j() {
        return this.f7451g;
    }

    /* renamed from: k */
    public long m37902k() {
        return this.f7455k;
    }

    /* renamed from: l */
    public String m37901l() {
        return this.f7458n;
    }

    /* renamed from: m */
    public boolean m37900m() {
        return this.f7447c == 304;
    }

    /* renamed from: n */
    public boolean m37899n() {
        return this.f7447c == 503;
    }

    /* renamed from: o */
    public boolean m37898o() {
        return this.f7447c == 200;
    }
}
