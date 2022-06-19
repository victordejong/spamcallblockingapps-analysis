package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.google.android.datatransport.runtime.AbstractC10738l;
import com.google.android.datatransport.runtime.backends.AbstractC10702g;
import com.google.android.datatransport.runtime.backends.AbstractC10710m;
import com.google.android.datatransport.runtime.backends.C10693a;
import com.google.android.datatransport.runtime.p318b.C10692a;
import com.google.android.datatransport.runtime.scheduling.p322a.AbstractC10762c;
import com.google.android.datatransport.runtime.scheduling.p322a.AbstractC10771h;
import com.google.android.datatransport.runtime.synchronization.AbstractC10825a;
import com.google.android.datatransport.runtime.synchronization.SynchronizationException;
import java.util.ArrayList;
/* renamed from: com.google.android.datatransport.runtime.scheduling.jobscheduling.i */
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/i.class */
public final /* synthetic */ class RunnableC10814i implements Runnable {

    /* renamed from: a */
    private final C10813h f34735a;

    /* renamed from: b */
    private final AbstractC10738l f34736b;

    /* renamed from: c */
    private final int f34737c;

    /* renamed from: d */
    private final Runnable f34738d;

    private RunnableC10814i(C10813h c10813h, AbstractC10738l abstractC10738l, int i, Runnable runnable) {
        this.f34735a = c10813h;
        this.f34736b = abstractC10738l;
        this.f34737c = i;
        this.f34738d = runnable;
    }

    /* renamed from: a */
    public static Runnable m22332a(C10813h c10813h, AbstractC10738l abstractC10738l, int i, Runnable runnable) {
        return new RunnableC10814i(c10813h, abstractC10738l, i, runnable);
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC10702g mo22498a;
        C10813h c10813h = this.f34735a;
        AbstractC10738l abstractC10738l = this.f34736b;
        int i = this.f34737c;
        Runnable runnable = this.f34738d;
        try {
            AbstractC10825a abstractC10825a = c10813h.f34732e;
            AbstractC10762c abstractC10762c = c10813h.f34730c;
            abstractC10762c.getClass();
            abstractC10825a.mo22328a(new AbstractC10825a.AbstractC10826a(abstractC10762c) { // from class: com.google.android.datatransport.runtime.scheduling.jobscheduling.l

                /* renamed from: a */
                private final AbstractC10762c f34746a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f34746a = abstractC10762c;
                }

                @Override // com.google.android.datatransport.runtime.synchronization.AbstractC10825a.AbstractC10826a
                /* renamed from: a */
                public final Object mo22327a() {
                    return Integer.valueOf(this.f34746a.mo22379b());
                }
            });
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) c10813h.f34728a.getSystemService("connectivity")).getActiveNetworkInfo();
            if (!(activeNetworkInfo != null && activeNetworkInfo.isConnected())) {
                c10813h.f34732e.mo22328a(new AbstractC10825a.AbstractC10826a(c10813h, abstractC10738l, i) { // from class: com.google.android.datatransport.runtime.scheduling.jobscheduling.m

                    /* renamed from: a */
                    private final C10813h f34747a;

                    /* renamed from: b */
                    private final AbstractC10738l f34748b;

                    /* renamed from: c */
                    private final int f34749c;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f34747a = c10813h;
                        this.f34748b = abstractC10738l;
                        this.f34749c = i;
                    }

                    @Override // com.google.android.datatransport.runtime.synchronization.AbstractC10825a.AbstractC10826a
                    /* renamed from: a */
                    public final Object mo22327a() {
                        C10813h c10813h2 = this.f34747a;
                        c10813h2.f34731d.mo22330a(this.f34748b, this.f34749c + 1);
                        return null;
                    }
                });
            } else {
                AbstractC10710m mo22501a = c10813h.f34729b.mo22501a(abstractC10738l.mo22450a());
                Iterable<AbstractC10771h> iterable = (Iterable) c10813h.f34732e.mo22328a(new AbstractC10825a.AbstractC10826a(c10813h, abstractC10738l) { // from class: com.google.android.datatransport.runtime.scheduling.jobscheduling.j

                    /* renamed from: a */
                    private final C10813h f34739a;

                    /* renamed from: b */
                    private final AbstractC10738l f34740b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f34739a = c10813h;
                        this.f34740b = abstractC10738l;
                    }

                    @Override // com.google.android.datatransport.runtime.synchronization.AbstractC10825a.AbstractC10826a
                    /* renamed from: a */
                    public final Object mo22327a() {
                        C10813h c10813h2 = this.f34739a;
                        return c10813h2.f34730c.mo22370c(this.f34740b);
                    }
                });
                if (iterable.iterator().hasNext()) {
                    if (mo22501a == null) {
                        C10692a.m22517a("Uploader", "Unknown backend for %s, deleting event batch for it...", abstractC10738l);
                        mo22498a = AbstractC10702g.m22506d();
                    } else {
                        ArrayList arrayList = new ArrayList();
                        for (AbstractC10771h abstractC10771h : iterable) {
                            arrayList.add(abstractC10771h.mo22402c());
                        }
                        mo22498a = mo22501a.mo22498a(new C10693a.C10695a().mo22511a(arrayList).mo22510a(abstractC10738l.mo22449b()).mo22512a());
                    }
                    c10813h.f34732e.mo22328a(new AbstractC10825a.AbstractC10826a(c10813h, mo22498a, iterable, abstractC10738l, i) { // from class: com.google.android.datatransport.runtime.scheduling.jobscheduling.k

                        /* renamed from: a */
                        private final C10813h f34741a;

                        /* renamed from: b */
                        private final AbstractC10702g f34742b;

                        /* renamed from: c */
                        private final Iterable f34743c;

                        /* renamed from: d */
                        private final AbstractC10738l f34744d;

                        /* renamed from: e */
                        private final int f34745e;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f34741a = c10813h;
                            this.f34742b = mo22498a;
                            this.f34743c = iterable;
                            this.f34744d = abstractC10738l;
                            this.f34745e = i;
                        }

                        @Override // com.google.android.datatransport.runtime.synchronization.AbstractC10825a.AbstractC10826a
                        /* renamed from: a */
                        public final Object mo22327a() {
                            C10813h c10813h2 = this.f34741a;
                            AbstractC10702g abstractC10702g2 = this.f34742b;
                            Iterable<AbstractC10771h> iterable2 = this.f34743c;
                            AbstractC10738l abstractC10738l2 = this.f34744d;
                            int i2 = this.f34745e;
                            if (abstractC10702g2.mo22509a() == AbstractC10702g.EnumC10703a.TRANSIENT_ERROR) {
                                c10813h2.f34730c.mo22385a(iterable2);
                                c10813h2.f34731d.mo22330a(abstractC10738l2, i2 + 1);
                                return null;
                            }
                            c10813h2.f34730c.mo22374b(iterable2);
                            if (abstractC10702g2.mo22509a() == AbstractC10702g.EnumC10703a.OK) {
                                c10813h2.f34730c.mo22392a(abstractC10738l2, c10813h2.f34733f.mo22491a() + abstractC10702g2.mo22508b());
                            }
                            if (!c10813h2.f34730c.mo22376b(abstractC10738l2)) {
                                return null;
                            }
                            c10813h2.f34731d.mo22329a(abstractC10738l2, 1, true);
                            return null;
                        }
                    });
                }
            }
        } catch (SynchronizationException e) {
            c10813h.f34731d.mo22330a(abstractC10738l, i + 1);
        } finally {
            runnable.run();
        }
    }
}
