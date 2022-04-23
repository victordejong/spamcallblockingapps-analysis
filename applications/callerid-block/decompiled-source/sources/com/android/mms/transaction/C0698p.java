package com.android.mms.transaction;

import android.content.Context;
import android.net.NetworkUtilsHelper;
import com.klinker.android.send_message.C2712i;
import com.klinker.android.send_message.C2717j;
import e.d.a.a.a;
/* renamed from: com.android.mms.transaction.p */
/* loaded from: classes-dex2jar.jar:com/android/mms/transaction/p.class */
public class C0698p {

    /* renamed from: a */
    private String f3356a;

    /* renamed from: b */
    private String f3357b;

    /* renamed from: c */
    private int f3358c;

    public C0698p(Context context, String str) {
        this.f3358c = -1;
        a.k("Mms", "TransactionSettings: apnName: " + str);
        if (C2712i.f11313h == null) {
            C2712i.f11313h = C2717j.m2032f(context);
        }
        this.f3356a = NetworkUtilsHelper.m15210b(C2712i.f11313h.m2081d());
        this.f3357b = NetworkUtilsHelper.m15210b(C2712i.f11313h.m2078g());
        String a = C2712i.f11313h.m2084a();
        if (a != null && !a.trim().equals("")) {
            e.a.b.a.q(a);
            a.k("Mms", "set user agent");
        }
        String q = C2712i.f11313h.m2068q();
        if (q != null && !q.trim().equals("")) {
            e.a.b.a.p(q);
            a.k("Mms", "set user agent profile url");
        }
        String o = C2712i.f11313h.m2070o();
        if (o != null && !o.trim().equals("")) {
            e.a.b.a.o(o);
            a.k("Mms", "set user agent profile tag name");
        }
        if (m11373d()) {
            try {
                this.f3358c = Integer.parseInt(C2712i.f11313h.m2080e());
            } catch (NumberFormatException e) {
                a.c("Mms", "could not get proxy: " + C2712i.f11313h.m2080e(), e);
            }
        }
    }

    public C0698p(String str, String str2, int i) {
        this.f3358c = -1;
        this.f3356a = str != null ? str.trim() : null;
        this.f3357b = str2;
        this.f3358c = i;
        if (a.f("Mms", 2)) {
            a.k("Mms", "TransactionSettings: " + this.f3356a + " proxyAddress: " + this.f3357b + " proxyPort: " + this.f3358c);
        }
    }

    /* renamed from: a */
    public String m11376a() {
        return this.f3356a;
    }

    /* renamed from: b */
    public String m11375b() {
        return this.f3357b;
    }

    /* renamed from: c */
    public int m11374c() {
        return this.f3358c;
    }

    /* renamed from: d */
    public boolean m11373d() {
        String str = this.f3357b;
        return (str == null || str.trim().length() == 0) ? false : true;
    }
}
