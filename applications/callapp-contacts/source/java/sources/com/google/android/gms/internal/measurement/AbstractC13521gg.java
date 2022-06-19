package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.C13512fy;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.ServiceConfigurationError;
import java.util.ServiceLoader;
import java.util.logging.Level;
import java.util.logging.Logger;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.measurement.gg */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/gg.class */
public abstract class AbstractC13521gg<T extends C13512fy> {

    /* renamed from: a */
    private static final Logger f50756a = Logger.getLogger(AbstractC13506fs.class.getName());

    /* renamed from: b */
    private static final String f50757b = "com.google.protobuf.BlazeGeneratedExtensionRegistryLiteLoader";

    AbstractC13521gg() {
    }

    /* renamed from: a */
    public static <T extends C13512fy> T m12781a(Class<T> cls) {
        String str;
        ClassLoader classLoader = AbstractC13521gg.class.getClassLoader();
        if (cls.equals(C13512fy.class)) {
            str = f50757b;
        } else if (!cls.getPackage().equals(AbstractC13521gg.class.getPackage())) {
            throw new IllegalArgumentException(cls.getName());
        } else {
            str = String.format("%s.BlazeGenerated%sLoader", cls.getPackage().getName(), cls.getSimpleName());
        }
        try {
            try {
                try {
                    try {
                        try {
                            return cls.cast(((AbstractC13521gg) Class.forName(str, true, classLoader).getConstructor(new Class[0]).newInstance(new Object[0])).m12782a());
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
            Iterator it2 = ServiceLoader.load(AbstractC13521gg.class, classLoader).iterator();
            ArrayList arrayList = new ArrayList();
            while (it2.hasNext()) {
                try {
                    arrayList.add(cls.cast(((AbstractC13521gg) it2.next()).m12782a()));
                } catch (ServiceConfigurationError e6) {
                    Logger logger = f50756a;
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
    protected abstract T m12782a();
}
