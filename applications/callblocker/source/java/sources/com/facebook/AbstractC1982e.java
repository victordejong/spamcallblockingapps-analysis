package com.facebook;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import androidx.p040h.p041a.C0735a;
import com.facebook.internal.C2079x;
import com.facebook.internal.C2084y;
/* renamed from: com.facebook.e */
/* loaded from: classes-dex2jar.jar:com/facebook/e.class */
public abstract class AbstractC1982e {

    /* renamed from: a */
    private static final String f5905a = AbstractC1982e.class.getSimpleName();

    /* renamed from: d */
    private boolean f5908d = false;

    /* renamed from: b */
    private final BroadcastReceiver f5906b = new C1984a();

    /* renamed from: c */
    private final C0735a f5907c = C0735a.m19534a(C2095j.m15360h());

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.facebook.e$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/e$a.class */
    public class C1984a extends BroadcastReceiver {
        private C1984a() {
            AbstractC1982e.this = r4;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED".equals(intent.getAction())) {
                C2079x.m15449b(AbstractC1982e.f5905a, "AccessTokenChanged");
                AbstractC1982e.this.mo15038a((C1803a) intent.getParcelableExtra("com.facebook.sdk.EXTRA_OLD_ACCESS_TOKEN"), (C1803a) intent.getParcelableExtra("com.facebook.sdk.EXTRA_NEW_ACCESS_TOKEN"));
            }
        }
    }

    public AbstractC1982e() {
        C2084y.m15420a();
        m15727a();
    }

    /* renamed from: e */
    private void m15723e() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED");
        this.f5907c.m19535a(this.f5906b, intentFilter);
    }

    /* renamed from: a */
    public void m15727a() {
        if (this.f5908d) {
            return;
        }
        m15723e();
        this.f5908d = true;
    }

    /* renamed from: a */
    protected abstract void mo15038a(C1803a c1803a, C1803a c1803a2);

    /* renamed from: b */
    public void m15726b() {
        if (!this.f5908d) {
            return;
        }
        this.f5907c.m19536a(this.f5906b);
        this.f5908d = false;
    }

    /* renamed from: c */
    public boolean m15725c() {
        return this.f5908d;
    }
}
