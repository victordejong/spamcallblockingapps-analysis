package com.mopub.network;

import com.mopub.common.Preconditions;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes4-dex2jar.jar:com/mopub/network/ImpressionsEmitter.class */
public class ImpressionsEmitter {

    /* renamed from: a  reason: collision with root package name */
    private static final HashSet<ImpressionListener> f34725a = new HashSet<>();

    private static Set<ImpressionListener> a() {
        HashSet hashSet;
        synchronized (ImpressionsEmitter.class) {
            try {
                hashSet = new HashSet(f34725a);
            } catch (Throwable th) {
                throw th;
            }
        }
        return hashSet;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(String str, ImpressionData impressionData) {
        Preconditions.checkNotNull(str);
        for (ImpressionListener impressionListener : a()) {
            impressionListener.onImpression(str, impressionData);
        }
    }

    public static void addListener(ImpressionListener impressionListener) {
        Preconditions.checkNotNull(impressionListener);
        synchronized (ImpressionsEmitter.class) {
            try {
                f34725a.add(impressionListener);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void removeListener(ImpressionListener impressionListener) {
        Preconditions.checkNotNull(impressionListener);
        synchronized (ImpressionsEmitter.class) {
            try {
                f34725a.remove(impressionListener);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
