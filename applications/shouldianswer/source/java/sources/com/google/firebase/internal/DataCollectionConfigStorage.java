package com.google.firebase.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import androidx.core.p015a.C0409a;
import com.google.firebase.DataCollectionDefaultChange;
import com.google.firebase.events.Event;
import com.google.firebase.events.Publisher;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes-dex2jar.jar:com/google/firebase/internal/DataCollectionConfigStorage.class */
public class DataCollectionConfigStorage {
    public static final String DATA_COLLECTION_DEFAULT_ENABLED = "firebase_data_collection_default_enabled";
    private static final String FIREBASE_APP_PREFS = "com.google.firebase.common.prefs:";
    private final Context applicationContext;
    private final AtomicBoolean dataCollectionDefaultEnabled = new AtomicBoolean(readAutoDataCollectionEnabled());
    private final Publisher publisher;
    private final SharedPreferences sharedPreferences;

    public DataCollectionConfigStorage(Context context, String str, Publisher publisher) {
        this.applicationContext = directBootSafe(context);
        this.sharedPreferences = context.getSharedPreferences(FIREBASE_APP_PREFS + str, 0);
        this.publisher = publisher;
    }

    private static Context directBootSafe(Context context) {
        Context context2 = context;
        if (Build.VERSION.SDK_INT >= 24) {
            context2 = C0409a.m6747c(context) ? context : C0409a.m6749b(context);
        }
        return context2;
    }

    private boolean readAutoDataCollectionEnabled() {
        ApplicationInfo applicationInfo;
        if (this.sharedPreferences.contains(DATA_COLLECTION_DEFAULT_ENABLED)) {
            return this.sharedPreferences.getBoolean(DATA_COLLECTION_DEFAULT_ENABLED, true);
        }
        try {
            PackageManager packageManager = this.applicationContext.getPackageManager();
            if (packageManager != null && (applicationInfo = packageManager.getApplicationInfo(this.applicationContext.getPackageName(), 128)) != null && applicationInfo.metaData != null && applicationInfo.metaData.containsKey(DATA_COLLECTION_DEFAULT_ENABLED)) {
                return applicationInfo.metaData.getBoolean(DATA_COLLECTION_DEFAULT_ENABLED);
            }
            return true;
        } catch (PackageManager.NameNotFoundException e) {
            return true;
        }
    }

    public boolean isEnabled() {
        return this.dataCollectionDefaultEnabled.get();
    }

    public void setEnabled(boolean z) {
        if (this.dataCollectionDefaultEnabled.compareAndSet(!z, z)) {
            this.sharedPreferences.edit().putBoolean(DATA_COLLECTION_DEFAULT_ENABLED, z).apply();
            this.publisher.publish(new Event<>(DataCollectionDefaultChange.class, new DataCollectionDefaultChange(z)));
        }
    }
}
