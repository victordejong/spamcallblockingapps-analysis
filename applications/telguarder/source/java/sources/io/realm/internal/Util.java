package io.realm.internal;

import android.os.Build;
import com.facebook.share.internal.MessengerShareContentUtility;
import io.realm.RealmModel;
import io.realm.RealmObject;
import io.realm.internal.android.AndroidCapabilities;
import io.realm.log.RealmLog;
import java.io.File;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import javax.annotation.Nullable;
/* loaded from: classes2-dex2jar.jar:io/realm/internal/Util.class */
public class Util {
    private static Boolean coroutinesAvailable;
    private static Boolean rxJavaAvailable;

    public static void checkContainsKey(String str, Map<String, ?> map, String str2) {
        if (map.containsKey(str)) {
            return;
        }
        throw new IllegalArgumentException("Key '" + str + "' required in '" + str2 + "'.");
    }

    public static void checkEmpty(String str, String str2) {
        if (!isEmptyString(str)) {
            return;
        }
        throw new IllegalArgumentException("Non-empty '" + str2 + "' required.");
    }

    public static void checkLooperThread(String str) {
        new AndroidCapabilities().checkCanDeliverNotification(str);
    }

    public static void checkNotOnMainThread(String str) {
        if (!new AndroidCapabilities().isMainThread()) {
            return;
        }
        throw new IllegalStateException(str);
    }

    public static void checkNull(@Nullable Object obj, String str) {
        if (obj != null) {
            return;
        }
        throw new IllegalArgumentException("Nonnull '" + str + "' required.");
    }

    public static boolean deleteRealm(String str, File file, String str2) {
        boolean z;
        File file2 = new File(file, str2 + ".management");
        File file3 = new File(str);
        File file4 = new File(str + ".note");
        File[] listFiles = file2.listFiles();
        if (listFiles != null) {
            for (File file5 : listFiles) {
                if (!file5.delete()) {
                    RealmLog.warn(String.format(Locale.ENGLISH, "Realm temporary file at %s cannot be deleted", file5.getAbsolutePath()), new Object[0]);
                }
            }
        }
        if (file2.exists() && !file2.delete()) {
            RealmLog.warn(String.format(Locale.ENGLISH, "Realm temporary folder at %s cannot be deleted", file2.getAbsolutePath()), new Object[0]);
        }
        if (file3.exists()) {
            boolean delete = file3.delete();
            z = delete;
            if (!delete) {
                RealmLog.warn(String.format(Locale.ENGLISH, "Realm file at %s cannot be deleted", file3.getAbsolutePath()), new Object[0]);
                z = delete;
            }
        } else {
            z = true;
        }
        if (file4.exists() && !file4.delete()) {
            RealmLog.warn(String.format(Locale.ENGLISH, ".note file at %s cannot be deleted", file4.getAbsolutePath()), new Object[0]);
        }
        return z;
    }

    public static Class<? extends RealmModel> getOriginalModelClass(Class<? extends RealmModel> cls) {
        if (cls.equals(RealmModel.class) || cls.equals(RealmObject.class)) {
            throw new IllegalArgumentException("RealmModel or RealmObject was passed as an argument. Only subclasses of these can be used as arguments to methods that accept a Realm model class.");
        }
        Class<? super Object> superclass = cls.getSuperclass();
        Class<? extends RealmModel> cls2 = cls;
        if (!superclass.equals(Object.class)) {
            cls2 = cls;
            if (!superclass.equals(RealmObject.class)) {
                cls2 = superclass;
            }
        }
        return cls2;
    }

    public static String getStackTrace(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter((Writer) stringWriter, true));
        return stringWriter.getBuffer().toString();
    }

    public static String getTablePrefix() {
        return nativeGetTablePrefix();
    }

    public static boolean isCoroutinesAvailable() {
        boolean booleanValue;
        synchronized (Util.class) {
            try {
                if (coroutinesAvailable == null) {
                    try {
                        Class.forName("kotlinx.coroutines.flow.Flow");
                        coroutinesAvailable = true;
                    } catch (ClassNotFoundException e) {
                        coroutinesAvailable = false;
                    }
                }
                booleanValue = coroutinesAvailable.booleanValue();
            } catch (Throwable th) {
                throw th;
            }
        }
        return booleanValue;
    }

    public static boolean isEmptyString(@Nullable String str) {
        return str == null || str.length() == 0;
    }

    public static boolean isEmulator() {
        return Build.FINGERPRINT.startsWith(MessengerShareContentUtility.TEMPLATE_GENERIC_TYPE) || Build.FINGERPRINT.startsWith("unknown") || Build.MODEL.contains("google_sdk") || Build.MODEL.contains("Emulator") || Build.MODEL.contains("Android SDK built for x86") || Build.MANUFACTURER.contains("Genymotion") || (Build.BRAND.startsWith(MessengerShareContentUtility.TEMPLATE_GENERIC_TYPE) && Build.DEVICE.startsWith(MessengerShareContentUtility.TEMPLATE_GENERIC_TYPE)) || "google_sdk".equals(Build.PRODUCT);
    }

    public static boolean isRxJavaAvailable() {
        boolean booleanValue;
        synchronized (Util.class) {
            try {
                if (rxJavaAvailable == null) {
                    try {
                        Class.forName("io.reactivex.Flowable");
                        rxJavaAvailable = true;
                    } catch (ClassNotFoundException e) {
                        rxJavaAvailable = false;
                    }
                }
                booleanValue = rxJavaAvailable.booleanValue();
            } catch (Throwable th) {
                throw th;
            }
        }
        return booleanValue;
    }

    static native String nativeGetTablePrefix();

    public static <T> Set<T> toSet(T... tArr) {
        if (tArr == null) {
            return Collections.emptySet();
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (T t : tArr) {
            if (t != null) {
                linkedHashSet.add(t);
            }
        }
        return linkedHashSet;
    }
}
