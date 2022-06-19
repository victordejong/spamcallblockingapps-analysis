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
import com.google.android.gms.common.api.AbstractC11826g;
import com.google.android.gms.common.internal.AbstractC12025d;
import com.google.android.gms.common.internal.AbstractC12033f;
import com.google.android.gms.common.internal.C12031e;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.wearable.AbstractC14209a;
import com.google.android.gms.wearable.AbstractC14226f;
import com.google.android.gms.wearable.AbstractC14355k;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* renamed from: com.google.android.gms.wearable.internal.db */
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/db.class */
public final class C14314db extends AbstractC12033f<AbstractC14271bm> {

    /* renamed from: a */
    final ExecutorService f52250a;

    /* renamed from: b */
    final C14273bo<AbstractC14226f.AbstractC14227a> f52251b;

    /* renamed from: c */
    final C14273bo<AbstractC14355k.AbstractC14356a> f52252c;

    /* renamed from: d */
    final C14273bo<AbstractC14209a.AbstractC14210a> f52253d;

    /* renamed from: e */
    private final C14273bo<Object> f52254e;

    /* renamed from: f */
    private final C14273bo<Object> f52255f;

    /* renamed from: g */
    private final C14273bo<Object> f52256g;

    /* renamed from: h */
    private final C14273bo<Object> f52257h;

    /* renamed from: i */
    private final C14273bo<Object> f52258i;

    /* renamed from: j */
    private final C14322dj f52259j;

    public C14314db(Context context, Looper looper, AbstractC11826g.AbstractC11827a abstractC11827a, AbstractC11826g.AbstractC11828b abstractC11828b, C12031e c12031e) {
        this(context, looper, abstractC11827a, abstractC11828b, c12031e, Executors.newCachedThreadPool(), C14322dj.m11371a(context));
    }

    private C14314db(Context context, Looper looper, AbstractC11826g.AbstractC11827a abstractC11827a, AbstractC11826g.AbstractC11828b abstractC11828b, C12031e c12031e, ExecutorService executorService, C14322dj c14322dj) {
        super(context, looper, 14, c12031e, abstractC11827a, abstractC11828b);
        this.f52254e = new C14273bo<>();
        this.f52255f = new C14273bo<>();
        this.f52251b = new C14273bo<>();
        this.f52256g = new C14273bo<>();
        this.f52252c = new C14273bo<>();
        this.f52257h = new C14273bo<>();
        this.f52258i = new C14273bo<>();
        this.f52253d = new C14273bo<>();
        this.f52250a = (ExecutorService) C12045o.m19162a(executorService);
        this.f52259j = c14322dj;
    }

    @Override // com.google.android.gms.common.internal.AbstractC12025d, com.google.android.gms.common.api.C11808a.AbstractC11817f
    public final void connect(AbstractC12025d.AbstractC12028c abstractC12028c) {
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
                    triggerNotAvailable(abstractC12028c, 6, PendingIntent.getActivity(context, 0, intent, 0));
                    return;
                }
            } catch (PackageManager.NameNotFoundException e) {
                triggerNotAvailable(abstractC12028c, 16, null);
                return;
            }
        }
        super.connect(abstractC12028c);
    }

    @Override // com.google.android.gms.common.internal.AbstractC12025d
    public final /* synthetic */ IInterface createServiceInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.wearable.internal.IWearableService");
        return queryLocalInterface instanceof AbstractC14271bm ? (AbstractC14271bm) queryLocalInterface : new C14272bn(iBinder);
    }

    @Override // com.google.android.gms.common.internal.AbstractC12025d, com.google.android.gms.common.api.C11808a.AbstractC11817f
    public final int getMinApkVersion() {
        return 8600000;
    }

    @Override // com.google.android.gms.common.internal.AbstractC12025d
    public final String getServiceDescriptor() {
        return "com.google.android.gms.wearable.internal.IWearableService";
    }

    @Override // com.google.android.gms.common.internal.AbstractC12025d
    public final String getStartServiceAction() {
        return "com.google.android.gms.wearable.BIND";
    }

    @Override // com.google.android.gms.common.internal.AbstractC12025d
    public final String getStartServicePackage() {
        return this.f52259j.m11368a("com.google.android.wearable.app.cn") ? "com.google.android.wearable.app.cn" : "com.google.android.gms";
    }

    @Override // com.google.android.gms.common.internal.AbstractC12025d
    public final void onPostInitHandler(int i, IBinder iBinder, Bundle bundle, int i2) {
        if (Log.isLoggable("WearableClient", 2)) {
            StringBuilder sb = new StringBuilder(41);
            sb.append("onPostInitHandler: statusCode ");
            sb.append(i);
        }
        if (i == 0) {
            this.f52254e.m11406a(iBinder);
            this.f52255f.m11406a(iBinder);
            this.f52251b.m11406a(iBinder);
            this.f52256g.m11406a(iBinder);
            this.f52252c.m11406a(iBinder);
            this.f52257h.m11406a(iBinder);
            this.f52258i.m11406a(iBinder);
            this.f52253d.m11406a(iBinder);
        }
        super.onPostInitHandler(i, iBinder, bundle, i2);
    }

    @Override // com.google.android.gms.common.internal.AbstractC12025d, com.google.android.gms.common.api.C11808a.AbstractC11817f
    public final boolean requiresGooglePlayServices() {
        return !this.f52259j.m11368a("com.google.android.wearable.app.cn");
    }
}
