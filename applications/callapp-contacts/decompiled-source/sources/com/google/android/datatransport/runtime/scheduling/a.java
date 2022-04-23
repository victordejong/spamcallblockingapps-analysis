package com.google.android.datatransport.runtime.scheduling;

import com.google.android.datatransport.runtime.backends.e;
import com.google.android.datatransport.runtime.backends.m;
import com.google.android.datatransport.runtime.h;
import com.google.android.datatransport.runtime.l;
import com.google.android.datatransport.runtime.q;
import com.google.android.datatransport.runtime.scheduling.a.c;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.s;
import com.google.android.datatransport.runtime.synchronization.a;
import java.util.concurrent.Executor;
import java.util.logging.Logger;
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/a.class */
public final class a implements e {

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f20466a = Logger.getLogger(q.class.getName());

    /* renamed from: b  reason: collision with root package name */
    private final s f20467b;

    /* renamed from: c  reason: collision with root package name */
    private final Executor f20468c;

    /* renamed from: d  reason: collision with root package name */
    private final e f20469d;
    private final c e;
    private final com.google.android.datatransport.runtime.synchronization.a f;

    public a(Executor executor, e eVar, s sVar, c cVar, com.google.android.datatransport.runtime.synchronization.a aVar) {
        this.f20468c = executor;
        this.f20469d = eVar;
        this.f20467b = sVar;
        this.e = cVar;
        this.f = aVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Object a(a aVar, l lVar, h hVar) {
        aVar.e.a(lVar, hVar);
        aVar.f20467b.a(lVar, 1);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(final a aVar, final l lVar, com.google.android.datatransport.h hVar, h hVar2) {
        try {
            m a2 = aVar.f20469d.a(lVar.a());
            if (a2 == null) {
                String format = String.format("Transport backend '%s' is not registered", lVar.a());
                f20466a.warning(format);
                hVar.onSchedule(new IllegalArgumentException(format));
                return;
            }
            final h a3 = a2.a(hVar2);
            aVar.f.a(new a.AbstractC0418a(aVar, lVar, a3) { // from class: com.google.android.datatransport.runtime.scheduling.c

                /* renamed from: a  reason: collision with root package name */
                private final a f20534a;

                /* renamed from: b  reason: collision with root package name */
                private final l f20535b;

                /* renamed from: c  reason: collision with root package name */
                private final h f20536c;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f20534a = aVar;
                    this.f20535b = lVar;
                    this.f20536c = a3;
                }

                @Override // com.google.android.datatransport.runtime.synchronization.a.AbstractC0418a
                public final Object a() {
                    return a.a(this.f20534a, this.f20535b, this.f20536c);
                }
            });
            hVar.onSchedule(null);
        } catch (Exception e) {
            Logger logger = f20466a;
            logger.warning("Error scheduling event " + e.getMessage());
            hVar.onSchedule(e);
        }
    }

    @Override // com.google.android.datatransport.runtime.scheduling.e
    public final void a(l lVar, h hVar, com.google.android.datatransport.h hVar2) {
        this.f20468c.execute(b.a(this, lVar, hVar2, hVar));
    }
}
