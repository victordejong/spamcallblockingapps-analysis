package androidx.work;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.Keep;
import androidx.work.ListenableWorker;
import androidx.work.impl.utils.p057a.C1269c;
import com.google.p112a.p113a.p114a.AbstractFutureC2212a;
/* loaded from: classes-dex2jar.jar:androidx/work/Worker.class */
public abstract class Worker extends ListenableWorker {

    /* renamed from: a */
    C1269c<ListenableWorker.AbstractC1119a> f3860a;

    @Keep
    @SuppressLint({"BanKeepAnnotation"})
    public Worker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
    }

    @Override // androidx.work.ListenableWorker
    /* renamed from: d */
    public final AbstractFutureC2212a<ListenableWorker.AbstractC1119a> mo17555d() {
        this.f3860a = C1269c.m17587d();
        m17970j().execute(new Runnable() { // from class: androidx.work.Worker.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    Worker.this.f3860a.mo17589a((C1269c<ListenableWorker.AbstractC1119a>) Worker.this.mo840m());
                } catch (Throwable th) {
                    Worker.this.f3860a.mo17588a(th);
                }
            }
        });
        return this.f3860a;
    }

    /* renamed from: m */
    public abstract ListenableWorker.AbstractC1119a mo840m();
}
