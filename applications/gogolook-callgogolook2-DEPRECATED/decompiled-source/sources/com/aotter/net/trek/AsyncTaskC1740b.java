package com.aotter.net.trek;

import android.content.Context;
import android.os.AsyncTask;
import android.text.TextUtils;
import com.aotter.net.trek.common.GpsHelper;
import com.aotter.net.trek.model.Device;
import com.aotter.net.trek.util.TrekLog;
/* renamed from: com.aotter.net.trek.b */
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/b.class */
public class AsyncTaskC1740b extends AsyncTask<Void, Void, Void> {

    /* renamed from: a */
    public final Device f1455a;

    /* renamed from: b */
    public final String f1456b;

    public AsyncTaskC1740b(Device device, String str) {
        this.f1455a = device;
        this.f1456b = str;
    }

    /* renamed from: a */
    public Void doInBackground(Void... voidArr) {
        Context context;
        Context context2;
        context = TKMyApp.f1142b;
        GpsHelper.AdvertisingInfo fetchAdvertisingInfoSync = GpsHelper.fetchAdvertisingInfoSync(context);
        if (fetchAdvertisingInfoSync == null || TextUtils.isEmpty(fetchAdvertisingInfoSync.advertisingId)) {
            TrekLog.m36319d("Unable get advertisingId");
            return null;
        } else if (TextUtils.equals(this.f1456b, fetchAdvertisingInfoSync.advertisingId)) {
            return null;
        } else {
            this.f1455a.setAdID(fetchAdvertisingInfoSync.advertisingId);
            context2 = TKMyApp.f1142b;
            TKMyApp.m36613b(context2, fetchAdvertisingInfoSync.advertisingId);
            return null;
        }
    }
}
