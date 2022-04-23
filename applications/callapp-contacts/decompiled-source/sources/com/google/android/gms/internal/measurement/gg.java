package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.fy;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.ServiceConfigurationError;
import java.util.ServiceLoader;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/gg.class */
abstract class gg<T extends fy> {

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f29056a = Logger.getLogger(fs.class.getName());

    /* renamed from: b  reason: collision with root package name */
    private static final String f29057b = "com.google.protobuf.BlazeGeneratedExtensionRegistryLiteLoader";

    gg() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T extends fy> T a(Class<T> cls) {
        String str;
        ClassLoader classLoader = gg.class.getClassLoader();
        if (cls.equals(fy.class)) {
            str = f29057b;
        } else if (cls.getPackage().equals(gg.class.getPackage())) {
            str = String.format("%s.BlazeGenerated%sLoader", cls.getPackage().getName(), cls.getSimpleName());
        } else {
            throw new IllegalArgumentException(cls.getName());
        }
        try {
            try {
                try {
                    try {
                        try {
                            return cls.cast(((gg) Class.forName(str, true, classLoader).getConstructor(new Class[0]).newInstance(new Object[0])).a());
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
            Iterator it2 = ServiceLoader.load(gg.class, classLoader).iterator();
            ArrayList arrayList = new ArrayList();
            while (it2.hasNext()) {
                try {
                    arrayList.add(cls.cast(((gg) it2.next()).a()));
                } catch (ServiceConfigurationError e6) {
                    Logger logger = f29056a;
                    Level level = Level.SEVERE;
                    String valueOf = String.valueOf(cls.getSimpleName());
                    logger.logp(level, "com.google.protobuf.GeneratedExtensionRegistryLoader", "load", valueOf.length() != 0 ? "Unable to load ".concat(valueOf) : new String("Unable to load "), (Throwable) e6);
                }
            }
            if (arrayList.size() == 1) {
                return (T) ((fy) arrayList.get(0));
            }
            if (arrayList.size() == 0) {
                return null;
            }
            try {
                return (T) ((fy) cls.getMethod("combine", Collection.class).invoke(null, arrayList));
            } catch (IllegalAccessException e7) {
                throw new IllegalStateException(e7);
            } catch (NoSuchMethodException e8) {
                throw new IllegalStateException(e8);
            } catch (InvocationTargetException e9) {
                throw new IllegalStateException(e9);
            }
        }
    }

    protected abstract T a();
}
