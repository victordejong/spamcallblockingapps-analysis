package com.crashlytics.android.beta;

import io.fabric.sdk.android.AbstractC1459h;
import io.fabric.sdk.android.C1449c;
import io.fabric.sdk.android.services.p068b.AbstractC1488m;
import io.fabric.sdk.android.services.p068b.C1494p;
import java.util.Collections;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/beta/Beta.class */
public class Beta extends AbstractC1459h<Boolean> implements AbstractC1488m {
    public static final String TAG = "Beta";

    public static Beta getInstance() {
        return (Beta) C1449c.m3587a(Beta.class);
    }

    @Override // io.fabric.sdk.android.AbstractC1459h
    public Boolean doInBackground() {
        C1449c.m3572g().mo3552a(TAG, "Beta kit initializing...");
        return true;
    }

    @Override // io.fabric.sdk.android.services.p068b.AbstractC1488m
    public Map<C1494p.EnumC1495a, String> getDeviceIdentifiers() {
        return Collections.emptyMap();
    }

    @Override // io.fabric.sdk.android.AbstractC1459h
    public String getIdentifier() {
        return "com.crashlytics.sdk.android:beta";
    }

    @Override // io.fabric.sdk.android.AbstractC1459h
    public String getVersion() {
        return "1.2.9.26";
    }
}
