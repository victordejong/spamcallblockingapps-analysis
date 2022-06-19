package com.huawei.hms.aaid.utils;

import android.content.ContentValues;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import com.huawei.hms.support.log.HMSLog;
import java.io.File;
import java.lang.reflect.Constructor;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/aaid/utils/PushPreferences.class */
public class PushPreferences {
    public static final String TAG = "PushPreferences";

    /* renamed from: a */
    public SharedPreferences f7246a;

    public PushPreferences(Context context, String str) {
        Objects.requireNonNull(context, "context is null!");
        Context context2 = context;
        if (Build.VERSION.SDK_INT >= 24) {
            context2 = context.createDeviceProtectedStorageContext();
            SharedPreferences sharedPreferences = context2.getSharedPreferences("move_to_de_records", 0);
            if (!sharedPreferences.getBoolean(str, false)) {
                if (!context2.moveSharedPreferencesFrom(context, str)) {
                    context2 = context;
                } else {
                    SharedPreferences.Editor edit = sharedPreferences.edit();
                    edit.putBoolean(str, true);
                    edit.apply();
                }
            }
        }
        SharedPreferences m38184b = m38184b(context2, str);
        this.f7246a = m38184b;
        if (m38184b == null) {
            HMSLog.m37192w(TAG, "get new sharedPreferences failed,start to get from context. ");
            this.f7246a = context2.getSharedPreferences(str, 0);
        }
    }

    /* renamed from: a */
    public final File m38185a(Context context, String str) {
        File file;
        try {
            if (Build.VERSION.SDK_INT >= 24) {
                file = new File(context.getDataDir() + "/shared_prefs", str + ".xml");
            } else {
                file = new File(context.getFilesDir().getParent() + "/shared_prefs", str + ".xml");
            }
            if (file.exists()) {
                return file;
            }
            return null;
        } catch (Exception e) {
            C22128a.m8735A0(e, C22128a.m8728C("get failed error."), TAG);
            return null;
        }
    }

    /* renamed from: b */
    public final SharedPreferences m38184b(Context context, String str) {
        File m38185a = m38185a(context, str);
        SharedPreferences sharedPreferences = null;
        if (m38185a == null) {
            return null;
        }
        try {
            Constructor<?> declaredConstructor = Class.forName("android.app.SharedPreferencesImpl").getDeclaredConstructor(File.class, Integer.TYPE);
            declaredConstructor.setAccessible(true);
            sharedPreferences = (SharedPreferences) declaredConstructor.newInstance(m38185a, 0);
        } catch (Exception e) {
            C22128a.m8735A0(e, C22128a.m8728C("get SharedPreferences error."), TAG);
        }
        return sharedPreferences;
    }

    public boolean clear() {
        SharedPreferences sharedPreferences = this.f7246a;
        if (sharedPreferences != null) {
            return sharedPreferences.edit().clear().commit();
        }
        return false;
    }

    public boolean containsKey(String str) {
        SharedPreferences sharedPreferences = this.f7246a;
        return sharedPreferences != null && sharedPreferences.contains(str);
    }

    public Map<String, ?> getAll() {
        SharedPreferences sharedPreferences = this.f7246a;
        return sharedPreferences != null ? sharedPreferences.getAll() : new HashMap();
    }

    public boolean getBoolean(String str) {
        SharedPreferences sharedPreferences = this.f7246a;
        boolean z = false;
        if (sharedPreferences != null) {
            z = false;
            if (sharedPreferences.getBoolean(str, false)) {
                z = true;
            }
        }
        return z;
    }

