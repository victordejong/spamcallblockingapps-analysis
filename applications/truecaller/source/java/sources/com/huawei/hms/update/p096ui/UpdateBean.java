package com.huawei.hms.update.p096ui;

import java.io.Serializable;
import java.util.ArrayList;
/* renamed from: com.huawei.hms.update.ui.UpdateBean */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/update/ui/UpdateBean.class */
public class UpdateBean implements Serializable {

    /* renamed from: a */
    public boolean f7827a;

    /* renamed from: b */
    public boolean f7828b;

    /* renamed from: c */
    public String f7829c;

    /* renamed from: d */
    public int f7830d;

    /* renamed from: e */
    public String f7831e;

    /* renamed from: f */
    public String f7832f;

    /* renamed from: g */
    public ArrayList f7833g;

    /* renamed from: h */
    public boolean f7834h = true;

    /* renamed from: a */
    public static <T> T m37176a(T t) {
        return t;
    }

    /* renamed from: a */
    public String m37177a() {
        return (String) m37176a(this.f7831e);
    }

    /* renamed from: b */
    public String m37175b() {
        return (String) m37176a(this.f7829c);
    }

    /* renamed from: c */
    public int m37174c() {
        return ((Integer) m37176a(Integer.valueOf(this.f7830d))).intValue();
    }

    /* renamed from: d */
    public boolean m37173d() {
        return ((Boolean) m37176a(Boolean.valueOf(this.f7827a))).booleanValue();
    }

    public String getClientAppName() {
        return (String) m37176a(this.f7832f);
    }

    public boolean getResolutionInstallHMS() {
        return this.f7828b;
    }

    public ArrayList getTypeList() {
        return (ArrayList) m37176a(this.f7833g);
    }

    public boolean isNeedConfirm() {
        return ((Boolean) m37176a(Boolean.valueOf(this.f7834h))).booleanValue();
    }

    public void setClientAppId(String str) {
        this.f7831e = str;
    }

    public void setClientAppName(String str) {
        this.f7832f = str;
    }

    public void setClientPackageName(String str) {
        this.f7829c = str;
    }

    public void setClientVersionCode(int i) {
        this.f7830d = i;
    }

    public void setHmsOrApkUpgrade(boolean z) {
        this.f7827a = z;
    }

    public void setNeedConfirm(boolean z) {
        this.f7834h = z;
    }

    public void setResolutionInstallHMS(boolean z) {
        this.f7828b = z;
    }

    public void setTypeList(ArrayList arrayList) {
        this.f7833g = arrayList;
    }
}
