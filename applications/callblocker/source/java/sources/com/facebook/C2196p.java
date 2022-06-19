package com.facebook;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import com.facebook.internal.C2063r;
import com.facebook.internal.C2079x;
import com.facebook.internal.C2084y;
import java.util.ArrayList;
import java.util.Date;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.facebook.p */
/* loaded from: classes-dex2jar.jar:com/facebook/p.class */
public final class C2196p {

    /* renamed from: a */
    private static final String f6423a = C2196p.class.getSimpleName();

    /* renamed from: b */
    private String f6424b;

    /* renamed from: c */
    private SharedPreferences f6425c;

    public C2196p(Context context) {
        this(context, null);
    }

    public C2196p(Context context, String str) {
        C2084y.m15417a((Object) context, "context");
        this.f6424b = C2079x.m15472a(str) ? "com.facebook.SharedPreferencesTokenCachingStrategy.DEFAULT_KEY" : str;
        Context applicationContext = context.getApplicationContext();
        this.f6425c = (applicationContext != null ? applicationContext : context).getSharedPreferences(this.f6424b, 0);
    }

    /* renamed from: a */
    public static Date m14977a(Bundle bundle, String str) {
        Date date;
        if (bundle == null) {
            date = null;
        } else {
            long j = bundle.getLong(str, Long.MIN_VALUE);
            date = null;
            if (j != Long.MIN_VALUE) {
                date = new Date(j);
            }
        }
        return date;
    }

    /* renamed from: a */
    private void m14976a(String str, Bundle bundle) {
        JSONArray jSONArray;
        JSONArray jSONArray2;
        JSONObject jSONObject = new JSONObject(this.f6425c.getString(str, "{}"));
        String string = jSONObject.getString("valueType");
        if (string.equals("bool")) {
            bundle.putBoolean(str, jSONObject.getBoolean("value"));
        } else if (string.equals("bool[]")) {
            JSONArray jSONArray3 = jSONObject.getJSONArray("value");
            boolean[] zArr = new boolean[jSONArray3.length()];
            for (int i = 0; i < zArr.length; i++) {
                zArr[i] = jSONArray3.getBoolean(i);
            }
            bundle.putBooleanArray(str, zArr);
        } else if (string.equals("byte")) {
            bundle.putByte(str, (byte) jSONObject.getInt("value"));
        } else if (string.equals("byte[]")) {
            byte[] bArr = new byte[jSONObject.getJSONArray("value").length()];
            for (int i2 = 0; i2 < bArr.length; i2++) {
                bArr[i2] = (byte) jSONArray2.getInt(i2);
            }
            bundle.putByteArray(str, bArr);
        } else if (string.equals("short")) {
            bundle.putShort(str, (short) jSONObject.getInt("value"));
        } else if (string.equals("short[]")) {
            short[] sArr = new short[jSONObject.getJSONArray("value").length()];
            for (int i3 = 0; i3 < sArr.length; i3++) {
                sArr[i3] = (short) jSONArray.getInt(i3);
            }
            bundle.putShortArray(str, sArr);
        } else if (string.equals("int")) {
            bundle.putInt(str, jSONObject.getInt("value"));
        } else if (string.equals("int[]")) {
            JSONArray jSONArray4 = jSONObject.getJSONArray("value");
            int[] iArr = new int[jSONArray4.length()];
            for (int i4 = 0; i4 < iArr.length; i4++) {
                iArr[i4] = jSONArray4.getInt(i4);
            }
            bundle.putIntArray(str, iArr);
        } else if (string.equals("long")) {
            bundle.putLong(str, jSONObject.getLong("value"));
        } else if (string.equals("long[]")) {
            JSONArray jSONArray5 = jSONObject.getJSONArray("value");
            long[] jArr = new long[jSONArray5.length()];
            for (int i5 = 0; i5 < jArr.length; i5++) {
                jArr[i5] = jSONArray5.getLong(i5);
            }
            bundle.putLongArray(str, jArr);
        } else if (string.equals("float")) {
            bundle.putFloat(str, (float) jSONObject.getDouble("value"));
        } else if (string.equals("float[]")) {
            JSONArray jSONArray6 = jSONObject.getJSONArray("value");
            float[] fArr = new float[jSONArray6.length()];
            for (int i6 = 0; i6 < fArr.length; i6++) {
                fArr[i6] = (float) jSONArray6.getDouble(i6);
            }
            bundle.putFloatArray(str, fArr);
        } else if (string.equals("double")) {
            bundle.putDouble(str, jSONObject.getDouble("value"));
        } else if (string.equals("double[]")) {
            JSONArray jSONArray7 = jSONObject.getJSONArray("value");
            double[] dArr = new double[jSONArray7.length()];
            for (int i7 = 0; i7 < dArr.length; i7++) {
                dArr[i7] = jSONArray7.getDouble(i7);
            }
            bundle.putDoubleArray(str, dArr);
        } else if (string.equals("char")) {
            String string2 = jSONObject.getString("value");
            if (string2 == null || string2.length() != 1) {
                return;
            }
            bundle.putChar(str, string2.charAt(0));
        } else if (string.equals("char[]")) {
            JSONArray jSONArray8 = jSONObject.getJSONArray("value");
            char[] cArr = new char[jSONArray8.length()];
            for (int i8 = 0; i8 < cArr.length; i8++) {
                String string3 = jSONArray8.getString(i8);
                if (string3 != null && string3.length() == 1) {
                    cArr[i8] = string3.charAt(0);
                }
            }
            bundle.putCharArray(str, cArr);
        } else if (string.equals("string")) {
            bundle.putString(str, jSONObject.getString("value"));
        } else if (!string.equals("stringList")) {
            if (!string.equals("enum")) {
                return;
            }
            try {
                bundle.putSerializable(str, Enum.valueOf(Class.forName(jSONObject.getString("enumType")), jSONObject.getString("value")));
            } catch (ClassNotFoundException e) {
            } catch (IllegalArgumentException e2) {
            }
        } else {
            JSONArray jSONArray9 = jSONObject.getJSONArray("value");
            int length = jSONArray9.length();
            ArrayList<String> arrayList = new ArrayList<>(length);
            for (int i9 = 0; i9 < length; i9++) {
                Object obj = jSONArray9.get(i9);
                arrayList.add(i9, obj == JSONObject.NULL ? null : (String) obj);
            }
            bundle.putStringArrayList(str, arrayList);
        }
    }

