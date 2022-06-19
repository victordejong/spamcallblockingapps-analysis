package p211q6;

import com.google.firebase.remoteconfig.internal.C1855b;
import java.io.FileOutputStream;
import java.util.concurrent.Callable;
import p222r6.C4218d;
import p222r6.C4221e;
import p222r6.C4225i;
/* renamed from: q6.a */
/* loaded from: classes2-dex2jar.jar:q6/a.class */
public final /* synthetic */ class CallableC4156a implements Callable {

    /* renamed from: a */
    public final /* synthetic */ int f13111a;

    /* renamed from: b */
    public final /* synthetic */ Object f13112b;

    /* renamed from: c */
    public final /* synthetic */ Object f13113c;

    public /* synthetic */ CallableC4156a(Object obj, Object obj2, int i) {
        this.f13111a = i;
        this.f13112b = obj;
        this.f13113c = obj2;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        switch (this.f13111a) {
            case 0:
                C4157b c4157b = (C4157b) this.f13112b;
                C4158c c4158c = (C4158c) this.f13113c;
                C1855b c1855b = c4157b.f13122i;
                synchronized (c1855b.f7025b) {
                    c1855b.f7024a.edit().putLong("fetch_timeout_in_seconds", c4158c.f13124a).putLong("minimum_fetch_interval_in_seconds", c4158c.f13125b).commit();
                }
                return null;
            default:
                C4218d c4218d = (C4218d) this.f13112b;
                C4221e c4221e = (C4221e) this.f13113c;
                C4225i c4225i = c4218d.f13214b;
                synchronized (c4225i) {
                    FileOutputStream openFileOutput = c4225i.f13236a.openFileOutput(c4225i.f13237b, 0);
                    openFileOutput.write(c4221e.toString().getBytes("UTF-8"));
                    openFileOutput.close();
                }
                return null;
        }
    }
}
