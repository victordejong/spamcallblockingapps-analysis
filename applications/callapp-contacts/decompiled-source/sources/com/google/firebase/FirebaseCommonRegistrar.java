package com.google.firebase;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import com.google.firebase.c.a;
import com.google.firebase.components.b;
import com.google.firebase.components.i;
import com.google.firebase.f.e;
import com.google.firebase.f.g;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/FirebaseCommonRegistrar.class */
public class FirebaseCommonRegistrar implements i {
    private static String a(String str) {
        return str.replace(' ', '_').replace('/', '_');
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ String b(Context context) {
        return (Build.VERSION.SDK_INT < 16 || !context.getPackageManager().hasSystemFeature("android.hardware.type.television")) ? (Build.VERSION.SDK_INT < 20 || !context.getPackageManager().hasSystemFeature("android.hardware.type.watch")) ? (Build.VERSION.SDK_INT < 23 || !context.getPackageManager().hasSystemFeature("android.hardware.type.automotive")) ? (Build.VERSION.SDK_INT < 26 || !context.getPackageManager().hasSystemFeature("android.hardware.type.embedded")) ? "" : "embedded" : "auto" : "watch" : "tv";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ String c(Context context) {
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        return (applicationInfo == null || Build.VERSION.SDK_INT < 24) ? "" : String.valueOf(applicationInfo.minSdkVersion);
    }

    @Override // com.google.firebase.components.i
    public List<b<?>> getComponents() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(com.google.firebase.f.b.b());
        arrayList.add(a.a());
        arrayList.add(g.a("fire-android", String.valueOf(Build.VERSION.SDK_INT)));
        arrayList.add(g.a("fire-core", "19.5.0"));
        arrayList.add(g.a("device-name", a(Build.PRODUCT)));
        arrayList.add(g.a("device-model", a(Build.DEVICE)));
        arrayList.add(g.a("device-brand", a(Build.BRAND)));
        arrayList.add(g.a("android-target-sdk", d.a()));
        arrayList.add(g.a("android-min-sdk", e.a()));
        arrayList.add(g.a("android-platform", f.a()));
        arrayList.add(g.a("android-installer", g.a()));
        String a2 = e.a();
        if (a2 != null) {
            arrayList.add(g.a("kotlin", a2));
        }
        return arrayList;
    }
}
