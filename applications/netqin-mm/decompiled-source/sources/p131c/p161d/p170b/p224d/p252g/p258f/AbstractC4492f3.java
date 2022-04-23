package p131c.p161d.p170b.p224d.p252g.p258f;

import com.google.android.gms.internal.measurement.zzhi;
import com.google.android.gms.internal.measurement.zzhl;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.ServiceConfigurationError;
import java.util.ServiceLoader;
import java.util.logging.Level;
import java.util.logging.Logger;
/* renamed from: c.d.b.d.g.f.f3 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/f/f3.class */
public abstract class AbstractC4492f3<T extends zzhl> {

    /* renamed from: a */
    public static final Logger f16743a = Logger.getLogger(zzhi.class.getName());

    /* renamed from: b */
    public static String f16744b = "com.google.protobuf.BlazeGeneratedExtensionRegistryLiteLoader";

    /* renamed from: a */
    public static <T extends zzhl> T m25496a(Class<T> cls) {
        String str;
        ClassLoader classLoader = AbstractC4492f3.class.getClassLoader();
        if (cls.equals(zzhl.class)) {
            str = f16744b;
        } else if (cls.getPackage().equals(AbstractC4492f3.class.getPackage())) {
            str = String.format("%s.BlazeGenerated%sLoader", cls.getPackage().getName(), cls.getSimpleName());
        } else {
            throw new IllegalArgumentException(cls.getName());
        }
        try {
            try {
                try {
                    try {
                        try {
                            return cls.cast(((AbstractC4492f3) Class.forName(str, true, classLoader).getConstructor(new Class[0]).newInstance(new Object[0])).m25497a());
                        } catch (InstantiationException e) {
                            throw new IllegalStateException(e);
                        }
                    } catch (NoSuchMethodException e2) {
                        throw new IllegalStateException(e2);
                    }
                } catch (InvocationTargetException e3) {
                    throw new IllegalStateException(e3);
                }
            } catch (IllegalAccessException e4) {
                throw new IllegalStateException(e4);
            }
        } catch (ClassNotFoundException e5) {
            Iterator it = ServiceLoader.load(AbstractC4492f3.class, classLoader).iterator();
            ArrayList arrayList = new ArrayList();
            while (it.hasNext()) {
                try {
                    arrayList.add(cls.cast(((AbstractC4492f3) it.next()).m25497a()));
                } catch (ServiceConfigurationError e6) {
                    Logger logger = f16743a;
                    Level level = Level.SEVERE;
                    String valueOf = String.valueOf(cls.getSimpleName());
                    logger.logp(level, "com.google.protobuf.GeneratedExtensionRegistryLoader", "load", valueOf.length() != 0 ? "Unable to load ".concat(valueOf) : new String("Unable to load "), (Throwable) e6);
                }
            }
            if (arrayList.size() == 1) {
                return (T) ((zzhl) arrayList.get(0));
            }
            if (arrayList.size() == 0) {
                return null;
            }
            try {
                return (T) ((zzhl) cls.getMethod("combine", Collection.class).invoke(null, arrayList));
            } catch (IllegalAccessException e7) {
                throw new IllegalStateException(e7);
            } catch (NoSuchMethodException e8) {
                throw new IllegalStateException(e8);
            } catch (InvocationTargetException e9) {
                throw new IllegalStateException(e9);
            }
        }
    }

    /* renamed from: a */
    public abstract T m25497a();
}
