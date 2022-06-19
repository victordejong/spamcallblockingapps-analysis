package p193e.p1577m.p1578a.p1642f.p1662h.p1663a;

import android.content.SharedPreferences;
import java.util.concurrent.Callable;
/* renamed from: e.m.a.f.h.a.d */
/* loaded from: classes2-dex2jar.jar:e/m/a/f/h/a/d.class */
public final class CallableC25015d implements Callable<String> {

    /* renamed from: a */
    public final /* synthetic */ SharedPreferences f69988a;

    /* renamed from: b */
    public final /* synthetic */ String f69989b;

    /* renamed from: c */
    public final /* synthetic */ String f69990c;

    public CallableC25015d(SharedPreferences sharedPreferences, String str, String str2) {
        this.f69988a = sharedPreferences;
        this.f69989b = str;
        this.f69990c = str2;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ String call() throws Exception {
        return this.f69988a.getString(this.f69989b, this.f69990c);
    }
}
