package com.mopub.mraid;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.view.WindowManager;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
@VisibleForTesting
/* loaded from: classes3-dex2jar.jar:com/mopub/mraid/MraidController$e.class */
public class MraidController$e extends BroadcastReceiver {

    /* renamed from: a */
    public Context f9022a;

    /* renamed from: b */
    public int f9023b = -1;

    /* renamed from: c */
    public final /* synthetic */ MraidController f9024c;

    public MraidController$e(MraidController mraidController) {
        this.f9024c = mraidController;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        int rotation;
        if (this.f9022a == null || !"android.intent.action.CONFIGURATION_CHANGED".equals(intent.getAction()) || (rotation = ((WindowManager) this.f9024c.f8818b.getSystemService("window")).getDefaultDisplay().getRotation()) == this.f9023b) {
            return;
        }
        this.f9023b = rotation;
        this.f9024c.j();
    }

    public void register(Context context) {
        Preconditions.checkNotNull(context);
        Context applicationContext = context.getApplicationContext();
        this.f9022a = applicationContext;
        if (applicationContext != null) {
            applicationContext.registerReceiver(this, new IntentFilter("android.intent.action.CONFIGURATION_CHANGED"));
        }
    }

    public void unregister() {
        Context context = this.f9022a;
        if (context != null) {
            context.unregisterReceiver(this);
            this.f9022a = null;
        }
    }
}
