package com.phone.libphone;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.logging.Level;
import java.util.logging.Logger;
/* renamed from: com.phone.libphone.d */
/* loaded from: classes2-dex2jar.jar:com/phone/libphone/d.class */
final class C9399d {

    /* renamed from: a */
    static final AbstractC9398c f40227a = new C9400a();

    /* renamed from: b */
    private static final Logger f40228b = Logger.getLogger(C9399d.class.getName());

    /* renamed from: c */
    private static final ConcurrentHashMap<Integer, Phonemetadata$PhoneMetadata> f40229c = new ConcurrentHashMap<>();

    /* renamed from: d */
    private static final ConcurrentHashMap<String, Phonemetadata$PhoneMetadata> f40230d = new ConcurrentHashMap<>();

    /* renamed from: e */
    private static final Set<Integer> f40231e = C9396a.m683a();

    /* renamed from: f */
    private static final Set<String> f40232f = C9409j.m652a();

    /* renamed from: com.phone.libphone.d$a */
    /* loaded from: classes2-dex2jar.jar:com/phone/libphone/d$a.class */
    class C9400a implements AbstractC9398c {
        C9400a() {
        }

        @Override // com.phone.libphone.AbstractC9398c
        /* renamed from: a */
        public InputStream mo678a(String str) {
            try {
                return new FileInputStream(new File(str));
            } catch (FileNotFoundException e) {
                e.printStackTrace();
                return null;
            }
        }
    }

    private C9399d() {
    }

    /* renamed from: a */
    public static <T> Phonemetadata$PhoneMetadata m681a(T t, ConcurrentHashMap<T, Phonemetadata$PhoneMetadata> concurrentHashMap, String str, AbstractC9398c abstractC9398c) {
        Phonemetadata$PhoneMetadata phonemetadata$PhoneMetadata = concurrentHashMap.get(t);
        if (phonemetadata$PhoneMetadata != null) {
            return phonemetadata$PhoneMetadata;
        }
        String str2 = str + "_" + t;
        List<Phonemetadata$PhoneMetadata> m680b = m680b(str2, abstractC9398c);
        if (m680b.size() > 1) {
            f40228b.log(Level.WARNING, "more than one metadata in file " + str2);
        }
        Phonemetadata$PhoneMetadata phonemetadata$PhoneMetadata2 = m680b.get(0);
        Phonemetadata$PhoneMetadata putIfAbsent = concurrentHashMap.putIfAbsent(t, phonemetadata$PhoneMetadata2);
        Phonemetadata$PhoneMetadata phonemetadata$PhoneMetadata3 = phonemetadata$PhoneMetadata2;
        if (putIfAbsent != null) {
            phonemetadata$PhoneMetadata3 = putIfAbsent;
        }
        return phonemetadata$PhoneMetadata3;
    }

    /* renamed from: b */
    private static List<Phonemetadata$PhoneMetadata> m680b(String str, AbstractC9398c abstractC9398c) {
        InputStream mo678a = abstractC9398c.mo678a(str);
        if (mo678a == null) {
            throw new IllegalStateException("missing metadata: " + str);
        }
        List<Phonemetadata$PhoneMetadata> metadataList = m679c(mo678a).getMetadataList();
        if (metadataList.size() != 0) {
            return metadataList;
        }
        throw new IllegalStateException("empty metadata: " + str);
    }

    /* renamed from: c */
    private static Phonemetadata$PhoneMetadataCollection m679c(InputStream inputStream) {
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
                        f40228b.log(Level.WARNING, "error closing input stream (ignored)", (Throwable) e);
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
                    f40228b.log(Level.WARNING, "error closing input stream (ignored)", (Throwable) e3);
                }
                throw th;
            }
        } catch (IOException e4) {
            throw new RuntimeException("cannot load/parse metadata", e4);
        }
    }
}
