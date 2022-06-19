package com.google.android.gms.common.internal.service;

import android.content.Context;
import android.os.Parcel;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.common.internal.TelemetryData;
import com.google.android.gms.common.internal.TelemetryLoggingClient;
import com.google.android.gms.common.internal.TelemetryLoggingOptions;
import com.google.android.gms.common.internal.service.zai;
import com.google.android.gms.common.internal.service.zao;
import com.google.android.gms.common.internal.service.zap;
import com.google.android.gms.internal.base.zac;
import com.google.android.gms.internal.base.zad;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import p193e.p1577m.p1578a.p1642f.p1653e.p1656b.p1657a.C24964c;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/internal/service/zao.class */
public final class zao extends GoogleApi<TelemetryLoggingOptions> implements TelemetryLoggingClient {

    /* renamed from: a */
    public static final Api.ClientKey<zap> f6009a;

    /* renamed from: b */
    public static final Api.AbstractClientBuilder<zap, TelemetryLoggingOptions> f6010b;

    /* renamed from: c */
    public static final Api<TelemetryLoggingOptions> f6011c;

    static {
        Api.ClientKey<zap> clientKey = new Api.ClientKey<>();
        f6009a = clientKey;
        C24964c c24964c = new C24964c();
        f6010b = c24964c;
        f6011c = new Api<>("ClientTelemetry.API", c24964c, clientKey);
    }

    public zao(Context context, TelemetryLoggingOptions telemetryLoggingOptions) {
        super(context, f6011c, telemetryLoggingOptions, GoogleApi.Settings.f5696c);
    }

    @Override // com.google.android.gms.common.internal.TelemetryLoggingClient
    /* renamed from: a */
    public final Task<Void> mo38836a(TelemetryData telemetryData) {
        TaskApiCall.Builder builder = TaskApiCall.builder();
        builder.f5777c = new Feature[]{zad.zaa};
        builder.f5776b = false;
        builder.f5775a = new RemoteCall(telemetryData) { // from class: e.m.a.f.e.b.a.b

            /* renamed from: a */
            public final TelemetryData f69905a;

            {
                this.f69905a = telemetryData;
            }

            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                TelemetryData telemetryData2 = this.f69905a;
                Api.ClientKey<zap> clientKey = zao.f6009a;
                zai zaiVar = (zai) ((zap) obj).getService();
                Parcel zaa = zaiVar.zaa();
                zac.zac(zaa, telemetryData2);
                zaiVar.zad(1, zaa);
                ((TaskCompletionSource) obj2).f6493a.w((Object) null);
            }
        };
        return doBestEffortWrite(builder.m39016a());
    }
}
