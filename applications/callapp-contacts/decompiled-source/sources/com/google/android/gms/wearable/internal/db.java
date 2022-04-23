package com.google.android.gms.wearable.internal;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.util.Log;
import com.google.android.gms.common.api.g;
import com.google.android.gms.common.internal.d;
import com.google.android.gms.common.internal.e;
import com.google.android.gms.common.internal.f;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.wearable.a;
import com.google.android.gms.wearable.f;
import com.google.android.gms.wearable.k;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/db.class */
public final class db extends f<bm> {

    /* renamed from: a  reason: collision with root package name */
    final ExecutorService f30108a;

    /* renamed from: b  reason: collision with root package name */
    final bo<f.a> f30109b;

    /* renamed from: c  reason: collision with root package name */
    final bo<k.a> f30110c;

    /* renamed from: d  reason: collision with root package name */
    final bo<a.AbstractC0483a> f30111d;
    private final bo<Object> e;
    private final bo<Object> f;
    private final bo<Object> g;
    private final bo<Object> h;
    private final bo<Object> i;
    private final dj j;

    public db(Context context, Looper looper, g.a aVar, g.b bVar, e eVar) {
        this(context, looper, aVar, bVar, eVar, Executors.newCachedThreadPool(), dj.a(context));
    }

    private db(Context context, Looper looper, g.a aVar, g.b bVar, e eVar, ExecutorService executorService, dj djVar) {
        super(context, looper, 14, eVar, aVar, bVar);
        this.e = new bo<>();
        this.f = new bo<>();
        this.f30109b = new bo<>();
        this.g = new bo<>();
        this.f30110c = new bo<>();
        this.h = new bo<>();
        this.i = new bo<>();
        this.f30111d = new bo<>();
        this.f30108a = (ExecutorService) o.a(executorService);
        this.j = djVar;
    }

    @Override // com.google.android.gms.common.internal.d, com.google.android.gms.common.api.a.f
    public final void connect(d.c cVar) {
        if (!requiresGooglePlayServices()) {
            try {
                Bundle bundle = getContext().getPackageManager().getApplicationInfo("com.google.android.wearable.app.cn", 128).metaData;
                int i = bundle != null ? bundle.getInt("com.google.android.wearable.api.version", 0) : 0;
                if (i < 8600000) {
                    StringBuilder sb = new StringBuilder(82);
                    sb.append("The Wear OS app is out of date. Requires API version 8600000 but found ");
                    sb.append(i);
                    Log.w("WearableClient", sb.toString());
                    Context context = getContext();
                    Context context2 = getContext();
                    Intent intent = new Intent("com.google.android.wearable.app.cn.UPDATE_ANDROID_WEAR").setPackage("com.google.android.wearable.app.cn");
                    if (context2.getPackageManager().resolveActivity(intent, 65536) == null) {
                        intent = new Intent("android.intent.action.VIEW", Uri.parse("market://details").buildUpon().appendQueryParameter("id", "com.google.android.wearable.app.cn").build());
                    }
                    triggerNotAvailable(cVar, 6, PendingIntent.getActivity(context, 0, intent, 0));
                    return;
                }
            } catch (PackageManager.NameNotFoundException e) {
                triggerNotAvailable(cVar, 16, null);
                return;
            }
        }
        super.connect(cVar);
    }

    @Override // com.google.android.gms.common.internal.d
    public final /* synthetic */ IInterface createServiceInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.wearable.internal.IWearableService");
        return queryLocalInterface instanceof bm ? (bm) queryLocalInterface : new bn(iBinder);
    }

    @Override // com.google.android.gms.common.internal.d, com.google.android.gms.common.api.a.f
    public final int getMinApkVersion() {
        return 8600000;
    }

    @Override // com.google.android.gms.common.internal.d
    public final String getServiceDescriptor() {
        return "com.google.android.gms.wearable.internal.IWearableService";
    }

    @Override // com.google.android.gms.common.internal.d
    public final String getStartServiceAction() {
        return "com.google.android.gms.wearable.BIND";
    }

    @Override // com.google.android.gms.common.internal.d
    public final String getStartServicePackage() {
        return this.j.a("com.google.android.wearable.app.cn") ? "com.google.android.wearable.app.cn" : "com.google.android.gms";
    }

    @Override // com.google.android.gms.common.internal.d
    public final void onPostInitHandler(int i, IBinder iBinder, Bundle bundle, int i2) {
        if (Log.isLoggable("WearableClient", 2)) {
            StringBuilder sb = new StringBuilder(41);
            sb.append("onPostInitHandler: statusCode ");
            sb.append(i);
        }
        if (i == 0) {
            this.e.a(iBinder);
            this.f.a(iBinder);
            this.f30109b.a(iBinder);
            this.g.a(iBinder);
            this.f30110c.a(iBinder);
            this.h.a(iBinder);
            this.i.a(iBinder);
            this.f30111d.a(iBinder);
        }
        super.onPostInitHandler(i, iBinder, bundle, i2);
    }

    @Override // com.google.android.gms.common.internal.d, com.google.android.gms.common.api.a.f
    public final boolean requiresGooglePlayServices() {
        return !this.j.a("com.google.android.wearable.app.cn");
    }
}
