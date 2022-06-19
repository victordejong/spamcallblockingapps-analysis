package com.huawei.hms.adapter.sysobs;

import android.content.Intent;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/adapter/sysobs/SystemManager.class */
public final class SystemManager {

    /* renamed from: a */
    public static SystemManager f7258a = new SystemManager();

    /* renamed from: b */
    public static final Object f7259b = new Object();

    /* renamed from: c */
    public static SystemNotifier f7260c = new a();

    public static SystemManager getInstance() {
        return f7258a;
    }

    public static SystemNotifier getSystemNotifier() {
        return f7260c;
    }

    public void notifyNoticeResult(int i) {
        f7260c.notifyNoticeObservers(i);
    }

    public void notifyResolutionResult(Intent intent, String str) {
        f7260c.notifyObservers(intent, str);
    }

    public void notifyUpdateResult(int i) {
        f7260c.notifyObservers(i);
    }
}
