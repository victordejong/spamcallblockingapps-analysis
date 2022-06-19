package p121i1;

import android.content.Context;
import android.os.Trace;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import p142k1.C3319a;
/* renamed from: i1.a */
/* loaded from: classes-dex2jar.jar:i1/a.class */
public final class C3063a {

    /* renamed from: d */
    public static volatile C3063a f10397d;

    /* renamed from: e */
    public static final Object f10398e = new Object();

    /* renamed from: c */
    public final Context f10401c;

    /* renamed from: b */
    public final Set<Class<? extends AbstractC3064b<?>>> f10400b = new HashSet();

    /* renamed from: a */
    public final Map<Class<?>, Object> f10399a = new HashMap();

    public C3063a(Context context) {
        this.f10401c = context.getApplicationContext();
    }

    /* renamed from: b */
    public static C3063a m2661b(Context context) {
        if (f10397d == null) {
            synchronized (f10398e) {
                if (f10397d == null) {
                    f10397d = new C3063a(context);
                }
            }
        }
        return f10397d;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public <T> T m2662a(Class<? extends AbstractC3064b<?>> cls, Set<Class<?>> set) {
        Object obj;
        synchronized (f10398e) {
            if (C3319a.m2386a()) {
                Trace.beginSection(cls.getSimpleName());
            }
            if (set.contains(cls)) {
                throw new IllegalStateException(String.format("Cannot initialize %s. Cycle detected.", cls.getName()));
            }
            if (!this.f10399a.containsKey(cls)) {
                set.add(cls);
                AbstractC3064b<?> newInstance = cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                List<Class<? extends AbstractC3064b<?>>> mo2660a = newInstance.mo2660a();
                if (!mo2660a.isEmpty()) {
                    for (Class<? extends AbstractC3064b<?>> cls2 : mo2660a) {
                        if (!this.f10399a.containsKey(cls2)) {
                            m2662a(cls2, set);
                        }
                    }
                }
                Object mo2659b = newInstance.mo2659b(this.f10401c);
                set.remove(cls);
                this.f10399a.put(cls, mo2659b);
                obj = mo2659b;
            } else {
                obj = this.f10399a.get(cls);
            }
            Trace.endSection();
        }
        return obj;
    }
}
