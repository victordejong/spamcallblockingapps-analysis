package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.C2107e5;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.ServiceConfigurationError;
import java.util.ServiceLoader;
import java.util.logging.Level;
import java.util.logging.Logger;
/* renamed from: com.google.android.gms.internal.measurement.l5 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/l5.class */
abstract class AbstractC2144l5<T extends C2107e5> {

    /* renamed from: a */
    private static final Logger f9783a = Logger.getLogger(y4.class.getName());

    /* renamed from: b */
    private static final String f9784b = "com.google.protobuf.BlazeGeneratedExtensionRegistryLiteLoader";

    AbstractC2144l5() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static <T extends C2107e5> T m4267b(Class<T> cls) {
        String str;
        ClassLoader classLoader = AbstractC2144l5.class.getClassLoader();
        if (cls.equals(C2107e5.class)) {
            str = f9784b;
        } else if (cls.getPackage().equals(AbstractC2144l5.class.getPackage())) {
            str = String.format("%s.BlazeGenerated%sLoader", cls.getPackage().getName(), cls.getSimpleName());
        } else {
            throw new IllegalArgumentException(cls.getName());
        }
        try {
            try {
                try {
                    try {
                        try {
                            return cls.cast(((AbstractC2144l5) Class.forName(str, true, classLoader).getConstructor(new Class[0]).newInstance(new Object[0])).m4268a());
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
            Iterator it = ServiceLoader.load(AbstractC2144l5.class, classLoader).iterator();
            ArrayList arrayList = new ArrayList();
            while (it.hasNext()) {
                try {
                    arrayList.add(cls.cast(((AbstractC2144l5) it.next()).m4268a()));
                } catch (ServiceConfigurationError e6) {
                    Logger logger = f9783a;
                    Level level = Level.SEVERE;
                    String valueOf = String.valueOf(cls.getSimpleName());
                    logger.logp(level, "com.google.protobuf.GeneratedExtensionRegistryLoader", "load", valueOf.length() != 0 ? "Unable to load ".concat(valueOf) : new String("Unable to load "), (Throwable) e6);
                }
            }
            if (arrayList.size() == 1) {
                return (T) ((C2107e5) arrayList.get(0));
            }
            if (arrayList.size() == 0) {
                return null;
            }
            try {
                return (T) ((C2107e5) cls.getMethod("combine", Collection.class).invoke(null, arrayList));
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
    protected abstract T m4268a();
}
