package com.criteo.publisher.p027t;

import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.criteo.publisher.p020a0.C1928p;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import p081h.p444n.p446b.AbstractC10822d;
import p081h.p444n.p446b.C10817a;
import p081h.p444n.p446b.C10818b;
import p081h.p444n.p446b.C10824e;
/* renamed from: com.criteo.publisher.t.z */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/t/z.class */
public class C2149z extends AbstractC2141u {
    @Nullable
    @GuardedBy("queueLock")

    /* renamed from: b */
    public AbstractC10822d<AbstractC2127m> f2451b;
    @NonNull

    /* renamed from: e */
    public final C2132p f2454e;

    /* renamed from: a */
    public final Object f2450a = new Object();
    @Nullable

    /* renamed from: c */
    public Method f2452c = null;
    @Nullable

    /* renamed from: d */
    public C10824e f2453d = null;

    public C2149z(@NonNull C2132p pVar) {
        this.f2454e = pVar;
    }

    @NonNull
    /* renamed from: a */
    private C10824e m35601a(@NonNull C10818b bVar) throws ReflectiveOperationException, ClassCastException {
        if (this.f2453d == null) {
            Field declaredField = C10818b.class.getDeclaredField("a");
            declaredField.setAccessible(true);
            this.f2453d = (C10824e) declaredField.get(bVar);
        }
        return this.f2453d;
    }

    /* renamed from: b */
    private void m35600b() {
        if (this.f2451b == null) {
            this.f2451b = this.f2454e.m35650a();
        }
    }

    @NonNull
    /* renamed from: c */
    private Method m35599c() throws ReflectiveOperationException {
        if (this.f2452c == null) {
            Method declaredMethod = C10824e.class.getDeclaredMethod("g", new Class[0]);
            this.f2452c = declaredMethod;
            declaredMethod.setAccessible(true);
        }
        return this.f2452c;
    }

    @Override // com.criteo.publisher.p027t.AbstractC2141u
    /* renamed from: a */
    public int mo35604a() {
        synchronized (this.f2450a) {
            m35600b();
            if (!(this.f2451b instanceof C10818b)) {
                return 0;
            }
            try {
                return ((Integer) m35599c().invoke(m35601a((C10818b) this.f2451b), new Object[0])).intValue();
            } catch (Exception e) {
                C1928p.m36001a((Throwable) e);
                return 0;
            }
        }
    }

    @Override // com.criteo.publisher.p027t.AbstractC2141u
    @NonNull
    /* renamed from: a */
    public List<AbstractC2127m> mo35603a(int i) {
        ArrayList arrayList;
        synchronized (this.f2450a) {
            m35600b();
            arrayList = new ArrayList();
            for (int i2 = 0; i2 < i; i2++) {
                try {
                    AbstractC2127m peek = this.f2451b.peek();
                    if (peek == null) {
                        break;
                    }
                    arrayList.add(peek);
                    this.f2451b.remove();
                } catch (C10817a e) {
                    C1928p.m36001a((Throwable) e);
                    return arrayList;
                }
            }
        }
        return arrayList;
    }

    @Override // com.criteo.publisher.p027t.AbstractC2141u
    /* renamed from: a */
    public boolean mo35602a(@NonNull AbstractC2127m mVar) {
        synchronized (this.f2450a) {
            m35600b();
            try {
                this.f2451b.add(mVar);
            } catch (C10817a e) {
                C1928p.m36001a((Throwable) e);
                return false;
            }
        }
        return true;
    }
}
