package com.criteo.publisher.p256m0;

import android.os.Bundle;
import android.os.Handler;
import android.os.ResultReceiver;
import com.amazonaws.auth.policy.internal.JsonDocumentFields;
import com.criteo.publisher.EnumC8518o;
import com.criteo.publisher.p254l.C8387d;
/* renamed from: com.criteo.publisher.m0.i */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/m0/i.class */
public class ResultReceiverC8438i extends ResultReceiver {

    /* renamed from: a */
    private final C8387d f30202a;

    public ResultReceiverC8438i(Handler handler, C8387d c8387d) {
        super(handler);
        this.f30202a = c8387d;
    }

    @Override // android.os.ResultReceiver
    protected void onReceiveResult(int i, Bundle bundle) {
        if (i == 100) {
            int i2 = bundle.getInt(JsonDocumentFields.ACTION);
            if (i2 == 201) {
                this.f30202a.m25751a(EnumC8518o.CLOSE);
            } else if (i2 != 202) {
            } else {
                this.f30202a.m25751a(EnumC8518o.CLICK);
            }
        }
    }
}
