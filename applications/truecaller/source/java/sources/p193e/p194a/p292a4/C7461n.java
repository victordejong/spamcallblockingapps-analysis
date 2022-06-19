package p193e.p194a.p292a4;

import android.os.Build;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.a.a4.n */
/* loaded from: classes10-dex2jar.jar:e/a/a4/n.class */
public final class C7461n implements AbstractC7460m {

    /* renamed from: a */
    public final String f23709a;

    /* renamed from: b */
    public final boolean f23710b;

    public C7461n(int i) {
        this.f23709a = C22128a.m8611i2("Minimum sdk version ", i);
        this.f23710b = Build.VERSION.SDK_INT >= i;
    }

    @Override // p193e.p194a.p292a4.AbstractC7460m
    /* renamed from: a */
    public boolean mo29587a() {
        return false;
    }

    @Override // p193e.p194a.p292a4.AbstractC7460m
    /* renamed from: b */
    public boolean mo29586b() {
        return this.f23710b;
    }

    @Override // p193e.p194a.p292a4.AbstractC7460m
    public String getName() {
        return this.f23709a;
    }
}
