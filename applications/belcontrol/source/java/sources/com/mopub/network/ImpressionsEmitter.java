package com.mopub.network;

import com.mopub.common.Preconditions;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/mopub/network/ImpressionsEmitter.class */
public class ImpressionsEmitter {

    /* renamed from: a */
    public static final HashSet<ImpressionListener> f5395a = new HashSet<>();

    /* renamed from: a */
    public static Set<ImpressionListener> m3212a() {
        HashSet hashSet;
        synchronized (ImpressionsEmitter.class) {
            try {
                hashSet = new HashSet(f5395a);
            } catch (Throwable th) {
                throw th;
            }
        }
        return hashSet;
    }

    public static void addListener(ImpressionListener impressionListener) {
        Preconditions.checkNotNull(impressionListener);
        synchronized (ImpressionsEmitter.class) {
            try {
                f5395a.add(impressionListener);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: b */
    public static void m3211b(String str, ImpressionData impressionData) {
        Preconditions.checkNotNull(str);
        for (ImpressionListener impressionListener : m3212a()) {
            impressionListener.onImpression(str, impressionData);
        }
    }

    public static void removeListener(ImpressionListener impressionListener) {
        Preconditions.checkNotNull(impressionListener);
        synchronized (ImpressionsEmitter.class) {
            try {
                f5395a.remove(impressionListener);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
