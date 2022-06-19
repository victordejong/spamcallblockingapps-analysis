package com.facebook.internal.logging.monitor;

import android.content.Context;
import com.facebook.FacebookSdk;
import com.facebook.internal.Utility;
import com.facebook.internal.logging.ExternalLog;
import com.facebook.internal.logging.LoggingStore;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.Collection;
/* loaded from: classes-dex2jar.jar:com/facebook/internal/logging/monitor/MonitorLoggingStore.class */
public class MonitorLoggingStore implements LoggingStore {
    public static final String PERSISTED_LOGS_FILENAME = "facebooksdk.monitoring.persistedlogs";
    private static MonitorLoggingStore monitorLoggingStore;

    private MonitorLoggingStore() {
    }

    public static MonitorLoggingStore getInstance() {
        MonitorLoggingStore monitorLoggingStore2;
        synchronized (MonitorLoggingStore.class) {
            try {
                if (monitorLoggingStore == null) {
                    monitorLoggingStore = new MonitorLoggingStore();
                }
                monitorLoggingStore2 = monitorLoggingStore;
            } catch (Throwable th) {
                throw th;
            }
        }
        return monitorLoggingStore2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v28, types: [java.util.Collection] */
    @Override // com.facebook.internal.logging.LoggingStore
    public Collection<ExternalLog> readAndClearStore() {
        ObjectInputStream objectInputStream;
        ArrayList arrayList;
        Throwable th;
        ObjectInputStream objectInputStream2;
        ArrayList arrayList2 = new ArrayList();
        Context applicationContext = FacebookSdk.getApplicationContext();
        try {
            objectInputStream = new ObjectInputStream(new BufferedInputStream(applicationContext.openFileInput(PERSISTED_LOGS_FILENAME)));
            try {
                ?? r0 = (Collection) objectInputStream.readObject();
                Utility.closeQuietly(objectInputStream);
                try {
                    applicationContext.getFileStreamPath(PERSISTED_LOGS_FILENAME).delete();
                } catch (Exception e) {
                }
                arrayList = r0;
            } catch (Exception e2) {
                Utility.closeQuietly(objectInputStream);
                try {
                    applicationContext.getFileStreamPath(PERSISTED_LOGS_FILENAME).delete();
                    arrayList = arrayList2;
                } catch (Exception e3) {
                    arrayList = arrayList2;
                }
                return arrayList;
            } catch (Throwable th2) {
                objectInputStream2 = objectInputStream;
                th = th2;
                Utility.closeQuietly(objectInputStream2);
                try {
                    applicationContext.getFileStreamPath(PERSISTED_LOGS_FILENAME).delete();
                } catch (Exception e4) {
                }
                throw th;
            }
        } catch (Exception e5) {
            objectInputStream = null;
        } catch (Throwable th3) {
            th = th3;
            objectInputStream2 = null;
        }
        return arrayList;
    }

    @Override // com.facebook.internal.logging.LoggingStore
    public void saveLogsToDisk(Collection<ExternalLog> collection) {
        ObjectOutputStream objectOutputStream;
        Throwable th;
        ObjectOutputStream objectOutputStream2;
        Context applicationContext = FacebookSdk.getApplicationContext();
        ObjectOutputStream objectOutputStream3 = null;
        try {
            try {
                objectOutputStream2 = new ObjectOutputStream(new BufferedOutputStream(applicationContext.openFileOutput(PERSISTED_LOGS_FILENAME, 0)));
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e) {
            objectOutputStream = null;
        }
        try {
            objectOutputStream2.writeObject(collection);
            Utility.closeQuietly(objectOutputStream2);
        } catch (Exception e2) {
            objectOutputStream = objectOutputStream2;
            try {
                applicationContext.getFileStreamPath(PERSISTED_LOGS_FILENAME).delete();
            } catch (Exception e3) {
            }
            Utility.closeQuietly(objectOutputStream);
        } catch (Throwable th3) {
            th = th3;
            objectOutputStream3 = objectOutputStream2;
            Utility.closeQuietly(objectOutputStream3);
            throw th;
        }
    }
}
