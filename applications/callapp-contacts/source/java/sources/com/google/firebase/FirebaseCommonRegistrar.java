package com.google.firebase;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import com.google.firebase.components.AbstractC15634i;
import com.google.firebase.components.C15622b;
import com.google.firebase.p390c.C15611a;
import com.google.firebase.p394f.C15746b;
import com.google.firebase.p394f.C15749e;
import com.google.firebase.p394f.C15751g;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/FirebaseCommonRegistrar.class */
public class FirebaseCommonRegistrar implements AbstractC15634i {
    /* renamed from: a */
    private static String m8636a(String str) {
        return str.replace(' ', '_').replace('/', '_');
    }

    /* renamed from: b */
    public static /* synthetic */ String m8635b(Context context) {
        return (Build.VERSION.SDK_INT < 16 || !context.getPackageManager().hasSystemFeature("android.hardware.type.television")) ? (Build.VERSION.SDK_INT < 20 || !context.getPackageManager().hasSystemFeature("android.hardware.type.watch")) ? (Build.VERSION.SDK_INT < 23 || !context.getPackageManager().hasSystemFeature("android.hardware.type.automotive")) ? (Build.VERSION.SDK_INT < 26 || !context.getPackageManager().hasSystemFeature("android.hardware.type.embedded")) ? "" : "embedded" : "auto" : "watch" : "tv";
    }

    /* renamed from: c */
    public static /* synthetic */ String m8634c(Context context) {
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        return (applicationInfo == null || Build.VERSION.SDK_INT < 24) ? "" : String.valueOf(applicationInfo.minSdkVersion);
    }

    @Override // com.google.firebase.components.AbstractC15634i
    public List<C15622b<?>> getComponents() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(C15746b.m8466b());
        arrayList.add(C15611a.m8563a());
        arrayList.add(C15751g.m8457a("fire-android", String.valueOf(Build.VERSION.SDK_INT)));
        arrayList.add(C15751g.m8457a("fire-core", "19.5.0"));
        arrayList.add(C15751g.m8457a("device-name", m8636a(Build.PRODUCT)));
        arrayList.add(C15751g.m8457a("device-model", m8636a(Build.DEVICE)));
        arrayList.add(C15751g.m8457a("device-brand", m8636a(Build.BRAND)));
        arrayList.add(C15751g.m8458a("android-target-sdk", C15725d.m8478a()));
        arrayList.add(C15751g.m8458a("android-min-sdk", C15730e.m8474a()));
        arrayList.add(C15751g.m8458a("android-platform", C15744f.m8469a()));
        arrayList.add(C15751g.m8458a("android-installer", C15755g.m8454a()));
        String m8462a = C15749e.m8462a();
        if (m8462a != null) {
            arrayList.add(C15751g.m8457a("kotlin", m8462a));
        }
        return arrayList;
    }
}
