package com.allinone.callerid.service;

import android.os.Binder;
import java.lang.ref.WeakReference;
/* renamed from: com.allinone.callerid.service.a */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/service/a.class */
public class BinderC3612a extends Binder {

    /* renamed from: d */
    private WeakReference<MyService> f11622d;

    /* renamed from: a */
    public MyService m24807a() {
        WeakReference<MyService> weakReference = this.f11622d;
        return weakReference == null ? null : weakReference.get();
    }

    /* renamed from: b */
    public void m24806b(MyService myService) {
        this.f11622d = new WeakReference<>(myService);
    }
}
