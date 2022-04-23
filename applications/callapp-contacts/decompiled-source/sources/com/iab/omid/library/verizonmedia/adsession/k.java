package com.iab.omid.library.verizonmedia.adsession;

import android.view.View;
import com.iab.omid.library.verizonmedia.b.c;
import com.iab.omid.library.verizonmedia.b.e;
import com.iab.omid.library.verizonmedia.b.f;
import com.iab.omid.library.verizonmedia.d.d;
import com.iab.omid.library.verizonmedia.f.a;
import com.iab.omid.library.verizonmedia.f.b;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import java.util.regex.Pattern;
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/verizonmedia/adsession/k.class */
public final class k extends b {
    private static final Pattern i = Pattern.compile("^[a-zA-Z0-9 ]+$");

    /* renamed from: a  reason: collision with root package name */
    public final AdSessionConfiguration f33445a;

    /* renamed from: c  reason: collision with root package name */
    public a f33447c;
    boolean g;
    boolean h;
    private final c j;
    private com.iab.omid.library.verizonmedia.e.a k;

    /* renamed from: b  reason: collision with root package name */
    public final List<c> f33446b = new ArrayList();

    /* renamed from: d  reason: collision with root package name */
    public boolean f33448d = false;
    public boolean e = false;
    public String f = UUID.randomUUID().toString();

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(AdSessionConfiguration adSessionConfiguration, c cVar) {
        this.f33445a = adSessionConfiguration;
        this.j = cVar;
        b(null);
        if (cVar.h == d.HTML || cVar.h == d.JAVASCRIPT) {
            this.f33447c = new b(cVar.f33437b);
        } else {
            this.f33447c = new com.iab.omid.library.verizonmedia.f.c(Collections.unmodifiableMap(cVar.f33439d), cVar.e);
        }
        this.f33447c.a();
        com.iab.omid.library.verizonmedia.b.a.a().f33451a.add(this);
        e.a().a(this.f33447c.c(), "init", adSessionConfiguration.toJsonObject());
    }

    private void b(View view) {
        this.k = new com.iab.omid.library.verizonmedia.e.a(view);
    }

    @Override // com.iab.omid.library.verizonmedia.adsession.b
    public final void a() {
        if (!this.f33448d) {
            this.f33448d = true;
            com.iab.omid.library.verizonmedia.b.a.a().a(this);
            this.f33447c.a(f.a().f33469a);
            this.f33447c.a(this, this.j);
        }
    }

    @Override // com.iab.omid.library.verizonmedia.adsession.b
    public final void a(View view) {
        if (!this.e) {
            d.a(view, "AdView is null");
            if (e() != view) {
                b(view);
                this.f33447c.d();
                Collection<k> unmodifiableCollection = Collections.unmodifiableCollection(com.iab.omid.library.verizonmedia.b.a.a().f33451a);
                if (unmodifiableCollection != null && unmodifiableCollection.size() > 0) {
                    for (k kVar : unmodifiableCollection) {
                        if (kVar != this && kVar.e() == view) {
                            kVar.k.clear();
                        }
                    }
                }
            }
        }
    }

    @Override // com.iab.omid.library.verizonmedia.adsession.b
    public final void a(View view, f fVar) {
        c cVar;
        if (!this.e) {
            Iterator<c> it2 = this.f33446b.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    cVar = null;
                    break;
                }
                cVar = it2.next();
                if (cVar.f33458a.get() == view) {
                    break;
                }
            }
            if (cVar == null) {
                this.f33446b.add(new c(view, fVar, null));
            }
        }
    }

    @Override // com.iab.omid.library.verizonmedia.adsession.b
    public final void b() {
        if (!this.e) {
            this.k.clear();
            c();
            this.e = true;
            e.a().a(this.f33447c.c(), "finishSession", new Object[0]);
            com.iab.omid.library.verizonmedia.b.a a2 = com.iab.omid.library.verizonmedia.b.a.a();
            boolean b2 = a2.b();
            a2.f33451a.remove(this);
            a2.f33452b.remove(this);
            if (b2 && !a2.b()) {
                f a3 = f.a();
                final com.iab.omid.library.verizonmedia.g.a a4 = com.iab.omid.library.verizonmedia.g.a.a();
                com.iab.omid.library.verizonmedia.g.a.c();
                a4.f33499b.clear();
                com.iab.omid.library.verizonmedia.g.a.f33496a.post(new Runnable() { // from class: com.iab.omid.library.verizonmedia.g.a.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        a.this.h.b();
                    }
                });
                com.iab.omid.library.verizonmedia.b.b a5 = com.iab.omid.library.verizonmedia.b.b.a();
                if (!(a5.f33453a == null || a5.f33454b == null)) {
                    a5.f33453a.unregisterReceiver(a5.f33454b);
                    a5.f33454b = null;
                }
                a5.f33455c = false;
                a5.f33456d = false;
                a5.e = null;
                com.iab.omid.library.verizonmedia.a.d dVar = a3.f33470b;
                dVar.f33426a.getContentResolver().unregisterContentObserver(dVar);
            }
            this.f33447c.b();
            this.f33447c = null;
        }
    }

    @Override // com.iab.omid.library.verizonmedia.adsession.b
    public final void c() {
        if (!this.e) {
            this.f33446b.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void d() {
        if (this.h) {
            throw new IllegalStateException("Loaded event can only be sent once");
        }
    }

    public final View e() {
        return (View) this.k.get();
    }

    public final boolean f() {
        return this.f33448d && !this.e;
    }
}
