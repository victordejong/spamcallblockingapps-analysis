package com.mixpanel.android.mpmetrics;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import com.mixpanel.android.util.MPLog;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.StringTokenizer;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
@SuppressLint({"CommitPrefEdits"})
/* loaded from: classes-dex2jar.jar:com/mixpanel/android/mpmetrics/PersistentIdentity.class */
public class PersistentIdentity {
    private static final String DELIMITER = ",";
    private static final String LOGTAG = "MixpanelAPI.PIdentity";
    private static Boolean sIsFirstAppLaunch;
    private static Integer sPreviousVersionCode;
    private static boolean sReferrerPrefsDirty = true;
    private static final Object sReferrerPrefsLock = new Object();
    private String mEventsDistinctId;
    private final Future<SharedPreferences> mLoadReferrerPreferences;
    private final Future<SharedPreferences> mLoadStoredPreferences;
    private final Future<SharedPreferences> mMixpanelPreferences;
    private String mPeopleDistinctId;
    private final Future<SharedPreferences> mTimeEventsPreferences;
    private JSONArray mWaitingPeopleRecords;
    private JSONObject mSuperPropertiesCache = null;
    private Map<String, String> mReferrerPropertiesCache = null;
    private boolean mIdentitiesLoaded = false;
    private final SharedPreferences.OnSharedPreferenceChangeListener mReferrerChangeListener = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: com.mixpanel.android.mpmetrics.PersistentIdentity.1
        @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
        public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
            synchronized (PersistentIdentity.sReferrerPrefsLock) {
                PersistentIdentity.this.readReferrerProperties();
                boolean unused = PersistentIdentity.sReferrerPrefsDirty = false;
            }
        }
    };

    public PersistentIdentity(Future<SharedPreferences> future, Future<SharedPreferences> future2, Future<SharedPreferences> future3, Future<SharedPreferences> future4) {
        this.mLoadReferrerPreferences = future;
        this.mLoadStoredPreferences = future2;
        this.mTimeEventsPreferences = future3;
        this.mMixpanelPreferences = future4;
    }

    private JSONObject getSuperPropertiesCache() {
        if (this.mSuperPropertiesCache == null) {
            readSuperProperties();
        }
        return this.mSuperPropertiesCache;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:11:0x002f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void readIdentities() {
        /*
            r5 = this;
            r0 = r5
            java.util.concurrent.Future<android.content.SharedPreferences> r0 = r0.mLoadStoredPreferences     // Catch: InterruptedException -> 0x0010, ExecutionException -> 0x001c
            java.lang.Object r0 = r0.get()     // Catch: InterruptedException -> 0x0010, ExecutionException -> 0x001c
            android.content.SharedPreferences r0 = (android.content.SharedPreferences) r0     // Catch: InterruptedException -> 0x0010, ExecutionException -> 0x001c
            r6 = r0
            goto L_0x002a
        L_0x0010:
            r6 = move-exception
            java.lang.String r0 = "MixpanelAPI.PIdentity"
            java.lang.String r1 = "Cannot read distinct ids from sharedPreferences."
            r2 = r6
            com.mixpanel.android.util.MPLog.m310e(r0, r1, r2)
            goto L_0x0028
        L_0x001c:
            r6 = move-exception
            java.lang.String r0 = "MixpanelAPI.PIdentity"
            java.lang.String r1 = "Cannot read distinct ids from sharedPreferences."
            r2 = r6
            java.lang.Throwable r2 = r2.getCause()
            com.mixpanel.android.util.MPLog.m310e(r0, r1, r2)
        L_0x0028:
            r0 = 0
            r6 = r0
        L_0x002a:
            r0 = r6
            if (r0 != 0) goto L_0x002f
            return
        L_0x002f:
            r0 = r5
            r1 = r6
            java.lang.String r2 = "events_distinct_id"
            r3 = 0
            java.lang.String r1 = r1.getString(r2, r3)
            r0.mEventsDistinctId = r1
            r0 = r5
            r1 = r6
            java.lang.String r2 = "people_distinct_id"
            r3 = 0
            java.lang.String r1 = r1.getString(r2, r3)
            r0.mPeopleDistinctId = r1
            r0 = r5
            r1 = 0
            r0.mWaitingPeopleRecords = r1
            r0 = r6
            java.lang.String r1 = "waiting_array"
            r2 = 0
            java.lang.String r0 = r0.getString(r1, r2)
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L_0x008c
            org.json.JSONArray r0 = new org.json.JSONArray     // Catch: JSONException -> 0x006d
            r7 = r0
            r0 = r7
            r1 = r6
            r0.<init>(r1)     // Catch: JSONException -> 0x006d
            r0 = r5
            r1 = r7
            r0.mWaitingPeopleRecords = r1     // Catch: JSONException -> 0x006d
            goto L_0x008c
        L_0x006d:
            r7 = move-exception
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r7 = r0
            r0 = r7
            java.lang.String r1 = "Could not interpret waiting people JSON record "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r7
            r1 = r6
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r0 = "MixpanelAPI.PIdentity"
            r1 = r7
            java.lang.String r1 = r1.toString()
            com.mixpanel.android.util.MPLog.m311e(r0, r1)
        L_0x008c:
            r0 = r5
            java.lang.String r0 = r0.mEventsDistinctId
            if (r0 != 0) goto L_0x00a1
            r0 = r5
            java.util.UUID r1 = java.util.UUID.randomUUID()
            java.lang.String r1 = r1.toString()
            r0.mEventsDistinctId = r1
            r0 = r5
            r0.writeIdentities()
        L_0x00a1:
            r0 = r5
            r1 = 1
            r0.mIdentitiesLoaded = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mixpanel.android.mpmetrics.PersistentIdentity.readIdentities():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void readReferrerProperties() {
        this.mReferrerPropertiesCache = new HashMap();
        try {
            SharedPreferences sharedPreferences = this.mLoadReferrerPreferences.get();
            sharedPreferences.unregisterOnSharedPreferenceChangeListener(this.mReferrerChangeListener);
            sharedPreferences.registerOnSharedPreferenceChangeListener(this.mReferrerChangeListener);
            for (Map.Entry<String, ?> entry : sharedPreferences.getAll().entrySet()) {
                this.mReferrerPropertiesCache.put(entry.getKey(), entry.getValue().toString());
            }
        } catch (InterruptedException e) {
            MPLog.m310e(LOGTAG, "Cannot load referrer properties from shared preferences.", e);
        } catch (ExecutionException e2) {
            MPLog.m310e(LOGTAG, "Cannot load referrer properties from shared preferences.", e2.getCause());
        }
    }

    private void readSuperProperties() {
        JSONObject jSONObject;
        try {
            try {
                try {
                    String string = this.mLoadStoredPreferences.get().getString("super_properties", "{}");
                    MPLog.m307v(LOGTAG, "Loading Super Properties " + string);
                    this.mSuperPropertiesCache = new JSONObject(string);
                } catch (JSONException e) {
                    MPLog.m311e(LOGTAG, "Cannot parse stored superProperties");
                    storeSuperProperties();
                    if (this.mSuperPropertiesCache == null) {
                        jSONObject = new JSONObject();
                    } else {
                        return;
                    }
                }
            } catch (InterruptedException e2) {
                MPLog.m310e(LOGTAG, "Cannot load superProperties from SharedPreferences.", e2);
                if (this.mSuperPropertiesCache == null) {
                    jSONObject = new JSONObject();
                } else {
                    return;
                }
            } catch (ExecutionException e3) {
                MPLog.m310e(LOGTAG, "Cannot load superProperties from SharedPreferences.", e3.getCause());
                if (this.mSuperPropertiesCache == null) {
                    jSONObject = new JSONObject();
                } else {
                    return;
                }
            }
            if (this.mSuperPropertiesCache == null) {
                jSONObject = new JSONObject();
                this.mSuperPropertiesCache = jSONObject;
            }
        } catch (Throwable th) {
            if (this.mSuperPropertiesCache == null) {
                this.mSuperPropertiesCache = new JSONObject();
            }
            throw th;
        }
    }

    private void storeSuperProperties() {
        if (this.mSuperPropertiesCache == null) {
            MPLog.m311e(LOGTAG, "storeSuperProperties should not be called with uninitialized superPropertiesCache.");
            return;
        }
        String jSONObject = this.mSuperPropertiesCache.toString();
        MPLog.m307v(LOGTAG, "Storing Super Properties " + jSONObject);
        try {
            SharedPreferences.Editor edit = this.mLoadStoredPreferences.get().edit();
            edit.putString("super_properties", jSONObject);
            writeEdits(edit);
        } catch (InterruptedException e) {
            MPLog.m310e(LOGTAG, "Cannot store superProperties in shared preferences.", e);
        } catch (ExecutionException e2) {
            MPLog.m310e(LOGTAG, "Cannot store superProperties in shared preferences.", e2.getCause());
        }
    }

    public static JSONArray waitingPeopleRecordsForSending(SharedPreferences sharedPreferences) {
        String string = sharedPreferences.getString("people_distinct_id", null);
        String string2 = sharedPreferences.getString("waiting_array", null);
        JSONArray jSONArray = null;
        if (string2 != null) {
            jSONArray = null;
            if (string != null) {
                try {
                    JSONArray jSONArray2 = new JSONArray(string2);
                    jSONArray = new JSONArray();
                    for (int i = 0; i < jSONArray2.length(); i++) {
                        try {
                            JSONObject jSONObject = jSONArray2.getJSONObject(i);
                            jSONObject.put("$distinct_id", string);
                            jSONArray.put(jSONObject);
                        } catch (JSONException e) {
                            MPLog.m310e(LOGTAG, "Unparsable object found in waiting people records", e);
                        }
                    }
                    SharedPreferences.Editor edit = sharedPreferences.edit();
                    edit.remove("waiting_array");
                    writeEdits(edit);
                } catch (JSONException e2) {
                    MPLog.m311e(LOGTAG, "Waiting people records were unreadable.");
                    return null;
                }
            }
        }
        return jSONArray;
    }

    private static void writeEdits(SharedPreferences.Editor editor) {
        editor.apply();
    }

    private void writeIdentities() {
        try {
            SharedPreferences.Editor edit = this.mLoadStoredPreferences.get().edit();
            edit.putString("events_distinct_id", this.mEventsDistinctId);
            edit.putString("people_distinct_id", this.mPeopleDistinctId);
            if (this.mWaitingPeopleRecords == null) {
                edit.remove("waiting_array");
            } else {
                edit.putString("waiting_array", this.mWaitingPeopleRecords.toString());
            }
            writeEdits(edit);
        } catch (InterruptedException e) {
            MPLog.m310e(LOGTAG, "Can't write distinct ids to shared preferences.", e);
        } catch (ExecutionException e2) {
            MPLog.m310e(LOGTAG, "Can't write distinct ids to shared preferences.", e2.getCause());
        }
    }

    public static void writeReferrerPrefs(Context context, String str, Map<String, String> map) {
        synchronized (sReferrerPrefsLock) {
            SharedPreferences.Editor edit = context.getSharedPreferences(str, 0).edit();
            edit.clear();
            for (Map.Entry<String, String> entry : map.entrySet()) {
                edit.putString(entry.getKey(), entry.getValue());
            }
            writeEdits(edit);
            sReferrerPrefsDirty = true;
        }
    }

    public void addSuperPropertiesToObject(JSONObject jSONObject) {
        synchronized (this) {
            JSONObject superPropertiesCache = getSuperPropertiesCache();
            Iterator<String> keys = superPropertiesCache.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                try {
                    jSONObject.put(next, superPropertiesCache.get(next));
                } catch (JSONException e) {
                    MPLog.m310e(LOGTAG, "Object read from one JSON Object cannot be written to another", e);
                }
            }
        }
    }

    public void addTimeEvent(String str, Long l) {
        try {
            SharedPreferences.Editor edit = this.mTimeEventsPreferences.get().edit();
            edit.putLong(str, l.longValue());
            writeEdits(edit);
        } catch (InterruptedException e) {
            e.printStackTrace();
        } catch (ExecutionException e2) {
            e2.printStackTrace();
        }
    }

    public void clearPreferences() {
        synchronized (this) {
            try {
                SharedPreferences.Editor edit = this.mLoadStoredPreferences.get().edit();
                edit.clear();
                writeEdits(edit);
                readSuperProperties();
                readIdentities();
            } catch (InterruptedException e) {
                throw new RuntimeException(e.getCause());
            } catch (ExecutionException e2) {
                throw new RuntimeException(e2.getCause());
            }
        }
    }

    public void clearPushId() {
        synchronized (this) {
            try {
                SharedPreferences.Editor edit = this.mLoadStoredPreferences.get().edit();
                edit.remove("push_id");
                writeEdits(edit);
            } catch (InterruptedException e) {
                MPLog.m310e(LOGTAG, "Can't write push id to shared preferences", e);
            } catch (ExecutionException e2) {
                MPLog.m310e(LOGTAG, "Can't write push id to shared preferences", e2.getCause());
            }
        }
    }

    public void clearSuperProperties() {
        synchronized (this) {
            this.mSuperPropertiesCache = new JSONObject();
            storeSuperProperties();
        }
    }

    public String getEventsDistinctId() {
        String str;
        synchronized (this) {
            if (!this.mIdentitiesLoaded) {
                readIdentities();
            }
            str = this.mEventsDistinctId;
        }
        return str;
    }

    public String getPeopleDistinctId() {
        String str;
        synchronized (this) {
            if (!this.mIdentitiesLoaded) {
                readIdentities();
            }
            str = this.mPeopleDistinctId;
        }
        return str;
    }

    public String getPushId() {
        String str;
        synchronized (this) {
            str = null;
            try {
                str = this.mLoadStoredPreferences.get().getString("push_id", null);
            } catch (InterruptedException e) {
                MPLog.m310e(LOGTAG, "Can't write push id to shared preferences", e);
            } catch (ExecutionException e2) {
                MPLog.m310e(LOGTAG, "Can't write push id to shared preferences", e2.getCause());
            }
        }
        return str;
    }

    public Map<String, String> getReferrerProperties() {
        synchronized (sReferrerPrefsLock) {
            if (sReferrerPrefsDirty || this.mReferrerPropertiesCache == null) {
                readReferrerProperties();
                sReferrerPrefsDirty = false;
            }
        }
        return this.mReferrerPropertiesCache;
    }

    public HashSet<Integer> getSeenCampaignIds() {
        HashSet<Integer> hashSet;
        synchronized (this) {
            hashSet = new HashSet<>();
            try {
                try {
                    StringTokenizer stringTokenizer = new StringTokenizer(this.mLoadStoredPreferences.get().getString("seen_campaign_ids", ""), DELIMITER);
                    while (stringTokenizer.hasMoreTokens()) {
                        hashSet.add(Integer.valueOf(stringTokenizer.nextToken()));
                    }
                } catch (InterruptedException e) {
                    MPLog.m310e(LOGTAG, "Couldn't read Mixpanel shared preferences.", e);
                }
            } catch (ExecutionException e2) {
                MPLog.m310e(LOGTAG, "Couldn't read Mixpanel shared preferences.", e2.getCause());
            }
        }
        return hashSet;
    }

    public Map<String, Long> getTimeEvents() {
        HashMap hashMap = new HashMap();
        try {
            for (Map.Entry<String, ?> entry : this.mTimeEventsPreferences.get().getAll().entrySet()) {
                hashMap.put(entry.getKey(), Long.valueOf(entry.getValue().toString()));
            }
        } catch (InterruptedException e) {
            e.printStackTrace();
        } catch (ExecutionException e2) {
            e2.printStackTrace();
        }
        return hashMap;
    }

    public boolean isFirstIntegration(String str) {
        boolean z;
        synchronized (this) {
            try {
                z = this.mMixpanelPreferences.get().getBoolean(str, false);
            } catch (InterruptedException e) {
                MPLog.m310e(LOGTAG, "Couldn't read internal Mixpanel from shared preferences.", e);
                z = false;
                return z;
            } catch (ExecutionException e2) {
                MPLog.m310e(LOGTAG, "Couldn't read internal Mixpanel shared preferences.", e2.getCause());
                z = false;
                return z;
            }
        }
        return z;
    }

    public boolean isFirstLaunch(boolean z) {
        boolean booleanValue;
        synchronized (this) {
            if (sIsFirstAppLaunch == null) {
                try {
                    try {
                        if (this.mMixpanelPreferences.get().getBoolean("has_launched", false)) {
                            sIsFirstAppLaunch = false;
                        } else {
                            sIsFirstAppLaunch = Boolean.valueOf(!z);
                        }
                    } catch (ExecutionException e) {
                        sIsFirstAppLaunch = false;
                    }
                } catch (InterruptedException e2) {
                    sIsFirstAppLaunch = false;
                }
            }
            booleanValue = sIsFirstAppLaunch.booleanValue();
        }
        return booleanValue;
    }

    public boolean isNewVersion(String str) {
        synchronized (this) {
            if (str == null) {
                return false;
            }
            Integer valueOf = Integer.valueOf(str);
            try {
                if (sPreviousVersionCode == null) {
                    sPreviousVersionCode = Integer.valueOf(this.mMixpanelPreferences.get().getInt("latest_version_code", -1));
                    if (sPreviousVersionCode.intValue() == -1) {
                        sPreviousVersionCode = valueOf;
                        SharedPreferences.Editor edit = this.mMixpanelPreferences.get().edit();
                        edit.putInt("latest_version_code", valueOf.intValue());
                        writeEdits(edit);
                    }
                }
                if (sPreviousVersionCode.intValue() < valueOf.intValue()) {
                    SharedPreferences.Editor edit2 = this.mMixpanelPreferences.get().edit();
                    edit2.putInt("latest_version_code", valueOf.intValue());
                    writeEdits(edit2);
                    return true;
                }
            } catch (InterruptedException e) {
                MPLog.m310e(LOGTAG, "Couldn't write internal Mixpanel from shared preferences.", e);
            } catch (ExecutionException e2) {
                MPLog.m310e(LOGTAG, "Couldn't write internal Mixpanel shared preferences.", e2.getCause());
            }
            return false;
        }
    }

    public void registerSuperProperties(JSONObject jSONObject) {
        synchronized (this) {
            JSONObject superPropertiesCache = getSuperPropertiesCache();
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                try {
                    superPropertiesCache.put(next, jSONObject.get(next));
                } catch (JSONException e) {
                    MPLog.m310e(LOGTAG, "Exception registering super property.", e);
                }
            }
            storeSuperProperties();
        }
    }

    public void registerSuperPropertiesOnce(JSONObject jSONObject) {
        synchronized (this) {
            JSONObject superPropertiesCache = getSuperPropertiesCache();
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                if (!superPropertiesCache.has(next)) {
                    try {
                        superPropertiesCache.put(next, jSONObject.get(next));
                    } catch (JSONException e) {
                        MPLog.m310e(LOGTAG, "Exception registering super property.", e);
                    }
                }
            }
            storeSuperProperties();
        }
    }

    public void removeTimeEvent(String str) {
        try {
            SharedPreferences.Editor edit = this.mTimeEventsPreferences.get().edit();
            edit.remove(str);
            writeEdits(edit);
        } catch (InterruptedException e) {
            e.printStackTrace();
        } catch (ExecutionException e2) {
            e2.printStackTrace();
        }
    }

    public void saveCampaignAsSeen(Integer num) {
        synchronized (this) {
            try {
                SharedPreferences sharedPreferences = this.mLoadStoredPreferences.get();
                SharedPreferences.Editor edit = sharedPreferences.edit();
                String string = sharedPreferences.getString("seen_campaign_ids", "");
                edit.putString("seen_campaign_ids", string + num + DELIMITER);
                writeEdits(edit);
            } catch (InterruptedException e) {
                MPLog.m310e(LOGTAG, "Can't write campaign id to shared preferences", e);
            } catch (ExecutionException e2) {
                MPLog.m310e(LOGTAG, "Can't write campaign d to shared preferences", e2.getCause());
            }
        }
    }

    public void setEventsDistinctId(String str) {
        synchronized (this) {
            if (!this.mIdentitiesLoaded) {
                readIdentities();
            }
            this.mEventsDistinctId = str;
            writeIdentities();
        }
    }

    public void setHasLaunched() {
        synchronized (this) {
            try {
                SharedPreferences.Editor edit = this.mMixpanelPreferences.get().edit();
                edit.putBoolean("has_launched", true);
                writeEdits(edit);
            } catch (InterruptedException e) {
                MPLog.m310e(LOGTAG, "Couldn't write internal Mixpanel shared preferences.", e);
            } catch (ExecutionException e2) {
                MPLog.m310e(LOGTAG, "Couldn't write internal Mixpanel shared preferences.", e2.getCause());
            }
        }
    }

    public void setIsIntegrated(String str) {
        synchronized (this) {
            try {
                SharedPreferences.Editor edit = this.mMixpanelPreferences.get().edit();
                edit.putBoolean(str, true);
                writeEdits(edit);
            } catch (InterruptedException e) {
                MPLog.m310e(LOGTAG, "Couldn't write internal Mixpanel from shared preferences.", e);
            } catch (ExecutionException e2) {
                MPLog.m310e(LOGTAG, "Couldn't write internal Mixpanel shared preferences.", e2.getCause());
            }
        }
    }

    public void setPeopleDistinctId(String str) {
        synchronized (this) {
            if (!this.mIdentitiesLoaded) {
                readIdentities();
            }
            this.mPeopleDistinctId = str;
            writeIdentities();
        }
    }

    public void storePushId(String str) {
        synchronized (this) {
            try {
                SharedPreferences.Editor edit = this.mLoadStoredPreferences.get().edit();
                edit.putString("push_id", str);
                writeEdits(edit);
            } catch (InterruptedException e) {
                MPLog.m310e(LOGTAG, "Can't write push id to shared preferences", e);
            } catch (ExecutionException e2) {
                MPLog.m310e(LOGTAG, "Can't write push id to shared preferences", e2.getCause());
            }
        }
    }

    public void storeWaitingPeopleRecord(JSONObject jSONObject) {
        synchronized (this) {
            if (!this.mIdentitiesLoaded) {
                readIdentities();
            }
            if (this.mWaitingPeopleRecords == null) {
                this.mWaitingPeopleRecords = new JSONArray();
            }
            this.mWaitingPeopleRecords.put(jSONObject);
            writeIdentities();
        }
    }

    public void unregisterSuperProperty(String str) {
        synchronized (this) {
            getSuperPropertiesCache().remove(str);
            storeSuperProperties();
        }
    }

    public void updateSuperProperties(SuperPropertyUpdate superPropertyUpdate) {
        synchronized (this) {
            JSONObject superPropertiesCache = getSuperPropertiesCache();
            JSONObject jSONObject = new JSONObject();
            try {
                Iterator<String> keys = superPropertiesCache.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    jSONObject.put(next, superPropertiesCache.get(next));
                }
                JSONObject update = superPropertyUpdate.update(jSONObject);
                if (update == null) {
                    MPLog.m305w(LOGTAG, "An update to Mixpanel's super properties returned null, and will have no effect.");
                    return;
                }
                this.mSuperPropertiesCache = update;
                storeSuperProperties();
            } catch (JSONException e) {
                MPLog.m310e(LOGTAG, "Can't copy from one JSONObject to another", e);
            }
        }
    }

    public JSONArray waitingPeopleRecordsForSending() {
        JSONArray jSONArray;
        ExecutionException e;
        InterruptedException e2;
        synchronized (this) {
            jSONArray = null;
            jSONArray = null;
            try {
                jSONArray = waitingPeopleRecordsForSending(this.mLoadStoredPreferences.get());
                try {
                    readIdentities();
                } catch (InterruptedException e3) {
                    e2 = e3;
                    MPLog.m310e(LOGTAG, "Couldn't read waiting people records from shared preferences.", e2);
                    return jSONArray;
                } catch (ExecutionException e4) {
                    e = e4;
                    MPLog.m310e(LOGTAG, "Couldn't read waiting people records from shared preferences.", e.getCause());
                    return jSONArray;
                }
            } catch (InterruptedException e5) {
                e2 = e5;
            } catch (ExecutionException e6) {
                e = e6;
            }
        }
        return jSONArray;
    }
}
