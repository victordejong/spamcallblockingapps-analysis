package androidx.work.impl.utils;

import android.content.Context;
import androidx.work.AbstractC2996g;
import androidx.work.C2995f;
import androidx.work.C3163t;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.foreground.AbstractC3053a;
import androidx.work.impl.foreground.C3054b;
import androidx.work.impl.model.WorkSpecDao;
import androidx.work.impl.utils.p089a.C3117c;
import androidx.work.impl.utils.p090b.AbstractC3119a;
import com.google.common.util.concurrent.AbstractFutureC15579a;
import java.util.UUID;
/* renamed from: androidx.work.impl.utils.l */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/l.class */
public final class C3133l implements AbstractC2996g {

    /* renamed from: a */
    final AbstractC3053a f11472a;

    /* renamed from: b */
    final WorkSpecDao f11473b;

    /* renamed from: c */
    private final AbstractC3119a f11474c;

    public C3133l(WorkDatabase workDatabase, AbstractC3053a abstractC3053a, AbstractC3119a abstractC3119a) {
        this.f11472a = abstractC3053a;
        this.f11474c = abstractC3119a;
        this.f11473b = workDatabase.mo39474j();
    }

    @Override // androidx.work.AbstractC2996g
    /* renamed from: a */
    public final AbstractFutureC15579a<Void> mo39286a(final Context context, final UUID uuid, final C2995f c2995f) {
        final C3117c m39313a = C3117c.m39313a();
        this.f11474c.mo39302a(new Runnable() { // from class: androidx.work.impl.utils.l.1
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    if (!m39313a.isCancelled()) {
                        String uuid2 = uuid.toString();
                        C3163t.EnumC3164a state = C3133l.this.f11473b.getState(uuid2);
                        if (state == null || state.isFinished()) {
                            throw new IllegalStateException("Calls to setForegroundAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result.");
                        }
                        C3133l.this.f11472a.mo39381a(uuid2, c2995f);
                        context.startService(C3054b.m39373b(context, uuid2, c2995f));
                    }
                    m39313a.mo39311a((C3117c) null);
                } catch (Throwable th) {
                    m39313a.mo39310a(th);
                }
            }
        });
        return m39313a;
    }
}
