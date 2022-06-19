package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.bc2;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.ServiceConfigurationError;
import java.util.ServiceLoader;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/jc2.class */
public abstract class jc2<T extends bc2> {

    /* renamed from: a */
    private static final Logger f6885a = Logger.getLogger(wb2.class.getName());

    /* renamed from: b */
    private static final String f6886b = "com.google.protobuf.BlazeGeneratedExtensionRegistryLiteLoader";

    jc2() {
    }

    /* renamed from: b */
    public static <T extends bc2> T m7045b(Class<T> cls) {
        String str;
        ClassLoader classLoader = jc2.class.getClassLoader();
        if (cls.equals(bc2.class)) {
            str = f6886b;
        } else if (!cls.getPackage().equals(jc2.class.getPackage())) {
            throw new IllegalArgumentException(cls.getName());
        } else {
            str = String.format("%s.BlazeGenerated%sLoader", cls.getPackage().getName(), cls.getSimpleName());
        }
        try {
            try {
                try {
                    try {
                        try {
                            return cls.cast(((jc2) Class.forName(str, true, classLoader).getConstructor(new Class[0]).newInstance(new Object[0])).m7046a());
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
            Iterator it = ServiceLoader.load(jc2.class, classLoader).iterator();
            ArrayList arrayList = new ArrayList();
            while (it.hasNext()) {
                try {
                    arrayList.add(cls.cast(((jc2) it.next()).m7046a()));
                } catch (ServiceConfigurationError e6) {
                    Logger logger = f6885a;
                    Level level = Level.SEVERE;
                    String valueOf = String.valueOf(cls.getSimpleName());
                    logger.logp(level, "com.google.protobuf.GeneratedExtensionRegistryLoader", "load", valueOf.length() != 0 ? "Unable to load ".concat(valueOf) : new String("Unable to load "), (Throwable) e6);
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
    protected abstract T m7046a();
}
