package com.google.android.play.core.assetpacks;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.play.core.internal.AbstractBinderC15064ca;
import com.google.android.play.core.internal.AbstractC15067cd;
import com.google.android.play.core.internal.C15024ao;
import com.google.android.play.core.internal.C15072h;
/* renamed from: com.google.android.play.core.assetpacks.ab */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/ab.class */
public final class BinderC14901ab extends AbstractBinderC15064ca {

    /* renamed from: a */
    private final C15072h f54379a = new C15072h("AssetPackExtractionService");

    /* renamed from: b */
    private final Context f54380b;

    /* renamed from: c */
    private final C14996w f54381c;

    public BinderC14901ab(Context context, C14996w c14996w) {
        this.f54380b = context;
        this.f54381c = c14996w;
    }

    /* renamed from: a */
    private final void m9788a(Bundle bundle) {
        ComponentName componentName;
        synchronized (this) {
            Intent intent = new Intent(this.f54380b, ExtractionForegroundService.class);
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
                componentName = Build.VERSION.SDK_INT >= 26 ? this.f54380b.startForegroundService(intent) : this.f54380b.startService(intent);
            } catch (IllegalStateException | SecurityException e) {
                this.f54379a.m9510a(e, "Failed starting installation service.", new Object[0]);
                componentName = null;
            }
            if (componentName == null) {
                this.f54379a.m9509b("Failed starting installation service.", new Object[0]);
            }
        }
    }

    @Override // com.google.android.play.core.internal.AbstractC15065cb
    /* renamed from: a */
    public final void mo9520a(Bundle bundle, AbstractC15067cd abstractC15067cd) throws RemoteException {
        this.f54379a.m9511a("updateServiceState AIDL call", new Object[0]);
        if (!C15024ao.m9585a(this.f54380b) || !C15024ao.m9584b(this.f54380b)) {
            abstractC15067cd.mo9518a(new Bundle());
            return;
        }
        m9788a(bundle);
        abstractC15067cd.mo9517a(new Bundle(), new Bundle());
    }

    @Override // com.google.android.play.core.internal.AbstractC15065cb
    /* renamed from: a */
    public final void mo9519a(AbstractC15067cd abstractC15067cd) throws RemoteException {
        this.f54379a.m9511a("clearAssetPackStorage AIDL call", new Object[0]);
        if (!C15024ao.m9585a(this.f54380b) || !C15024ao.m9584b(this.f54380b)) {
            abstractC15067cd.mo9518a(new Bundle());
            return;
        }
        this.f54381c.m9651d();
        abstractC15067cd.mo9516b(new Bundle());
    }
}
