package com.google.firebase.iid;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import androidx.core.content.ContextCompat;
import java.io.File;
import java.io.IOException;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/Store.class */
public class Store {
    final Context context;
    final SharedPreferences store;
    @GuardedBy
    private final Map<String, Long> subtypeCreationTimes = new ArrayMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/google/firebase/iid/Store$Token.class */
    public static class Token {
        private static final long REFRESH_PERIOD_MILLIS = TimeUnit.DAYS.toMillis(7);
        final String appVersion;
        final long timestamp;
        final String token;

        private Token(String str, String str2, long j) {
            this.token = str;
            this.appVersion = str2;
            this.timestamp = j;
        }

        static String encode(String str, String str2, long j) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("token", str);
                jSONObject.put("appVersion", str2);
                jSONObject.put("timestamp", j);
                return jSONObject.toString();
            } catch (JSONException e) {
                String valueOf = String.valueOf(e);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 24);
                sb.append("Failed to encode token: ");
                sb.append(valueOf);
                Log.w("FirebaseInstanceId", sb.toString());
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static String getTokenOrNull(@Nullable Token token) {
            if (token == null) {
                return null;
            }
            return token.token;
        }

        static Token parse(String str) {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            if (!str.startsWith("{")) {
                return new Token(str, null, 0L);
            }
            try {
                JSONObject jSONObject = new JSONObject(str);
                return new Token(jSONObject.getString("token"), jSONObject.getString("appVersion"), jSONObject.getLong("timestamp"));
            } catch (JSONException e) {
                String valueOf = String.valueOf(e);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 23);
                sb.append("Failed to parse token: ");
                sb.append(valueOf);
                Log.w("FirebaseInstanceId", sb.toString());
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean needsRefresh(String str) {
            return System.currentTimeMillis() > this.timestamp + REFRESH_PERIOD_MILLIS || !str.equals(this.appVersion);
        }
    }

    public Store(Context context) {
        this.context = context;
        this.store = context.getSharedPreferences("com.google.android.gms.appid", 0);
        checkForRestore("com.google.android.gms.appid-no-backup");
    }

    private void checkForRestore(String str) {
        File file = new File(ContextCompat.m19670i(this.context), str);
        if (!file.exists()) {
            try {
                if (file.createNewFile() && !isEmpty()) {
                    Log.i("FirebaseInstanceId", "App restored, clearing state");
                    deleteAll();
                    FirebaseInstanceId.getInstance().resetStorageAndScheduleSync();
                }
            } catch (IOException e) {
                if (Log.isLoggable("FirebaseInstanceId", 3)) {
                    String valueOf = String.valueOf(e.getMessage());
                    Log.d("FirebaseInstanceId", valueOf.length() != 0 ? "Error creating file in no backup dir: ".concat(valueOf) : new String("Error creating file in no backup dir: "));
                }
            }
        }
    }

    static String createSubtypeInfoKey(String str, String str2) {
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 3 + String.valueOf(str2).length());
        sb.append(str);
        sb.append("|S|");
        sb.append(str2);
        return sb.toString();
    }

    private String createTokenKey(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 4 + String.valueOf(str2).length() + String.valueOf(str3).length());
        sb.append(str);
        sb.append("|T|");
        sb.append(str2);
        sb.append("|");
        sb.append(str3);
        return sb.toString();
    }

    private long getCreationTimeFromSharedPreferences(String str) {
        String string = this.store.getString(createSubtypeInfoKey(str, "cre"), null);
        if (string == null) {
            return 0L;
        }
        try {
            return Long.parseLong(string);
        } catch (NumberFormatException e) {
            return 0L;
        }
    }

    private long writeCreationTimeToSharedPreferences(String str) {
        long currentTimeMillis = System.currentTimeMillis();
        if (this.store.contains(createSubtypeInfoKey(str, "cre"))) {
            return getCreationTimeFromSharedPreferences(str);
        }
        SharedPreferences.Editor edit = this.store.edit();
        edit.putString(createSubtypeInfoKey(str, "cre"), String.valueOf(currentTimeMillis));
        edit.commit();
        return currentTimeMillis;
    }

    public void deleteAll() {
        synchronized (this) {
            this.subtypeCreationTimes.clear();
            this.store.edit().clear().commit();
        }
    }

    public void deleteToken(String str, String str2, String str3) {
        synchronized (this) {
            String createTokenKey = createTokenKey(str, str2, str3);
            SharedPreferences.Editor edit = this.store.edit();
            edit.remove(createTokenKey);
            edit.commit();
        }
    }

    public long getCreationTime(String str) {
        synchronized (this) {
            Long l = this.subtypeCreationTimes.get(str);
            if (l != null) {
                return l.longValue();
            }
            return getCreationTimeFromSharedPreferences(str);
        }
    }

    public Token getToken(String str, String str2, String str3) {
        Token parse;
        synchronized (this) {
            parse = Token.parse(this.store.getString(createTokenKey(str, str2, str3), null));
        }
        return parse;
    }

    public boolean isEmpty() {
        boolean isEmpty;
        synchronized (this) {
            isEmpty = this.store.getAll().isEmpty();
        }
        return isEmpty;
    }

    public void saveToken(String str, String str2, String str3, String str4, String str5) {
        synchronized (this) {
            String encode = Token.encode(str4, str5, System.currentTimeMillis());
            if (encode != null) {
                SharedPreferences.Editor edit = this.store.edit();
                edit.putString(createTokenKey(str, str2, str3), encode);
                edit.commit();
            }
        }
    }

    public long setCreationTime(String str) {
        long writeCreationTimeToSharedPreferences;
        synchronized (this) {
            writeCreationTimeToSharedPreferences = writeCreationTimeToSharedPreferences(str);
            this.subtypeCreationTimes.put(str, Long.valueOf(writeCreationTimeToSharedPreferences));
        }
        return writeCreationTimeToSharedPreferences;
    }
}
