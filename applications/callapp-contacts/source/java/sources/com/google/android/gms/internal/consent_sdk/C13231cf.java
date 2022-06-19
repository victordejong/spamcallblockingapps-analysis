package com.google.android.gms.internal.consent_sdk;

import android.app.Activity;
import android.app.Application;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.os.Build;
import android.view.DisplayCutout;
import android.view.View;
import android.view.Window;
import android.view.WindowInsets;
import com.google.android.p314c.C10611a;
import com.google.android.p314c.C10618d;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Locale;
import java.util.Set;
/* renamed from: com.google.android.gms.internal.consent_sdk.cf */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/cf.class */
public final class C13231cf {

    /* renamed from: a */
    final Application f50422a;

    /* renamed from: b */
    final C13171ab f50423b;

    /* renamed from: c */
    final C13253m f50424c;

    public C13231cf(Application application, C13171ab c13171ab, C13253m c13253m) {
        this.f50422a = application;
        this.f50423b = c13171ab;
        this.f50424c = c13253m;
    }

    /* renamed from: a */
    public final C13184ao m13545a(Activity activity, C10618d c10618d) throws zzk {
        ArrayList arrayList;
        ArrayList arrayList2;
        String str;
        C10611a c10611a = c10618d.f34380c;
        C10611a c10611a2 = c10611a;
        if (c10611a == null) {
            c10611a2 = new C10611a.C10612a(this.f50422a).m22614a();
        }
        C13229cd c13229cd = new C13229cd(this, activity, c10611a2, c10618d);
        C13184ao c13184ao = new C13184ao();
        c13184ao.f50309a = c13229cd.m13546b();
        C13169a m13582a = c13229cd.f50415a.f50423b.m13582a();
        if (m13582a != null) {
            c13184ao.f50310b = m13582a.f50278a;
            c13184ao.f50317i = Boolean.valueOf(m13582a.f50279b);
        }
        if (!c13229cd.f50417c.f34372a) {
            arrayList = Collections.emptyList();
        } else {
            arrayList = new ArrayList();
            int i = c13229cd.f50417c.f34373b;
            if (i == 1) {
                arrayList.add(EnumC13189at.GEO_OVERRIDE_EEA);
            } else if (i == 2) {
                arrayList.add(EnumC13189at.GEO_OVERRIDE_NON_EEA);
            }
        }
        c13184ao.f50322n = arrayList;
        Application application = c13229cd.f50415a.f50422a;
        Set<String> stringSet = c13229cd.f50415a.f50424c.f50495a.getStringSet("stored_info", Collections.emptySet());
        HashMap hashMap = new HashMap();
        for (String str2 : stringSet) {
            C13200bc m13566a = C13201bd.m13566a(application, str2);
            if (m13566a == null) {
                String valueOf = String.valueOf(str2);
                if (valueOf.length() != 0) {
                    "Fetching request info: failed for key: ".concat(valueOf);
                } else {
                    new String("Fetching request info: failed for key: ");
                }
            } else {
                Object obj = application.getSharedPreferences(m13566a.f50378a, 0).getAll().get(m13566a.f50379b);
                if (obj == null) {
                    String valueOf2 = String.valueOf(str2);
                    if (valueOf2.length() != 0) {
                        "Stored info not exists: ".concat(valueOf2);
                    } else {
                        new String("Stored info not exists: ");
                    }
                } else {
                    if (obj instanceof Boolean) {
                        str = ((Boolean) obj).booleanValue() ? "1" : "0";
                    } else if (obj instanceof Number) {
                        str = obj.toString();
                    } else if (obj instanceof String) {
                        str = (String) obj;
                    } else {
                        String valueOf3 = String.valueOf(str2);
                        if (valueOf3.length() != 0) {
                            "Failed to fetch stored info: ".concat(valueOf3);
                        } else {
                            new String("Failed to fetch stored info: ");
                        }
                    }
                    hashMap.put(str2, str);
                }
            }
        }
        c13184ao.f50318j = hashMap;
        c13184ao.f50312d = null;
        c13184ao.f50315g = null;
        c13184ao.f50316h = Boolean.valueOf(c13229cd.f50418d.f34378a);
        c13184ao.f50314f = null;
        c13184ao.f50313e = Build.VERSION.SDK_INT >= 21 ? Locale.getDefault().toLanguageTag() : Locale.getDefault().toString();
        C13188as c13188as = new C13188as();
        c13188as.f50337c = Integer.valueOf(Build.VERSION.SDK_INT);
        c13188as.f50336b = Build.MODEL;
        c13188as.f50335a = C13191av.f50343b;
        c13184ao.f50311c = c13188as;
        Configuration configuration = c13229cd.f50415a.f50422a.getResources().getConfiguration();
        c13229cd.f50415a.f50422a.getResources().getConfiguration();
        C13190au c13190au = new C13190au();
        c13190au.f50338a = Integer.valueOf(configuration.screenWidthDp);
        c13190au.f50339b = Integer.valueOf(configuration.screenHeightDp);
        c13190au.f50340c = Double.valueOf(c13229cd.f50415a.f50422a.getResources().getDisplayMetrics().density);
        if (Build.VERSION.SDK_INT < 28) {
            arrayList2 = Collections.emptyList();
        } else {
            Window window = c13229cd.f50416b == null ? null : c13229cd.f50416b.getWindow();
            View decorView = window == null ? null : window.getDecorView();
            WindowInsets rootWindowInsets = decorView == null ? null : decorView.getRootWindowInsets();
            DisplayCutout displayCutout = rootWindowInsets == null ? null : rootWindowInsets.getDisplayCutout();
            if (displayCutout == null) {
                arrayList2 = Collections.emptyList();
            } else {
                displayCutout.getSafeInsetBottom();
                ArrayList arrayList3 = new ArrayList();
                for (Rect rect : displayCutout.getBoundingRects()) {
                    if (rect != null) {
                        C13193ax c13193ax = new C13193ax();
                        c13193ax.f50361b = Integer.valueOf(rect.left);
                        c13193ax.f50362c = Integer.valueOf(rect.right);
                        c13193ax.f50360a = Integer.valueOf(rect.top);
                        c13193ax.f50363d = Integer.valueOf(rect.bottom);
                        arrayList3.add(c13193ax);
                    }
                }
                arrayList2 = arrayList3;
            }
        }
        c13190au.f50341d = arrayList2;
        c13184ao.f50319k = c13190au;
        c13184ao.f50320l = c13229cd.m13547a();
        C13192aw c13192aw = new C13192aw();
        c13192aw.f50359a = "1.0.0";
        c13184ao.f50321m = c13192aw;
        return c13184ao;
    }
}
