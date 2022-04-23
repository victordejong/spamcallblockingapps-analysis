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
import com.google.android.c.a;
import com.google.android.c.d;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/cf.class */
public final class cf {

    /* renamed from: a  reason: collision with root package name */
    final Application f28791a;

    /* renamed from: b  reason: collision with root package name */
    final ab f28792b;

    /* renamed from: c  reason: collision with root package name */
    final m f28793c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cf(Application application, ab abVar, m mVar) {
        this.f28791a = application;
        this.f28792b = abVar;
        this.f28793c = mVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final ao a(Activity activity, d dVar) throws zzk {
        List<at> list;
        List<ax> list2;
        String str;
        a aVar = dVar.f20302c;
        a aVar2 = aVar;
        if (aVar == null) {
            aVar2 = new a.C0411a(this.f28791a).a();
        }
        cd cdVar = new cd(this, activity, aVar2, dVar);
        ao aoVar = new ao();
        aoVar.f28706a = cdVar.b();
        a a2 = cdVar.f28784a.f28792b.a();
        if (a2 != null) {
            aoVar.f28707b = a2.f28680a;
            aoVar.i = Boolean.valueOf(a2.f28681b);
        }
        if (!cdVar.f28786c.f20294a) {
            list = Collections.emptyList();
        } else {
            list = new ArrayList<>();
            int i = cdVar.f28786c.f20295b;
            if (i == 1) {
                list.add(at.GEO_OVERRIDE_EEA);
            } else if (i == 2) {
                list.add(at.GEO_OVERRIDE_NON_EEA);
            }
        }
        aoVar.n = list;
        Application application = cdVar.f28784a.f28791a;
        Set<String> stringSet = cdVar.f28784a.f28793c.f28843a.getStringSet("stored_info", Collections.emptySet());
        HashMap hashMap = new HashMap();
        for (String str2 : stringSet) {
            bc a3 = bd.a(application, str2);
            if (a3 == null) {
                String valueOf = String.valueOf(str2);
                if (valueOf.length() != 0) {
                    "Fetching request info: failed for key: ".concat(valueOf);
                } else {
                    new String("Fetching request info: failed for key: ");
                }
            } else {
                Object obj = application.getSharedPreferences(a3.f28747a, 0).getAll().get(a3.f28748b);
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
        aoVar.j = hashMap;
        DisplayCutout displayCutout = null;
        aoVar.f28709d = null;
        aoVar.g = null;
        aoVar.h = Boolean.valueOf(cdVar.f28787d.f20300a);
        aoVar.f = null;
        aoVar.e = Build.VERSION.SDK_INT >= 21 ? Locale.getDefault().toLanguageTag() : Locale.getDefault().toString();
        as asVar = new as();
        asVar.f28721c = Integer.valueOf(Build.VERSION.SDK_INT);
        asVar.f28720b = Build.MODEL;
        asVar.f28719a = av.f28727b;
        aoVar.f28708c = asVar;
        Configuration configuration = cdVar.f28784a.f28791a.getResources().getConfiguration();
        cdVar.f28784a.f28791a.getResources().getConfiguration();
        au auVar = new au();
        auVar.f28722a = Integer.valueOf(configuration.screenWidthDp);
        auVar.f28723b = Integer.valueOf(configuration.screenHeightDp);
        auVar.f28724c = Double.valueOf(cdVar.f28784a.f28791a.getResources().getDisplayMetrics().density);
        if (Build.VERSION.SDK_INT < 28) {
            list2 = Collections.emptyList();
        } else {
            Window window = cdVar.f28785b == null ? null : cdVar.f28785b.getWindow();
            View decorView = window == null ? null : window.getDecorView();
            WindowInsets rootWindowInsets = decorView == null ? null : decorView.getRootWindowInsets();
            if (rootWindowInsets != null) {
                displayCutout = rootWindowInsets.getDisplayCutout();
            }
            if (displayCutout == null) {
                list2 = Collections.emptyList();
            } else {
                displayCutout.getSafeInsetBottom();
                ArrayList arrayList = new ArrayList();
                for (Rect rect : displayCutout.getBoundingRects()) {
                    if (rect != null) {
                        ax axVar = new ax();
                        axVar.f28732b = Integer.valueOf(rect.left);
                        axVar.f28733c = Integer.valueOf(rect.right);
                        axVar.f28731a = Integer.valueOf(rect.top);
                        axVar.f28734d = Integer.valueOf(rect.bottom);
                        arrayList.add(axVar);
                    }
                }
                list2 = arrayList;
            }
        }
        auVar.f28725d = list2;
        aoVar.k = auVar;
        aoVar.l = cdVar.a();
        aw awVar = new aw();
        awVar.f28730a = "1.0.0";
        aoVar.m = awVar;
        return aoVar;
    }
}
