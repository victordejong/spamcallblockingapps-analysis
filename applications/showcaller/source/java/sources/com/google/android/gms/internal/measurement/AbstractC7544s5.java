package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.C7448l5;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.ServiceConfigurationError;
import java.util.ServiceLoader;
import java.util.logging.Level;
import java.util.logging.Logger;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.measurement.s5 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/s5.class */
public abstract class AbstractC7544s5<T extends C7448l5> {

    /* renamed from: a */
    private static final Logger f34676a = Logger.getLogger(AbstractC7364f5.class.getName());

    /* renamed from: b */
    private static final String f34677b = "com.google.protobuf.BlazeGeneratedExtensionRegistryLiteLoader";

    AbstractC7544s5() {
    }

    /* renamed from: b */
    public static <T extends C7448l5> T m6917b(Class<T> cls) {
        String str;
        ClassLoader classLoader = AbstractC7544s5.class.getClassLoader();
        if (cls.equals(C7448l5.class)) {
            str = f34677b;
        } else if (!cls.getPackage().equals(AbstractC7544s5.class.getPackage())) {
            throw new IllegalArgumentException(cls.getName());
        } else {
            str = String.format("%s.BlazeGenerated%sLoader", cls.getPackage().getName(), cls.getSimpleName());
        }
        try {
            try {
                try {
                    try {
                        try {
                            return cls.cast(((AbstractC7544s5) Class.forName(str, true, classLoader).getConstructor(new Class[0]).newInstance(new Object[0])).m6918a());
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
            Iterator it = ServiceLoader.load(AbstractC7544s5.class, classLoader).iterator();
            ArrayList arrayList = new ArrayList();
            while (it.hasNext()) {
                try {
                    arrayList.add(cls.cast(((AbstractC7544s5) it.next()).m6918a()));
                } catch (ServiceConfigurationError e6) {
                    Logger logger = f34676a;
                    Level level = Level.SEVERE;
                    String simpleName = cls.getSimpleName();
                    logger.logp(level, "com.google.protobuf.GeneratedExtensionRegistryLoader", "load", simpleName.length() != 0 ? "Unable to load ".concat(simpleName) : new String("Unable to load "), (Throwable) e6);
                }
            }
            if (arrayList.size() == 1) {
                return (T) arrayList.get(0);
            }
            if (arrayList.size() == 0) {
                return null;
            }
            try {
                return (T) cls.getMethod("combine", Collection.class).invoke(null, arrayList);
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
    protected abstract T m6918a();
}
