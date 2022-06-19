package p080e5;

import android.util.Log;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import p080e5.C2568p;
/* renamed from: e5.o */
/* loaded from: classes-dex2jar.jar:e5/o.class */
public class CallableC2567o implements Callable<Task<Void>> {

    /* renamed from: a */
    public final /* synthetic */ Boolean f8952a;

    /* renamed from: b */
    public final /* synthetic */ C2568p.C2569a f8953b;

    public CallableC2567o(C2568p.C2569a c2569a, Boolean bool) {
        this.f8953b = c2569a;
        this.f8952a = bool;
    }

    @Override // java.util.concurrent.Callable
    public Task<Void> call() throws Exception {
        Task<Void> task;
        if (!this.f8952a.booleanValue()) {
            Log.isLoggable("FirebaseCrashlytics", 2);
            File[] listFiles = C2568p.this.m3426g().listFiles(C2556i.f8931b);
            File[] fileArr = listFiles;
            if (listFiles == null) {
                fileArr = new File[0];
            }
            for (File file : fileArr) {
                file.delete();
            }
            Iterator it2 = ((ArrayList) C2568p.this.f8965l.f8927b.m2451c()).iterator();
            while (it2.hasNext()) {
                ((File) it2.next()).delete();
            }
            C2568p.this.f8969p.trySetResult(null);
            task = Tasks.forResult(null);
        } else {
            Log.isLoggable("FirebaseCrashlytics", 3);
            boolean booleanValue = this.f8952a.booleanValue();
            C2538a0 c2538a0 = C2568p.this.f8955b;
            Objects.requireNonNull(c2538a0);
            if (!booleanValue) {
                throw new IllegalStateException("An invalid data collection token was used.");
            }
            c2538a0.f8894g.trySetResult(null);
            C2568p.C2569a c2569a = this.f8953b;
            Executor executor = C2568p.this.f8957d.f8919a;
            task = c2569a.f8970a.onSuccessTask(executor, new C2566n(this, executor));
        }
        return task;
    }
}
