package com.google.firebase;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import java.util.ArrayList;
import java.util.List;
import p131c.p161d.p282e.C5134d;
import p131c.p161d.p282e.C5135e;
import p131c.p161d.p282e.C5136f;
import p131c.p161d.p282e.C5137g;
import p131c.p161d.p282e.p288k.AbstractC5171h;
import p131c.p161d.p282e.p288k.C5162d;
import p131c.p161d.p282e.p314p.C5476c;
import p131c.p161d.p282e.p351v.C6056c;
import p131c.p161d.p282e.p351v.C6058e;
import p131c.p161d.p282e.p351v.C6061h;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/FirebaseCommonRegistrar.class */
public class FirebaseCommonRegistrar implements AbstractC5171h {
    /* renamed from: a */
    public static String m7677a(String str) {
        return str.replace(' ', '_').replace('/', '_');
    }

    /* renamed from: b */
    public static /* synthetic */ String m7676b(Context context) {
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        return (applicationInfo == null || Build.VERSION.SDK_INT < 24) ? "" : String.valueOf(applicationInfo.minSdkVersion);
    }

    /* renamed from: c */
    public static /* synthetic */ String m7675c(Context context) {
        return (Build.VERSION.SDK_INT < 16 || !context.getPackageManager().hasSystemFeature("android.hardware.type.television")) ? (Build.VERSION.SDK_INT < 20 || !context.getPackageManager().hasSystemFeature("android.hardware.type.watch")) ? (Build.VERSION.SDK_INT < 23 || !context.getPackageManager().hasSystemFeature("android.hardware.type.automotive")) ? (Build.VERSION.SDK_INT < 26 || !context.getPackageManager().hasSystemFeature("android.hardware.type.embedded")) ? "" : "embedded" : "auto" : "watch" : "tv";
    }

    @Override // p131c.p161d.p282e.p288k.AbstractC5171h
    public List<C5162d<?>> getComponents() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(C6056c.m22173b());
        arrayList.add(C5476c.m23713a());
        arrayList.add(C6061h.m22163a("fire-android", String.valueOf(Build.VERSION.SDK_INT)));
        arrayList.add(C6061h.m22163a("fire-core", "19.4.0"));
        arrayList.add(C6061h.m22163a("device-name", m7677a(Build.PRODUCT)));
        arrayList.add(C6061h.m22163a("device-model", m7677a(Build.DEVICE)));
        arrayList.add(C6061h.m22163a("device-brand", m7677a(Build.BRAND)));
        arrayList.add(C6061h.m22165a("android-target-sdk", C5134d.m24451a()));
        arrayList.add(C6061h.m22165a("android-min-sdk", C5135e.m24450a()));
        arrayList.add(C6061h.m22165a("android-platform", C5136f.m24449a()));
        arrayList.add(C6061h.m22165a("android-installer", C5137g.m24448a()));
        String a = C6058e.m22170a();
        if (a != null) {
            arrayList.add(C6061h.m22163a("kotlin", a));
        }
        return arrayList;
    }
}
