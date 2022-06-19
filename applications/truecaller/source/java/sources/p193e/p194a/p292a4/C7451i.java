package p193e.p194a.p292a4;

import android.os.Build;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.a.a4.i */
/* loaded from: classes10-dex2jar.jar:e/a/a4/i.class */
public final class C7451i implements AbstractC7460m {

    /* renamed from: a */
    public final String f23651a;

    /* renamed from: b */
    public final boolean f23652b;

    public C7451i(int i) {
        this.f23651a = C22128a.m8611i2("Sdk version below ", i);
        this.f23652b = Build.VERSION.SDK_INT < i;
    }

    @Override // p193e.p194a.p292a4.AbstractC7460m
    /* renamed from: a */
    public boolean mo29587a() {
        return false;
    }

    @Override // p193e.p194a.p292a4.AbstractC7460m
    /* renamed from: b */
    public boolean mo29586b() {
        return this.f23652b;
    }

    @Override // p193e.p194a.p292a4.AbstractC7460m
    public String getName() {
        return this.f23651a;
    }
}
