package com.google.android.play.core.assetpacks;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import com.google.android.play.core.internal.AbstractBinderC8484e1;
import com.google.android.play.core.internal.AbstractC8493h1;
import com.google.android.play.core.internal.C8466a;
import com.google.android.play.core.internal.C8483e0;
/* renamed from: com.google.android.play.core.assetpacks.a0 */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/assetpacks/a0.class */
public final class BinderC8362a0 extends AbstractBinderC8484e1 {

    /* renamed from: d */
    private final C8466a f37656d = new C8466a("AssetPackExtractionService");

    /* renamed from: e */
    private final Context f37657e;

    /* renamed from: f */
    private final C8446v f37658f;

    public BinderC8362a0(Context context, C8446v c8446v) {
        this.f37657e = context;
        this.f37658f = c8446v;
    }

    /* renamed from: Q4 */
    private final void m3789Q4(Bundle bundle) {
        ComponentName componentName;
        synchronized (this) {
            Intent intent = new Intent(this.f37657e, ExtractionForegroundService.class);
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
                componentName = Build.VERSION.SDK_INT >= 26 ? this.f37657e.startForegroundService(intent) : this.f37657e.startService(intent);
            } catch (IllegalStateException | SecurityException e) {
                this.f37656d.m3565c(e, "Failed starting installation service.", new Object[0]);
                componentName = null;
            }
            if (componentName == null) {
                this.f37656d.m3566b("Failed starting installation service.", new Object[0]);
            }
        }
    }

    @Override // com.google.android.play.core.internal.AbstractC8487f1
    /* renamed from: Q2 */
    public final void mo3518Q2(Bundle bundle, AbstractC8493h1 abstractC8493h1) {
        this.f37656d.m3567a("updateServiceState AIDL call", new Object[0]);
        if (!C8483e0.m3521a(this.f37657e) || !C8483e0.m3520b(this.f37657e)) {
            abstractC8493h1.mo3513Q4(new Bundle());
            return;
        }
        m3789Q4(bundle);
        abstractC8493h1.mo3512S3(new Bundle(), new Bundle());
    }

    @Override // com.google.android.play.core.internal.AbstractC8487f1
    /* renamed from: Y0 */
    public final void mo3517Y0(AbstractC8493h1 abstractC8493h1) {
        this.f37656d.m3567a("clearAssetPackStorage AIDL call", new Object[0]);
        if (!C8483e0.m3521a(this.f37657e) || !C8483e0.m3520b(this.f37657e)) {
            abstractC8493h1.mo3513Q4(new Bundle());
            return;
        }
        this.f37658f.m3662K();
        abstractC8493h1.mo3511Y3(new Bundle());
    }
}
