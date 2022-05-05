package com.tmobile.tmoid.helperlib;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import com.tmobile.tmoid.helperlib.impl.IHelperLibrary;
import com.tmobile.tmoid.helperlib.util.Log;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/HelperLibraryService.class */
public class HelperLibraryService extends Service {

    /* renamed from: f */
    private IHelperLibrary.Stub f14734f;

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        Log.m4648v("TMO-Agent.HelperlibService", "HELPER_LIBRARY_SERVICE onBind() called");
        return this.f14734f;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        this.f14734f = new HelperLibraryImpl(this);
        Log.m4648v("TMO-Agent.HelperlibService", "HELPER_LIBRARY service created");
    }
}
