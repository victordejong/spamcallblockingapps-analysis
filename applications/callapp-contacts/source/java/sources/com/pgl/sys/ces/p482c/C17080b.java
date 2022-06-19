package com.pgl.sys.ces.p482c;

import android.content.Context;
import com.pgl.p474a.p475a.AbstractC17050b;
import com.pgl.p474a.p475a.C17049a;
import com.pgl.sys.ces.C17064a;
import com.pgl.sys.ces.C17072b;
import com.pgl.sys.ces.p480a.C17068c;
/* renamed from: com.pgl.sys.ces.c.b */
/* loaded from: classes4-dex2jar.jar:com/pgl/sys/ces/c/b.class */
public final class C17080b extends AbstractC17050b {

    /* renamed from: h */
    private Context f60624h;

    public C17080b(Context context, String str) {
        super(context, str);
        this.f60624h = null;
        this.f60624h = context;
        this.f60557a = C17049a.m5960a() + "/v2/s" + m5892b();
    }

    /* renamed from: b */
    private String m5892b() {
        String str;
        try {
            str = this.f60624h.getPackageManager().getPackageInfo(this.f60624h.getPackageName(), 0).versionName;
        } catch (Exception e) {
            e.printStackTrace();
            str = "";
        }
        return ((("?os=0&ver=0.6.11.30.08-PGL-Ov-fix3&m=2&app_ver=" + str) + "&region=" + C17068c.m5928a(this.f60624h)) + "&appkey=" + C17072b.m5910b()) + "&did=" + C17072b.m5909c();
    }

    @Override // com.pgl.p474a.p475a.AbstractC17050b
    /* renamed from: b */
    public final boolean mo5891b(int i, byte[] bArr) {
        String str;
        boolean z = true;
        if (i == 200 && bArr != null) {
            try {
            } catch (Throwable th) {
                C17072b.f60597d = false;
            }
            if (bArr.length > 0 && (str = (String) C17064a.meta(200, this.f60624h, bArr)) != null && str.length() > 0) {
                if (str.equalsIgnoreCase("AYE")) {
                    C17072b.f60597d = true;
                    return z;
                }
                C17072b.f60597d = false;
            }
        }
        z = false;
        return z;
    }
}
