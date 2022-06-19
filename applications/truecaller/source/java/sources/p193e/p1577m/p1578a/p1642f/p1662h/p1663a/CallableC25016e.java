package p193e.p1577m.p1578a.p1642f.p1662h.p1663a;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.concurrent.Callable;
/* renamed from: e.m.a.f.h.a.e */
/* loaded from: classes2-dex2jar.jar:e/m/a/f/h/a/e.class */
public final class CallableC25016e implements Callable<SharedPreferences> {

    /* renamed from: a */
    public final /* synthetic */ Context f69991a;

    public CallableC25016e(Context context) {
        this.f69991a = context;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ SharedPreferences call() throws Exception {
        return this.f69991a.getSharedPreferences("google_sdk_flags", 0);
    }
}
