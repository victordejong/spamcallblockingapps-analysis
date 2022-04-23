package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzejj;
import com.google.android.gms.internal.ads.zzejm;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.ServiceConfigurationError;
import java.util.ServiceLoader;
import java.util.logging.Level;
import java.util.logging.Logger;
/* renamed from: c.d.b.d.g.a.t70 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/t70.class */
public abstract class t70<T extends zzejm> {

    /* renamed from: a */
    public static final Logger f15350a = Logger.getLogger(zzejj.class.getName());

    /* renamed from: b */
    public static String f15351b = "com.google.protobuf.BlazeGeneratedExtensionRegistryLiteLoader";

    /* renamed from: a */
    public static <T extends zzejm> T m26326a(Class<T> cls) {
        String str;
        ClassLoader classLoader = t70.class.getClassLoader();
        if (cls.equals(zzejm.class)) {
            str = f15351b;
        } else if (cls.getPackage().equals(t70.class.getPackage())) {
            str = String.format("%s.BlazeGenerated%sLoader", cls.getPackage().getName(), cls.getSimpleName());
        } else {
            throw new IllegalArgumentException(cls.getName());
        }
        try {
            try {
                try {
                    try {
                        try {
                            return cls.cast(((t70) Class.forName(str, true, classLoader).getConstructor(new Class[0]).newInstance(new Object[0])).m26327a());
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
            Iterator it = ServiceLoader.load(t70.class, classLoader).iterator();
            ArrayList arrayList = new ArrayList();
            while (it.hasNext()) {
                try {
                    arrayList.add(cls.cast(((t70) it.next()).m26327a()));
                } catch (ServiceConfigurationError e6) {
                    Logger logger = f15350a;
                    Level level = Level.SEVERE;
                    String valueOf = String.valueOf(cls.getSimpleName());
                    logger.logp(level, "com.google.protobuf.GeneratedExtensionRegistryLoader", "load", valueOf.length() != 0 ? "Unable to load ".concat(valueOf) : new String("Unable to load "), (Throwable) e6);
                }
            }
            if (arrayList.size() == 1) {
                return (T) ((zzejm) arrayList.get(0));
            }
            if (arrayList.size() == 0) {
                return null;
            }
            try {
                return (T) ((zzejm) cls.getMethod("combine", Collection.class).invoke(null, arrayList));
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
    public abstract T m26327a();
}
