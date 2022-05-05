package p081h.p154f;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import com.facebook.internal.C2408g0;
import com.facebook.internal.C2416h0;
import com.facebook.internal.C2503y;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p459j.p460a.p541n0.C13032a;
/* renamed from: h.f.u */
/* loaded from: classes-dex2jar.jar:h/f/u.class */
public final class C6150u {

    /* renamed from: c */
    public static final String f15285c = "u";

    /* renamed from: a */
    public String f15286a;

    /* renamed from: b */
    public SharedPreferences f15287b;

    public C6150u(Context context) {
        this(context, null);
    }

    public C6150u(Context context, String str) {
        C2416h0.m34791a(context, "context");
        this.f15286a = C2408g0.m34816d(str) ? "com.facebook.SharedPreferencesTokenCachingStrategy.DEFAULT_KEY" : str;
        Context applicationContext = context.getApplicationContext();
        this.f15287b = (applicationContext != null ? applicationContext : context).getSharedPreferences(this.f15286a, 0);
    }

    /* renamed from: a */
    public static String m23696a(Bundle bundle) {
        C2416h0.m34791a(bundle, "bundle");
        return bundle.getString("com.facebook.TokenCachingStrategy.ApplicationId");
    }

    /* renamed from: a */
    public static Date m23695a(Bundle bundle, String str) {
        if (bundle == null) {
            return null;
        }
        long j = bundle.getLong(str, Long.MIN_VALUE);
        if (j == Long.MIN_VALUE) {
            return null;
        }
        return new Date(j);
    }

    /* renamed from: b */
    public static EnumC6114c m23692b(Bundle bundle) {
        C2416h0.m34791a(bundle, "bundle");
        if (bundle.containsKey("com.facebook.TokenCachingStrategy.AccessTokenSource")) {
            return (EnumC6114c) bundle.getSerializable("com.facebook.TokenCachingStrategy.AccessTokenSource");
        }
        return bundle.getBoolean("com.facebook.TokenCachingStrategy.IsSSO") ? EnumC6114c.FACEBOOK_APPLICATION_WEB : EnumC6114c.WEB_VIEW;
    }

    /* renamed from: c */
    public static String m23691c(Bundle bundle) {
        C2416h0.m34791a(bundle, "bundle");
        return bundle.getString("com.facebook.TokenCachingStrategy.Token");
    }

    /* renamed from: d */
    public static boolean m23690d(Bundle bundle) {
        String string;
        return (bundle == null || (string = bundle.getString("com.facebook.TokenCachingStrategy.Token")) == null || string.length() == 0 || bundle.getLong("com.facebook.TokenCachingStrategy.ExpirationDate", 0L) == 0) ? false : true;
    }

    /* renamed from: a */
    public void m23697a() {
        this.f15287b.edit().clear().apply();
    }

