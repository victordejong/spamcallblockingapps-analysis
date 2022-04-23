package com.facebook;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.facebook.internal.ae;
import com.facebook.internal.af;
/* loaded from: classes3-dex2jar.jar:com/facebook/d.class */
public abstract class d {

    /* renamed from: a  reason: collision with root package name */
    private static final String f19770a = "d";

    /* renamed from: b  reason: collision with root package name */
    private final BroadcastReceiver f19771b;

    /* renamed from: c  reason: collision with root package name */
    private final androidx.i.a.a f19772c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f19773d;

    /* loaded from: classes3-dex2jar.jar:com/facebook/d$a.class */
    final class a extends BroadcastReceiver {
        private a() {
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            if ("com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED".equals(intent.getAction())) {
                String unused = d.f19770a;
                ae.a();
                intent.getParcelableExtra("com.facebook.sdk.EXTRA_OLD_ACCESS_TOKEN");
                d.this.a((AccessToken) intent.getParcelableExtra("com.facebook.sdk.EXTRA_NEW_ACCESS_TOKEN"));
            }
        }
    }

    public d() {
        this.f19773d = false;
        af.a();
        a aVar = new a();
        this.f19771b = aVar;
        androidx.i.a.a a2 = androidx.i.a.a.a(g.i());
        this.f19772c = a2;
        if (!this.f19773d) {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED");
            a2.a(aVar, intentFilter);
            this.f19773d = true;
        }
    }

    protected abstract void a(AccessToken accessToken);
}
