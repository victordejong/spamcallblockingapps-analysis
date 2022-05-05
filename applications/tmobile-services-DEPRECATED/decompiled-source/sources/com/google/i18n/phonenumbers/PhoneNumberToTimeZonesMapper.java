package com.google.i18n.phonenumbers;

import com.google.i18n.phonenumbers.prefixmapper.PrefixTimeZonesMap;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes-dex2jar.jar:com/google/i18n/phonenumbers/PhoneNumberToTimeZonesMapper.class */
public class PhoneNumberToTimeZonesMapper {

    /* renamed from: a */
    static final List<String> f12256a;

    /* renamed from: b */
    private static final Logger f12257b = Logger.getLogger(PhoneNumberToTimeZonesMapper.class.getName());

    /* loaded from: classes-dex2jar.jar:com/google/i18n/phonenumbers/PhoneNumberToTimeZonesMapper$LazyHolder.class */
    private static class LazyHolder {
        static {
            PhoneNumberToTimeZonesMapper.m8058c("/com/google/i18n/phonenumbers/timezones/data/map_data");
        }

        private LazyHolder() {
        }
    }

    static {
        ArrayList arrayList = new ArrayList(1);
        f12256a = arrayList;
        arrayList.add("Etc/Unknown");
    }

    /* renamed from: b */
    private static void m8059b(InputStream inputStream) {
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException e) {
                f12257b.log(Level.WARNING, e.toString());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public static PrefixTimeZonesMap m8058c(String str) {
        Throwable th;
        IOException e;
        InputStream resourceAsStream = PhoneNumberToTimeZonesMapper.class.getResourceAsStream(str);
        PrefixTimeZonesMap prefixTimeZonesMap = new PrefixTimeZonesMap();
        ObjectInputStream objectInputStream = null;
        ObjectInputStream objectInputStream2 = null;
        try {
            try {
                objectInputStream2 = null;
                objectInputStream = new ObjectInputStream(resourceAsStream);
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException e2) {
            e = e2;
        }
        try {
            prefixTimeZonesMap.readExternal(objectInputStream);
            m8059b(objectInputStream);
        } catch (IOException e3) {
            e = e3;
            objectInputStream2 = objectInputStream;
            f12257b.log(Level.WARNING, e.toString());
            m8059b(objectInputStream);
            return prefixTimeZonesMap;
        } catch (Throwable th3) {
            th = th3;
            objectInputStream2 = objectInputStream;
            m8059b(objectInputStream2);
            throw th;
        }
        return prefixTimeZonesMap;
    }
}
