package com.google.android.play.core.assetpacks;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.play.core.internal.ao;
import com.google.android.play.core.internal.ca;
import com.google.android.play.core.internal.cd;
import com.google.android.play.core.internal.h;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/ab.class */
final class ab extends ca {

    /* renamed from: a  reason: collision with root package name */
    private final h f31087a = new h("AssetPackExtractionService");

    /* renamed from: b  reason: collision with root package name */
    private final Context f31088b;

    /* renamed from: c  reason: collision with root package name */
    private final w f31089c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ab(Context context, w wVar) {
        this.f31088b = context;
        this.f31089c = wVar;
    }

    private final void a(Bundle bundle) {
        ComponentName componentName;
        synchronized (this) {
            Intent intent = new Intent(this.f31088b, ExtractionForegroundService.class);
            int i = bundle.getInt("action_type");
            intent.putExtra("action_type", i);
            if (i == 1) {
                intent.putExtra("notification_channel_name", bundle.getString("notification_channel_name"));
                intent.putExtra("notification_title", bundle.getString("notification_title"));
                intent.putExtra("notification_subtext", bundle.getString("notification_subtext"));
                intent.putExtra("notification_timeout", bundle.getLong("notification_timeout"));
                Parcelable parcelable = bundle.getParcelable("notification_on_click_intent");
                if (parcelable instanceof PendingIntent) {
                    intent.putExtra("notification_on_click_intent", parcelable);
                }
                intent.putExtra("notification_color", bundle.getInt("notification_color"));
            }
            try {
                componentName = Build.VERSION.SDK_INT >= 26 ? this.f31088b.startForegroundService(intent) : this.f31088b.startService(intent);
            } catch (IllegalStateException | SecurityException e) {
                this.f31087a.a(e, "Failed starting installation service.", new Object[0]);
                componentName = null;
            }
            if (componentName == null) {
                this.f31087a.b("Failed starting installation service.", new Object[0]);
            }
        }
    }

    @Override // com.google.android.play.core.internal.cb
    public final void a(Bundle bundle, cd cdVar) throws RemoteException {
        this.f31087a.a("updateServiceState AIDL call", new Object[0]);
        if (!ao.a(this.f31088b) || !ao.b(this.f31088b)) {
            cdVar.a(new Bundle());
            return;
        }
        a(bundle);
        cdVar.a(new Bundle(), new Bundle());
    }

    @Override // com.google.android.play.core.internal.cb
    public final void a(cd cdVar) throws RemoteException {
        this.f31087a.a("clearAssetPackStorage AIDL call", new Object[0]);
        if (!ao.a(this.f31088b) || !ao.b(this.f31088b)) {
            cdVar.a(new Bundle());
            return;
        }
        this.f31089c.d();
        cdVar.b(new Bundle());
    }
}
