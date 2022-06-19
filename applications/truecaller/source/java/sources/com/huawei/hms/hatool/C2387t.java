package com.huawei.hms.hatool;

import android.text.TextUtils;
import com.amazon.device.ads.DtbConstants;
import com.tenor.android.core.constant.StringConstant;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
/* renamed from: com.huawei.hms.hatool.t */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/hatool/t.class */
public class C2387t {

    /* renamed from: a */
    public List<q> f7598a;

    /* renamed from: b */
    public String f7599b;

    /* renamed from: c */
    public String f7600c;

    /* renamed from: d */
    public String f7601d;

    public C2387t(List<q> list, String str, String str2, String str3) {
        this.f7598a = list;
        this.f7599b = str;
        this.f7600c = str2;
        this.f7601d = str3;
    }

    /* renamed from: a */
    public void m37531a() {
        if (!"_default_config_tag".equals(this.f7600c)) {
            m37530a(this.f7598a, this.f7600c, this.f7599b);
            return;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        for (q qVar : this.f7598a) {
            String c = qVar.c();
            if (TextUtils.isEmpty(c) || "oper".equals(c)) {
                arrayList4.add(qVar);
            } else if ("maint".equals(c)) {
                arrayList.add(qVar);
            } else if ("preins".equals(c)) {
                arrayList2.add(qVar);
            } else if ("diffprivacy".equals(c)) {
                arrayList3.add(qVar);
            }
        }
        m37530a(arrayList4, "oper", "_default_config_tag");
        m37530a(arrayList, "maint", "_default_config_tag");
        m37530a(arrayList2, "preins", "_default_config_tag");
        m37530a(arrayList3, "diffprivacy", "_default_config_tag");
    }

    /* renamed from: a */
    public final void m37530a(List<q> list, String str, String str2) {
        if (list.isEmpty()) {
            return;
        }
        int size = list.size() / 500;
        for (int i = 0; i < size + 1; i++) {
            int i2 = i * 500;
            List<q> subList = list.subList(i2, Math.min(list.size(), i2 + 500));
            String replace = UUID.randomUUID().toString().replace(StringConstant.DASH, "");
            long currentTimeMillis = System.currentTimeMillis();
            long m37768b = AbstractC2351c.m37768b(str2, str);
            ArrayList arrayList = new ArrayList();
            for (q qVar : subList) {
                if (!C2383q0.m37542a(qVar.b(), currentTimeMillis, m37768b * DtbConstants.SIS_CHECKIN_INTERVAL)) {
                    arrayList.add(qVar);
                }
            }
            if (arrayList.size() > 0) {
                new C2389u(str2, str, this.f7601d, arrayList, replace).m37522a();
            } else {
                C2398y.m37470e("hmsSdk", "No data to report handler");
            }
        }
    }
}
