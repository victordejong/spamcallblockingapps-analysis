package com.mopub.network;

import com.mopub.common.Preconditions;
import java.util.HashSet;
/* loaded from: classes3-dex2jar.jar:com/mopub/network/ImpressionsEmitter.class */
public class ImpressionsEmitter {

    /* renamed from: a */
    public static final HashSet<ImpressionListener> f9233a = new HashSet<>();

    public static void addListener(ImpressionListener impressionListener) {
        Preconditions.checkNotNull(impressionListener);
        synchronized (ImpressionsEmitter.class) {
            try {
                f9233a.add(impressionListener);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void removeListener(ImpressionListener impressionListener) {
        Preconditions.checkNotNull(impressionListener);
        synchronized (ImpressionsEmitter.class) {
            try {
                f9233a.remove(impressionListener);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
