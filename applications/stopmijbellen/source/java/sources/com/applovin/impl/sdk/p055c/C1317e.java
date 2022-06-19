package com.applovin.impl.sdk.p055c;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.StrictMode;
import android.support.p012v4.media.C0082b;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.C1479t;
import com.applovin.impl.sdk.p057e.C1362o;
import com.applovin.impl.sdk.p057e.C1387z;
import com.applovin.impl.sdk.utils.Utils;
import java.util.Set;
/* renamed from: com.applovin.impl.sdk.c.e */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/c/e.class */
public final class C1317e {

    /* renamed from: a */
    private static C1408l f5013a;

    /* renamed from: b */
    private static SharedPreferences f5014b;

    /* renamed from: c */
    private final SharedPreferences f5015c;

    public C1317e(C1408l c1408l) {
        StringBuilder m8752j = C0082b.m8752j("com.applovin.sdk.preferences.");
        m8752j.append(c1408l.m5444z());
        this.f5015c = c1408l.m5532K().getSharedPreferences(m8752j.toString(), 0);
        if (!c1408l.m5467e()) {
            f5013a = c1408l;
        }
    }

    /* renamed from: a */
    private static SharedPreferences m5813a(Context context) {
        if (f5014b == null) {
            f5014b = context.getSharedPreferences("com.applovin.sdk.shared", 0);
        }
        return f5014b;
    }

