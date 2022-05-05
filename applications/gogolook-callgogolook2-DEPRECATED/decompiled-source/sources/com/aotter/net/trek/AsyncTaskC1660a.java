package com.aotter.net.trek;

import android.content.Context;
import android.os.AsyncTask;
import android.text.TextUtils;
import android.util.Log;
import com.aotter.net.trek.common.GpsHelper;
import com.aotter.net.trek.model.Device;
/* renamed from: com.aotter.net.trek.a */
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/a.class */
public class AsyncTaskC1660a extends AsyncTask<Void, Void, Void> {

    /* renamed from: a */
    public final Device f1147a;

    /* renamed from: b */
    public final String f1148b;

    public AsyncTaskC1660a(Device device, String str) {
        this.f1147a = device;
        this.f1148b = str;
    }

    /* renamed from: a */
    public Void doInBackground(Void... voidArr) {
        Context context;
        String str;
        Context context2;
        String unused;
        context = AotterTrek.f1136b;
        GpsHelper.AdvertisingInfo fetchAdvertisingInfoSync = GpsHelper.fetchAdvertisingInfoSync(context);
        if (fetchAdvertisingInfoSync == null || TextUtils.isEmpty(fetchAdvertisingInfoSync.advertisingId)) {
            str = AotterTrek.f1135a;
            Log.e(str, "Unable get advertisingId");
            return null;
        }
        unused = AotterTrek.f1135a;
        if (TextUtils.equals(this.f1148b, fetchAdvertisingInfoSync.advertisingId)) {
            return null;
        }
        this.f1147a.setAdID(fetchAdvertisingInfoSync.advertisingId);
        context2 = AotterTrek.f1136b;
        AotterTrek.m36627b(context2, fetchAdvertisingInfoSync.advertisingId);
        return null;
    }
}
