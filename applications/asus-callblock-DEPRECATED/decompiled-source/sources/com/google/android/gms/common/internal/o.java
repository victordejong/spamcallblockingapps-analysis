package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.util.Log;
import com.google.android.gms.a;
import com.google.android.gms.common.a.f;
import com.google.android.gms.common.a.k;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/o.class */
public final class o {
    public static String a(Context context, int i) {
        Resources resources = context.getResources();
        String str = null;
        switch (i) {
            case 1:
                str = resources.getString(a.c.h);
                break;
            case 2:
            case 42:
                str = resources.getString(a.c.y);
                break;
            case 3:
                str = resources.getString(a.c.d);
                break;
            case 4:
            case 6:
                break;
            case 5:
                Log.e("GoogleApiAvailability", "An invalid account was specified when connecting. Please provide a valid account.");
                str = resources.getString(a.c.j);
                break;
            case 7:
                Log.e("GoogleApiAvailability", "Network error occurred. Please retry request later.");
                str = resources.getString(a.c.l);
                break;
            case 8:
                Log.e("GoogleApiAvailability", "Internal error occurred. Please see logs for detailed information");
                str = null;
                break;
            case 9:
                Log.e("GoogleApiAvailability", "Google Play services is invalid. Cannot recover.");
                str = resources.getString(a.c.v);
                break;
            case 10:
                Log.e("GoogleApiAvailability", "Developer error occurred. Please see logs for detailed information");
                str = null;
                break;
            case 11:
                Log.e("GoogleApiAvailability", "The application is not licensed to the user.");
                str = null;
                break;
            case 16:
                Log.e("GoogleApiAvailability", "One of the API components you attempted to connect to is not available.");
                str = null;
                break;
            case 17:
                Log.e("GoogleApiAvailability", "The specified account could not be signed in.");
                str = resources.getString(a.c.s);
                break;
            case 18:
                str = resources.getString(a.c.A);
                break;
            case 20:
                Log.e("GoogleApiAvailability", "The current user profile is restricted and could not use authenticated features.");
                str = resources.getString(a.c.q);
                break;
            default:
                Log.e("GoogleApiAvailability", new StringBuilder(33).append("Unexpected error code ").append(i).toString());
                str = null;
                break;
        }
        return str;
    }

    public static String a(Context context, int i, String str) {
        String string;
        boolean booleanValue;
        boolean z;
        Resources resources = context.getResources();
        switch (i) {
            case 1:
                if (resources == 0) {
                    booleanValue = false;
                } else {
                    if (f.f3929a == null) {
                        boolean z2 = (resources.getConfiguration().screenLayout & 15) > 3;
                        if (!k.a(11) || !z2) {
                            if (f.f3930b == null) {
                                Configuration configuration = resources.getConfiguration();
                                f.f3930b = Boolean.valueOf(k.a(13) && (configuration.screenLayout & 15) <= 3 && configuration.smallestScreenWidthDp >= 600);
                            }
                            if (!f.f3930b.booleanValue()) {
                                z = false;
                                f.f3929a = Boolean.valueOf(z);
                            }
                        }
                        z = true;
                        f.f3929a = Boolean.valueOf(z);
                    }
                    booleanValue = f.f3929a.booleanValue();
                }
                if (!booleanValue) {
                    string = resources.getString(a.c.f, str);
                    break;
                } else {
                    string = resources.getString(a.c.g, str);
                    break;
                }
                break;
            case 2:
                string = resources.getString(a.c.x, str);
                break;
            case 3:
                string = resources.getString(a.c.c, str);
                break;
            case 5:
                string = resources.getString(a.c.i);
                break;
            case 7:
                string = resources.getString(a.c.k);
                break;
            case 9:
                string = resources.getString(a.c.u, str);
                break;
            case 16:
                string = resources.getString(a.c.f3762a, str);
                break;
            case 17:
                string = resources.getString(a.c.r);
                break;
            case 18:
                string = resources.getString(a.c.z, str);
                break;
            case 20:
                string = resources.getString(a.c.p);
                break;
            case 42:
                string = resources.getString(a.c.B);
                break;
            default:
                string = resources.getString(a.c.t, str);
                break;
        }
        return string;
    }
}