    /* renamed from: a */
    public static boolean m14978a(Bundle bundle) {
        boolean z;
        if (bundle == null) {
            z = false;
        } else {
            String string = bundle.getString("com.facebook.TokenCachingStrategy.Token");
            z = false;
            if (string != null) {
                z = false;
                if (string.length() != 0) {
                    z = false;
                    if (bundle.getLong("com.facebook.TokenCachingStrategy.ExpirationDate", 0L) != 0) {
                        z = true;
                    }
                }
            }
        }
        return z;
    }

    /* renamed from: b */
    public static String m14974b(Bundle bundle) {
        C2084y.m15417a(bundle, "bundle");
        return bundle.getString("com.facebook.TokenCachingStrategy.Token");
    }

    /* renamed from: c */
    public static EnumC1981d m14973c(Bundle bundle) {
        C2084y.m15417a(bundle, "bundle");
        return bundle.containsKey("com.facebook.TokenCachingStrategy.AccessTokenSource") ? (EnumC1981d) bundle.getSerializable("com.facebook.TokenCachingStrategy.AccessTokenSource") : bundle.getBoolean("com.facebook.TokenCachingStrategy.IsSSO") ? EnumC1981d.FACEBOOK_APPLICATION_WEB : EnumC1981d.WEB_VIEW;
    }

    /* renamed from: d */
    public static String m14972d(Bundle bundle) {
        C2084y.m15417a(bundle, "bundle");
        return bundle.getString("com.facebook.TokenCachingStrategy.ApplicationId");
    }

    /* renamed from: a */
    public Bundle m14979a() {
        Bundle bundle = new Bundle();
        for (String str : this.f6425c.getAll().keySet()) {
            try {
                m14976a(str, bundle);
            } catch (JSONException e) {
                C2063r.m15552a(EnumC2197q.CACHE, 5, f6423a, "Error reading cached value for key: '" + str + "' -- " + e);
                bundle = null;
            }
        }
        return bundle;
    }

    /* renamed from: b */
    public void m14975b() {
        this.f6425c.edit().clear().apply();
    }
}
