package com.facebook;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import com.facebook.internal.ae;
import com.facebook.internal.af;
import com.facebook.internal.x;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/facebook/l.class */
public final class l {

    /* renamed from: a  reason: collision with root package name */
    private static final String f20039a = "l";

    /* renamed from: b  reason: collision with root package name */
    private String f20040b;

    /* renamed from: c  reason: collision with root package name */
    private SharedPreferences f20041c;

    public l(Context context) {
        this(context, null);
    }

    public l(Context context, String str) {
        af.a((Object) context, "context");
        this.f20040b = ae.a(str) ? "com.facebook.SharedPreferencesTokenCachingStrategy.DEFAULT_KEY" : str;
        Context applicationContext = context.getApplicationContext();
        this.f20041c = (applicationContext != null ? applicationContext : context).getSharedPreferences(this.f20040b, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Date a(Bundle bundle, String str) {
        if (bundle == null) {
            return null;
        }
        long j = bundle.getLong(str, Long.MIN_VALUE);
        if (j == Long.MIN_VALUE) {
            return null;
        }
        return new Date(j);
    }

    private void a(String str, Bundle bundle) throws JSONException {
        JSONObject jSONObject = new JSONObject(this.f20041c.getString(str, "{}"));
        String string = jSONObject.getString("valueType");
        if (string.equals("bool")) {
            bundle.putBoolean(str, jSONObject.getBoolean("value"));
            return;
        }
        if (string.equals("bool[]")) {
            JSONArray jSONArray = jSONObject.getJSONArray("value");
            int length = jSONArray.length();
            boolean[] zArr = new boolean[length];
            for (int i = 0; i < length; i++) {
                zArr[i] = jSONArray.getBoolean(i);
            }
            bundle.putBooleanArray(str, zArr);
        } else if (string.equals("byte")) {
            bundle.putByte(str, (byte) jSONObject.getInt("value"));
        } else if (string.equals("byte[]")) {
            JSONArray jSONArray2 = jSONObject.getJSONArray("value");
            int length2 = jSONArray2.length();
            byte[] bArr = new byte[length2];
            for (int i2 = 0; i2 < length2; i2++) {
                bArr[i2] = (byte) jSONArray2.getInt(i2);
            }
            bundle.putByteArray(str, bArr);
        } else if (string.equals("short")) {
            bundle.putShort(str, (short) jSONObject.getInt("value"));
        } else if (string.equals("short[]")) {
            JSONArray jSONArray3 = jSONObject.getJSONArray("value");
            int length3 = jSONArray3.length();
            short[] sArr = new short[length3];
            for (int i3 = 0; i3 < length3; i3++) {
                sArr[i3] = (short) jSONArray3.getInt(i3);
            }
            bundle.putShortArray(str, sArr);
        } else if (string.equals("int")) {
            bundle.putInt(str, jSONObject.getInt("value"));
        } else if (string.equals("int[]")) {
            JSONArray jSONArray4 = jSONObject.getJSONArray("value");
            int length4 = jSONArray4.length();
            int[] iArr = new int[length4];
            for (int i4 = 0; i4 < length4; i4++) {
                iArr[i4] = jSONArray4.getInt(i4);
            }
            bundle.putIntArray(str, iArr);
        } else if (string.equals("long")) {
            bundle.putLong(str, jSONObject.getLong("value"));
        } else if (string.equals("long[]")) {
            JSONArray jSONArray5 = jSONObject.getJSONArray("value");
            int length5 = jSONArray5.length();
            long[] jArr = new long[length5];
            for (int i5 = 0; i5 < length5; i5++) {
                jArr[i5] = jSONArray5.getLong(i5);
            }
            bundle.putLongArray(str, jArr);
        } else if (string.equals("float")) {
            bundle.putFloat(str, (float) jSONObject.getDouble("value"));
        } else if (string.equals("float[]")) {
            JSONArray jSONArray6 = jSONObject.getJSONArray("value");
            int length6 = jSONArray6.length();
            float[] fArr = new float[length6];
            for (int i6 = 0; i6 < length6; i6++) {
                fArr[i6] = (float) jSONArray6.getDouble(i6);
            }
            bundle.putFloatArray(str, fArr);
        } else if (string.equals("double")) {
            bundle.putDouble(str, jSONObject.getDouble("value"));
        } else if (string.equals("double[]")) {
            JSONArray jSONArray7 = jSONObject.getJSONArray("value");
            int length7 = jSONArray7.length();
            double[] dArr = new double[length7];
            for (int i7 = 0; i7 < length7; i7++) {
                dArr[i7] = jSONArray7.getDouble(i7);
            }
            bundle.putDoubleArray(str, dArr);
        } else if (string.equals("char")) {
            String string2 = jSONObject.getString("value");
            if (string2 != null && string2.length() == 1) {
                bundle.putChar(str, string2.charAt(0));
            }
        } else if (string.equals("char[]")) {
            JSONArray jSONArray8 = jSONObject.getJSONArray("value");
            int length8 = jSONArray8.length();
            char[] cArr = new char[length8];
            for (int i8 = 0; i8 < length8; i8++) {
                String string3 = jSONArray8.getString(i8);
                if (string3 != null && string3.length() == 1) {
                    cArr[i8] = string3.charAt(0);
                }
            }
            bundle.putCharArray(str, cArr);
        } else if (string.equals("string")) {
            bundle.putString(str, jSONObject.getString("value"));
        } else if (string.equals("stringList")) {
            JSONArray jSONArray9 = jSONObject.getJSONArray("value");
            int length9 = jSONArray9.length();
            ArrayList<String> arrayList = new ArrayList<>(length9);
            for (int i9 = 0; i9 < length9; i9++) {
                Object obj = jSONArray9.get(i9);
                arrayList.add(i9, obj == JSONObject.NULL ? null : (String) obj);
            }
            bundle.putStringArrayList(str, arrayList);
        } else if (string.equals("enum")) {
            try {
                bundle.putSerializable(str, Enum.valueOf(Class.forName(jSONObject.getString("enumType")), jSONObject.getString("value")));
            } catch (ClassNotFoundException | IllegalArgumentException e) {
            }
        }
    }

    public static boolean a(Bundle bundle) {
        String string;
        return (bundle == null || (string = bundle.getString("com.facebook.TokenCachingStrategy.Token")) == null || string.length() == 0 || bundle.getLong("com.facebook.TokenCachingStrategy.ExpirationDate", 0L) == 0) ? false : true;
    }

    public static String b(Bundle bundle) {
        af.a(bundle, "bundle");
        return bundle.getString("com.facebook.TokenCachingStrategy.Token");
    }

    public static c c(Bundle bundle) {
        af.a(bundle, "bundle");
        return bundle.containsKey("com.facebook.TokenCachingStrategy.AccessTokenSource") ? (c) bundle.getSerializable("com.facebook.TokenCachingStrategy.AccessTokenSource") : bundle.getBoolean("com.facebook.TokenCachingStrategy.IsSSO") ? c.FACEBOOK_APPLICATION_WEB : c.WEB_VIEW;
    }

    public static String d(Bundle bundle) {
        af.a(bundle, "bundle");
        return bundle.getString("com.facebook.TokenCachingStrategy.ApplicationId");
    }

    public final Bundle a() {
        Bundle bundle;
        Bundle bundle2 = new Bundle();
        Iterator<String> it2 = this.f20041c.getAll().keySet().iterator();
        while (true) {
            bundle = bundle2;
            if (!it2.hasNext()) {
                break;
            }
            String next = it2.next();
            try {
                a(next, bundle2);
            } catch (JSONException e) {
                m mVar = m.CACHE;
                String str = f20039a;
                x.b(mVar, str, "Error reading cached value for key: '" + next + "' -- " + e);
                bundle = null;
            }
        }
        return bundle;
    }

    public final void b() {
        this.f20041c.edit().clear().apply();
    }
}
