package p1727n3.p1861s.p1862a;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import java.util.Map;
import javax.inject.Provider;
import p1727n3.p1834m0.AbstractC26677b0;
/* renamed from: n3.s.a.a */
/* loaded from: classes-dex2jar.jar:n3/s/a/a.class */
public final class C26978a extends AbstractC26677b0 {

    /* renamed from: b */
    public final Map<String, Provider<AbstractC26979b<? extends ListenableWorker>>> f75488b;

    public C26978a(Map<String, Provider<AbstractC26979b<? extends ListenableWorker>>> map) {
        this.f75488b = map;
    }

    @Override // p1727n3.p1834m0.AbstractC26677b0
    /* renamed from: a */
    public ListenableWorker mo1027a(Context context, String str, WorkerParameters workerParameters) {
        Provider<AbstractC26979b<? extends ListenableWorker>> provider = this.f75488b.get(str);
        if (provider == null) {
            return null;
        }
        return ((AbstractC26979b) provider.get()).mo1026a(context, workerParameters);
    }
}
