package p131c.p161d.p170b.p173b.p176i;

import android.content.Context;
import java.io.Closeable;
import java.io.IOException;
import p131c.p161d.p170b.p173b.p176i.p184y.p186k.AbstractC2644c;
/* renamed from: c.d.b.b.i.s */
/* loaded from: classes-dex2jar.jar:c/d/b/b/i/s.class */
public abstract class AbstractC2578s implements Closeable {

    /* renamed from: c.d.b.b.i.s$a */
    /* loaded from: classes-dex2jar.jar:c/d/b/b/i/s$a.class */
    public interface AbstractC2579a {
        /* renamed from: a */
        AbstractC2579a mo29481a(Context context);

        /* renamed from: a */
        AbstractC2578s mo29482a();
    }

    /* renamed from: a */
    public abstract AbstractC2644c mo29484a();

    /* renamed from: b */
    public abstract C2577r mo29483b();

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        mo29484a().close();
    }
}