    public int getInt(String str) {
        SharedPreferences sharedPreferences = this.f7246a;
        int i = 0;
        if (sharedPreferences != null) {
            i = sharedPreferences.getInt(str, 0);
        }
        return i;
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    public long getLong(String str) {
        SharedPreferences sharedPreferences = this.f7246a;
        char c = 0;
        if (sharedPreferences != null) {
            c = sharedPreferences.getLong(str, 0L);
        }
        return c;
    }

    public String getString(String str) {
        SharedPreferences sharedPreferences = this.f7246a;
        String str2 = "";
        if (sharedPreferences != null) {
            str2 = sharedPreferences.getString(str, "");
        }
        return str2;
    }

    public ContentValues read() {
        Map<String, ?> all;
        SharedPreferences sharedPreferences = this.f7246a;
        if (sharedPreferences == null || (all = sharedPreferences.getAll()) == null) {
            return null;
        }
        ContentValues contentValues = new ContentValues();
        for (Map.Entry<String, ?> entry : all.entrySet()) {
            String key = entry.getKey();
            Object value = entry.getValue();
            if (value instanceof String) {
                contentValues.put(key, String.valueOf(value));
            } else if ((value instanceof Integer) || (value instanceof Short) || (value instanceof Byte)) {
                contentValues.put(key, (Integer) value);
            } else if (value instanceof Long) {
                contentValues.put(key, (Long) value);
            } else if (value instanceof Float) {
                contentValues.put(key, (Float) value);
            } else if (value instanceof Double) {
                contentValues.put(key, Float.valueOf((float) ((Double) value).doubleValue()));
            } else if (value instanceof Boolean) {
                contentValues.put(key, (Boolean) value);
            }
        }
        return contentValues;
    }

    public boolean removeKey(String str) {
        SharedPreferences.Editor edit;
        SharedPreferences sharedPreferences = this.f7246a;
        if (sharedPreferences == null || !sharedPreferences.contains(str) || (edit = this.f7246a.edit()) == null) {
            return false;
        }
        return edit.remove(str).commit();
    }

    public boolean removeKey(String[] strArr) {
        if (this.f7246a == null) {
            return false;
        }
        for (String str : strArr) {
            if (this.f7246a.contains(str)) {
                this.f7246a.edit().remove(str);
            }
        }
        this.f7246a.edit().commit();
        return true;
    }

    public boolean save(String str, Object obj) {
        SharedPreferences sharedPreferences = this.f7246a;
        if (sharedPreferences == null) {
            return false;
        }
        SharedPreferences.Editor edit = sharedPreferences.edit();
        if (obj instanceof String) {
            edit.putString(str, String.valueOf(obj));
        } else if (obj instanceof Integer) {
            edit.putInt(str, ((Integer) obj).intValue());
        } else if (obj instanceof Short) {
            edit.putInt(str, ((Short) obj).shortValue());
        } else if (obj instanceof Byte) {
            edit.putInt(str, ((Byte) obj).byteValue());
        } else if (obj instanceof Long) {
            edit.putLong(str, ((Long) obj).longValue());
        } else if (obj instanceof Float) {
            edit.putFloat(str, ((Float) obj).floatValue());
        } else if (obj instanceof Double) {
            edit.putFloat(str, (float) ((Double) obj).doubleValue());
        } else if (obj instanceof Boolean) {
            edit.putBoolean(str, ((Boolean) obj).booleanValue());
        }
        return edit.commit();
    }

    public void saveBoolean(String str, boolean z) {
        SharedPreferences.Editor edit;
        SharedPreferences sharedPreferences = this.f7246a;
        if (sharedPreferences == null || (edit = sharedPreferences.edit()) == null) {
            return;
        }
        edit.putBoolean(str, z).commit();
    }

    public void saveInt(String str, Integer num) {
        SharedPreferences.Editor edit;
        SharedPreferences sharedPreferences = this.f7246a;
        if (sharedPreferences == null || (edit = sharedPreferences.edit()) == null) {
            return;
        }
        edit.putInt(str, num.intValue()).commit();
    }

    public void saveLong(String str, Long l) {
        SharedPreferences.Editor edit;
        SharedPreferences sharedPreferences = this.f7246a;
        if (sharedPreferences == null || (edit = sharedPreferences.edit()) == null) {
            return;
        }
        edit.putLong(str, l.longValue()).commit();
    }

    public void saveMap(Map<String, Object> map) {
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            save(entry.getKey(), entry.getValue());
        }
    }

    public boolean saveString(String str, String str2) {
        SharedPreferences.Editor edit;
        SharedPreferences sharedPreferences = this.f7246a;
        if (sharedPreferences == null || (edit = sharedPreferences.edit()) == null) {
            return false;
        }
        return edit.putString(str, str2).commit();
    }

    public boolean write(ContentValues contentValues) {
        if (this.f7246a == null || contentValues == null) {
            return false;
        }
        boolean z = true;
        for (Map.Entry<String, Object> entry : contentValues.valueSet()) {
            if (!save(entry.getKey(), entry.getValue())) {
                z = false;
            }
        }
        return z;
    }
}
