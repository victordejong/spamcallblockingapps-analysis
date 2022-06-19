package com.google.firebase.abt.component;

import android.content.Context;
import com.google.firebase.abt.FirebaseABTesting;
import com.google.firebase.analytics.connector.AnalyticsConnector;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/firebase/abt/component/AbtComponent.class */
public class AbtComponent {
    private final Map<String, FirebaseABTesting> zzh = new HashMap();
    private final Context zzi;
    private final AnalyticsConnector zzj;

    public AbtComponent(Context context, AnalyticsConnector analyticsConnector) {
        this.zzi = context;
        this.zzj = analyticsConnector;
    }

    public FirebaseABTesting get(String str) {
        FirebaseABTesting firebaseABTesting;
        synchronized (this) {
            if (!this.zzh.containsKey(str)) {
                this.zzh.put(str, new FirebaseABTesting(this.zzi, this.zzj, str));
            }
            firebaseABTesting = this.zzh.get(str);
        }
        return firebaseABTesting;
    }
}
