package com.facebook;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import androidx.p052i.p053a.C1179a;
import com.facebook.internal.C10213ae;
import com.facebook.internal.C10218af;
/* renamed from: com.facebook.d */
/* loaded from: classes3-dex2jar.jar:com/facebook/d.class */
public abstract class AbstractC10174d {

    /* renamed from: a */
    private static final String f33588a = "d";

    /* renamed from: b */
    private final BroadcastReceiver f33589b;

    /* renamed from: c */
    private final C1179a f33590c;

    /* renamed from: d */
    private boolean f33591d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.facebook.d$a */
    /* loaded from: classes3-dex2jar.jar:com/facebook/d$a.class */
    public final class C10176a extends BroadcastReceiver {
        private C10176a() {
            AbstractC10174d.this = r4;
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            if ("com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED".equals(intent.getAction())) {
                String unused = AbstractC10174d.f33588a;
                C10213ae.m23250a();
                intent.getParcelableExtra("com.facebook.sdk.EXTRA_OLD_ACCESS_TOKEN");
                AbstractC10174d.this.mo22727a((AccessToken) intent.getParcelableExtra("com.facebook.sdk.EXTRA_NEW_ACCESS_TOKEN"));
            }
        }
    }

    public AbstractC10174d() {
        this.f33591d = false;
        C10218af.m23182a();
        C10176a c10176a = new C10176a();
        this.f33589b = c10176a;
        C1179a m43410a = C1179a.m43410a(C10181g.m23290i());
        this.f33590c = m43410a;
        if (!this.f33591d) {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED");
            m43410a.m43411a(c10176a, intentFilter);
            this.f33591d = true;
        }
    }

    /* renamed from: a */
    protected abstract void mo22727a(AccessToken accessToken);
}
