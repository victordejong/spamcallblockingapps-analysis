package p081h.p203i.p204a.p224e.p259j.p260a;

import android.content.SharedPreferences;
import java.util.concurrent.Callable;
/* renamed from: h.i.a.e.j.a.d7 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/d7.class */
public final class CallableC7210d7 implements Callable<T> {

    /* renamed from: a */
    public final /* synthetic */ AbstractC7409t6 f17317a;

    /* renamed from: b */
    public final /* synthetic */ SharedPreferences$OnSharedPreferenceChangeListenerC7184b7 f17318b;

    public CallableC7210d7(SharedPreferences$OnSharedPreferenceChangeListenerC7184b7 b7Var, AbstractC7409t6 t6Var) {
        this.f17318b = b7Var;
        this.f17317a = t6Var;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [T, java.lang.Object] */
    @Override // java.util.concurrent.Callable
    public final T call() {
        SharedPreferences sharedPreferences;
        AbstractC7409t6 t6Var = this.f17317a;
        sharedPreferences = this.f17318b.f17302e;
        return t6Var.mo20473a(sharedPreferences);
    }
}
