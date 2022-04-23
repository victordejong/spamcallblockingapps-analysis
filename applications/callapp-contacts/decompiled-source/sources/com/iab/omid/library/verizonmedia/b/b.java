package com.iab.omid.library.verizonmedia.b;

import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.iab.omid.library.verizonmedia.adsession.k;
import java.util.Collections;
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/verizonmedia/b/b.class */
public final class b {
    private static b f = new b();

    /* renamed from: a  reason: collision with root package name */
    public Context f33453a;

    /* renamed from: b  reason: collision with root package name */
    public BroadcastReceiver f33454b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f33455c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f33456d;
    public a e;

    /* loaded from: classes4-dex2jar.jar:com/iab/omid/library/verizonmedia/b/b$a.class */
    public interface a {
        void a(boolean z);
    }

    private b() {
    }

    public static b a() {
        return f;
    }

    static /* synthetic */ void a(b bVar, boolean z) {
        if (bVar.f33456d != z) {
            bVar.f33456d = z;
            if (bVar.f33455c) {
                bVar.d();
                a aVar = bVar.e;
                if (aVar != null) {
                    aVar.a(bVar.c());
                }
            }
        }
    }

    private void d() {
        boolean z = this.f33456d;
        for (k kVar : Collections.unmodifiableCollection(com.iab.omid.library.verizonmedia.b.a.a().f33451a)) {
            com.iab.omid.library.verizonmedia.f.a aVar = kVar.f33447c;
            if (aVar.f33486a.get() != null) {
                e.a().a(aVar.c(), "setState", z ^ true ? "foregrounded" : "backgrounded");
            }
        }
    }

    public final void b() {
        this.f33454b = new BroadcastReceiver() { // from class: com.iab.omid.library.verizonmedia.b.b.1
            @Override // android.content.BroadcastReceiver
            public final void onReceive(Context context, Intent intent) {
                KeyguardManager keyguardManager;
                if (intent != null) {
                    if ("android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
                        b.a(b.this, true);
                    } else if ("android.intent.action.USER_PRESENT".equals(intent.getAction())) {
                        b.a(b.this, false);
                    } else if ("android.intent.action.SCREEN_ON".equals(intent.getAction()) && (keyguardManager = (KeyguardManager) context.getSystemService("keyguard")) != null && !keyguardManager.inKeyguardRestrictedInputMode()) {
                        b.a(b.this, false);
                    }
                }
            }
        };
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.SCREEN_ON");
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        this.f33453a.registerReceiver(this.f33454b, intentFilter);
        this.f33455c = true;
        d();
    }

    public final boolean c() {
        return !this.f33456d;
    }
}
