package com.privacystar.core;

import com.privacystar.core.application.ReleaseTree;
import com.privacystar.core.util.LogRecorder;
import io.realm.RealmConfiguration;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/PSApplication.class */
public class PSApplication extends PSAbstractApplication {
    @Override // com.privacystar.core.PSAbstractApplication
    protected RealmConfiguration generateRealmConfiguration() {
        return generateReleaseRealmConfiguration();
    }

    @Override // com.privacystar.core.PSAbstractApplication, android.app.Application
    public void onCreate() {
        createInstance(this);
        super.onCreate();
    }

    @Override // com.privacystar.core.PSAbstractApplication
    protected void setupLogging() {
        Timber.plant(new ReleaseTree());
        LogRecorder.start();
    }

    @Override // com.privacystar.core.PSAbstractApplication
    protected void setupMisc() {
    }

    @Override // com.privacystar.core.PSAbstractApplication
    protected void setupStetho() {
    }
}
