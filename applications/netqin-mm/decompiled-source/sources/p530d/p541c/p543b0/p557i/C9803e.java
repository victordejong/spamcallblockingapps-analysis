package p530d.p541c.p543b0.p557i;

import io.reactivex.exceptions.ProtocolViolationException;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
import p611j.p612a.AbstractC10434d;
/* renamed from: d.c.b0.i.e */
/* loaded from: classes2-dex2jar.jar:d/c/b0/i/e.class */
public final class C9803e {
    /* renamed from: a */
    public static String m2004a(String str) {
        return "It is not allowed to subscribe with a(n) " + str + " multiple times. Please create a fresh instance of " + str + " and subscribe that to the target source instead.";
    }

    /* renamed from: a */
    public static void m2005a(Class<?> cls) {
        C9815a.m1923b(new ProtocolViolationException(m2004a(cls.getName())));
    }

    /* renamed from: a */
    public static boolean m2003a(AtomicReference<AbstractC9861b> atomicReference, AbstractC9861b bVar, Class<?> cls) {
        C9650a.m2095a(bVar, "next is null");
        if (atomicReference.compareAndSet(null, bVar)) {
            return true;
        }
        bVar.dispose();
        if (atomicReference.get() == DisposableHelper.DISPOSED) {
            return false;
        }
        m2005a(cls);
        return false;
    }

    /* renamed from: a */
    public static boolean m2002a(AtomicReference<AbstractC10434d> atomicReference, AbstractC10434d dVar, Class<?> cls) {
        C9650a.m2095a(dVar, "next is null");
        if (atomicReference.compareAndSet(null, dVar)) {
            return true;
        }
        dVar.cancel();
        if (atomicReference.get() == SubscriptionHelper.CANCELLED) {
            return false;
        }
        m2005a(cls);
        return false;
    }
}
