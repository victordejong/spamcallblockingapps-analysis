package com.uservoice.uservoicesdk.f;

import android.content.Context;
import com.uservoice.uservoicesdk.a.a;
import com.uservoice.uservoicesdk.e;
import com.uservoice.uservoicesdk.model.b;
import com.uservoice.uservoicesdk.model.d;
import com.uservoice.uservoicesdk.model.i;
import com.uservoice.uservoicesdk.model.k;
/* loaded from: classes-dex2jar.jar:com/uservoice/uservoicesdk/f/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    final Context f4666a;

    /* renamed from: b  reason: collision with root package name */
    final Runnable f4667b;
    boolean c;
    private final Runnable d;

    public a(Context context, Runnable runnable) {
        this(context, runnable, null);
    }

    public a(Context context, Runnable runnable, Runnable runnable2) {
        this.f4666a = context;
        this.d = runnable;
        this.f4667b = runnable2;
    }

    public final void a() {
        if (e.a().g == null) {
            com.uservoice.uservoicesdk.model.e.a(new com.uservoice.uservoicesdk.ui.a<com.uservoice.uservoicesdk.model.e>(this.f4666a) { // from class: com.uservoice.uservoicesdk.f.a.1
                @Override // com.uservoice.uservoicesdk.ui.a, com.uservoice.uservoicesdk.j.a
                public final void a(com.uservoice.uservoicesdk.j.e eVar) {
                    if (a.this.f4667b != null) {
                        a.this.f4667b.run();
                    }
                    super.a(eVar);
                }

                @Override // com.uservoice.uservoicesdk.j.a
                public final /* synthetic */ void a(Object obj) {
                    e.a().g = (com.uservoice.uservoicesdk.model.e) obj;
                    com.uservoice.uservoicesdk.a.a.a(a.EnumC0133a.VIEW_CHANNEL);
                    a.this.b();
                }
            });
        } else {
            b();
        }
    }

    final void b() {
        if (e.a().f == null) {
            if (e.a().f4631b.d != null) {
                i.a(new com.uservoice.uservoicesdk.ui.a<i>(this.f4666a) { // from class: com.uservoice.uservoicesdk.f.a.2
                    @Override // com.uservoice.uservoicesdk.j.a
                    public final /* synthetic */ void a(Object obj) {
                        i iVar = (i) obj;
                        if (!a.this.c) {
                            e.a().d = iVar;
                            com.uservoice.uservoicesdk.a aVar = e.a().f4631b;
                            k.a(aVar.d, aVar.e, aVar.f, new com.uservoice.uservoicesdk.ui.a<b<k>>(a.this.f4666a) { // from class: com.uservoice.uservoicesdk.f.a.2.1
                                @Override // com.uservoice.uservoicesdk.ui.a, com.uservoice.uservoicesdk.j.a
                                public final void a(com.uservoice.uservoicesdk.j.e eVar) {
                                    if (eVar.b().equals("unauthorized")) {
                                        a.this.c();
                                        return;
                                    }
                                    if (a.this.f4667b != null) {
                                        a.this.f4667b.run();
                                    }
                                    super.a(eVar);
                                }

                                @Override // com.uservoice.uservoicesdk.j.a
                                public final /* synthetic */ void a(Object obj2) {
                                    b bVar = (b) obj2;
                                    if (!a.this.c) {
                                        e.a().a(bVar.f4740b);
                                        e.a().a((k) bVar.f4739a);
                                        a.this.c();
                                    }
                                }
                            });
                        }
                    }
                });
                return;
            }
            com.uservoice.uservoicesdk.model.a aVar = (com.uservoice.uservoicesdk.model.a) d.a(e.a().e(), "access_token", "access_token", com.uservoice.uservoicesdk.model.a.class);
            if (aVar != null) {
                e.a().e = aVar;
                k.a(new com.uservoice.uservoicesdk.ui.a<k>(this.f4666a) { // from class: com.uservoice.uservoicesdk.f.a.3
                    @Override // com.uservoice.uservoicesdk.ui.a, com.uservoice.uservoicesdk.j.a
                    public final void a(com.uservoice.uservoicesdk.j.e eVar) {
                        if (a.this.f4667b != null) {
                            a.this.f4667b.run();
                        }
                        super.a(eVar);
                    }

                    @Override // com.uservoice.uservoicesdk.j.a
                    public final /* synthetic */ void a(Object obj) {
                        e.a().a((k) obj);
                        a.this.c();
                    }
                });
                return;
            }
            c();
            return;
        }
        c();
    }

    final void c() {
        this.d.run();
    }
}
