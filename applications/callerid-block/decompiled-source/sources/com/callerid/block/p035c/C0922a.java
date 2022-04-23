package com.callerid.block.p035c;

import android.content.Context;
import android.database.ContentObserver;
import android.os.Handler;
import com.callerid.block.util.C1227w;
/* renamed from: com.callerid.block.c.a */
/* loaded from: classes-dex2jar.jar:com/callerid/block/c/a.class */
public class C0922a extends ContentObserver {

    /* renamed from: a */
    private Handler f4125a;

    public C0922a(Context context, Handler handler) {
        super(handler);
        this.f4125a = handler;
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z) {
        if (C1227w.f5084a) {
            C1227w.m9527a("ContentObserver", "the contacts has changed");
        }
        this.f4125a.obtainMessage(911, "gaibian").sendToTarget();
    }
}
