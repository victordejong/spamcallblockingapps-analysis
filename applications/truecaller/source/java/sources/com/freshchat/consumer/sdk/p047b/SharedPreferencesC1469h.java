package com.freshchat.consumer.sdk.p047b;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.provider.Settings;
import android.util.Base64;
import com.freshchat.consumer.sdk.p057j.C1613ai;
import com.freshchat.consumer.sdk.p057j.C1626as;
import com.freshchat.consumer.sdk.p057j.C1716k;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.SecureRandom;
import java.security.spec.InvalidKeySpecException;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.SecretKeySpec;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.freshchat.consumer.sdk.b.h */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/b/h.class */
public class SharedPreferencesC1469h implements SharedPreferences {

    /* renamed from: cH */
    private static SharedPreferences f4080cH;

    /* renamed from: cI */
    private static byte[] f4081cI;

    /* renamed from: cJ */
    private static boolean f4082cJ = false;

    /* renamed from: fB */
    private static int f4083fB;

    /* renamed from: com.freshchat.consumer.sdk.b.h$a */
    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/b/h$a.class */
    public static class SharedPreferences$EditorC1470a implements SharedPreferences.Editor {

        /* renamed from: dQ */
        private SharedPreferences.Editor f4084dQ;

        private SharedPreferences$EditorC1470a() {
            this.f4084dQ = SharedPreferencesC1469h.f4080cH.edit();
        }

