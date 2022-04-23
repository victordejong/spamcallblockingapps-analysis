package p530d.p531a;

import io.grpc.Context;
import java.util.logging.Level;
import java.util.logging.Logger;
/* renamed from: d.a.u0 */
/* loaded from: classes2-dex2jar.jar:d/a/u0.class */
public final class C9315u0 extends Context.AbstractC10290f {

    /* renamed from: a */
    public static final Logger f35895a = Logger.getLogger(C9315u0.class.getName());

    /* renamed from: b */
    public static final ThreadLocal<Context> f35896b = new ThreadLocal<>();

    @Override // io.grpc.Context.AbstractC10290f
    /* renamed from: a */
    public Context mo668a() {
        Context context = f35896b.get();
        Context context2 = context;
        if (context == null) {
            context2 = Context.f37933g;
        }
        return context2;
    }

    @Override // io.grpc.Context.AbstractC10290f
    /* renamed from: a */
    public void mo666a(Context context, Context context2) {
        if (mo668a() != context) {
            f35895a.log(Level.SEVERE, "Context was not attached when detaching", new Throwable().fillInStackTrace());
        }
        if (context2 != Context.f37933g) {
            f35896b.set(context2);
        } else {
            f35896b.set(null);
        }
    }

    @Override // io.grpc.Context.AbstractC10290f
    /* renamed from: b */
    public Context mo665b(Context context) {
        Context a = mo668a();
        f35896b.set(context);
        return a;
    }
}
