package com.crashlytics.android.core;

import io.fabric.sdk.android.services.p071d.AbstractC1549c;
import io.fabric.sdk.android.services.p071d.C1550d;
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/core/PreferenceManager.class */
public class PreferenceManager {
    static final String PREF_ALWAYS_SEND_REPORTS_KEY = "always_send_reports_opt_in";
    private static final String PREF_MIGRATION_COMPLETE = "preferences_migration_complete";
    private static final boolean SHOULD_ALWAYS_SEND_REPORTS_DEFAULT = false;
    private final CrashlyticsCore kit;
    private final AbstractC1549c preferenceStore;

    public PreferenceManager(AbstractC1549c abstractC1549c, CrashlyticsCore crashlyticsCore) {
        this.preferenceStore = abstractC1549c;
        this.kit = crashlyticsCore;
    }

    public static PreferenceManager create(AbstractC1549c abstractC1549c, CrashlyticsCore crashlyticsCore) {
        return new PreferenceManager(abstractC1549c, crashlyticsCore);
    }

    public void setShouldAlwaysSendReports(boolean z) {
        AbstractC1549c abstractC1549c = this.preferenceStore;
        abstractC1549c.mo3336a(abstractC1549c.mo3335b().putBoolean(PREF_ALWAYS_SEND_REPORTS_KEY, z));
    }

    public boolean shouldAlwaysSendReports() {
        if (!this.preferenceStore.mo3337a().contains(PREF_MIGRATION_COMPLETE)) {
            C1550d c1550d = new C1550d(this.kit);
            if (!this.preferenceStore.mo3337a().contains(PREF_ALWAYS_SEND_REPORTS_KEY) && c1550d.mo3337a().contains(PREF_ALWAYS_SEND_REPORTS_KEY)) {
                boolean z = c1550d.mo3337a().getBoolean(PREF_ALWAYS_SEND_REPORTS_KEY, false);
                AbstractC1549c abstractC1549c = this.preferenceStore;
                abstractC1549c.mo3336a(abstractC1549c.mo3335b().putBoolean(PREF_ALWAYS_SEND_REPORTS_KEY, z));
            }
            AbstractC1549c abstractC1549c2 = this.preferenceStore;
            abstractC1549c2.mo3336a(abstractC1549c2.mo3335b().putBoolean(PREF_MIGRATION_COMPLETE, true));
        }
        return this.preferenceStore.mo3337a().getBoolean(PREF_ALWAYS_SEND_REPORTS_KEY, false);
    }
}
