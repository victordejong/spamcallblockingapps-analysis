package com.tencent.mmkv;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.os.Process;
import android.util.Log;
import java.util.Arrays;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/tencent/mmkv/MMKV.class */
public class MMKV implements SharedPreferences, SharedPreferences.Editor {

    /* renamed from: a */
    private static final EnumMap<MMKVRecoverStrategic, Integer> f40279a;

    /* renamed from: b */
    private static final EnumMap<MMKVLogLevel, Integer> f40280b;

    /* renamed from: c */
    private static final MMKVLogLevel[] f40281c;

    /* renamed from: h */
    private static AbstractC9421b f40286h;

    /* renamed from: j */
    private static AbstractC9420a f40288j;
    private final long nativeHandle;

    /* renamed from: d */
    private static final Set<Long> f40282d = new HashSet();

    /* renamed from: e */
    private static String f40283e = null;

    /* renamed from: f */
    private static boolean f40284f = true;

    /* renamed from: g */
    private static final HashMap<String, Parcelable.Creator<?>> f40285g = new HashMap<>();

    /* renamed from: i */
    private static boolean f40287i = false;

    /* renamed from: com.tencent.mmkv.MMKV$a */
    /* loaded from: classes2-dex2jar.jar:com/tencent/mmkv/MMKV$a.class */
    public static /* synthetic */ class C9417a {

        /* renamed from: a */
        static final /* synthetic */ int[] f40289a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            int[] iArr = new int[MMKVLogLevel.values().length];
            f40289a = iArr;
            try {
                iArr[MMKVLogLevel.LevelDebug.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f40289a[MMKVLogLevel.LevelWarning.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f40289a[MMKVLogLevel.LevelError.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f40289a[MMKVLogLevel.LevelNone.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f40289a[MMKVLogLevel.LevelInfo.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    /* renamed from: com.tencent.mmkv.MMKV$b */
    /* loaded from: classes2-dex2jar.jar:com/tencent/mmkv/MMKV$b.class */
    public interface AbstractC9418b {
        /* renamed from: a */
        void mo582a(String str);
    }

    static {
        EnumMap<MMKVRecoverStrategic, Integer> enumMap = new EnumMap<>(MMKVRecoverStrategic.class);
        f40279a = enumMap;
        enumMap.put((EnumMap<MMKVRecoverStrategic, Integer>) MMKVRecoverStrategic.OnErrorDiscard, (MMKVRecoverStrategic) 0);
        enumMap.put((EnumMap<MMKVRecoverStrategic, Integer>) MMKVRecoverStrategic.OnErrorRecover, (MMKVRecoverStrategic) 1);
        EnumMap<MMKVLogLevel, Integer> enumMap2 = new EnumMap<>(MMKVLogLevel.class);
        f40280b = enumMap2;
        MMKVLogLevel mMKVLogLevel = MMKVLogLevel.LevelDebug;
        enumMap2.put((EnumMap<MMKVLogLevel, Integer>) mMKVLogLevel, (MMKVLogLevel) 0);
        MMKVLogLevel mMKVLogLevel2 = MMKVLogLevel.LevelInfo;
        enumMap2.put((EnumMap<MMKVLogLevel, Integer>) mMKVLogLevel2, (MMKVLogLevel) 1);
        MMKVLogLevel mMKVLogLevel3 = MMKVLogLevel.LevelWarning;
        enumMap2.put((EnumMap<MMKVLogLevel, Integer>) mMKVLogLevel3, (MMKVLogLevel) 2);
        MMKVLogLevel mMKVLogLevel4 = MMKVLogLevel.LevelError;
        enumMap2.put((EnumMap<MMKVLogLevel, Integer>) mMKVLogLevel4, (MMKVLogLevel) 3);
        MMKVLogLevel mMKVLogLevel5 = MMKVLogLevel.LevelNone;
        enumMap2.put((EnumMap<MMKVLogLevel, Integer>) mMKVLogLevel5, (MMKVLogLevel) 4);
        f40281c = new MMKVLogLevel[]{mMKVLogLevel, mMKVLogLevel2, mMKVLogLevel3, mMKVLogLevel4, mMKVLogLevel5};
    }

    private MMKV(long j) {
        this.nativeHandle = j;
    }

    /* renamed from: a */
    private static MMKV m604a(long j, String str, int i) {
        String str2;
        if (j == 0) {
            throw new RuntimeException("Fail to create an MMKV instance [" + str + "] in JNI");
        } else if (!f40284f) {
            return new MMKV(j);
        } else {
            Set<Long> set = f40282d;
            synchronized (set) {
                if (!set.contains(Long.valueOf(j))) {
                    if (!checkProcessMode(j)) {
                        if (i == 1) {
                            str2 = "Opening a multi-process MMKV instance [" + str + "] with SINGLE_PROCESS_MODE!";
                        } else {
                            str2 = ("Opening an MMKV instance [" + str + "] with MULTI_PROCESS_MODE, ") + "while it's already been opened with SINGLE_PROCESS_MODE by someone somewhere else!";
                        }
                        throw new IllegalArgumentException(str2);
                    }
                    set.add(Long.valueOf(j));
                }
            }
            return new MMKV(j);
        }
    }

    private native long actualSize(long j);

    private static native boolean checkProcessMode(long j);

    private native boolean containsKey(long j, String str);

    private native long count(long j);

    private static native long createNB(int i);

    private native boolean decodeBool(long j, String str, boolean z);

    private native byte[] decodeBytes(long j, String str);

    private native double decodeDouble(long j, String str, double d);

    private native float decodeFloat(long j, String str, float f);

    private native int decodeInt(long j, String str, int i);

    private native long decodeLong(long j, String str, long j2);

    private native String decodeString(long j, String str, String str2);

    private native String[] decodeStringSet(long j, String str);

    private static native void destroyNB(long j, int i);

    private native boolean encodeBool(long j, String str, boolean z);

    private native boolean encodeBytes(long j, String str, byte[] bArr);

    private native boolean encodeDouble(long j, String str, double d);

    private native boolean encodeFloat(long j, String str, float f);

    private native boolean encodeInt(long j, String str, int i);

    private native boolean encodeLong(long j, String str, long j2);

    private native boolean encodeSet(long j, String str, String[] strArr);

    private native boolean encodeString(long j, String str, String str2);

    private static native long getDefaultMMKV(int i, String str);

    private static native long getMMKVWithAshmemFD(String str, int i, int i2, String str2);

    private static native long getMMKVWithID(String str, int i, String str2, String str3);

    private static native long getMMKVWithIDAndSize(String str, int i, int i2, String str2);

    /* renamed from: i */
    private static String m596i(String str, AbstractC9418b abstractC9418b, MMKVLogLevel mMKVLogLevel) {
        if (abstractC9418b != null) {
            abstractC9418b.mo582a("mmkv");
        } else {
            System.loadLibrary("mmkv");
        }
        jniInitialize(str, m588q(mMKVLogLevel));
        f40283e = str;
        return str;
    }

    public static native boolean isFileValid(String str, String str2);

    private static native void jniInitialize(String str, int i);

    private static void mmkvLogImp(int i, String str, int i2, String str2, String str3) {
        AbstractC9421b abstractC9421b = f40286h;
        if (abstractC9421b != null && f40287i) {
            abstractC9421b.m572b(f40281c[i], str, i2, str2, str3);
            return;
        }
        int i3 = C9417a.f40289a[f40281c[i].ordinal()];
        if (i3 == 1) {
            Log.d("MMKV", str3);
        } else if (i3 == 2) {
            Log.w("MMKV", str3);
        } else if (i3 == 3) {
            Log.e("MMKV", str3);
        } else if (i3 != 5) {
        } else {
            Log.i("MMKV", str3);
        }
    }

    /* renamed from: o */
    public static String m590o() {
        return f40283e;
    }

    private static void onContentChangedByOuterProcess(String str) {
        AbstractC9420a abstractC9420a = f40288j;
        if (abstractC9420a != null) {
            abstractC9420a.m574a(str);
        }
    }

    public static native void onExit();

    private static int onMMKVCRCCheckFail(String str) {
        MMKVRecoverStrategic mMKVRecoverStrategic = MMKVRecoverStrategic.OnErrorDiscard;
        AbstractC9421b abstractC9421b = f40286h;
        if (abstractC9421b != null) {
            mMKVRecoverStrategic = abstractC9421b.m571c(str);
        }
        MMKVLogLevel mMKVLogLevel = MMKVLogLevel.LevelInfo;
        m583v(mMKVLogLevel, "Recover strategic for " + str + " is " + mMKVRecoverStrategic);
        Integer num = f40279a.get(mMKVRecoverStrategic);
        return num == null ? 0 : num.intValue();
    }

    private static int onMMKVFileLengthError(String str) {
        MMKVRecoverStrategic mMKVRecoverStrategic = MMKVRecoverStrategic.OnErrorDiscard;
        AbstractC9421b abstractC9421b = f40286h;
        if (abstractC9421b != null) {
            mMKVRecoverStrategic = abstractC9421b.m573a(str);
        }
        MMKVLogLevel mMKVLogLevel = MMKVLogLevel.LevelInfo;
        m583v(mMKVLogLevel, "Recover strategic for " + str + " is " + mMKVRecoverStrategic);
        Integer num = f40279a.get(mMKVRecoverStrategic);
        return num == null ? 0 : num.intValue();
    }

    @Deprecated
    /* renamed from: p */
    public static String m589p(String str, AbstractC9418b abstractC9418b) {
        return m596i(str, abstractC9418b, MMKVLogLevel.LevelInfo);
    }

    public static native int pageSize();

    /* renamed from: q */
    private static int m588q(MMKVLogLevel mMKVLogLevel) {
        int i = C9417a.f40289a[mMKVLogLevel.ordinal()];
        int i2 = 4;
        if (i == 1) {
            i2 = 0;
        } else if (i == 2) {
            i2 = 2;
        } else if (i == 3) {
            i2 = 3;
        } else if (i != 4) {
            i2 = 1;
        }
        return i2;
    }

    /* renamed from: r */
    public static MMKV m587r(String str, int i, int i2, String str2) {
        long mMKVWithAshmemFD = getMMKVWithAshmemFD(str, i, i2, str2);
        if (mMKVWithAshmemFD != 0) {
            return new MMKV(mMKVWithAshmemFD);
        }
        throw new RuntimeException("Fail to create an ashmem MMKV instance [" + str + "] in JNI");
    }

    private native void removeValueForKey(long j, String str);

    /* renamed from: s */
    public static MMKV m586s(Context context, String str, int i, int i2, String str2) {
        MMKV m577a;
        if (f40283e != null) {
            String m580b = MMKVContentProvider.m580b(context, Process.myPid());
            if (m580b == null || m580b.length() == 0) {
                m583v(MMKVLogLevel.LevelError, "process name detect fail, try again later");
                throw new IllegalStateException("process name detect fail, try again later");
            }
            if (m580b.contains(":")) {
                Uri m581a = MMKVContentProvider.m581a(context);
                if (m581a == null) {
                    m583v(MMKVLogLevel.LevelError, "MMKVContentProvider has invalid authority");
                    throw new IllegalStateException("MMKVContentProvider has invalid authority");
                }
                MMKVLogLevel mMKVLogLevel = MMKVLogLevel.LevelInfo;
                m583v(mMKVLogLevel, "getting parcelable mmkv in process, Uri = " + m581a);
                Bundle bundle = new Bundle();
                bundle.putInt("KEY_SIZE", i);
                bundle.putInt("KEY_MODE", i2);
                if (str2 != null) {
                    bundle.putString("KEY_CRYPT", str2);
                }
                Bundle call = context.getContentResolver().call(m581a, "mmkvFromAshmemID", str, bundle);
                if (call != null) {
                    call.setClassLoader(ParcelableMMKV.class.getClassLoader());
                    ParcelableMMKV parcelableMMKV = (ParcelableMMKV) call.getParcelable("KEY");
                    if (parcelableMMKV != null && (m577a = parcelableMMKV.m577a()) != null) {
                        m583v(mMKVLogLevel, m577a.mmapID() + " fd = " + m577a.ashmemFD() + ", meta fd = " + m577a.ashmemMetaFD());
                        return m577a;
                    }
                }
            }
            m583v(MMKVLogLevel.LevelInfo, "getting mmkv in main process");
            long mMKVWithIDAndSize = getMMKVWithIDAndSize(str, i, i2 | 8, str2);
            if (mMKVWithIDAndSize != 0) {
                return new MMKV(mMKVWithIDAndSize);
            }
            throw new IllegalStateException("Fail to create an Ashmem MMKV instance [" + str + "]");
        }
        throw new IllegalStateException("You should Call MMKV.initialize() first.");
    }

    private static native void setCallbackHandler(boolean z, boolean z2);

    private static native void setLogLevel(int i);

    private static native void setWantsContentChangeNotify(boolean z);

    private native void sync(boolean z);

    /* renamed from: t */
    public static MMKV m585t(String str, int i) {
        if (f40283e != null) {
            return m604a(getMMKVWithID(str, i, null, null), str, i);
        }
        throw new IllegalStateException("You should Call MMKV.initialize() first.");
    }

    private native long totalSize(long j);

    /* renamed from: v */
    private static void m583v(MMKVLogLevel mMKVLogLevel, String str) {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        StackTraceElement stackTraceElement = stackTrace[stackTrace.length - 1];
        Integer num = f40280b.get(mMKVLogLevel);
        mmkvLogImp(num == null ? 0 : num.intValue(), stackTraceElement.getFileName(), stackTraceElement.getLineNumber(), stackTraceElement.getMethodName(), str);
    }

    private native int valueSize(long j, String str, boolean z);

    public static native String version();

    private native int writeValueToNB(long j, String str, long j2, int i);

    public native String[] allKeys();

    @Override // android.content.SharedPreferences.Editor
    @Deprecated
    public void apply() {
        sync(false);
    }

    public native int ashmemFD();

    public native int ashmemMetaFD();

    /* renamed from: b */
    public boolean m603b(String str) {
        return containsKey(this.nativeHandle, str);
    }

    /* renamed from: c */
    public boolean m602c(String str, boolean z) {
        return decodeBool(this.nativeHandle, str, z);
    }

    public native void checkContentChangedByOuterProcess();

    public native void checkReSetCryptKey(String str);

    @Override // android.content.SharedPreferences.Editor
    public SharedPreferences.Editor clear() {
        clearAll();
        return this;
    }

    public native void clearAll();

    public native void clearMemoryCache();

    public native void close();

    @Override // android.content.SharedPreferences.Editor
    @Deprecated
    public boolean commit() {
        sync(true);
        return true;
    }

    @Override // android.content.SharedPreferences
    public boolean contains(String str) {
        return m603b(str);
    }

    public native String cryptKey();

    /* renamed from: d */
    public int m601d(String str, int i) {
        return decodeInt(this.nativeHandle, str, i);
    }

    /* renamed from: e */
    public long m600e(String str, long j) {
        return decodeLong(this.nativeHandle, str, j);
    }

    @Override // android.content.SharedPreferences
    public SharedPreferences.Editor edit() {
        return this;
    }

    /* renamed from: f */
    public String m599f(String str, String str2) {
        return decodeString(this.nativeHandle, str, str2);
    }

    /* renamed from: g */
    public Set<String> m598g(String str, Set<String> set) {
        return m597h(str, set, HashSet.class);
    }

    @Override // android.content.SharedPreferences
    public Map<String, ?> getAll() {
        throw new UnsupportedOperationException("Intentionally Not Supported. Use allKeys() instead, getAll() not implement because type-erasure inside mmkv");
    }

    @Override // android.content.SharedPreferences
    public boolean getBoolean(String str, boolean z) {
        return decodeBool(this.nativeHandle, str, z);
    }

    @Override // android.content.SharedPreferences
    public float getFloat(String str, float f) {
        return decodeFloat(this.nativeHandle, str, f);
    }

    @Override // android.content.SharedPreferences
    public int getInt(String str, int i) {
        return decodeInt(this.nativeHandle, str, i);
    }

    @Override // android.content.SharedPreferences
    public long getLong(String str, long j) {
        return decodeLong(this.nativeHandle, str, j);
    }

    @Override // android.content.SharedPreferences
    public String getString(String str, String str2) {
        return decodeString(this.nativeHandle, str, str2);
    }

    @Override // android.content.SharedPreferences
    public Set<String> getStringSet(String str, Set<String> set) {
        return m598g(str, set);
    }

    /* renamed from: h */
    public Set<String> m597h(String str, Set<String> set, Class<? extends Set> cls) {
        String[] decodeStringSet = decodeStringSet(this.nativeHandle, str);
        if (decodeStringSet == null) {
            return set;
        }
        try {
            Set<String> newInstance = cls.newInstance();
            newInstance.addAll(Arrays.asList(decodeStringSet));
            return newInstance;
        } catch (IllegalAccessException | InstantiationException e) {
            return set;
        }
    }

    /* renamed from: j */
    public boolean m595j(String str, int i) {
        return encodeInt(this.nativeHandle, str, i);
    }

    /* renamed from: k */
    public boolean m594k(String str, long j) {
        return encodeLong(this.nativeHandle, str, j);
    }

    /* renamed from: l */
    public boolean m593l(String str, String str2) {
        return encodeString(this.nativeHandle, str, str2);
    }

    public native void lock();

    /* renamed from: m */
    public boolean m592m(String str, Set<String> set) {
        return encodeSet(this.nativeHandle, str, set == null ? null : (String[]) set.toArray(new String[0]));
    }

    public native String mmapID();

    /* renamed from: n */
    public boolean m591n(String str, boolean z) {
        return encodeBool(this.nativeHandle, str, z);
    }

    @Override // android.content.SharedPreferences.Editor
    public SharedPreferences.Editor putBoolean(String str, boolean z) {
        encodeBool(this.nativeHandle, str, z);
        return this;
    }

    @Override // android.content.SharedPreferences.Editor
    public SharedPreferences.Editor putFloat(String str, float f) {
        encodeFloat(this.nativeHandle, str, f);
        return this;
    }

    @Override // android.content.SharedPreferences.Editor
    public SharedPreferences.Editor putInt(String str, int i) {
        encodeInt(this.nativeHandle, str, i);
        return this;
    }

    @Override // android.content.SharedPreferences.Editor
    public SharedPreferences.Editor putLong(String str, long j) {
        encodeLong(this.nativeHandle, str, j);
        return this;
    }

    @Override // android.content.SharedPreferences.Editor
    public SharedPreferences.Editor putString(String str, String str2) {
        encodeString(this.nativeHandle, str, str2);
        return this;
    }

    @Override // android.content.SharedPreferences.Editor
    public SharedPreferences.Editor putStringSet(String str, Set<String> set) {
        m592m(str, set);
        return this;
    }

    public native boolean reKey(String str);

    @Override // android.content.SharedPreferences
    public void registerOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        throw new UnsupportedOperationException("Intentionally Not implement in MMKV");
    }

    @Override // android.content.SharedPreferences.Editor
    public SharedPreferences.Editor remove(String str) {
        m584u(str);
        return this;
    }

    public native void removeValuesForKeys(String[] strArr);

    public native void trim();

    public native boolean tryLock();

    /* renamed from: u */
    public void m584u(String str) {
        removeValueForKey(this.nativeHandle, str);
    }

    public native void unlock();

    @Override // android.content.SharedPreferences
    public void unregisterOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        throw new UnsupportedOperationException("Intentionally Not implement in MMKV");
    }
}
