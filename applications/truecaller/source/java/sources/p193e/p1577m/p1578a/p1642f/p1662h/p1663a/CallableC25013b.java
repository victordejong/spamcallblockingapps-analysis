package p193e.p1577m.p1578a.p1642f.p1662h.p1663a;

import android.content.SharedPreferences;
import java.util.concurrent.Callable;
/* renamed from: e.m.a.f.h.a.b */
/* loaded from: classes2-dex2jar.jar:e/m/a/f/h/a/b.class */
public final class CallableC25013b implements Callable<Integer> {

    /* renamed from: a */
    public final /* synthetic */ SharedPreferences f69982a;

    /* renamed from: b */
    public final /* synthetic */ String f69983b;

    /* renamed from: c */
    public final /* synthetic */ Integer f69984c;

    public CallableC25013b(SharedPreferences sharedPreferences, String str, Integer num) {
        this.f69982a = sharedPreferences;
        this.f69983b = str;
        this.f69984c = num;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ Integer call() throws Exception {
        return Integer.valueOf(this.f69982a.getInt(this.f69983b, this.f69984c.intValue()));
    }
}
