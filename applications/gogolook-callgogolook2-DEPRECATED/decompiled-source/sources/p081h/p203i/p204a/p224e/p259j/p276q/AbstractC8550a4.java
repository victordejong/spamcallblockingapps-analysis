package p081h.p203i.p204a.p224e.p259j.p276q;

import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.ServiceConfigurationError;
import java.util.ServiceLoader;
import java.util.logging.Level;
import java.util.logging.Logger;
import p081h.p203i.p204a.p224e.p259j.p276q.C8691o3;
/* renamed from: h.i.a.e.j.q.a4 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/a4.class */
public abstract class AbstractC8550a4<T extends C8691o3> {

    /* renamed from: a */
    public static final Logger f19603a = Logger.getLogger(AbstractC8632i3.class.getName());

    /* renamed from: b */
    public static String f19604b = "com.google.protobuf.BlazeGeneratedExtensionRegistryLiteLoader";

    /* renamed from: a */
    public static <T extends C8691o3> T m17842a(Class<T> cls) {
        String str;
        ClassLoader classLoader = AbstractC8550a4.class.getClassLoader();
        if (cls.equals(C8691o3.class)) {
            str = f19604b;
        } else if (cls.getPackage().equals(AbstractC8550a4.class.getPackage())) {
            str = String.format("%s.BlazeGenerated%sLoader", cls.getPackage().getName(), cls.getSimpleName());
        } else {
            throw new IllegalArgumentException(cls.getName());
        }
        try {
            try {
                try {
                    try {
                        try {
                            return cls.cast(((AbstractC8550a4) Class.forName(str, true, classLoader).getConstructor(new Class[0]).newInstance(new Object[0])).m17843a());
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
            Iterator it = ServiceLoader.load(AbstractC8550a4.class, classLoader).iterator();
            ArrayList arrayList = new ArrayList();
            while (it.hasNext()) {
                try {
                    arrayList.add(cls.cast(((AbstractC8550a4) it.next()).m17843a()));
                } catch (ServiceConfigurationError e6) {
                    Logger logger = f19603a;
                    Level level = Level.SEVERE;
                    String valueOf = String.valueOf(cls.getSimpleName());
                    logger.logp(level, "com.google.protobuf.GeneratedExtensionRegistryLoader", "load", valueOf.length() != 0 ? "Unable to load ".concat(valueOf) : new String("Unable to load "), (Throwable) e6);
                }
            }
            if (arrayList.size() == 1) {
                return (T) ((C8691o3) arrayList.get(0));
            }
            if (arrayList.size() == 0) {
                return null;
            }
            try {
                return (T) ((C8691o3) cls.getMethod("combine", Collection.class).invoke(null, arrayList));
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
    public abstract T m17843a();
}
