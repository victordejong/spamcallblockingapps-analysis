package com.huawei.updatesdk.p097a.p106b.p108b;

import android.content.Intent;
import android.os.Bundle;
import com.huawei.updatesdk.p097a.p098a.C2511a;
/* renamed from: com.huawei.updatesdk.a.b.b.b */
/* loaded from: classes3-dex2jar.jar:com/huawei/updatesdk/a/b/b/b.class */
public final class C2532b {

    /* renamed from: a */
    private Intent f8215a;

    private C2532b(Intent intent) {
        this.f8215a = intent;
    }

    /* renamed from: a */
    public static C2532b m36751a(Intent intent) {
        return new C2532b(intent);
    }

    /* renamed from: a */
    public int m36749a(String str, int i) {
        if (m36744d()) {
            try {
                return this.f8215a.getIntExtra(str, i);
            } catch (Exception e) {
                C2511a.m36863a("SecureIntent", "getIntExtra exception!");
            }
        }
        return i;
    }

    /* renamed from: a */
    public String m36752a() {
        String str = "";
        if (m36744d()) {
            str = this.f8215a.getAction();
            if (str == null) {
                str = "";
            }
        }
        return str;
    }

    /* renamed from: a */
    public String m36750a(String str) {
        if (m36744d()) {
            try {
                return this.f8215a.getStringExtra(str);
            } catch (Exception e) {
                C2511a.m36863a("SecureIntent", "getStringExtra exception!");
                return "";
            }
        }
        return "";
    }

    /* renamed from: a */
    public boolean m36748a(String str, boolean z) {
        if (m36744d()) {
            try {
                return this.f8215a.getBooleanExtra(str, z);
            } catch (Exception e) {
                C2511a.m36863a("SecureIntent", "getBooleanExtra exception!");
            }
        }
        return z;
    }

    /* renamed from: b */
    public long m36746b(String str, int i) {
        if (m36744d()) {
            try {
                return this.f8215a.getLongExtra(str, i);
            } catch (Exception e) {
                C2511a.m36863a("SecureIntent", "getIntExtra exception!");
            }
        }
        return i;
    }

    /* renamed from: b */
    public Bundle m36747b() {
        return m36744d() ? this.f8215a.getExtras() : null;
    }

    /* renamed from: c */
    public Intent m36745c() {
        return this.f8215a;
    }

    /* renamed from: d */
    public boolean m36744d() {
        return this.f8215a != null;
    }
}
