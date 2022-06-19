package com.google.i18n.phonenumbers;

import com.google.i18n.phonenumbers.C5060h;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.logging.Level;
import java.util.logging.Logger;
/* renamed from: com.google.i18n.phonenumbers.d */
/* loaded from: classes-dex2jar.jar:com/google/i18n/phonenumbers/d.class */
final class C5051d {

    /* renamed from: a */
    static final AbstractC5050c f21306a = new AbstractC5050c() { // from class: com.google.i18n.phonenumbers.d.1
        @Override // com.google.i18n.phonenumbers.AbstractC5050c
        /* renamed from: a */
        public InputStream mo1749a(String str) {
            return C5051d.class.getResourceAsStream(str);
        }
    };

    /* renamed from: b */
    private static final Logger f21307b = Logger.getLogger(C5051d.class.getName());

    /* renamed from: c */
    private static final ConcurrentHashMap<Integer, C5060h.C5062b> f21308c = new ConcurrentHashMap<>();

    /* renamed from: d */
    private static final ConcurrentHashMap<String, C5060h.C5062b> f21309d = new ConcurrentHashMap<>();

    /* renamed from: e */
    private static final Set<Integer> f21310e = C5043a.m1761a();

    /* renamed from: f */
    private static final Set<String> f21311f = C5068j.m1607a();

    private C5051d() {
    }

    /* renamed from: a */
    public static <T> C5060h.C5062b m1751a(T t, ConcurrentHashMap<T, C5060h.C5062b> concurrentHashMap, String str, AbstractC5050c abstractC5050c) {
        C5060h.C5062b putIfAbsent;
        C5060h.C5062b c5062b = concurrentHashMap.get(t);
        if (c5062b != null) {
            putIfAbsent = c5062b;
        } else {
            String str2 = str + "_" + t;
            List<C5060h.C5062b> m1750a = m1750a(str2, abstractC5050c);
            if (m1750a.size() > 1) {
                f21307b.log(Level.WARNING, "more than one metadata in file " + str2);
            }
            C5060h.C5062b c5062b2 = m1750a.get(0);
            putIfAbsent = concurrentHashMap.putIfAbsent(t, c5062b2);
            if (putIfAbsent == null) {
                putIfAbsent = c5062b2;
            }
        }
        return putIfAbsent;
    }

    /* renamed from: a */
    private static C5060h.C5063c m1752a(InputStream inputStream) {
        Throwable th;
        ObjectInputStream objectInputStream;
        try {
            try {
                objectInputStream = new ObjectInputStream(inputStream);
                try {
                    C5060h.C5063c c5063c = new C5060h.C5063c();
                    try {
                        c5063c.readExternal(objectInputStream);
                        try {
                            if (objectInputStream != null) {
                                objectInputStream.close();
                            } else {
                                inputStream.close();
                            }
                        } catch (IOException e) {
                            f21307b.log(Level.WARNING, "error closing input stream (ignored)", (Throwable) e);
                        }
                        return c5063c;
                    } catch (IOException e2) {
                        throw new RuntimeException("cannot load/parse metadata", e2);
                    }
                } catch (Throwable th2) {
                    th = th2;
                    try {
                        if (objectInputStream != null) {
                            objectInputStream.close();
                        } else {
                            inputStream.close();
                        }
                    } catch (IOException e3) {
                        f21307b.log(Level.WARNING, "error closing input stream (ignored)", (Throwable) e3);
                    }
                    throw th;
                }
            } catch (IOException e4) {
                throw new RuntimeException("cannot load/parse metadata", e4);
            }
        } catch (Throwable th3) {
            th = th3;
            objectInputStream = null;
        }
    }

    /* renamed from: a */
    private static List<C5060h.C5062b> m1750a(String str, AbstractC5050c abstractC5050c) {
        InputStream mo1749a = abstractC5050c.mo1749a(str);
        if (mo1749a == null) {
            throw new IllegalStateException("missing metadata: " + str);
        }
        List<C5060h.C5062b> m1641a = m1752a(mo1749a).m1641a();
        if (m1641a.size() != 0) {
            return m1641a;
        }
        throw new IllegalStateException("empty metadata: " + str);
    }
}