    /* renamed from: a */
    public final void m23694a(String str, Bundle bundle) throws JSONException {
        JSONObject jSONObject = new JSONObject(this.f15287b.getString(str, "{}"));
        String string = jSONObject.getString("valueType");
        if (string.equals("bool")) {
            bundle.putBoolean(str, jSONObject.getBoolean(C13032a.f29462d));
            return;
        }
        if (string.equals("bool[]")) {
            JSONArray jSONArray = jSONObject.getJSONArray(C13032a.f29462d);
            boolean[] zArr = new boolean[jSONArray.length()];
            for (int i = 0; i < zArr.length; i++) {
                zArr[i] = jSONArray.getBoolean(i);
            }
            bundle.putBooleanArray(str, zArr);
        } else if (string.equals("byte")) {
            bundle.putByte(str, (byte) jSONObject.getInt(C13032a.f29462d));
        } else if (string.equals("byte[]")) {
            JSONArray jSONArray2 = jSONObject.getJSONArray(C13032a.f29462d);
            byte[] bArr = new byte[jSONArray2.length()];
            for (int i2 = 0; i2 < bArr.length; i2++) {
                bArr[i2] = (byte) jSONArray2.getInt(i2);
            }
            bundle.putByteArray(str, bArr);
        } else if (string.equals("short")) {
            bundle.putShort(str, (short) jSONObject.getInt(C13032a.f29462d));
        } else if (string.equals("short[]")) {
            JSONArray jSONArray3 = jSONObject.getJSONArray(C13032a.f29462d);
            short[] sArr = new short[jSONArray3.length()];
            for (int i3 = 0; i3 < sArr.length; i3++) {
                sArr[i3] = (short) jSONArray3.getInt(i3);
            }
            bundle.putShortArray(str, sArr);
        } else if (string.equals("int")) {
            bundle.putInt(str, jSONObject.getInt(C13032a.f29462d));
        } else if (string.equals("int[]")) {
            JSONArray jSONArray4 = jSONObject.getJSONArray(C13032a.f29462d);
            int[] iArr = new int[jSONArray4.length()];
            for (int i4 = 0; i4 < iArr.length; i4++) {
                iArr[i4] = jSONArray4.getInt(i4);
            }
            bundle.putIntArray(str, iArr);
        } else if (string.equals("long")) {
            bundle.putLong(str, jSONObject.getLong(C13032a.f29462d));
        } else if (string.equals("long[]")) {
            JSONArray jSONArray5 = jSONObject.getJSONArray(C13032a.f29462d);
            long[] jArr = new long[jSONArray5.length()];
            for (int i5 = 0; i5 < jArr.length; i5++) {
                jArr[i5] = jSONArray5.getLong(i5);
            }
            bundle.putLongArray(str, jArr);
        } else if (string.equals("float")) {
            bundle.putFloat(str, (float) jSONObject.getDouble(C13032a.f29462d));
        } else if (string.equals("float[]")) {
            JSONArray jSONArray6 = jSONObject.getJSONArray(C13032a.f29462d);
            float[] fArr = new float[jSONArray6.length()];
            for (int i6 = 0; i6 < fArr.length; i6++) {
                fArr[i6] = (float) jSONArray6.getDouble(i6);
            }
            bundle.putFloatArray(str, fArr);
        } else if (string.equals("double")) {
            bundle.putDouble(str, jSONObject.getDouble(C13032a.f29462d));
        } else if (string.equals("double[]")) {
            JSONArray jSONArray7 = jSONObject.getJSONArray(C13032a.f29462d);
            double[] dArr = new double[jSONArray7.length()];
            for (int i7 = 0; i7 < dArr.length; i7++) {
                dArr[i7] = jSONArray7.getDouble(i7);
            }
            bundle.putDoubleArray(str, dArr);
        } else if (string.equals("char")) {
            String string2 = jSONObject.getString(C13032a.f29462d);
            if (string2 != null && string2.length() == 1) {
                bundle.putChar(str, string2.charAt(0));
            }
        } else if (string.equals("char[]")) {
            JSONArray jSONArray8 = jSONObject.getJSONArray(C13032a.f29462d);
            char[] cArr = new char[jSONArray8.length()];
            for (int i8 = 0; i8 < cArr.length; i8++) {
                String string3 = jSONArray8.getString(i8);
                if (string3 != null && string3.length() == 1) {
                    cArr[i8] = string3.charAt(0);
                }
            }
            bundle.putCharArray(str, cArr);
        } else if (string.equals("string")) {
            bundle.putString(str, jSONObject.getString(C13032a.f29462d));
        } else if (string.equals("stringList")) {
            JSONArray jSONArray9 = jSONObject.getJSONArray(C13032a.f29462d);
            int length = jSONArray9.length();
            ArrayList<String> arrayList = new ArrayList<>(length);
            for (int i9 = 0; i9 < length; i9++) {
                Object obj = jSONArray9.get(i9);
                arrayList.add(i9, obj == JSONObject.NULL ? null : (String) obj);
            }
            bundle.putStringArrayList(str, arrayList);
        } else if (string.equals("enum")) {
            try {
                bundle.putSerializable(str, Enum.valueOf(Class.forName(jSONObject.getString("enumType")), jSONObject.getString(C13032a.f29462d)));
            } catch (ClassNotFoundException | IllegalArgumentException e) {
            }
        }
    }

    /* renamed from: b */
    public Bundle m23693b() {
        Bundle bundle;
        Bundle bundle2 = new Bundle();
        Iterator<String> it = this.f15287b.getAll().keySet().iterator();
        while (true) {
            bundle = bundle2;
            if (!it.hasNext()) {
                break;
            }
            String next = it.next();
            try {
                m23694a(next, bundle2);
            } catch (JSONException e) {
                EnumC6151v vVar = EnumC6151v.CACHE;
                String str = f15285c;
                C2503y.m34559a(vVar, 5, str, "Error reading cached value for key: '" + next + "' -- " + e);
                bundle = null;
            }
        }
        return bundle;
    }
}
