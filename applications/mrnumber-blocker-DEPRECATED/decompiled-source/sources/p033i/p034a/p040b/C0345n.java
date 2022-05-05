package p033i.p034a.p040b;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.ServiceLoader;
import java.util.concurrent.atomic.AtomicReference;
import java.util.function.Function;
import java.util.logging.Level;
import java.util.logging.Logger;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: i.a.b.n */
/* loaded from: classes2-dex2jar.jar:i/a/b/n.class */
public final class C0345n {

    /* renamed from: a */
    private static final Logger f863a = Logger.getLogger(C0345n.class.getName());

    /* renamed from: b */
    private static final AbstractC0340h f864b;

    static {
        AtomicReference atomicReference = new AtomicReference();
        p a = m356a(atomicReference);
        p pVar = a;
        if (Boolean.getBoolean("io.opentelemetry.context.enableStrictContext")) {
            pVar = p.d(a);
        }
        for (Function<? super AbstractC0340h, ? extends AbstractC0340h> function : C0342j.m361a()) {
            pVar = (AbstractC0340h) function.apply(pVar);
        }
        f864b = pVar;
        C0342j.m360b();
        Throwable th = (Throwable) atomicReference.get();
        if (th != null) {
            f863a.log(Level.WARNING, "ContextStorageProvider initialized failed. Using default", th);
        }
    }

    private C0345n() {
    }

    /* renamed from: a */
    static AbstractC0340h m356a(AtomicReference<Throwable> atomicReference) {
        String property = System.getProperty("io.opentelemetry.context.contextStorageProvider", "");
        if ("default".equals(property)) {
            return C0339g.m363a();
        }
        ArrayList<AbstractC0341i> arrayList = new ArrayList();
        Iterator it = ServiceLoader.load(AbstractC0341i.class).iterator();
        while (it.hasNext()) {
            AbstractC0341i iVar = (AbstractC0341i) it.next();
            if (iVar.getClass().getName().equals("io.opentelemetry.sdk.testing.context.SettableContextStorageProvider")) {
                return iVar.get();
            }
            arrayList.add(iVar);
        }
        if (arrayList.isEmpty()) {
            return C0339g.m363a();
        }
        if (!property.isEmpty()) {
            for (AbstractC0341i iVar2 : arrayList) {
                if (iVar2.getClass().getName().equals(property)) {
                    return iVar2.get();
                }
            }
            atomicReference.set(new IllegalStateException("io.opentelemetry.context.ContextStorageProvider property set but no matching class could be found, requested: " + property + " but found providers: " + arrayList));
            return C0339g.m363a();
        } else if (arrayList.size() == 1) {
            return ((AbstractC0341i) arrayList.get(0)).get();
        } else {
            atomicReference.set(new IllegalStateException("Found multiple ContextStorageProvider. Set the io.opentelemetry.context.ContextStorageProvider property to the fully qualified class name of the provider to use. Falling back to default ContextStorage. Found providers: " + arrayList));
            return C0339g.m363a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static AbstractC0340h m355b() {
        return f864b;
    }
}
