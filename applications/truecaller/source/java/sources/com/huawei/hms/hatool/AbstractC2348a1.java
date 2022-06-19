package com.huawei.hms.hatool;

import android.content.Context;
import android.text.TextUtils;
/* renamed from: com.huawei.hms.hatool.a1 */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/hatool/a1.class */
public abstract class AbstractC2348a1 {
    /* renamed from: a */
    public final C2397x0 m37804a(int i) {
        String str;
        if (i != 0) {
            String m37796f = m37796f();
            str = m37796f;
            if (!TextUtils.isEmpty(m37796f)) {
                return new C2397x0(EnumC2399y0.UDID, m37796f);
            }
        } else {
            str = "";
        }
        return new C2397x0(EnumC2399y0.EMPTY, str);
    }

    /* renamed from: a */
    public C2397x0 m37803a(Context context) {
        String m37799c = m37799c();
        if (!TextUtils.isEmpty(m37799c)) {
            return new C2397x0(EnumC2399y0.UDID, m37799c);
        }
        String m37805a = m37805a();
        if (!TextUtils.isEmpty(m37805a)) {
            return new C2397x0(EnumC2399y0.IMEI, m37805a);
        }
        boolean m37797e = m37797e();
        String m37801b = m37801b();
        return !TextUtils.isEmpty(m37801b) ? m37797e ? new C2397x0(EnumC2399y0.SN, m37801b) : new C2397x0(EnumC2399y0.UDID, m37802a(m37801b)) : m37797e ? m37804a(m37798d()) : m37800b(m37798d());
    }

    /* renamed from: a */
    public abstract String m37805a();

    /* renamed from: a */
    public abstract String m37802a(String str);

    /* renamed from: b */
    public final C2397x0 m37800b(int i) {
        String str;
        if ((i & 4) != 0) {
            String m37796f = m37796f();
            str = m37796f;
            if (!TextUtils.isEmpty(m37796f)) {
                return new C2397x0(EnumC2399y0.UDID, m37796f);
            }
        } else {
            str = "";
        }
        return new C2397x0(EnumC2399y0.EMPTY, str);
    }

    /* renamed from: b */
    public abstract String m37801b();

    /* renamed from: c */
    public abstract String m37799c();

    /* renamed from: d */
    public abstract int m37798d();

    /* renamed from: e */
    public final boolean m37797e() {
        C2372l m37673b = C2366i.m37672c().m37673b();
        if (TextUtils.isEmpty(m37673b.m37588l())) {
            m37673b.m37595h(AbstractC2357f.m37722a());
        }
        return !TextUtils.isEmpty(m37673b.m37588l());
    }

    /* renamed from: f */
    public final String m37796f() {
        C2372l m37673b = C2366i.m37672c().m37673b();
        if (TextUtils.isEmpty(m37673b.m37594i())) {
            m37673b.m37601e(b1.c());
        }
        return m37673b.m37594i();
    }
}
