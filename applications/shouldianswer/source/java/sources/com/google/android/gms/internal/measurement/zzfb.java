package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzeq;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.ServiceConfigurationError;
import java.util.ServiceLoader;
import java.util.logging.Level;
import java.util.logging.Logger;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzfb.class */
public abstract class zzfb<T extends zzeq> {
    private static final Logger zza = Logger.getLogger(zzen.class.getName());
    private static String zzb = "com.google.protobuf.BlazeGeneratedExtensionRegistryLiteLoader";

    zzfb() {
    }

    public static <T extends zzeq> T zza(Class<T> cls) {
        String str;
        ClassLoader classLoader = zzfb.class.getClassLoader();
        if (cls.equals(zzeq.class)) {
            str = zzb;
        } else if (!cls.getPackage().equals(zzfb.class.getPackage())) {
            throw new IllegalArgumentException(cls.getName());
        } else {
            str = String.format("%s.BlazeGenerated%sLoader", cls.getPackage().getName(), cls.getSimpleName());
        }
        try {
            try {
                try {
                    try {
                        try {
                            return cls.cast(((zzfb) Class.forName(str, true, classLoader).getConstructor(new Class[0]).newInstance(new Object[0])).zza());
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
            Iterator it = ServiceLoader.load(zzfb.class, classLoader).iterator();
            ArrayList arrayList = new ArrayList();
            while (it.hasNext()) {
                try {
                    arrayList.add(cls.cast(((zzfb) it.next()).zza()));
                } catch (ServiceConfigurationError e6) {
                    Logger logger = zza;
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

    protected abstract T zza();
}
