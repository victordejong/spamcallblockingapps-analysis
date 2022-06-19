package com.callerid.block.service;

import android.os.Binder;
import java.lang.ref.WeakReference;
/* renamed from: com.callerid.block.service.a */
/* loaded from: classes-dex2jar.jar:com/callerid/block/service/a.class */
public class BinderC1135a extends Binder {

    /* renamed from: b */
    private WeakReference<MyService> f4835b;

    /* renamed from: a */
    public MyService m9991a() {
        WeakReference<MyService> weakReference = this.f4835b;
        return weakReference == null ? null : weakReference.get();
    }
}
