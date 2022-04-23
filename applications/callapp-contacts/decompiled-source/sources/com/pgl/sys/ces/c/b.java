package com.pgl.sys.ces.c;

import android.content.Context;
import com.pgl.a.a.a;
import com.pgl.sys.ces.a.c;
/* loaded from: classes4-dex2jar.jar:com/pgl/sys/ces/c/b.class */
public final class b extends com.pgl.a.a.b {
    private Context h;

    public b(Context context, String str) {
        super(context, str);
        this.h = null;
        this.h = context;
        this.f34935a = a.a() + "/v2/s" + b();
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
        String str;
        boolean z = true;
        if (i == 200 && bArr != null) {
            try {
            } catch (Throwable th) {
                com.pgl.sys.ces.b.f34959d = false;
            }
            if (bArr.length > 0 && (str = (String) com.pgl.sys.ces.a.meta(200, this.h, bArr)) != null && str.length() > 0) {
                if (str.equalsIgnoreCase("AYE")) {
                    com.pgl.sys.ces.b.f34959d = true;
                    return z;
                }
                com.pgl.sys.ces.b.f34959d = false;
            }
        }
        z = false;
        return z;
    }
}
