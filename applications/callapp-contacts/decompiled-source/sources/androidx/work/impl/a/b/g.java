package androidx.work.impl.a.b;

import android.content.Context;
import androidx.work.impl.utils.b.a;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/a/b/g.class */
public final class g {
    private static g e;

    /* renamed from: a  reason: collision with root package name */
    public a f6011a;

    /* renamed from: b  reason: collision with root package name */
    public b f6012b;

    /* renamed from: c  reason: collision with root package name */
    public e f6013c;

    /* renamed from: d  reason: collision with root package name */
    public f f6014d;

    private g(Context context, a aVar) {
        Context applicationContext = context.getApplicationContext();
        this.f6011a = new a(applicationContext, aVar);
        this.f6012b = new b(applicationContext, aVar);
        this.f6013c = new e(applicationContext, aVar);
        this.f6014d = new f(applicationContext, aVar);
    }

    public static g a(Context context, a aVar) {
        g gVar;
        synchronized (g.class) {
            try {
                if (e == null) {
                    e = new g(context, aVar);
                }
                gVar = e;
            } catch (Throwable th) {
                throw th;
            }
        }
        return gVar;
    }
}
