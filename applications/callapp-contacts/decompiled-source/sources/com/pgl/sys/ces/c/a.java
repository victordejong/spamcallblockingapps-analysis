package com.pgl.sys.ces.c;

import android.content.Context;
import com.pgl.a.a.b;
import com.pgl.sys.ces.a.c;
/* loaded from: classes4-dex2jar.jar:com/pgl/sys/ces/c/a.class */
public final class a extends b {
    private Context h;

    public a(Context context, String str) {
        super(context, str);
        this.h = null;
        this.h = context;
        this.f34935a = com.pgl.a.a.a.a() + "/v2/r" + b();
    }

    private String b() {
        String str;
        try {
            str = this.h.getPackageManager().getPackageInfo(this.h.getPackageName(), 0).versionName;
        } catch (Exception e) {
            e.printStackTrace();
            str = "";
        }
        return ((("?os=0&ver=0.6.11.30.08-PGL-Ov-fix3&m=2&app_ver=" + str) + "&region=" + c.a(this.h)) + "&appkey=" + com.pgl.sys.ces.b.b()) + "&did=" + com.pgl.sys.ces.b.c();
    }

    @Override // com.pgl.a.a.b
    public final boolean b(int i, byte[] bArr) {
        if (i != 200 || bArr == null) {
            return true;
        }
        try {
            if (bArr.length > 0 && bArr != null && bArr.length > 0) {
                if (bArr.length == 37) {
                    com.pgl.sys.ces.b.f34958c = true;
                } else {
                    com.pgl.sys.ces.b.f34958c = false;
                }
            }
            return true;
        } catch (Throwable th) {
            com.pgl.sys.ces.b.f34958c = false;
            return true;
        }
    }
}
