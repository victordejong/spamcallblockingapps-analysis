package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageManager;
import android.view.ViewGroup;
import android.view.Window;
import java.util.Set;
import java.util.concurrent.Callable;
import okhttp3.internal.http2.Http2Connection;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ces.class */
public final class ces implements chb<cep> {

    /* renamed from: a  reason: collision with root package name */
    final ViewGroup f25700a;

    /* renamed from: b  reason: collision with root package name */
    final Context f25701b;

    /* renamed from: c  reason: collision with root package name */
    final Set<String> f25702c;

    /* renamed from: d  reason: collision with root package name */
    private final dbs f25703d;

    public ces(dbs dbsVar, ViewGroup viewGroup, Context context, Set<String> set) {
        this.f25703d = dbsVar;
        this.f25702c = set;
        this.f25700a = viewGroup;
        this.f25701b = context;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Boolean a(Activity activity) {
        Window window = activity.getWindow();
        if (window != null && (window.getAttributes().flags & Http2Connection.OKHTTP_CLIENT_WINDOW_SIZE) != 0) {
            return Boolean.TRUE;
        }
        try {
            boolean z = false;
            if ((activity.getPackageManager().getActivityInfo(activity.getComponentName(), 0).flags & 512) != 0) {
                z = true;
            }
            return Boolean.valueOf(z);
        } catch (PackageManager.NameNotFoundException e) {
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.chb
    public final dbt<cep> a() {
        return this.f25703d.a(new Callable(this) { // from class: com.google.android.gms.internal.ads.cer

            /* renamed from: a  reason: collision with root package name */
            private final ces f25699a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f25699a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                ces cesVar = this.f25699a;
                if (((Boolean) ekb.e().a(aq.dy)).booleanValue() && cesVar.f25700a != null && cesVar.f25702c.contains("banner")) {
                    return new cep(Boolean.valueOf(cesVar.f25700a.isHardwareAccelerated()));
                }
                return (!((Boolean) ekb.e().a(aq.dz)).booleanValue() || !cesVar.f25702c.contains("native") || !(cesVar.f25701b instanceof Activity)) ? new cep(null) : new cep(ces.a((Activity) cesVar.f25701b));
            }
        });
    }
}
