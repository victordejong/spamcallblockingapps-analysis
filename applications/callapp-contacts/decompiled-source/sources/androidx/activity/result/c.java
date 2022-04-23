package androidx.activity.result;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import androidx.activity.result.c;
import androidx.lifecycle.j;
import androidx.lifecycle.n;
import androidx.lifecycle.p;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Random;
/* loaded from: classes-dex2jar.jar:androidx/activity/result/c.class */
public abstract class c {

    /* renamed from: b  reason: collision with root package name */
    public Random f547b = new Random();

    /* renamed from: c  reason: collision with root package name */
    public final Map<Integer, String> f548c = new HashMap();

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, Integer> f546a = new HashMap();
    private final Map<String, b> h = new HashMap();

    /* renamed from: d  reason: collision with root package name */
    public ArrayList<String> f549d = new ArrayList<>();
    public final transient Map<String, a<?>> e = new HashMap();
    public final Map<String, Object> f = new HashMap();
    public final Bundle g = new Bundle();

    /* loaded from: classes-dex2jar.jar:androidx/activity/result/c$a.class */
    public static final class a<O> {

        /* renamed from: a  reason: collision with root package name */
        public final androidx.activity.result.a<O> f558a;

        /* renamed from: b  reason: collision with root package name */
        final androidx.activity.result.a.a<?, O> f559b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(androidx.activity.result.a<O> aVar, androidx.activity.result.a.a<?, O> aVar2) {
            this.f558a = aVar;
            this.f559b = aVar2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/activity/result/c$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        final j f560a;

        /* renamed from: b  reason: collision with root package name */
        private final ArrayList<n> f561b = new ArrayList<>();

        b(j jVar) {
            this.f560a = jVar;
        }

        final void a() {
            Iterator<n> it2 = this.f561b.iterator();
            while (it2.hasNext()) {
                this.f560a.removeObserver(it2.next());
            }
            this.f561b.clear();
        }

        final void a(n nVar) {
            this.f560a.addObserver(nVar);
            this.f561b.add(nVar);
        }
    }

    private int a() {
        int nextInt = this.f547b.nextInt(2147418112);
        while (true) {
            int i = nextInt + 65536;
            if (!this.f548c.containsKey(Integer.valueOf(i))) {
                return i;
            }
            nextInt = this.f547b.nextInt(2147418112);
        }
    }

    private <O> void a(String str, int i, Intent intent, a<O> aVar) {
        if (aVar == null || aVar.f558a == null) {
            this.f.remove(str);
            this.g.putParcelable(str, new ActivityResult(i, intent));
            return;
        }
        aVar.f558a.a(aVar.f559b.a(i, intent));
    }

    private int b(String str) {
        Integer num = this.f546a.get(str);
        if (num != null) {
            return num.intValue();
        }
        int a2 = a();
        a(a2, str);
        return a2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <I, O> androidx.activity.result.b<I> a(final String str, final androidx.activity.result.a.a<I, O> aVar, androidx.activity.result.a<O> aVar2) {
        final int b2 = b(str);
        this.e.put(str, new a<>(aVar2, aVar));
        if (this.f.containsKey(str)) {
            Object obj = this.f.get(str);
            this.f.remove(str);
            aVar2.a(obj);
        }
        ActivityResult activityResult = (ActivityResult) this.g.getParcelable(str);
        if (activityResult != null) {
            this.g.remove(str);
            aVar2.a(aVar.a(activityResult.getResultCode(), activityResult.getData()));
        }
        return new androidx.activity.result.b<I>() { // from class: androidx.activity.result.c.2
            @Override // androidx.activity.result.b
            public final void a() {
                c.this.a(str);
            }

            @Override // androidx.activity.result.b
            public final void a(I i, androidx.core.app.b bVar) {
                c.this.f549d.add(str);
                c.this.a(b2, (androidx.activity.result.a.a<androidx.activity.result.a.a, O>) aVar, (androidx.activity.result.a.a) i, bVar);
            }
        };
    }

    public final <I, O> androidx.activity.result.b<I> a(final String str, p pVar, final androidx.activity.result.a.a<I, O> aVar, final androidx.activity.result.a<O> aVar2) {
        j lifecycle = pVar.getLifecycle();
        if (!lifecycle.getCurrentState().isAtLeast(j.b.STARTED)) {
            final int b2 = b(str);
            b bVar = this.h.get(str);
            b bVar2 = bVar;
            if (bVar == null) {
                bVar2 = new b(lifecycle);
            }
            bVar2.a(new n() { // from class: androidx.activity.result.ActivityResultRegistry$1
                @Override // androidx.lifecycle.n
                public final void a(p pVar2, j.a aVar3) {
                    if (j.a.ON_START.equals(aVar3)) {
                        c.this.e.put(str, new c.a<>(aVar2, aVar));
                        if (c.this.f.containsKey(str)) {
                            Object obj = c.this.f.get(str);
                            c.this.f.remove(str);
                            aVar2.a(obj);
                        }
                        ActivityResult activityResult = (ActivityResult) c.this.g.getParcelable(str);
                        if (activityResult != null) {
                            c.this.g.remove(str);
                            aVar2.a(aVar.a(activityResult.getResultCode(), activityResult.getData()));
                        }
                    } else if (j.a.ON_STOP.equals(aVar3)) {
                        c.this.e.remove(str);
                    } else if (j.a.ON_DESTROY.equals(aVar3)) {
                        c.this.a(str);
                    }
                }
            });
            this.h.put(str, bVar2);
            return new androidx.activity.result.b<I>() { // from class: androidx.activity.result.c.1
                @Override // androidx.activity.result.b
                public final void a() {
                    c.this.a(str);
                }

                @Override // androidx.activity.result.b
                public final void a(I i, androidx.core.app.b bVar3) {
                    c.this.f549d.add(str);
                    c.this.a(b2, (androidx.activity.result.a.a<androidx.activity.result.a.a, O>) aVar, (androidx.activity.result.a.a) i, bVar3);
                }
            };
        }
        throw new IllegalStateException("LifecycleOwner " + pVar + " is attempting to register while current state is " + lifecycle.getCurrentState() + ". LifecycleOwners must call register before they are STARTED.");
    }

    public abstract <I, O> void a(int i, androidx.activity.result.a.a<I, O> aVar, I i2, androidx.core.app.b bVar);

    public final void a(int i, String str) {
        this.f548c.put(Integer.valueOf(i), str);
        this.f546a.put(str, Integer.valueOf(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(String str) {
        Integer remove;
        if (!this.f549d.contains(str) && (remove = this.f546a.remove(str)) != null) {
            this.f548c.remove(remove);
        }
        this.e.remove(str);
        if (this.f.containsKey(str)) {
            Log.w("ActivityResultRegistry", "Dropping pending result for request " + str + ": " + this.f.get(str));
            this.f.remove(str);
        }
        if (this.g.containsKey(str)) {
            Log.w("ActivityResultRegistry", "Dropping pending result for request " + str + ": " + this.g.getParcelable(str));
            this.g.remove(str);
        }
        b bVar = this.h.get(str);
        if (bVar != null) {
            bVar.a();
            this.h.remove(str);
        }
    }

    public final boolean a(int i, int i2, Intent intent) {
        String str = this.f548c.get(Integer.valueOf(i));
        if (str == null) {
            return false;
        }
        this.f549d.remove(str);
        a(str, i2, intent, this.e.get(str));
        return true;
    }
}
