package p000;

import android.os.Bundle;
import p000.C1342e3;
/* renamed from: e3$a$d */
/* loaded from: classes-dex2jar.jar:e3$a$d.class */
public class e3$a$d implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ String f6248a;

    /* renamed from: b */
    public final /* synthetic */ Bundle f6249b;

    /* renamed from: c */
    public final /* synthetic */ C1342e3.a f6250c;

    public e3$a$d(C1342e3.a aVar, String str, Bundle bundle) {
        this.f6250c = aVar;
        this.f6248a = str;
        this.f6249b = bundle;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f6250c.b.m2901e(this.f6248a, this.f6249b);
        throw null;
    }
}
