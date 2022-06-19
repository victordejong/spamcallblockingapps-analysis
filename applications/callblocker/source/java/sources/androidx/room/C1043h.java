package androidx.room;

import android.content.Context;
import androidx.room.AbstractC1044i;
/* renamed from: androidx.room.h */
/* loaded from: classes-dex2jar.jar:androidx/room/h.class */
public class C1043h {
    /* renamed from: a */
    public static <T extends AbstractC1044i> AbstractC1044i.C1045a<T> m18304a(Context context, Class<T> cls) {
        return new AbstractC1044i.C1045a<>(context, cls, null);
    }

    /* renamed from: a */
    public static <T extends AbstractC1044i> AbstractC1044i.C1045a<T> m18303a(Context context, Class<T> cls, String str) {
        if (str == null || str.trim().length() == 0) {
            throw new IllegalArgumentException("Cannot build a database with null or empty name. If you are trying to create an in memory database, use Room.inMemoryDatabaseBuilder");
        }
        return new AbstractC1044i.C1045a<>(context, cls, str);
    }

    /* renamed from: a */
    public static <T, C> T m18302a(Class<C> cls, String str) {
        String name = cls.getPackage().getName();
        String canonicalName = cls.getCanonicalName();
        if (!name.isEmpty()) {
            canonicalName = canonicalName.substring(name.length() + 1);
        }
        String str2 = canonicalName.replace('.', '_') + str;
        try {
            return (T) Class.forName(name.isEmpty() ? str2 : name + "." + str2).newInstance();
        } catch (ClassNotFoundException e) {
            throw new RuntimeException("cannot find implementation for " + cls.getCanonicalName() + ". " + str2 + " does not exist");
        } catch (IllegalAccessException e2) {
            throw new RuntimeException("Cannot access the constructor" + cls.getCanonicalName());
        } catch (InstantiationException e3) {
            throw new RuntimeException("Failed to create an instance of " + cls.getCanonicalName());
        }
    }
}
