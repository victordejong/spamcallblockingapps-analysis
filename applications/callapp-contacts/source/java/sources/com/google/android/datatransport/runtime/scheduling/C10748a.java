package com.google.android.datatransport.runtime.scheduling;

import com.google.android.datatransport.AbstractC10680h;
import com.google.android.datatransport.runtime.AbstractC10730h;
import com.google.android.datatransport.runtime.AbstractC10738l;
import com.google.android.datatransport.runtime.C10744q;
import com.google.android.datatransport.runtime.backends.AbstractC10699e;
import com.google.android.datatransport.runtime.backends.AbstractC10710m;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.AbstractC10824s;
import com.google.android.datatransport.runtime.scheduling.p322a.AbstractC10762c;
import com.google.android.datatransport.runtime.synchronization.AbstractC10825a;
import java.util.concurrent.Executor;
import java.util.logging.Logger;
/* renamed from: com.google.android.datatransport.runtime.scheduling.a */
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/a.class */
public final class C10748a implements AbstractC10797e {

    /* renamed from: a */
    private static final Logger f34616a = Logger.getLogger(C10744q.class.getName());

    /* renamed from: b */
    private final AbstractC10824s f34617b;

    /* renamed from: c */
    private final Executor f34618c;

    /* renamed from: d */
    private final AbstractC10699e f34619d;

    /* renamed from: e */
    private final AbstractC10762c f34620e;

    /* renamed from: f */
    private final AbstractC10825a f34621f;

    public C10748a(Executor executor, AbstractC10699e abstractC10699e, AbstractC10824s abstractC10824s, AbstractC10762c abstractC10762c, AbstractC10825a abstractC10825a) {
        this.f34618c = executor;
        this.f34619d = abstractC10699e;
        this.f34617b = abstractC10824s;
        this.f34620e = abstractC10762c;
        this.f34621f = abstractC10825a;
    }

    /* renamed from: a */
    public static /* synthetic */ Object m22432a(C10748a c10748a, AbstractC10738l abstractC10738l, AbstractC10730h abstractC10730h) {
        c10748a.f34620e.mo22391a(abstractC10738l, abstractC10730h);
        c10748a.f34617b.mo22330a(abstractC10738l, 1);
        return null;
    }

    /* renamed from: a */
    public static /* synthetic */ void m22433a(C10748a c10748a, AbstractC10738l abstractC10738l, AbstractC10680h abstractC10680h, AbstractC10730h abstractC10730h) {
        try {
            AbstractC10710m mo22501a = c10748a.f34619d.mo22501a(abstractC10738l.mo22450a());
            if (mo22501a != null) {
                c10748a.f34621f.mo22328a(new AbstractC10825a.AbstractC10826a(c10748a, abstractC10738l, mo22501a.mo22497a(abstractC10730h)) { // from class: com.google.android.datatransport.runtime.scheduling.c

                    /* renamed from: a */
                    private final C10748a f34694a;

                    /* renamed from: b */
                    private final AbstractC10738l f34695b;

                    /* renamed from: c */
                    private final AbstractC10730h f34696c;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f34694a = c10748a;
                        this.f34695b = abstractC10738l;
                        this.f34696c = mo22497a;
                    }

                    @Override // com.google.android.datatransport.runtime.synchronization.AbstractC10825a.AbstractC10826a
                    /* renamed from: a */
                    public final Object mo22327a() {
                        return C10748a.m22432a(this.f34694a, this.f34695b, this.f34696c);
                    }
                });
                abstractC10680h.onSchedule(null);
                return;
            }
            String format = String.format("Transport backend '%s' is not registered", abstractC10738l.mo22450a());
            f34616a.warning(format);
            abstractC10680h.onSchedule(new IllegalArgumentException(format));
        } catch (Exception e) {
            Logger logger = f34616a;
            logger.warning("Error scheduling event " + e.getMessage());
            abstractC10680h.onSchedule(e);
        }
    }

    @Override // com.google.android.datatransport.runtime.scheduling.AbstractC10797e
    /* renamed from: a */
    public final void mo22356a(AbstractC10738l abstractC10738l, AbstractC10730h abstractC10730h, AbstractC10680h abstractC10680h) {
        this.f34618c.execute(RunnableC10794b.m22357a(this, abstractC10738l, abstractC10680h, abstractC10730h));
    }
}
