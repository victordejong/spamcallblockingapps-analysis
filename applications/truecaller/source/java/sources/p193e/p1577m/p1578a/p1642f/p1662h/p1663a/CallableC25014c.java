package p193e.p1577m.p1578a.p1642f.p1662h.p1663a;

import android.content.SharedPreferences;
import java.util.concurrent.Callable;
/* renamed from: e.m.a.f.h.a.c */
/* loaded from: classes2-dex2jar.jar:e/m/a/f/h/a/c.class */
public final class CallableC25014c implements Callable<Long> {

    /* renamed from: a */
    public final /* synthetic */ SharedPreferences f69985a;

    /* renamed from: b */
    public final /* synthetic */ String f69986b;

    /* renamed from: c */
    public final /* synthetic */ Long f69987c;

    public CallableC25014c(SharedPreferences sharedPreferences, String str, Long l) {
        this.f69985a = sharedPreferences;
        this.f69986b = str;
        this.f69987c = l;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ Long call() throws Exception {
        return Long.valueOf(this.f69985a.getLong(this.f69986b, this.f69987c.longValue()));
    }
}
