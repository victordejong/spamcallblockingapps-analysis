package com.tmobile.tmoid.helperlib.sit.mobileconnhelper;

import android.content.Context;
import android.os.Build;
import com.tmobile.connectivity.ConnectivityUtils;
import com.tmobile.tmoid.helperlib.util.Log;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/sit/mobileconnhelper/ConnectivityImpl.class */
public class ConnectivityImpl implements ConnectivityApi {

    /* renamed from: a */
    private final ConnectivityApi f14911a;

    /* renamed from: b */
    private final Context f14912b;

    public ConnectivityImpl(Context context) {
        this.f14912b = context.getApplicationContext();
        if (Build.VERSION.SDK_INT >= 21) {
            this.f14911a = new ConnectivityNewApi(context);
        } else {
            this.f14911a = new ConnectivityOldApi(context);
        }
    }

    @Override // com.tmobile.tmoid.helperlib.sit.mobileconnhelper.ConnectivityApi
    /* renamed from: a */
    public void mo4692a(String str, ConnectivityCallback connectivityCallback, long j) {
        if (ConnectivityUtils.m7671e(this.f14912b)) {
            Log.m4652e("TMO-Agent.ConnectivityImpl", "Mobile data option is disabled");
            connectivityCallback.mo4666b(connectivityCallback);
            return;
        }
        this.f14911a.mo4692a(str, connectivityCallback, j);
    }

    @Override // com.tmobile.tmoid.helperlib.sit.mobileconnhelper.ConnectivityApi
    /* renamed from: b */
    public void mo4691b(ConnectivityCallback connectivityCallback) {
        this.f14911a.mo4691b(connectivityCallback);
    }
}
