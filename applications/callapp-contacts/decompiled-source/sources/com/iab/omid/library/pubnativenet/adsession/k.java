package com.iab.omid.library.pubnativenet.adsession;

import android.provider.Settings;
import android.view.View;
import com.iab.omid.library.pubnativenet.a.d;
import com.iab.omid.library.pubnativenet.b.c;
import com.iab.omid.library.pubnativenet.b.e;
import com.iab.omid.library.pubnativenet.b.f;
import com.iab.omid.library.pubnativenet.f.a;
import com.iab.omid.library.pubnativenet.f.b;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.UUID;
import java.util.regex.Pattern;
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/pubnativenet/adsession/k.class */
public final class k extends b {
    private static final Pattern i = Pattern.compile("^[a-zA-Z0-9 ]+$");

    /* renamed from: a  reason: collision with root package name */
    public final AdSessionConfiguration f33350a;

    /* renamed from: c  reason: collision with root package name */
    public a f33352c;
    public boolean g;
    public boolean h;
    private final c j;
    private com.iab.omid.library.pubnativenet.e.a k;

    /* renamed from: b  reason: collision with root package name */
    public final List<c> f33351b = new ArrayList();

    /* renamed from: d  reason: collision with root package name */
    public boolean f33353d = false;
    public boolean e = false;
    public final String f = UUID.randomUUID().toString();

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(AdSessionConfiguration adSessionConfiguration, c cVar) {
        this.f33350a = adSessionConfiguration;
        this.j = cVar;
        e(null);
        if (cVar.h == d.HTML || cVar.h == d.JAVASCRIPT) {
            this.f33352c = new b(cVar.f33342b);
        } else {
            this.f33352c = new com.iab.omid.library.pubnativenet.f.c(Collections.unmodifiableMap(cVar.f33344d), cVar.e);
        }
        this.f33352c.a();
        com.iab.omid.library.pubnativenet.b.a.a().f33356a.add(this);
        e.a().a(this.f33352c.c(), "init", adSessionConfiguration.toJsonObject());
    }

    private c c(View view) {
        for (c cVar : this.f33351b) {
            if (cVar.f33362a.get() == view) {
                return cVar;
            }
        }
        return null;
    }

    private static void d(View view) {
        if (view == null) {
            throw new IllegalArgumentException("FriendlyObstruction is null");
        }
    }

    private void e(View view) {
        this.k = new com.iab.omid.library.pubnativenet.e.a(view);
    }

    @Override // com.iab.omid.library.pubnativenet.adsession.b
    public final void a() {
        if (!this.f33353d) {
            this.f33353d = true;
            com.iab.omid.library.pubnativenet.b.a a2 = com.iab.omid.library.pubnativenet.b.a.a();
            boolean b2 = a2.b();
            a2.f33357b.add(this);
            if (!b2) {
                f a3 = f.a();
                com.iab.omid.library.pubnativenet.b.b.a().f33361c = a3;
                com.iab.omid.library.pubnativenet.b.b a4 = com.iab.omid.library.pubnativenet.b.b.a();
                a4.f33359a = true;
                a4.f33360b = false;
                a4.b();
                com.iab.omid.library.pubnativenet.g.a.a();
                com.iab.omid.library.pubnativenet.g.a.b();
                d dVar = a3.f33374b;
                dVar.f33332b = dVar.a();
                dVar.b();
                dVar.f33331a.getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, dVar);
            }
            this.f33352c.a(f.a().f33373a);
            this.f33352c.a(this, this.j);
        }
    }

    @Override // com.iab.omid.library.pubnativenet.adsession.b
    public final void a(View view) {
        if (!this.e) {
            com.iab.omid.library.pubnativenet.d.d.a(view, "AdView is null");
            if (e() != view) {
                e(view);
                this.f33352c.d();
                Collection<k> unmodifiableCollection = Collections.unmodifiableCollection(com.iab.omid.library.pubnativenet.b.a.a().f33356a);
                if (!(unmodifiableCollection == null || unmodifiableCollection.isEmpty())) {
                    for (k kVar : unmodifiableCollection) {
                        if (kVar != this && kVar.e() == view) {
                            kVar.k.clear();
                        }
                    }
                }
            }
        }
    }

    @Override // com.iab.omid.library.pubnativenet.adsession.b
    public final void a(View view, f fVar, String str) {
        if (!this.e) {
            d(view);
            if (str != null && (str.length() > 50 || !i.matcher(str).matches())) {
                throw new IllegalArgumentException("FriendlyObstruction has improperly formatted detailed reason");
            } else if (c(view) == null) {
                this.f33351b.add(new c(view, fVar, str));
            }
        }
    }

    @Override // com.iab.omid.library.pubnativenet.adsession.b
    public final void b() {
        if (!this.e) {
            this.k.clear();
            c();
            this.e = true;
            e.a().a(this.f33352c.c(), "finishSession", new Object[0]);
            com.iab.omid.library.pubnativenet.b.a a2 = com.iab.omid.library.pubnativenet.b.a.a();
            boolean b2 = a2.b();
            a2.f33356a.remove(this);
            a2.f33357b.remove(this);
            if (b2 && !a2.b()) {
                f a3 = f.a();
                final com.iab.omid.library.pubnativenet.g.a a4 = com.iab.omid.library.pubnativenet.g.a.a();
                com.iab.omid.library.pubnativenet.g.a.c();
                a4.f33403b.clear();
                com.iab.omid.library.pubnativenet.g.a.f33400a.post(new Runnable() { // from class: com.iab.omid.library.pubnativenet.g.a.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        a.this.h.b();
                    }
                });
                com.iab.omid.library.pubnativenet.b.b a5 = com.iab.omid.library.pubnativenet.b.b.a();
                a5.f33359a = false;
                a5.f33360b = false;
                a5.f33361c = null;
                d dVar = a3.f33374b;
                dVar.f33331a.getContentResolver().unregisterContentObserver(dVar);
            }
            this.f33352c.b();
            this.f33352c = null;
        }
    }

    @Override // com.iab.omid.library.pubnativenet.adsession.b
    public final void b(View view) {
        if (!this.e) {
            d(view);
            c c2 = c(view);
            if (c2 != null) {
                this.f33351b.remove(c2);
            }
        }
    }

    @Override // com.iab.omid.library.pubnativenet.adsession.b
    public final void c() {
        if (!this.e) {
            this.f33351b.clear();
        }
    }

    public final void d() {
        if (this.h) {
            throw new IllegalStateException("Loaded event can only be sent once");
        }
    }

    public final View e() {
        return (View) this.k.get();
    }

    public final boolean f() {
        return this.f33353d && !this.e;
    }
}
