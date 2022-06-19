package com.pgl.sys.ces.p482c;

import android.content.Context;
import com.pgl.p474a.p475a.AbstractC17050b;
import com.pgl.p474a.p475a.C17049a;
import com.pgl.sys.ces.C17072b;
import com.pgl.sys.ces.p480a.C17068c;
/* renamed from: com.pgl.sys.ces.c.a */
/* loaded from: classes4-dex2jar.jar:com/pgl/sys/ces/c/a.class */
public final class C17079a extends AbstractC17050b {

    /* renamed from: h */
    private Context f60623h;

    public C17079a(Context context, String str) {
        super(context, str);
        this.f60623h = null;
        this.f60623h = context;
        this.f60557a = C17049a.m5960a() + "/v2/r" + m5893b();
    }

    /* renamed from: b */
    private String m5893b() {
        String str;
        try {
            str = this.f60623h.getPackageManager().getPackageInfo(this.f60623h.getPackageName(), 0).versionName;
        } catch (Exception e) {
            e.printStackTrace();
            str = "";
        }
        return ((("?os=0&ver=0.6.11.30.08-PGL-Ov-fix3&m=2&app_ver=" + str) + "&region=" + C17068c.m5928a(this.f60623h)) + "&appkey=" + C17072b.m5910b()) + "&did=" + C17072b.m5909c();
    }

    @Override // com.pgl.p474a.p475a.AbstractC17050b
    /* renamed from: b */
    public final boolean mo5891b(int i, byte[] bArr) {
        if (i != 200 || bArr == null) {
            return true;
        }
        try {
            if (bArr.length > 0 && bArr != null && bArr.length > 0) {
                if (bArr.length == 37) {
                    C17072b.f60596c = true;
                } else {
                    C17072b.f60596c = false;
                }
            }
            return true;
        } catch (Throwable th) {
            C17072b.f60596c = false;
            return true;
        }
    }
}
