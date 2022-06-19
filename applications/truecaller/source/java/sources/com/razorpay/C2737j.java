package com.razorpay;

import android.content.Context;
import android.content.SharedPreferences;
import android.webkit.JavascriptInterface;
/* renamed from: com.razorpay.j */
/* loaded from: classes3-dex2jar.jar:com/razorpay/j.class */
public final class C2737j {

    /* renamed from: a */
    private SharedPreferences f9460a;

    /* renamed from: b */
    private SharedPreferences.Editor f9461b;

    public C2737j(Context context) {
        this.f9460a = context.getSharedPreferences("rzp_preferences_storage_bridge", 0);
        this.f9461b = context.getSharedPreferences("rzp_preferences_storage_bridge", 0).edit();
    }

    @JavascriptInterface
    public final boolean getBoolean(String str) {
        try {
            return this.f9460a.getBoolean(str, false);
        } catch (Exception e) {
            return false;
        }
    }

    @JavascriptInterface
    public final float getFloat(String str) {
        try {
            return this.f9460a.getFloat(str, 0.0f);
        } catch (Exception e) {
            return 0.0f;
        }
    }

    @JavascriptInterface
    public final int getInt(String str) {
        try {
            return this.f9460a.getInt(str, 0);
        } catch (Exception e) {
            return 0;
        }
    }

    @JavascriptInterface
    public final String getString(String str) {
        try {
            return this.f9460a.getString(str, null);
        } catch (Exception e) {
            return null;
        }
    }

    @JavascriptInterface
    public final void setBoolean(String str, boolean z) {
        try {
            this.f9461b.putBoolean(str, z);
            this.f9461b.commit();
        } catch (Exception e) {
            d__1_.m36087a("Error saving boolean", e);
        }
    }

    @JavascriptInterface
    public final void setFloat(String str, float f) {
        try {
            this.f9461b.putFloat(str, f);
            this.f9461b.commit();
        } catch (Exception e) {
            d__1_.m36087a("Error saving float", e);
        }
    }

    @JavascriptInterface
    public final void setInt(String str, int i) {
        try {
            this.f9461b.putInt(str, i);
            this.f9461b.commit();
        } catch (Exception e) {
            d__1_.m36087a("Error saving integer", e);
        }
    }

    @JavascriptInterface
    public final void setString(String str, String str2) {
        try {
            this.f9461b.putString(str, str2);
            this.f9461b.commit();
        } catch (Exception e) {
            d__1_.m36087a("Error saving string", e);
        }
    }
}
