package p000;

import android.os.Bundle;
import p000.C1342e3;
/* renamed from: e3$a$a */
/* loaded from: classes-dex2jar.jar:e3$a$a.class */
public class e3$a$a implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ int f6240a;

    /* renamed from: b */
    public final /* synthetic */ Bundle f6241b;

    /* renamed from: c */
    public final /* synthetic */ C1342e3.a f6242c;

    public e3$a$a(C1342e3.a aVar, int i, Bundle bundle) {
        this.f6242c = aVar;
        this.f6240a = i;
        this.f6241b = bundle;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f6242c.b.m2902d(this.f6240a, this.f6241b);
        throw null;
    }
}
