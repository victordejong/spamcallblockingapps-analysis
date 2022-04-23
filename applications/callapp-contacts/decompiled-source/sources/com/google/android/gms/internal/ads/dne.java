package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dmt;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.ServiceConfigurationError;
import java.util.ServiceLoader;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dne.class */
abstract class dne<T extends dmt> {

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f26986a = Logger.getLogger(zzemk.class.getName());

    /* renamed from: b  reason: collision with root package name */
    private static String f26987b = "com.google.protobuf.BlazeGeneratedExtensionRegistryLiteLoader";

    dne() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T extends dmt> T a(Class<T> cls) {
        String str;
        ClassLoader classLoader = dne.class.getClassLoader();
        if (cls.equals(dmt.class)) {
            str = f26987b;
        } else if (cls.getPackage().equals(dne.class.getPackage())) {
            str = String.format("%s.BlazeGenerated%sLoader", cls.getPackage().getName(), cls.getSimpleName());
        } else {
            throw new IllegalArgumentException(cls.getName());
        }
        try {
            try {
                try {
                    try {
                        try {
                            return cls.cast(((dne) Class.forName(str, true, classLoader).getConstructor(new Class[0]).newInstance(new Object[0])).a());
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
            Iterator it2 = ServiceLoader.load(dne.class, classLoader).iterator();
            ArrayList arrayList = new ArrayList();
            while (it2.hasNext()) {
                try {
                    arrayList.add(cls.cast(((dne) it2.next()).a()));
                } catch (ServiceConfigurationError e6) {
                    Logger logger = f26986a;
                    Level level = Level.SEVERE;
                    String valueOf = String.valueOf(cls.getSimpleName());
                    logger.logp(level, "com.google.protobuf.GeneratedExtensionRegistryLoader", "load", valueOf.length() != 0 ? "Unable to load ".concat(valueOf) : new String("Unable to load "), (Throwable) e6);
                }
            }
            if (arrayList.size() == 1) {
                return (T) ((dmt) arrayList.get(0));
            }
            if (arrayList.size() == 0) {
                return null;
            }
            try {
                return (T) ((dmt) cls.getMethod("combine", Collection.class).invoke(null, arrayList));
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