    /* JADX WARN: Type inference failed for: r0v45, types: [double] */
    /* JADX WARN: Type inference failed for: r0v50, types: [double] */
    /* JADX WARN: Type inference failed for: r0v53, types: [long] */
    /* JADX WARN: Type inference failed for: r0v60, types: [long] */
    /* JADX WARN: Type inference failed for: r0v63, types: [long] */
    /* JADX WARN: Type inference failed for: r0v66, types: [long] */
    /* renamed from: a */
    public static <T> T m5803a(String str, T t, Class cls, SharedPreferences sharedPreferences) {
        Set<String> set;
        char c;
        int i;
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            if (!sharedPreferences.contains(str)) {
                return t;
            }
            if (Boolean.class.equals(cls)) {
                set = Boolean.valueOf(t != null ? sharedPreferences.getBoolean(str, ((Boolean) t).booleanValue()) : sharedPreferences.getBoolean(str, false));
            } else if (Float.class.equals(cls)) {
                set = Float.valueOf(t != null ? sharedPreferences.getFloat(str, ((Float) t).floatValue()) : sharedPreferences.getFloat(str, 0.0f));
            } else if (Integer.class.equals(cls)) {
                if (t != null) {
                    i = sharedPreferences.getInt(str, t.getClass().equals(Long.class) ? ((Long) t).intValue() : ((Integer) t).intValue());
                } else {
                    i = sharedPreferences.getInt(str, 0);
                }
                set = Integer.valueOf(i);
            } else if (Long.class.equals(cls)) {
                if (t != null) {
                    c = sharedPreferences.getLong(str, t.getClass().equals(Integer.class) ? ((Integer) t).longValue() : ((Long) t).longValue());
                } else {
                    c = sharedPreferences.getLong(str, 0L);
                }
                set = Long.valueOf(c);
            } else if (Double.class.equals(cls)) {
                set = Double.valueOf(t != null ? Double.longBitsToDouble(sharedPreferences.getLong(str, Double.doubleToRawLongBits(((Double) t).doubleValue()))) : Double.longBitsToDouble(sharedPreferences.getLong(str, 0L)));
            } else {
                set = String.class.equals(cls) ? sharedPreferences.getString(str, (String) t) : Set.class.isAssignableFrom(cls) ? sharedPreferences.getStringSet(str, (Set) t) : t;
            }
            return set != null ? (T) cls.cast(set) : t;
        } catch (Throwable th) {
            try {
                C1479t.m5113c("SharedPreferencesManager", "Error getting value for key: " + str, th);
                return t;
            } finally {
                StrictMode.setThreadPolicy(allowThreadDiskReads);
            }
        }
    }

    /* renamed from: a */
    private static void m5812a(final SharedPreferences.Editor editor) {
        try {
            C1408l c1408l = f5013a;
            if (c1408l != null && ((Boolean) c1408l.m5511a(C1314b.f4937eJ)).booleanValue()) {
                if (!Utils.isMainThread()) {
                    editor.commit();
                } else if (f5013a.m5525R() != null) {
                    f5013a.m5525R().m5653a(new C1387z(f5013a, new Runnable() { // from class: com.applovin.impl.sdk.c.e.1
                        @Override // java.lang.Runnable
                        public void run() {
                            editor.commit();
                        }
                    }), C1362o.EnumC1364a.BACKGROUND);
                }
            }
            editor.apply();
        } catch (Throwable th) {
            C1479t.m5113c("SharedPreferencesManager", "Unable to apply changes", th);
        }
    }

    /* renamed from: a */
    public static <T> void m5808a(C1316d<T> c1316d, T t, Context context) {
        m5804a(c1316d.m5815a(), t, m5813a(context), (SharedPreferences.Editor) null);
    }

    /* JADX WARN: Type inference failed for: r0v37, types: [long] */
    /* JADX WARN: Type inference failed for: r0v42, types: [long] */
    /* renamed from: a */
    public static <T> void m5804a(String str, T t, SharedPreferences sharedPreferences, SharedPreferences.Editor editor) {
        char doubleToRawLongBits;
        boolean z = true;
        boolean z2 = editor != null;
        if (!z2) {
            editor = sharedPreferences.edit();
        }
        if (t == null) {
            editor.remove(str);
        } else if (t instanceof Boolean) {
            editor.putBoolean(str, ((Boolean) t).booleanValue());
        } else if (t instanceof Float) {
            editor.putFloat(str, ((Float) t).floatValue());
        } else if (t instanceof Integer) {
            editor.putInt(str, ((Integer) t).intValue());
        } else {
            if (t instanceof Long) {
                doubleToRawLongBits = ((Long) t).longValue();
            } else if (t instanceof Double) {
                doubleToRawLongBits = Double.doubleToRawLongBits(((Double) t).doubleValue());
            } else if (t instanceof String) {
                editor.putString(str, (String) t);
            } else if (t instanceof Set) {
                editor.putStringSet(str, (Set) t);
            } else {
                C1479t.m5107i("SharedPreferencesManager", "Unable to put default value of invalid type: " + t);
                z = false;
            }
            editor.putLong(str, doubleToRawLongBits);
        }
        if (!z || z2) {
            return;
        }
        m5812a(editor);
    }

    /* renamed from: b */
    public static <T> T m5801b(C1316d<T> c1316d, T t, Context context) {
        return (T) m5803a(c1316d.m5815a(), t, c1316d.m5814b(), m5813a(context));
    }

    /* renamed from: a */
    public void m5811a(SharedPreferences sharedPreferences) {
        m5812a(sharedPreferences.edit().clear());
    }

    /* renamed from: a */
    public <T> void m5810a(C1316d<T> c1316d) {
        m5812a(this.f5015c.edit().remove(c1316d.m5815a()));
    }

    /* renamed from: a */
    public <T> void m5809a(C1316d<T> c1316d, T t) {
        m5807a((C1316d<C1316d<T>>) c1316d, (C1316d<T>) t, this.f5015c);
    }

    /* renamed from: a */
    public <T> void m5807a(C1316d<T> c1316d, T t, SharedPreferences sharedPreferences) {
        m5805a(c1316d.m5815a(), (String) t, sharedPreferences);
    }

    /* renamed from: a */
    public <T> void m5806a(String str, T t, SharedPreferences.Editor editor) {
        m5804a(str, t, (SharedPreferences) null, editor);
    }

    /* renamed from: a */
    public <T> void m5805a(String str, T t, SharedPreferences sharedPreferences) {
        m5804a(str, t, sharedPreferences, (SharedPreferences.Editor) null);
    }

    /* renamed from: b */
    public <T> T m5802b(C1316d<T> c1316d, T t) {
        return (T) m5800b((C1316d<C1316d<T>>) c1316d, (C1316d<T>) t, this.f5015c);
    }

    /* renamed from: b */
    public <T> T m5800b(C1316d<T> c1316d, T t, SharedPreferences sharedPreferences) {
        return (T) m5803a(c1316d.m5815a(), t, c1316d.m5814b(), sharedPreferences);
    }
}
