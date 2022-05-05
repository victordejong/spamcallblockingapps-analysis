package com.flurry.sdk;

import android.content.Context;
import java.io.File;
import java.util.List;
import java.util.Map;
/* renamed from: com.flurry.sdk.gr */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/gr.class */
public class C3183gr {

    /* renamed from: b */
    public static final String f5255b = "gr";

    /* renamed from: a */
    public boolean f5256a;

    /* renamed from: d */
    public final File f5257d;

    /* renamed from: e */
    public String f5258e;

    public C3183gr() {
        this(C3331jb.m32681a().f5679a);
    }

    public C3183gr(Context context) {
        new C3184gs();
        this.f5257d = context.getFileStreamPath(".flurryinstallreceiver.");
        String str = f5255b;
        C3356jq.m32615a(3, str, "Referrer file name if it exists:  " + this.f5257d);
    }

    /* renamed from: a */
    public final Map<String, List<String>> m32921a() {
        Map<String, List<String>> a;
        synchronized (this) {
            m32917c();
            a = C3184gs.m32916a(this.f5258e);
        }
        return a;
    }

    /* renamed from: a */
    public final void m32920a(String str) {
        synchronized (this) {
            this.f5256a = true;
            m32918b(str);
            C3443kz.m32478a(this.f5257d, this.f5258e);
        }
    }

    /* renamed from: b */
    public final String m32919b() {
        String str;
        synchronized (this) {
            m32917c();
            str = this.f5258e;
        }
        return str;
    }

    /* renamed from: b */
    public final void m32918b(String str) {
        if (str != null) {
            this.f5258e = str;
        }
    }

    /* renamed from: c */
    public final void m32917c() {
        if (!this.f5256a) {
            this.f5256a = true;
            String str = f5255b;
            C3356jq.m32615a(4, str, "Loading referrer info from file: " + this.f5257d.getAbsolutePath());
            String c = C3443kz.m32474c(this.f5257d);
            String str2 = f5255b;
            C3356jq.m32613a(str2, "Referrer file contents: " + c);
            m32918b(c);
        }
    }
}
