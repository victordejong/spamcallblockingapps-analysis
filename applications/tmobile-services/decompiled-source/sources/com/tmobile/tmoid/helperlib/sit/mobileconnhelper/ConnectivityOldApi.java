package com.tmobile.tmoid.helperlib.sit.mobileconnhelper;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Uri;
import com.tmobile.tmoid.helperlib.util.Log;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/sit/mobileconnhelper/ConnectivityOldApi.class */
class ConnectivityOldApi implements ConnectivityApi {

    /* renamed from: a */
    private final MmsRouter f14922a;

    /* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/sit/mobileconnhelper/ConnectivityOldApi$SitMmsNetworkOperation.class */
    private static class SitMmsNetworkOperation extends MmsNetworkOperation {

        /* renamed from: e */
        private final ConnectivityCallback f14923e;

        /* renamed from: f */
        private final String f14924f;

        SitMmsNetworkOperation(String str, MmsRouter mmsRouter, ConnectivityCallback connectivityCallback) {
            super(Uri.parse(str), mmsRouter);
            this.f14924f = str;
            this.f14923e = connectivityCallback;
        }

        @Override // com.tmobile.tmoid.helperlib.sit.mobileconnhelper.MmsNetworkOperation
        /* renamed from: i */
        protected void mo4682i() {
            ConnectivityCallback connectivityCallback = this.f14923e;
            if (connectivityCallback != null) {
                connectivityCallback.mo4667a(new Connection(this.f14924f));
            }
        }

        @Override // com.tmobile.tmoid.helperlib.sit.mobileconnhelper.MmsNetworkOperation
        /* renamed from: j */
        protected void mo4681j() {
            ConnectivityCallback connectivityCallback = this.f14923e;
            if (connectivityCallback != null) {
                connectivityCallback.mo4666b(connectivityCallback);
            }
        }

        @Override // com.tmobile.tmoid.helperlib.sit.mobileconnhelper.MmsNetworkOperation
        /* renamed from: k */
        protected void mo4680k() {
            ConnectivityCallback connectivityCallback = this.f14923e;
            if (connectivityCallback != null) {
                connectivityCallback.mo4664d(connectivityCallback);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ConnectivityOldApi(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager != null) {
            this.f14922a = new MmsRouter(connectivityManager);
            return;
        }
        throw new IllegalStateException("Can't create instance of ConnectivityManager. This class uses the instance");
    }

    @Override // com.tmobile.tmoid.helperlib.sit.mobileconnhelper.ConnectivityApi
    /* renamed from: a */
    public void mo4692a(String str, ConnectivityCallback connectivityCallback, long j) {
        Log.m4654d("TMO-Agent.ConnectivityOldApi", "Start using mobile connection");
        new SitMmsNetworkOperation(str, this.f14922a, connectivityCallback).m4687d();
    }

    @Override // com.tmobile.tmoid.helperlib.sit.mobileconnhelper.ConnectivityApi
    /* renamed from: b */
    public void mo4691b(ConnectivityCallback connectivityCallback) {
        Log.m4654d("TMO-Agent.ConnectivityOldApi", "Stop using mobile connection");
    }
}
