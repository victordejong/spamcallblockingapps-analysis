package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.google.android.datatransport.runtime.backends.a;
import com.google.android.datatransport.runtime.backends.g;
import com.google.android.datatransport.runtime.backends.m;
import com.google.android.datatransport.runtime.l;
import com.google.android.datatransport.runtime.scheduling.a.c;
import com.google.android.datatransport.runtime.scheduling.a.h;
import com.google.android.datatransport.runtime.synchronization.SynchronizationException;
import com.google.android.datatransport.runtime.synchronization.a;
import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/i.class */
public final /* synthetic */ class i implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final h f20570a;

    /* renamed from: b  reason: collision with root package name */
    private final l f20571b;

    /* renamed from: c  reason: collision with root package name */
    private final int f20572c;

    /* renamed from: d  reason: collision with root package name */
    private final Runnable f20573d;

    private i(h hVar, l lVar, int i, Runnable runnable) {
        this.f20570a = hVar;
        this.f20571b = lVar;
        this.f20572c = i;
        this.f20573d = runnable;
    }

    public static Runnable a(h hVar, l lVar, int i, Runnable runnable) {
        return new i(hVar, lVar, i, runnable);
    }

    @Override // java.lang.Runnable
    public final void run() {
        final g a2;
        final h hVar = this.f20570a;
        final l lVar = this.f20571b;
        final int i = this.f20572c;
        Runnable runnable = this.f20573d;
        try {
            a aVar = hVar.e;
            final c cVar = hVar.f20568c;
            cVar.getClass();
            aVar.a(new a.AbstractC0418a(cVar) { // from class: com.google.android.datatransport.runtime.scheduling.jobscheduling.l

                /* renamed from: a  reason: collision with root package name */
                private final c f20580a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f20580a = cVar;
                }

                @Override // com.google.android.datatransport.runtime.synchronization.a.AbstractC0418a
                public final Object a() {
                    return Integer.valueOf(this.f20580a.b());
                }
            });
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) hVar.f20566a.getSystemService("connectivity")).getActiveNetworkInfo();
            if (!(activeNetworkInfo != null && activeNetworkInfo.isConnected())) {
                hVar.e.a(new a.AbstractC0418a(hVar, lVar, i) { // from class: com.google.android.datatransport.runtime.scheduling.jobscheduling.m

                    /* renamed from: a  reason: collision with root package name */
                    private final h f20581a;

                    /* renamed from: b  reason: collision with root package name */
                    private final l f20582b;

                    /* renamed from: c  reason: collision with root package name */
                    private final int f20583c;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f20581a = hVar;
                        this.f20582b = lVar;
                        this.f20583c = i;
                    }

                    @Override // com.google.android.datatransport.runtime.synchronization.a.AbstractC0418a
                    public final Object a() {
                        h hVar2 = this.f20581a;
                        hVar2.f20569d.a(this.f20582b, this.f20583c + 1);
                        return null;
                    }
                });
            } else {
                m a3 = hVar.f20567b.a(lVar.a());
                final Iterable<h> iterable = (Iterable) hVar.e.a(new a.AbstractC0418a(hVar, lVar) { // from class: com.google.android.datatransport.runtime.scheduling.jobscheduling.j

                    /* renamed from: a  reason: collision with root package name */
                    private final h f20574a;

                    /* renamed from: b  reason: collision with root package name */
                    private final l f20575b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f20574a = hVar;
                        this.f20575b = lVar;
                    }

                    @Override // com.google.android.datatransport.runtime.synchronization.a.AbstractC0418a
                    public final Object a() {
                        h hVar2 = this.f20574a;
                        return hVar2.f20568c.c(this.f20575b);
                    }
                });
                if (iterable.iterator().hasNext()) {
                    if (a3 == null) {
                        com.google.android.datatransport.runtime.b.a.a("Uploader", "Unknown backend for %s, deleting event batch for it...", lVar);
                        a2 = g.d();
                    } else {
                        ArrayList arrayList = new ArrayList();
                        for (h hVar2 : iterable) {
                            arrayList.add(hVar2.c());
                        }
                        a2 = a3.a(new a.C0416a().a(arrayList).a(lVar.b()).a());
                    }
                    hVar.e.a(new a.AbstractC0418a(hVar, a2, iterable, lVar, i) { // from class: com.google.android.datatransport.runtime.scheduling.jobscheduling.k

                        /* renamed from: a  reason: collision with root package name */
                        private final h f20576a;

                        /* renamed from: b  reason: collision with root package name */
                        private final g f20577b;

                        /* renamed from: c  reason: collision with root package name */
                        private final Iterable f20578c;

                        /* renamed from: d  reason: collision with root package name */
                        private final l f20579d;
                        private final int e;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f20576a = hVar;
                            this.f20577b = a2;
                            this.f20578c = iterable;
                            this.f20579d = lVar;
                            this.e = i;
                        }

                        @Override // com.google.android.datatransport.runtime.synchronization.a.AbstractC0418a
                        public final Object a() {
                            h hVar3 = this.f20576a;
                            g gVar = this.f20577b;
                            Iterable<h> iterable2 = this.f20578c;
                            l lVar2 = this.f20579d;
                            int i2 = this.e;
                            if (gVar.a() == g.a.TRANSIENT_ERROR) {
                                hVar3.f20568c.a(iterable2);
                                hVar3.f20569d.a(lVar2, i2 + 1);
                                return null;
                            }
                            hVar3.f20568c.b(iterable2);
                            if (gVar.a() == g.a.OK) {
                                hVar3.f20568c.a(lVar2, hVar3.f.a() + gVar.b());
                            }
                            if (!hVar3.f20568c.b(lVar2)) {
                                return null;
                            }
                            hVar3.f20569d.a(lVar2, 1, true);
                            return null;
                        }
                    });
                }
            }
        } catch (SynchronizationException e) {
            hVar.f20569d.a(lVar, i + 1);
        } finally {
            runnable.run();
        }
    }
}
