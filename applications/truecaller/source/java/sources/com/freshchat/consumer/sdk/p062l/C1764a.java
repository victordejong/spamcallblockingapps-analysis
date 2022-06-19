package com.freshchat.consumer.sdk.p062l;

import android.app.Application;
import android.content.Context;
import com.freshchat.consumer.sdk.p053f.C1537c;
/* renamed from: com.freshchat.consumer.sdk.l.a */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/l/a.class */
public class C1764a extends AbstractC1765b {

    /* renamed from: mV */
    private static volatile C1764a f4608mV;

    private C1764a() {
    }

    /* renamed from: gR */
    public static C1764a m39612gR() {
        C1764a c1764a;
        synchronized (C1764a.class) {
            try {
                if (f4608mV == null) {
                    synchronized (C1764a.class) {
                        if (f4608mV == null) {
                            f4608mV = new C1764a();
                        }
                    }
                }
                c1764a = f4608mV;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c1764a;
    }

    /* renamed from: bW */
    public boolean m39614bW(Context context) {
        return C1537c.m40583a((Application) context.getApplicationContext()).m40581cE();
    }

    /* renamed from: bX */
    public void m39613bX(Context context) {
        C1537c.m40583a((Application) context.getApplicationContext()).m40580m(true);
    }
}
