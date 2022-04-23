package androidx.work.impl.utils;

import android.content.Context;
import androidx.work.f;
import androidx.work.g;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.foreground.a;
import androidx.work.impl.foreground.b;
import androidx.work.impl.model.WorkSpecDao;
import androidx.work.impl.utils.a.c;
import androidx.work.t;
import java.util.UUID;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/l.class */
public final class l implements g {

    /* renamed from: a  reason: collision with root package name */
    final a f6199a;

    /* renamed from: b  reason: collision with root package name */
    final WorkSpecDao f6200b;

    /* renamed from: c  reason: collision with root package name */
    private final androidx.work.impl.utils.b.a f6201c;

    public l(WorkDatabase workDatabase, a aVar, androidx.work.impl.utils.b.a aVar2) {
        this.f6199a = aVar;
        this.f6201c = aVar2;
        this.f6200b = workDatabase.j();
    }

    @Override // androidx.work.g
    public final com.google.common.util.concurrent.a<Void> a(final Context context, final UUID uuid, final f fVar) {
        final c a2 = c.a();
        this.f6201c.a(new Runnable() { // from class: androidx.work.impl.utils.l.1
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    if (!a2.isCancelled()) {
                        String uuid2 = uuid.toString();
                        t.a state = l.this.f6200b.getState(uuid2);
                        if (state == null || state.isFinished()) {
                            throw new IllegalStateException("Calls to setForegroundAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result.");
                        }
                        l.this.f6199a.a(uuid2, fVar);
                        context.startService(b.b(context, uuid2, fVar));
                    }
                    a2.a((c) null);
                } catch (Throwable th) {
                    a2.a(th);
                }
            }
        });
        return a2;
    }
}
