package p193e.p1577m.p1578a.p1642f.p1662h.p1663a;

import android.content.SharedPreferences;
import java.util.concurrent.Callable;
/* renamed from: e.m.a.f.h.a.a */
/* loaded from: classes2-dex2jar.jar:e/m/a/f/h/a/a.class */
public final class CallableC25012a implements Callable<Boolean> {

    /* renamed from: a */
    public final /* synthetic */ SharedPreferences f69979a;

    /* renamed from: b */
    public final /* synthetic */ String f69980b;

    /* renamed from: c */
    public final /* synthetic */ Boolean f69981c;

    public CallableC25012a(SharedPreferences sharedPreferences, String str, Boolean bool) {
        this.f69979a = sharedPreferences;
        this.f69980b = str;
        this.f69981c = bool;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ Boolean call() throws Exception {
        return Boolean.valueOf(this.f69979a.getBoolean(this.f69980b, this.f69981c.booleanValue()));
    }
}
