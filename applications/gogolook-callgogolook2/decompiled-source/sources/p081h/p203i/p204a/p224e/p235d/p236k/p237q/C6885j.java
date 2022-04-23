package p081h.p203i.p204a.p224e.p235d.p236k.p237q;

import android.os.Looper;
import androidx.annotation.NonNull;
import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;
import p081h.p203i.p204a.p224e.p235d.p236k.p237q.C6878i;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
/* renamed from: h.i.a.e.d.k.q.j */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/q/j.class */
public class C6885j {

    /* renamed from: a */
    public final Set<C6878i<?>> f16868a = Collections.newSetFromMap(new WeakHashMap());

    /* renamed from: a */
    public static <L> C6878i.C6879a<L> m21660a(@NonNull L l, @NonNull String str) {
        C7021t.m21289a(l, "Listener must not be null");
        C7021t.m21289a(str, (Object) "Listener type must not be null");
        C7021t.m21287a(str, (Object) "Listener type must not be empty");
        return new C6878i.C6879a<>(l, str);
    }

    /* renamed from: a */
    public static <L> C6878i<L> m21661a(@NonNull L l, @NonNull Looper looper, @NonNull String str) {
        C7021t.m21289a(l, "Listener must not be null");
        C7021t.m21289a(looper, "Looper must not be null");
        C7021t.m21289a(str, (Object) "Listener type must not be null");
        return new C6878i<>(looper, l, str);
    }

    /* renamed from: a */
    public final void m21662a() {
        for (C6878i<?> iVar : this.f16868a) {
            iVar.m21668a();
        }
        this.f16868a.clear();
    }
}
