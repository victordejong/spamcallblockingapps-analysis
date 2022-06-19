package com.facebook.appevents;

import android.content.Context;
import android.util.Log;
import com.facebook.FacebookSdk;
import com.facebook.appevents.AccessTokenAppIdPair;
import com.facebook.appevents.AppEvent;
import com.facebook.appevents.internal.AppEventUtility;
import com.facebook.internal.Utility;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.ObjectStreamClass;
/* loaded from: classes-dex2jar.jar:com/facebook/appevents/AppEventStore.class */
class AppEventStore {
    private static final String PERSISTED_EVENTS_FILENAME = "AppEventsLogger.persistedevents";
    private static final String TAG = "com.facebook.appevents.AppEventStore";

    /* loaded from: classes-dex2jar.jar:com/facebook/appevents/AppEventStore$MovedClassObjectInputStream.class */
    public static class MovedClassObjectInputStream extends ObjectInputStream {
        private static final String ACCESS_TOKEN_APP_ID_PAIR_SERIALIZATION_PROXY_V1_CLASS_NAME = "com.facebook.appevents.AppEventsLogger$AccessTokenAppIdPair$SerializationProxyV1";
        private static final String APP_EVENT_SERIALIZATION_PROXY_V1_CLASS_NAME = "com.facebook.appevents.AppEventsLogger$AppEvent$SerializationProxyV1";

        public MovedClassObjectInputStream(InputStream inputStream) throws IOException {
            super(inputStream);
        }

        @Override // java.io.ObjectInputStream
        protected ObjectStreamClass readClassDescriptor() throws IOException, ClassNotFoundException {
            ObjectStreamClass objectStreamClass;
            ObjectStreamClass readClassDescriptor = super.readClassDescriptor();
            if (readClassDescriptor.getName().equals(ACCESS_TOKEN_APP_ID_PAIR_SERIALIZATION_PROXY_V1_CLASS_NAME)) {
                objectStreamClass = ObjectStreamClass.lookup(AccessTokenAppIdPair.SerializationProxyV1.class);
            } else {
                objectStreamClass = readClassDescriptor;
                if (readClassDescriptor.getName().equals(APP_EVENT_SERIALIZATION_PROXY_V1_CLASS_NAME)) {
                    objectStreamClass = ObjectStreamClass.lookup(AppEvent.SerializationProxyV1.class);
                }
            }
            return objectStreamClass;
        }
    }

    AppEventStore() {
    }

    public static void persistEvents(AccessTokenAppIdPair accessTokenAppIdPair, SessionEventsState sessionEventsState) {
        synchronized (AppEventStore.class) {
            try {
                if (CrashShieldHandler.isObjectCrashing(AppEventStore.class)) {
                    return;
                }
                AppEventUtility.assertIsNotMainThread();
                PersistedEvents readAndClearStore = readAndClearStore();
                readAndClearStore.addEvents(accessTokenAppIdPair, sessionEventsState.getEventsToPersist());
                saveEventsToDisk(readAndClearStore);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void persistEvents(AppEventCollection appEventCollection) {
        synchronized (AppEventStore.class) {
            try {
                if (CrashShieldHandler.isObjectCrashing(AppEventStore.class)) {
                    return;
                }
                AppEventUtility.assertIsNotMainThread();
                PersistedEvents readAndClearStore = readAndClearStore();
                for (AccessTokenAppIdPair accessTokenAppIdPair : appEventCollection.keySet()) {
                    readAndClearStore.addEvents(accessTokenAppIdPair, appEventCollection.get(accessTokenAppIdPair).getEventsToPersist());
                }
                saveEventsToDisk(readAndClearStore);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:55:0x00e9 A[Catch: all -> 0x00f8, TRY_ENTER, TryCatch #3 {all -> 0x0104, blocks: (B:4:0x0003, B:9:0x0012, B:15:0x0041, B:17:0x0045, B:20:0x0054, B:30:0x007f, B:32:0x0083, B:34:0x0090, B:36:0x0097, B:38:0x00a2, B:40:0x00a8, B:42:0x00b6, B:44:0x00c2, B:47:0x00c6, B:49:0x00cb, B:51:0x00d8, B:55:0x00e9), top: B:66:0x0003 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.facebook.appevents.PersistedEvents readAndClearStore() {
        /*
            Method dump skipped, instructions count: 271
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.appevents.AppEventStore.readAndClearStore():com.facebook.appevents.PersistedEvents");
    }

    protected static void saveEventsToDisk(PersistedEvents persistedEvents) {
        Throwable th;
        ObjectOutputStream objectOutputStream;
        if (CrashShieldHandler.isObjectCrashing(AppEventStore.class)) {
            return;
        }
        try {
            Context applicationContext = FacebookSdk.getApplicationContext();
            try {
                ObjectOutputStream objectOutputStream2 = new ObjectOutputStream(new BufferedOutputStream(applicationContext.openFileOutput(PERSISTED_EVENTS_FILENAME, 0)));
                try {
                    objectOutputStream2.writeObject(persistedEvents);
                    Utility.closeQuietly(objectOutputStream2);
                } catch (Throwable th2) {
                    th = th2;
                    objectOutputStream = objectOutputStream2;
                    Log.w(TAG, "Got unexpected exception while persisting events: ", th);
                    try {
                        applicationContext.getFileStreamPath(PERSISTED_EVENTS_FILENAME).delete();
                    } catch (Exception e) {
                    }
                    Utility.closeQuietly(objectOutputStream);
                }
            } catch (Throwable th3) {
                th = th3;
                objectOutputStream = null;
            }
        } catch (Throwable th4) {
            CrashShieldHandler.handleThrowable(th4, AppEventStore.class);
        }
    }
}
