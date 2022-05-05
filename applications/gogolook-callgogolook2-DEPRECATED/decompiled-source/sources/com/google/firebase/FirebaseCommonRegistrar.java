package com.google.firebase;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import java.util.ArrayList;
import java.util.List;
import kotlinx.coroutines.DebugKt;
import p081h.p203i.p325c.C9441d;
import p081h.p203i.p325c.C9442e;
import p081h.p203i.p325c.C9443f;
import p081h.p203i.p325c.C9444g;
import p081h.p203i.p325c.p326a0.C9386c;
import p081h.p203i.p325c.p326a0.C9388e;
import p081h.p203i.p325c.p326a0.C9391h;
import p081h.p203i.p325c.p336m.AbstractC9489h;
import p081h.p203i.p325c.p336m.C9480d;
import p081h.p203i.p325c.p363s.C9860c;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/FirebaseCommonRegistrar.class */
public class FirebaseCommonRegistrar implements AbstractC9489h {
    /* renamed from: a */
    public static String m31120a(String str) {
        return str.replace(' ', '_').replace('/', '_');
    }

    /* renamed from: b */
    public static /* synthetic */ String m31119b(Context context) {
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        return (applicationInfo == null || Build.VERSION.SDK_INT < 24) ? "" : String.valueOf(applicationInfo.minSdkVersion);
    }

    /* renamed from: c */
    public static /* synthetic */ String m31118c(Context context) {
        return (Build.VERSION.SDK_INT < 16 || !context.getPackageManager().hasSystemFeature("android.hardware.type.television")) ? (Build.VERSION.SDK_INT < 20 || !context.getPackageManager().hasSystemFeature("android.hardware.type.watch")) ? (Build.VERSION.SDK_INT < 23 || !context.getPackageManager().hasSystemFeature("android.hardware.type.automotive")) ? (Build.VERSION.SDK_INT < 26 || !context.getPackageManager().hasSystemFeature("android.hardware.type.embedded")) ? "" : "embedded" : DebugKt.DEBUG_PROPERTY_VALUE_AUTO : "watch" : "tv";
    }

    @Override // p081h.p203i.p325c.p336m.AbstractC9489h
    public List<C9480d<?>> getComponents() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(C9386c.m15333b());
        arrayList.add(C9860c.m14073a());
        arrayList.add(C9391h.m15323a("fire-android", String.valueOf(Build.VERSION.SDK_INT)));
        arrayList.add(C9391h.m15323a("fire-core", "19.4.0"));
        arrayList.add(C9391h.m15323a("device-name", m31120a(Build.PRODUCT)));
        arrayList.add(C9391h.m15323a("device-model", m31120a(Build.DEVICE)));
        arrayList.add(C9391h.m15323a("device-brand", m31120a(Build.BRAND)));
        arrayList.add(C9391h.m15325a("android-target-sdk", C9441d.m15155a()));
        arrayList.add(C9391h.m15325a("android-min-sdk", C9442e.m15154a()));
        arrayList.add(C9391h.m15325a("android-platform", C9443f.m15153a()));
        arrayList.add(C9391h.m15325a("android-installer", C9444g.m15152a()));
        String a = C9388e.m15330a();
        if (a != null) {
            arrayList.add(C9391h.m15323a("kotlin", a));
        }
        return arrayList;
    }
}
