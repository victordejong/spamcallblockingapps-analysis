package com.iab.omid.library.verizonmedia.p448b;

import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.iab.omid.library.verizonmedia.adsession.C16492k;
import com.iab.omid.library.verizonmedia.p452f.AbstractC16518a;
import java.util.Collections;
/* renamed from: com.iab.omid.library.verizonmedia.b.b */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/verizonmedia/b/b.class */
public final class C16495b {

    /* renamed from: f */
    private static C16495b f58057f = new C16495b();

    /* renamed from: a */
    public Context f58058a;

    /* renamed from: b */
    public BroadcastReceiver f58059b;

    /* renamed from: c */
    public boolean f58060c;

    /* renamed from: d */
    public boolean f58061d;

    /* renamed from: e */
    public AbstractC16497a f58062e;

    /* renamed from: com.iab.omid.library.verizonmedia.b.b$a */
    /* loaded from: classes4-dex2jar.jar:com/iab/omid/library/verizonmedia/b/b$a.class */
    public interface AbstractC16497a {
        /* renamed from: a */
        void mo7125a(boolean z);
    }

    private C16495b() {
    }

    /* renamed from: a */
    public static C16495b m7142a() {
        return f58057f;
    }

    /* renamed from: a */
    static /* synthetic */ void m7141a(C16495b c16495b, boolean z) {
        if (c16495b.f58061d != z) {
            c16495b.f58061d = z;
            if (!c16495b.f58060c) {
                return;
            }
            c16495b.m7138d();
            AbstractC16497a abstractC16497a = c16495b.f58062e;
            if (abstractC16497a == null) {
                return;
            }
            abstractC16497a.mo7125a(c16495b.m7139c());
        }
    }

    /* renamed from: d */
    private void m7138d() {
        boolean z = this.f58061d;
        for (C16492k c16492k : Collections.unmodifiableCollection(C16494a.m7145a().f58055a)) {
            AbstractC16518a abstractC16518a = c16492k.f58045c;
            if (abstractC16518a.f58097a.get() != null) {
                C16500e.m7136a().m7131a(abstractC16518a.m7089c(), "setState", z ^ true ? "foregrounded" : "backgrounded");
            }
        }
    }

    /* renamed from: b */
    public final void m7140b() {
        this.f58059b = new BroadcastReceiver() { // from class: com.iab.omid.library.verizonmedia.b.b.1
            @Override // android.content.BroadcastReceiver
            public final void onReceive(Context context, Intent intent) {
                KeyguardManager keyguardManager;
                if (intent == null) {
                    return;
                }
                if ("android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
                    C16495b.m7141a(C16495b.this, true);
                } else if ("android.intent.action.USER_PRESENT".equals(intent.getAction())) {
                    C16495b.m7141a(C16495b.this, false);
                } else if (!"android.intent.action.SCREEN_ON".equals(intent.getAction()) || (keyguardManager = (KeyguardManager) context.getSystemService("keyguard")) == null || keyguardManager.inKeyguardRestrictedInputMode()) {
                } else {
                    C16495b.m7141a(C16495b.this, false);
                }
            }
        };
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.SCREEN_ON");
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        this.f58058a.registerReceiver(this.f58059b, intentFilter);
        this.f58060c = true;
        m7138d();
    }

    /* renamed from: c */
    public final boolean m7139c() {
        return !this.f58061d;
    }
}
