package p000;

import android.net.Uri;
import android.os.Bundle;
import p000.C1342e3;
/* renamed from: e3$a$e */
/* loaded from: classes-dex2jar.jar:e3$a$e.class */
public class e3$a$e implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ int f6251a;

    /* renamed from: b */
    public final /* synthetic */ Uri f6252b;

    /* renamed from: c */
    public final /* synthetic */ boolean f6253c;

    /* renamed from: d */
    public final /* synthetic */ Bundle f6254d;

    /* renamed from: f */
    public final /* synthetic */ C1342e3.a f6255f;

    public e3$a$e(C1342e3.a aVar, int i, Uri uri, boolean z, Bundle bundle) {
        this.f6255f = aVar;
        this.f6251a = i;
        this.f6252b = uri;
        this.f6253c = z;
        this.f6254d = bundle;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f6255f.b.m2900f(this.f6251a, this.f6252b, this.f6253c, this.f6254d);
        throw null;
    }
}
