package com.iab.omid.library.mopub.p125b;

import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.support.annotation.NonNull;
import com.iab.omid.library.mopub.adsession.a;
/* renamed from: com.iab.omid.library.mopub.b.b */
/* loaded from: classes3-dex2jar.jar:com/iab/omid/library/mopub/b/b.class */
public class C2602b {

    /* renamed from: a */
    private static C2602b f8346a = new C2602b();

    /* renamed from: b */
    private Context f8347b;

    /* renamed from: c */
    private BroadcastReceiver f8348c;

    /* renamed from: d */
    private boolean f8349d;

    /* renamed from: e */
    private boolean f8350e;

    /* renamed from: f */
    private AbstractC2604a f8351f;

    /* renamed from: com.iab.omid.library.mopub.b.b$a */
    /* loaded from: classes3-dex2jar.jar:com/iab/omid/library/mopub/b/b$a.class */
    public interface AbstractC2604a {
        /* renamed from: a */
        void m36460a(boolean z);
    }

    private C2602b() {
    }

    /* renamed from: a */
    public static C2602b m36471a() {
        return f8346a;
    }

    /* renamed from: a */
    public void m36467a(boolean z) {
        if (this.f8350e != z) {
            this.f8350e = z;
            if (!this.f8349d) {
                return;
            }
            m36461g();
            AbstractC2604a abstractC2604a = this.f8351f;
            if (abstractC2604a == null) {
                return;
            }
            abstractC2604a.m36460a(m36464d());
        }
    }

    /* renamed from: e */
    private void m36463e() {
        this.f8348c = new BroadcastReceiver() { // from class: com.iab.omid.library.mopub.b.b.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                KeyguardManager keyguardManager;
                if (intent == null) {
                    return;
                }
                if ("android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
                    C2602b.this.m36467a(true);
                } else if (!"android.intent.action.USER_PRESENT".equals(intent.getAction()) && (!"android.intent.action.SCREEN_ON".equals(intent.getAction()) || (keyguardManager = (KeyguardManager) context.getSystemService("keyguard")) == null || keyguardManager.inKeyguardRestrictedInputMode())) {
                } else {
                    C2602b.this.m36467a(false);
                }
            }
        };
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.SCREEN_ON");
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        this.f8347b.registerReceiver(this.f8348c, intentFilter);
    }

    /* renamed from: f */
    private void m36462f() {
        BroadcastReceiver broadcastReceiver;
        Context context = this.f8347b;
        if (context == null || (broadcastReceiver = this.f8348c) == null) {
            return;
        }
        context.unregisterReceiver(broadcastReceiver);
        this.f8348c = null;
    }

    /* renamed from: g */
    private void m36461g() {
        boolean z = this.f8350e;
        for (a aVar : C2601a.m36478a().m36476b()) {
            aVar.getAdSessionStatePublisher().m36370a(!z);
        }
    }

    /* renamed from: a */
    public void m36470a(@NonNull Context context) {
        this.f8347b = context.getApplicationContext();
    }

    /* renamed from: a */
    public void m36469a(AbstractC2604a abstractC2604a) {
        this.f8351f = abstractC2604a;
    }

    /* renamed from: b */
    public void m36466b() {
        m36463e();
        this.f8349d = true;
        m36461g();
    }

    /* renamed from: c */
    public void m36465c() {
        m36462f();
        this.f8349d = false;
        this.f8350e = false;
        this.f8351f = null;
    }

    /* renamed from: d */
    public boolean m36464d() {
        return !this.f8350e;
    }
}
