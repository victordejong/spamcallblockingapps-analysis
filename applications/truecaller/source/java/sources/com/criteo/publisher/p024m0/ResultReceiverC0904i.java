package com.criteo.publisher.p024m0;

import android.os.Bundle;
import android.os.Handler;
import android.os.ResultReceiver;
import p193e.p1512i.p1516b.EnumC23143v2;
import p193e.p1512i.p1516b.p1525o2.C23001d;
/* renamed from: com.criteo.publisher.m0.i */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/m0/i.class */
public class ResultReceiverC0904i extends ResultReceiver {

    /* renamed from: a */
    public final C23001d f2459a;

    public ResultReceiverC0904i(Handler handler, C23001d c23001d) {
        super(handler);
        this.f2459a = c23001d;
    }

    @Override // android.os.ResultReceiver
    public void onReceiveResult(int i, Bundle bundle) {
        if (i == 100) {
            int i2 = bundle.getInt("Action");
            if (i2 == 201) {
                this.f2459a.m7594a(EnumC23143v2.CLOSE);
            } else if (i2 != 202) {
            } else {
                this.f2459a.m7594a(EnumC23143v2.CLICK);
            }
        }
    }
}
