package p080e5;

import android.content.Context;
import android.util.Log;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Executor;
import p092f5.C2753b;
import p103g5.AbstractC2878v;
import p114h5.C3009a;
import p135j5.C3276f;
import p146k5.C3324a;
import p157l5.AbstractC3500d;
import p179n5.AbstractC3718c;
import p218r2.AbstractC4187e;
import p218r2.AbstractC4188f;
import p218r2.AbstractC4189g;
import p218r2.C4183a;
import p218r2.C4184b;
import p218r2.EnumC4186d;
import p229s2.C4279a;
import p250u2.C4471j;
import p250u2.C4472k;
import p250u2.C4474m;
import p283x2.C4854f;
import p293y2.C4995l;
import p293y2.C4996m;
/* renamed from: e5.h0 */
/* loaded from: classes-dex2jar.jar:e5/h0.class */
public class C2555h0 {

    /* renamed from: a */
    public final C2579x f8926a;

    /* renamed from: b */
    public final C3276f f8927b;

    /* renamed from: c */
    public final C3324a f8928c;

    /* renamed from: d */
    public final C2753b f8929d;

    /* renamed from: e */
    public final C2557i0 f8930e;

    public C2555h0(C2579x c2579x, C3276f c3276f, C3324a c3324a, C2753b c2753b, C2557i0 c2557i0) {
        this.f8926a = c2579x;
        this.f8927b = c3276f;
        this.f8928c = c3324a;
        this.f8929d = c2753b;
        this.f8930e = c2557i0;
    }

    /* renamed from: a */
    public static C2555h0 m3437a(Context context, C2548e0 c2548e0, C4854f c4854f, C2537a c2537a, C2753b c2753b, C2557i0 c2557i0, AbstractC3718c abstractC3718c, AbstractC3500d abstractC3500d) {
        File file = new File(new File(((Context) c4854f.f14883b).getFilesDir(), ".com.google.firebase.crashlytics").getPath());
        C2579x c2579x = new C2579x(context, c2548e0, c2537a, abstractC3718c);
        C3276f c3276f = new C3276f(file, abstractC3500d);
        C3009a c3009a = C3324a.f11276b;
        C4474m.m883b(context);
        AbstractC4189g m882c = C4474m.m884a().m882c(new C4279a(C3324a.f11277c, C3324a.f11278d));
        C4184b c4184b = new C4184b("json");
        AbstractC4187e<AbstractC2878v, byte[]> abstractC4187e = C3324a.f11279e;
        return new C2555h0(c2579x, c3276f, new C3324a(((C4471j) m882c).mo886a("FIREBASE_CRASHLYTICS_REPORT", AbstractC2878v.class, c4184b, abstractC4187e), abstractC4187e), c2753b, c2557i0);
    }

    /* renamed from: b */
    public List<String> m3436b() {
        List<File> m2452b = C3276f.m2452b(this.f8927b.f11093b);
        Collections.sort(m2452b, C3276f.f11090j);
        ArrayList arrayList = new ArrayList();
        for (File file : m2452b) {
            arrayList.add(file.getName());
        }
        return arrayList;
    }

    /* renamed from: c */
    public Task<Void> m3435c(Executor executor) {
        C3276f c3276f = this.f8927b;
        List<File> m2451c = c3276f.m2451c();
        ArrayList arrayList = new ArrayList();
        arrayList.ensureCapacity(((ArrayList) m2451c).size());
        Iterator it2 = ((ArrayList) c3276f.m2451c()).iterator();
        while (it2.hasNext()) {
            File file = (File) it2.next();
            try {
                arrayList.add(new C2539b(C3276f.f11089i.m2750f(C3276f.m2446h(file)), file.getName()));
            } catch (IOException e) {
                Log.w("FirebaseCrashlytics", "Could not load report file " + file + "; deleting", e);
                file.delete();
            }
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            AbstractC2580y abstractC2580y = (AbstractC2580y) it3.next();
            C3324a c3324a = this.f8928c;
            Objects.requireNonNull(c3324a);
            AbstractC2878v mo3418a = abstractC2580y.mo3418a();
            TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
            AbstractC4188f<AbstractC2878v> abstractC4188f = c3324a.f11280a;
            ((C4472k) abstractC4188f).m885a(new C4183a(null, mo3418a, EnumC4186d.HIGHEST), new C4996m(taskCompletionSource, abstractC2580y, 1));
            arrayList2.add(taskCompletionSource.getTask().continueWith(executor, new C4995l(this, 2)));
        }
        return Tasks.whenAll(arrayList2);
    }
}
