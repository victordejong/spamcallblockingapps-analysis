package com.mopub.network;

import com.mopub.common.Preconditions;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes4-dex2jar.jar:com/mopub/network/ImpressionsEmitter.class */
public class ImpressionsEmitter {

    /* renamed from: a */
    private static final HashSet<ImpressionListener> f60293a = new HashSet<>();

    /* renamed from: a */
    private static Set<ImpressionListener> m6050a() {
        HashSet hashSet;
        synchronized (ImpressionsEmitter.class) {
            try {
                hashSet = new HashSet(f60293a);
            } catch (Throwable th) {
                throw th;
            }
        }
        return hashSet;
    }

    /* renamed from: a */
    public static void m6049a(String str, ImpressionData impressionData) {
        Preconditions.checkNotNull(str);
        for (ImpressionListener impressionListener : m6050a()) {
            impressionListener.onImpression(str, impressionData);
        }
    }

    public static void addListener(ImpressionListener impressionListener) {
        Preconditions.checkNotNull(impressionListener);
        synchronized (ImpressionsEmitter.class) {
            try {
                f60293a.add(impressionListener);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void removeListener(ImpressionListener impressionListener) {
        Preconditions.checkNotNull(impressionListener);
        synchronized (ImpressionsEmitter.class) {
            try {
                f60293a.remove(impressionListener);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
