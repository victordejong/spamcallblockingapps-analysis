package com.google.firebase.iid;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.util.Log;
import javax.annotation.Nullable;
/* renamed from: com.google.firebase.iid.ab */
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/ab.class */
final class C4941ab extends BroadcastReceiver {
    @Nullable

    /* renamed from: a */
    private RunnableC4942ac f21074a;

    public C4941ab(RunnableC4942ac runnableC4942ac) {
        this.f21074a = runnableC4942ac;
    }

    /* renamed from: a */
    public final void m1973a() {
        if (FirebaseInstanceId.m1987f()) {
            Log.d("FirebaseInstanceId", "Connectivity change received registered");
        }
        this.f21074a.m1972a().registerReceiver(this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if (this.f21074a != null && this.f21074a.m1971b()) {
            if (FirebaseInstanceId.m1987f()) {
                Log.d("FirebaseInstanceId", "Connectivity changed. Starting background sync.");
            }
            FirebaseInstanceId.m2002a(this.f21074a, 0L);
            this.f21074a.m1972a().unregisterReceiver(this);
            this.f21074a = null;
        }
    }
}
