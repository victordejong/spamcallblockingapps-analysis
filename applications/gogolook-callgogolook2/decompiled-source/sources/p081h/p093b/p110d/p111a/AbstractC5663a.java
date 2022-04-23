package p081h.p093b.p110d.p111a;

import android.content.Context;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.UiThread;
/* renamed from: h.b.d.a.a */
/* loaded from: classes-dex2jar.jar:h/b/d/a/a.class */
public abstract class AbstractC5663a {

    /* renamed from: h.b.d.a.a$b */
    /* loaded from: classes-dex2jar.jar:h/b/d/a/a$b.class */
    public static final class C5665b {

        /* renamed from: a */
        public final Context f14173a;

        public C5665b(Context context) {
            this.f14173a = context;
        }

        @UiThread
        /* renamed from: a */
        public AbstractC5663a m24854a() {
            Context context = this.f14173a;
            if (context != null) {
                return new C5666b(context);
            }
            throw new IllegalArgumentException("Please provide a valid Context.");
        }
    }

    @UiThread
    /* renamed from: a */
    public static C5665b m24855a(@NonNull Context context) {
        return new C5665b(context);
    }

    @UiThread
    /* renamed from: a */
    public abstract void mo24853a();

    @UiThread
    /* renamed from: a */
    public abstract void mo24850a(@NonNull AbstractC5669c cVar);

    @UiThread
    /* renamed from: b */
    public abstract C5670d mo24849b() throws RemoteException;

    @UiThread
    /* renamed from: c */
    public abstract boolean mo24848c();
}
