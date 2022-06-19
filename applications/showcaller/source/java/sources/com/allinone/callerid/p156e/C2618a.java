package com.allinone.callerid.p156e;

import android.content.Context;
import android.database.ContentObserver;
import android.os.Handler;
import com.allinone.callerid.util.C3718c0;
/* renamed from: com.allinone.callerid.e.a */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/e/a.class */
public class C2618a extends ContentObserver {

    /* renamed from: a */
    private int f9094a = 911;

    /* renamed from: b */
    private Handler f9095b;

    public C2618a(Context context, Handler handler) {
        super(handler);
        this.f9095b = handler;
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z) {
        if (C3718c0.f11914a) {
            C3718c0.m24436a("tony", "the contacts has changed");
        }
        this.f9095b.obtainMessage(this.f9094a, "gaibian").sendToTarget();
    }
}
