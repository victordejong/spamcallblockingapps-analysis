package com.criteo.publisher.m0;

import android.os.Bundle;
import android.os.Handler;
import android.os.ResultReceiver;
import com.amazonaws.auth.policy.internal.JsonDocumentFields;
import com.criteo.publisher.l.d;
import com.criteo.publisher.o;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/m0/i.class */
public class i extends ResultReceiver {

    /* renamed from: a  reason: collision with root package name */
    private final d f17517a;

    public i(Handler handler, d dVar) {
        super(handler);
        this.f17517a = dVar;
    }

    @Override // android.os.ResultReceiver
    protected void onReceiveResult(int i, Bundle bundle) {
        if (i == 100) {
            int i2 = bundle.getInt(JsonDocumentFields.ACTION);
            if (i2 == 201) {
                this.f17517a.a(o.CLOSE);
            } else if (i2 == 202) {
                this.f17517a.a(o.CLICK);
            }
        }
    }
}
