package com.huawei.updatesdk.service.otaupdate;

import android.content.Intent;
import java.lang.ref.WeakReference;
/* renamed from: com.huawei.updatesdk.service.otaupdate.d */
/* loaded from: classes3-dex2jar.jar:com/huawei/updatesdk/service/otaupdate/d.class */
public class C2589d {

    /* renamed from: b */
    private static final Object f8317b = new Object();

    /* renamed from: c */
    private static C2589d f8318c;

    /* renamed from: a */
    private WeakReference<CheckUpdateCallBack> f8319a;

    /* renamed from: a */
    public static C2589d m36534a() {
        C2589d c2589d;
        synchronized (f8317b) {
            if (f8318c == null) {
                f8318c = new C2589d();
            }
            c2589d = f8318c;
        }
        return c2589d;
    }

    /* renamed from: a */
    public void m36533a(int i) {
        CheckUpdateCallBack checkUpdateCallBack;
        WeakReference<CheckUpdateCallBack> weakReference = this.f8319a;
        if (weakReference == null || (checkUpdateCallBack = weakReference.get()) == null) {
            return;
        }
        checkUpdateCallBack.onMarketStoreError(i);
    }

    /* renamed from: a */
    public void m36532a(Intent intent) {
        CheckUpdateCallBack checkUpdateCallBack;
        WeakReference<CheckUpdateCallBack> weakReference = this.f8319a;
        if (weakReference == null || (checkUpdateCallBack = weakReference.get()) == null) {
            return;
        }
        checkUpdateCallBack.onMarketInstallInfo(intent);
    }

    /* renamed from: a */
    public void m36531a(CheckUpdateCallBack checkUpdateCallBack) {
        this.f8319a = new WeakReference<>(checkUpdateCallBack);
    }

    /* renamed from: b */
    public void m36530b(Intent intent) {
        CheckUpdateCallBack checkUpdateCallBack;
        WeakReference<CheckUpdateCallBack> weakReference = this.f8319a;
        if (weakReference == null || (checkUpdateCallBack = weakReference.get()) == null) {
            return;
        }
        checkUpdateCallBack.onUpdateInfo(intent);
    }
}
