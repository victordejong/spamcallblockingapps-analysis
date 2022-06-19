package com.google.android.datatransport.p232h.p237x;

import com.google.android.datatransport.AbstractC4648g;
import com.google.android.datatransport.p232h.AbstractC4664h;
import com.google.android.datatransport.p232h.AbstractC4673m;
import com.google.android.datatransport.p232h.C4679r;
import com.google.android.datatransport.p232h.p237x.p238j.AbstractC4710c;
import com.google.android.datatransport.runtime.backends.AbstractC4761e;
import com.google.android.datatransport.runtime.backends.AbstractC4770l;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.AbstractC4793r;
import com.google.android.datatransport.runtime.synchronization.AbstractC4794a;
import java.util.concurrent.Executor;
import java.util.logging.Logger;
/* renamed from: com.google.android.datatransport.h.x.c */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/h/x/c.class */
public class C4693c implements AbstractC4695e {

    /* renamed from: a */
    private static final Logger f14267a = Logger.getLogger(C4679r.class.getName());

    /* renamed from: b */
    private final AbstractC4793r f14268b;

    /* renamed from: c */
    private final Executor f14269c;

    /* renamed from: d */
    private final AbstractC4761e f14270d;

    /* renamed from: e */
    private final AbstractC4710c f14271e;

    /* renamed from: f */
    private final AbstractC4794a f14272f;

    public C4693c(Executor executor, AbstractC4761e abstractC4761e, AbstractC4793r abstractC4793r, AbstractC4710c abstractC4710c, AbstractC4794a abstractC4794a) {
        this.f14269c = executor;
        this.f14270d = abstractC4761e;
        this.f14268b = abstractC4793r;
        this.f14271e = abstractC4710c;
        this.f14272f = abstractC4794a;
    }

    /* renamed from: b */
    public static /* synthetic */ Object m21982b(C4693c c4693c, AbstractC4673m abstractC4673m, AbstractC4664h abstractC4664h) {
        c4693c.f14271e.mo21933X(abstractC4673m, abstractC4664h);
        c4693c.f14268b.mo21764a(abstractC4673m, 1);
        return null;
    }

    /* renamed from: c */
    public static /* synthetic */ void m21981c(C4693c c4693c, AbstractC4673m abstractC4673m, AbstractC4648g abstractC4648g, AbstractC4664h abstractC4664h) {
        try {
            AbstractC4770l abstractC4770l = c4693c.f14270d.get(abstractC4673m.mo22023b());
            if (abstractC4770l != null) {
                c4693c.f14272f.mo21762a(C4692b.m21983a(c4693c, abstractC4673m, abstractC4770l.mo21816b(abstractC4664h)));
                abstractC4648g.mo1989a(null);
                return;
            }
            String format = String.format("Transport backend '%s' is not registered", abstractC4673m.mo22023b());
            f14267a.warning(format);
            abstractC4648g.mo1989a(new IllegalArgumentException(format));
        } catch (Exception e) {
            Logger logger = f14267a;
            logger.warning("Error scheduling event " + e.getMessage());
            abstractC4648g.mo1989a(e);
        }
    }

    @Override // com.google.android.datatransport.p232h.p237x.AbstractC4695e
    /* renamed from: a */
    public void mo21977a(AbstractC4673m abstractC4673m, AbstractC4664h abstractC4664h, AbstractC4648g abstractC4648g) {
        this.f14269c.execute(RunnableC4691a.m21984a(this, abstractC4673m, abstractC4648g, abstractC4664h));
    }
}
