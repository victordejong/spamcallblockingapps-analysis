package p081h.p203i.p204a.p206b.p209j;

import android.content.Context;
import java.io.Closeable;
import java.io.IOException;
import javax.inject.Singleton;
import p081h.p203i.p204a.p206b.p209j.p217y.p219k.AbstractC6661c;
@Singleton
/* renamed from: h.i.a.b.j.s */
/* loaded from: classes2-dex2jar.jar:h/i/a/b/j/s.class */
public abstract class AbstractC6587s implements Closeable {

    /* renamed from: h.i.a.b.j.s$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/b/j/s$a.class */
    public interface AbstractC6588a {
        /* renamed from: a */
        AbstractC6588a mo22273a(Context context);

        AbstractC6587s build();
    }

    /* renamed from: a */
    public abstract AbstractC6661c mo22275a();

    /* renamed from: b */
    public abstract C6586r mo22274b();

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        mo22275a().close();
    }
}
