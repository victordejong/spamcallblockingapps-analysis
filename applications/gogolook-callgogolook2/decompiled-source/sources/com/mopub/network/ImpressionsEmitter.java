package com.mopub.network;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mopub.common.Preconditions;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/mopub/network/ImpressionsEmitter.class */
public class ImpressionsEmitter {

    /* renamed from: a */
    public static final HashSet<ImpressionListener> f9425a = new HashSet<>();

    /* renamed from: a */
    public static Set<ImpressionListener> m29996a() {
        HashSet hashSet;
        synchronized (ImpressionsEmitter.class) {
            try {
                hashSet = new HashSet(f9425a);
            } catch (Throwable th) {
                throw th;
            }
        }
        return hashSet;
    }

    /* renamed from: a */
    public static void m29995a(@NonNull String str, @Nullable ImpressionData impressionData) {
        Preconditions.checkNotNull(str);
        for (ImpressionListener impressionListener : m29996a()) {
            impressionListener.onImpression(str, impressionData);
        }
    }

    public static void addListener(@NonNull ImpressionListener impressionListener) {
        Preconditions.checkNotNull(impressionListener);
        synchronized (ImpressionsEmitter.class) {
            try {
                f9425a.add(impressionListener);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void removeListener(@NonNull ImpressionListener impressionListener) {
        Preconditions.checkNotNull(impressionListener);
        synchronized (ImpressionsEmitter.class) {
            try {
                f9425a.remove(impressionListener);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