        @Override // android.content.SharedPreferences.Editor
        public void apply() {
            this.f4084dQ.apply();
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor clear() {
            this.f4084dQ.clear();
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public boolean commit() {
            return this.f4084dQ.commit();
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putBoolean(String str, boolean z) {
            this.f4084dQ.putString(SharedPreferencesC1469h.m40871M(str), SharedPreferencesC1469h.m40871M(Boolean.toString(z)));
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putFloat(String str, float f) {
            this.f4084dQ.putString(SharedPreferencesC1469h.m40871M(str), SharedPreferencesC1469h.m40871M(Float.toString(f)));
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putInt(String str, int i) {
            this.f4084dQ.putString(SharedPreferencesC1469h.m40871M(str), SharedPreferencesC1469h.m40871M(Integer.toString(i)));
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putLong(String str, long j) {
            this.f4084dQ.putString(SharedPreferencesC1469h.m40871M(str), SharedPreferencesC1469h.m40871M(Long.toString(j)));
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putString(String str, String str2) {
            this.f4084dQ.putString(SharedPreferencesC1469h.m40871M(str), SharedPreferencesC1469h.m40871M(str2));
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putStringSet(String str, Set<String> set) {
            HashSet hashSet = new HashSet(set.size());
            for (String str2 : set) {
                hashSet.add(SharedPreferencesC1469h.m40871M(str2));
            }
            this.f4084dQ.putStringSet(SharedPreferencesC1469h.m40871M(str), hashSet);
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor remove(String str) {
            this.f4084dQ.remove(SharedPreferencesC1469h.m40871M(str));
            return this;
        }
    }

    public SharedPreferencesC1469h(Context context, String str) {
        if (f4080cH == null) {
            f4080cH = context.getSharedPreferences(str, 0);
        }
        try {
            String m40857k = m40857k(context);
            String string = f4080cH.getString(m40857k, null);
            if (string == null) {
                string = m40866bb();
                f4080cH.edit().putString(m40857k, string).commit();
                m40859ix();
            } else {
                f4083fB = f4080cH.getInt("PREF_ALG_VER", 1);
            }
            C1613ai.m40281i("FRESHCHAT", "Shared Preference encryption version " + f4083fB);
            f4081cI = decode(string);
        } catch (Exception e) {
            if (f4082cJ) {
                StringBuilder m8728C = C22128a.m8728C("Error init:");
                m8728C.append(e.getMessage());
                C1613ai.m40283e("FRESHCHAT", m8728C.toString());
            }
            throw new IllegalStateException(e);
        }
    }

    /* renamed from: M */
    public static String m40871M(String str) {
        String str2 = str;
        if (str != null) {
            if (str.length() == 0) {
                str2 = str;
            } else {
                try {
                    Cipher m40862eP = m40862eP();
                    byte[] doFinal = m40862eP.doFinal(str.getBytes(StringConstant.UTF8));
                    byte[] bArr = doFinal;
                    if (f4083fB == 3) {
                        bArr = C1716k.m39901a(m40862eP.getIV(), doFinal);
                    }
                    return encode(bArr);
                } catch (Exception e) {
                    if (f4082cJ) {
                        C1613ai.m40277w("FRESHCHAT", "encrypt", e);
                    }
                    str2 = null;
                }
            }
        }
        return str2;
    }

    /* renamed from: N */
    private static String m40870N(String str) {
        String str2 = str;
        if (str != null) {
            if (str.length() == 0) {
                str2 = str;
            } else {
                try {
                    byte[] decode = decode(str);
                    Cipher m40868a = m40868a(decode);
                    return new String(f4083fB == 3 ? m40868a.doFinal(decode, 12, decode.length - 12) : m40868a.doFinal(decode), StringConstant.UTF8);
                } catch (Exception e) {
                    if (f4082cJ) {
                        C1613ai.m40277w("FRESHCHAT", "decrypt", e);
                    }
                    str2 = null;
                }
            }
        }
        return str2;
    }

    /* renamed from: a */
    private static Cipher m40868a(byte[] bArr) throws NoSuchPaddingException, NoSuchAlgorithmException, NoSuchProviderException, InvalidKeyException, InvalidAlgorithmParameterException {
        Cipher m40860iw = m40860iw();
        int i = f4083fB;
        if (i == 3) {
            m40860iw.init(2, new SecretKeySpec(f4081cI, getTransformation()), new IvParameterSpec(bArr, 0, 12));
        } else if (i == 2 || i == 4) {
            m40860iw.init(2, new SecretKeySpec(f4081cI, getTransformation()), new IvParameterSpec(new byte[m40860iw.getBlockSize()]));
        } else {
            m40860iw.init(2, new SecretKeySpec(f4081cI, getTransformation()));
        }
        return m40860iw;
    }

    /* renamed from: a */
    private static SecretKey m40867a(char[] cArr, byte[] bArr, String str, int i, int i2) throws NoSuchAlgorithmException, InvalidKeySpecException, NoSuchProviderException {
        int i3 = i;
        if (i == 0) {
            i3 = 1000;
        }
        return SecretKeyFactory.getInstance(str, "BC").generateSecret(new PBEKeySpec(cArr, bArr, i3, i2));
    }

    /* renamed from: bb */
    private static String m40866bb() throws NoSuchAlgorithmException {
        SecureRandom secureRandom = new SecureRandom();
        KeyGenerator keyGenerator = KeyGenerator.getInstance("AES");
        try {
            keyGenerator.init(256, secureRandom);
        } catch (Exception e) {
            try {
                keyGenerator.init(192, secureRandom);
            } catch (Exception e2) {
                keyGenerator.init(128, secureRandom);
            }
        }
        return encode(keyGenerator.generateKey().getEncoded());
    }

    private static byte[] decode(String str) {
        return Base64.decode(str, 3);
    }

    /* renamed from: eP */
    private static Cipher m40862eP() throws NoSuchPaddingException, NoSuchAlgorithmException, NoSuchProviderException, InvalidKeyException, InvalidAlgorithmParameterException {
        Cipher m40860iw = m40860iw();
        int i = f4083fB;
        if (i == 3) {
            m40860iw.init(1, new SecretKeySpec(f4081cI, getTransformation()), new IvParameterSpec(m40861iv()));
        } else if (i == 2 || i == 4) {
            m40860iw.init(1, new SecretKeySpec(f4081cI, getTransformation()), new IvParameterSpec(new byte[m40860iw.getBlockSize()]));
        } else {
            m40860iw.init(1, new SecretKeySpec(f4081cI, getTransformation()));
        }
        return m40860iw;
    }

    private static String encode(byte[] bArr) {
        return Base64.encodeToString(bArr, 3);
    }

    private static String getTransformation() {
        return f4083fB >= 2 ? "AES/GCM/NoPadding" : "AES";
    }

    /* renamed from: iv */
    private static byte[] m40861iv() {
        byte[] bArr = new byte[12];
        new SecureRandom().nextBytes(bArr);
        return bArr;
    }

    /* renamed from: iw */
    private static Cipher m40860iw() throws NoSuchPaddingException, NoSuchAlgorithmException, NoSuchProviderException {
        return f4083fB >= 2 ? Cipher.getInstance(getTransformation()) : Cipher.getInstance(getTransformation(), "BC");
    }

    /* renamed from: ix */
    private void m40859ix() {
        f4083fB = 4;
        f4080cH.edit().putInt("PREF_ALG_VER", 4).commit();
    }

    /* renamed from: k */
    private static String m40857k(Context context) throws InvalidKeySpecException, NoSuchAlgorithmException, NoSuchProviderException {
        SecretKey secretKey;
        char[] charArray = context.getPackageName().toCharArray();
        byte[] bytes = m40856l(context).getBytes();
        try {
            secretKey = m40867a(charArray, bytes, "PBKDF2WithHmacSHA1", 2000, 256);
        } catch (NoSuchAlgorithmException e) {
            secretKey = m40867a(charArray, bytes, "PBEWithMD5AndDES", 2000, 256);
        }
        return encode(secretKey.getEncoded());
    }

    /* renamed from: l */
    private static String m40856l(Context context) {
        String str = null;
        try {
            str = (String) Build.class.getField("SERIAL").get(null);
        } catch (Exception e) {
        }
        String str2 = str;
        if (C1626as.isEmpty(str)) {
            str2 = Settings.Secure.getString(context.getContentResolver(), AnalyticsConstants.ANDROID_ID);
        }
        return str2;
    }

    /* renamed from: ci */
    public SharedPreferences$EditorC1470a edit() {
        return new SharedPreferences$EditorC1470a();
    }

    @Override // android.content.SharedPreferences
    public boolean contains(String str) {
        return f4080cH.contains(m40871M(str));
    }

    /* renamed from: eO */
    public boolean m40863eO() {
        return f4083fB != 4;
    }

    @Override // android.content.SharedPreferences
    public Map<String, String> getAll() {
        Map<String, ?> all = f4080cH.getAll();
        HashMap hashMap = new HashMap(all.size());
        for (Map.Entry<String, ?> entry : all.entrySet()) {
            try {
                hashMap.put(m40870N(entry.getKey()), m40870N(entry.getValue().toString()));
            } catch (Exception e) {
            }
        }
        return hashMap;
    }

    @Override // android.content.SharedPreferences
    public boolean getBoolean(String str, boolean z) {
        String string = f4080cH.getString(m40871M(str), null);
        if (string == null) {
            return z;
        }
        try {
            return Boolean.parseBoolean(m40870N(string));
        } catch (NumberFormatException e) {
            throw new ClassCastException(e.getMessage());
        }
    }

    @Override // android.content.SharedPreferences
    public float getFloat(String str, float f) {
        String string = f4080cH.getString(m40871M(str), null);
        if (string == null) {
            return f;
        }
        try {
            return Float.parseFloat(m40870N(string));
        } catch (NumberFormatException e) {
            throw new ClassCastException(e.getMessage());
        }
    }

    @Override // android.content.SharedPreferences
    public int getInt(String str, int i) {
        String string = f4080cH.getString(m40871M(str), null);
        if (string == null) {
            return i;
        }
        try {
            return Integer.parseInt(m40870N(string));
        } catch (NumberFormatException e) {
            throw new ClassCastException(e.getMessage());
        }
    }

    @Override // android.content.SharedPreferences
    public long getLong(String str, long j) {
        String string = f4080cH.getString(m40871M(str), null);
        if (string == null) {
            return j;
        }
        try {
            return Long.parseLong(m40870N(string));
        } catch (NumberFormatException e) {
            throw new ClassCastException(e.getMessage());
        }
    }

    @Override // android.content.SharedPreferences
    public String getString(String str, String str2) {
        String string = f4080cH.getString(m40871M(str), null);
        if (string != null) {
            str2 = m40870N(string);
        }
        return str2;
    }

    @Override // android.content.SharedPreferences
    public Set<String> getStringSet(String str, Set<String> set) {
        Set<String> stringSet = f4080cH.getStringSet(m40871M(str), null);
        if (stringSet == null) {
            return set;
        }
        HashSet hashSet = new HashSet(stringSet.size());
        for (String str2 : stringSet) {
            hashSet.add(m40870N(str2));
        }
        return hashSet;
    }

    /* renamed from: jM */
    public boolean m40858jM() {
        return f4083fB == 3;
    }

    @Override // android.content.SharedPreferences
    public void registerOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        f4080cH.registerOnSharedPreferenceChangeListener(onSharedPreferenceChangeListener);
    }

    @Override // android.content.SharedPreferences
    public void unregisterOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        f4080cH.unregisterOnSharedPreferenceChangeListener(onSharedPreferenceChangeListener);
    }
}
