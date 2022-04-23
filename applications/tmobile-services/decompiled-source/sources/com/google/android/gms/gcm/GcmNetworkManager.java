package com.google.android.gms.gcm;

import android.content.Context;
import androidx.collection.ArrayMap;
import java.util.Map;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/gcm/GcmNetworkManager.class */
public class GcmNetworkManager {
    @GuardedBy

    /* renamed from: b */
    private static GcmNetworkManager f7713b;
    @GuardedBy

    /* renamed from: a */
    private final Map<String, Map<String, Boolean>> f7714a = new ArrayMap();

    private GcmNetworkManager(Context context) {
    }

    /* renamed from: a */
    public static GcmNetworkManager m14202a(Context context) {
        GcmNetworkManager gcmNetworkManager;
        synchronized (GcmNetworkManager.class) {
            try {
                if (f7713b == null) {
                    f7713b = new GcmNetworkManager(context.getApplicationContext());
                }
                gcmNetworkManager = f7713b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return gcmNetworkManager;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final boolean m14201b(String str, String str2) {
        boolean z;
        synchronized (this) {
            Map<String, Boolean> map = this.f7714a.get(str2);
            Map<String, Boolean> map2 = map;
            if (map == null) {
                map2 = new ArrayMap<>();
                this.f7714a.put(str2, map2);
            }
            z = map2.put(str, Boolean.FALSE) == null;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final void m14200c(String str, String str2) {
        synchronized (this) {
            Map<String, Boolean> map = this.f7714a.get(str2);
            if (map != null) {
                if ((map.remove(str) != null) && map.isEmpty()) {
                    this.f7714a.remove(str2);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public final boolean m14199d(String str) {
        boolean containsKey;
        synchronized (this) {
            containsKey = this.f7714a.containsKey(str);
        }
        return containsKey;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public final boolean m14198e(String str, String str2) {
        synchronized (this) {
            Map<String, Boolean> map = this.f7714a.get(str2);
            if (map == null) {
                return false;
            }
            Boolean bool = map.get(str);
            if (bool == null) {
                return false;
            }
            return bool.booleanValue();
        }
    }
}
