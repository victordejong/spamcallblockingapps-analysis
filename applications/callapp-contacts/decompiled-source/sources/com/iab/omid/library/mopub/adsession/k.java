package com.iab.omid.library.mopub.adsession;

import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.provider.Settings;
import android.view.View;
import com.iab.omid.library.mopub.a.d;
import com.iab.omid.library.mopub.b.c;
import com.iab.omid.library.mopub.b.e;
import com.iab.omid.library.mopub.b.f;
import com.iab.omid.library.mopub.f.a;
import com.iab.omid.library.mopub.f.b;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.UUID;
import java.util.regex.Pattern;
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/mopub/adsession/k.class */
public final class k extends b {
    private static final Pattern i = Pattern.compile("^[a-zA-Z0-9 ]+$");

    /* renamed from: a  reason: collision with root package name */
    public final AdSessionConfiguration f33254a;

    /* renamed from: c  reason: collision with root package name */
    public a f33256c;
    public boolean g;
    public boolean h;
    private final c j;
    private com.iab.omid.library.mopub.e.a k;

    /* renamed from: b  reason: collision with root package name */
    public final List<c> f33255b = new ArrayList();

    /* renamed from: d  reason: collision with root package name */
    public boolean f33257d = false;
    public boolean e = false;
    public String f = UUID.randomUUID().toString();

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(AdSessionConfiguration adSessionConfiguration, c cVar) {
        this.f33254a = adSessionConfiguration;
        this.j = cVar;
        c(null);
        if (cVar.h == d.HTML || cVar.h == d.JAVASCRIPT) {
            this.f33256c = new b(cVar.f33246b);
        } else {
            this.f33256c = new com.iab.omid.library.mopub.f.c(Collections.unmodifiableMap(cVar.f33248d), cVar.e);
        }
        this.f33256c.a();
        com.iab.omid.library.mopub.b.a.a().f33260a.add(this);
        e.a().a(this.f33256c.c(), "init", adSessionConfiguration.toJsonObject());
    }

    private c b(View view) {
        for (c cVar : this.f33255b) {
            if (cVar.f33267a.get() == view) {
                return cVar;
            }
        }
        return null;
    }

    private void c(View view) {
        this.k = new com.iab.omid.library.mopub.e.a(view);
    }

    @Override // com.iab.omid.library.mopub.adsession.b
    public final void a() {
        if (!this.f33257d) {
            this.f33257d = true;
            com.iab.omid.library.mopub.b.a a2 = com.iab.omid.library.mopub.b.a.a();
            boolean b2 = a2.b();
            a2.f33261b.add(this);
            if (!b2) {
                f a3 = f.a();
                com.iab.omid.library.mopub.b.b.a().e = a3;
                final com.iab.omid.library.mopub.b.b a4 = com.iab.omid.library.mopub.b.b.a();
                a4.f33263b = new BroadcastReceiver() { // from class: com.iab.omid.library.mopub.b.b.1
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
                a4.f33262a.registerReceiver(a4.f33263b, intentFilter);
                a4.f33264c = true;
                a4.c();
                if (com.iab.omid.library.mopub.b.b.a().b()) {
                    com.iab.omid.library.mopub.g.a.a();
                    com.iab.omid.library.mopub.g.a.b();
                }
                d dVar = a3.f33279b;
                dVar.f33236b = dVar.a();
                dVar.b();
                dVar.f33235a.getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, dVar);
            }
            this.f33256c.a(f.a().f33278a);
            this.f33256c.a(this, this.j);
        }
    }

    @Override // com.iab.omid.library.mopub.adsession.b
    public final void a(View view) {
        if (!this.e) {
            com.iab.omid.library.mopub.d.d.a(view, "AdView is null");
            if (d() != view) {
                c(view);
                this.f33256c.d();
                Collection<k> unmodifiableCollection = Collections.unmodifiableCollection(com.iab.omid.library.mopub.b.a.a().f33260a);
                if (unmodifiableCollection != null && unmodifiableCollection.size() > 0) {
                    for (k kVar : unmodifiableCollection) {
                        if (kVar != this && kVar.d() == view) {
                            kVar.k.clear();
                        }
                    }
                }
            }
        }
    }

    @Override // com.iab.omid.library.mopub.adsession.b
    public final void a(View view, f fVar, String str) {
        if (!this.e) {
            if (view == null) {
                throw new IllegalArgumentException("FriendlyObstruction is null");
            } else if (str.length() > 50 || !i.matcher(str).matches()) {
                throw new IllegalArgumentException("FriendlyObstruction has improperly formatted detailed reason");
            } else if (b(view) == null) {
                this.f33255b.add(new c(view, fVar, str));
            }
        }
    }

    @Override // com.iab.omid.library.mopub.adsession.b
    public final void b() {
        if (!this.e) {
            this.k.clear();
            if (!this.e) {
                this.f33255b.clear();
            }
            this.e = true;
            e.a().a(this.f33256c.c(), "finishSession", new Object[0]);
            com.iab.omid.library.mopub.b.a a2 = com.iab.omid.library.mopub.b.a.a();
            boolean b2 = a2.b();
            a2.f33260a.remove(this);
            a2.f33261b.remove(this);
            if (b2 && !a2.b()) {
                f a3 = f.a();
                final com.iab.omid.library.mopub.g.a a4 = com.iab.omid.library.mopub.g.a.a();
                com.iab.omid.library.mopub.g.a.c();
                a4.f33308b.clear();
                com.iab.omid.library.mopub.g.a.f33305a.post(new Runnable() { // from class: com.iab.omid.library.mopub.g.a.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        a.this.h.b();
                    }
                });
                com.iab.omid.library.mopub.b.b a5 = com.iab.omid.library.mopub.b.b.a();
                if (!(a5.f33262a == null || a5.f33263b == null)) {
                    a5.f33262a.unregisterReceiver(a5.f33263b);
                    a5.f33263b = null;
                }
                a5.f33264c = false;
                a5.f33265d = false;
                a5.e = null;
                d dVar = a3.f33279b;
                dVar.f33235a.getContentResolver().unregisterContentObserver(dVar);
            }
            this.f33256c.b();
            this.f33256c = null;
        }
    }

    public final void c() {
        if (this.h) {
            throw new IllegalStateException("Loaded event can only be sent once");
        }
    }

    public final View d() {
        return (View) this.k.get();
    }

    public final boolean e() {
        return this.f33257d && !this.e;
    }
}
