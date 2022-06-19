package p000;

import android.os.Bundle;
import p000.C1342e3;
/* renamed from: e3$a$b */
/* loaded from: classes-dex2jar.jar:e3$a$b.class */
public class e3$a$b implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ String f6243a;

    /* renamed from: b */
    public final /* synthetic */ Bundle f6244b;

    /* renamed from: c */
    public final /* synthetic */ C1342e3.a f6245c;

    public e3$a$b(C1342e3.a aVar, String str, Bundle bundle) {
        this.f6245c = aVar;
        this.f6243a = str;
        this.f6244b = bundle;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f6245c.b.m2905a(this.f6243a, this.f6244b);
        throw null;
    }
}
