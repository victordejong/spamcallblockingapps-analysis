package com.phone.libphone;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.logging.Level;
import java.util.logging.Logger;
/* renamed from: com.phone.libphone.d */
/* loaded from: classes2-dex2jar.jar:com/phone/libphone/d.class */
final class C2794d {

    /* renamed from: a */
    static final AbstractC2793c f11628a = new C2795a();

    /* renamed from: b */
    private static final Logger f11629b = Logger.getLogger(C2794d.class.getName());

    /* renamed from: com.phone.libphone.d$a */
    /* loaded from: classes2-dex2jar.jar:com/phone/libphone/d$a.class */
    static final class C2795a implements AbstractC2793c {
        C2795a() {
        }

        @Override // com.phone.libphone.AbstractC2793c
        /* renamed from: a */
        public InputStream mo1661a(String str) {
            try {
                return new FileInputStream(new File(str));
            } catch (FileNotFoundException e) {
                e.printStackTrace();
                return null;
            }
        }
    }

    static {
        new ConcurrentHashMap();
        new ConcurrentHashMap();
        C2791a.m1666a();
        C2804j.m1636a();
    }

    private C2794d() {
    }

    /* renamed from: a */
    public static <T> Phonemetadata$PhoneMetadata m1664a(T t, ConcurrentHashMap<T, Phonemetadata$PhoneMetadata> concurrentHashMap, String str, AbstractC2793c abstractC2793c) {
        Phonemetadata$PhoneMetadata phonemetadata$PhoneMetadata = concurrentHashMap.get(t);
        if (phonemetadata$PhoneMetadata != null) {
            return phonemetadata$PhoneMetadata;
        }
        String str2 = str + "_" + t;
        List<Phonemetadata$PhoneMetadata> m1663b = m1663b(str2, abstractC2793c);
        if (m1663b.size() > 1) {
            f11629b.log(Level.WARNING, "more than one metadata in file " + str2);
        }
        Phonemetadata$PhoneMetadata phonemetadata$PhoneMetadata2 = m1663b.get(0);
        Phonemetadata$PhoneMetadata putIfAbsent = concurrentHashMap.putIfAbsent(t, phonemetadata$PhoneMetadata2);
        Phonemetadata$PhoneMetadata phonemetadata$PhoneMetadata3 = phonemetadata$PhoneMetadata2;
        if (putIfAbsent != null) {
            phonemetadata$PhoneMetadata3 = putIfAbsent;
        }
        return phonemetadata$PhoneMetadata3;
    }

    /* renamed from: b */
    private static List<Phonemetadata$PhoneMetadata> m1663b(String str, AbstractC2793c abstractC2793c) {
        InputStream mo1661a = abstractC2793c.mo1661a(str);
        if (mo1661a == null) {
            throw new IllegalStateException("missing metadata: " + str);
        }
        List<Phonemetadata$PhoneMetadata> metadataList = m1662c(mo1661a).getMetadataList();
        if (metadataList.size() != 0) {
            return metadataList;
        }
        throw new IllegalStateException("empty metadata: " + str);
    }

    /* renamed from: c */
    private static Phonemetadata$PhoneMetadataCollection m1662c(InputStream inputStream) {
        Throwable th;
        ObjectInputStream objectInputStream;
        try {
            try {
                objectInputStream = new ObjectInputStream(inputStream);
            } catch (Throwable th2) {
                th = th2;
                objectInputStream = null;
            }
            try {
                Phonemetadata$PhoneMetadataCollection phonemetadata$PhoneMetadataCollection = new Phonemetadata$PhoneMetadataCollection();
                try {
                    phonemetadata$PhoneMetadataCollection.readExternal(objectInputStream);
                    try {
                        objectInputStream.close();
                    } catch (IOException e) {
                        f11629b.log(Level.WARNING, "error closing input stream (ignored)", (Throwable) e);
                    }
                    return phonemetadata$PhoneMetadataCollection;
                } catch (IOException e2) {
                    throw new RuntimeException("cannot load/parse metadata", e2);
                }
            } catch (Throwable th3) {
                th = th3;
                try {
                    if (objectInputStream != null) {
                        objectInputStream.close();
                    } else {
                        inputStream.close();
                    }
                } catch (IOException e3) {
                    f11629b.log(Level.WARNING, "error closing input stream (ignored)", (Throwable) e3);
                }
                throw th;
            }
        } catch (IOException e4) {
            throw new RuntimeException("cannot load/parse metadata", e4);
        }
    }
}
