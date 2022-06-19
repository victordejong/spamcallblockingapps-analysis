package com.crashlytics.android.answers;

import android.content.Context;
import io.fabric.sdk.android.services.p068b.C1480i;
import io.fabric.sdk.android.services.p068b.C1494p;
import java.util.Map;
import java.util.UUID;
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/answers/SessionMetadataCollector.class */
public class SessionMetadataCollector {
    private final Context context;
    private final C1494p idManager;
    private final String versionCode;
    private final String versionName;

    public SessionMetadataCollector(Context context, C1494p c1494p, String str, String str2) {
        this.context = context;
        this.idManager = c1494p;
        this.versionCode = str;
        this.versionName = str2;
    }

    public SessionEventMetadata getMetadata() {
        Map<C1494p.EnumC1495a, String> m3435h = this.idManager.m3435h();
        return new SessionEventMetadata(this.idManager.m3440c(), UUID.randomUUID().toString(), this.idManager.m3443b(), this.idManager.m3433j(), m3435h.get(C1494p.EnumC1495a.FONT_TOKEN), C1480i.m3464m(this.context), this.idManager.m3439d(), this.idManager.m3436g(), this.versionCode, this.versionName);
    }
}
