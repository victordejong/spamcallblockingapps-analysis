package com.google.firebase;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import com.google.firebase.components.AbstractC8868i;
import com.google.firebase.components.C8858d;
import com.google.firebase.heartbeatinfo.C9172d;
import com.google.firebase.p315m.C9251c;
import com.google.firebase.p315m.C9253e;
import com.google.firebase.p315m.C9256h;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/FirebaseCommonRegistrar.class */
public class FirebaseCommonRegistrar implements AbstractC8868i {
    /* renamed from: b */
    public static /* synthetic */ String m2572b(Context context) {
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        return (applicationInfo == null || Build.VERSION.SDK_INT < 24) ? "" : String.valueOf(applicationInfo.minSdkVersion);
    }

    /* renamed from: c */
    public static /* synthetic */ String m2571c(Context context) {
        int i = Build.VERSION.SDK_INT;
        return (i < 16 || !context.getPackageManager().hasSystemFeature("android.hardware.type.television")) ? (i < 20 || !context.getPackageManager().hasSystemFeature("android.hardware.type.watch")) ? (i < 23 || !context.getPackageManager().hasSystemFeature("android.hardware.type.automotive")) ? (i < 26 || !context.getPackageManager().hasSystemFeature("android.hardware.type.embedded")) ? "" : "embedded" : "auto" : "watch" : "tv";
    }

    /* renamed from: e */
    private static String m2569e(String str) {
        return str.replace(' ', '_').replace('/', '_');
    }

    @Override // com.google.firebase.components.AbstractC8868i
    public List<C8858d<?>> getComponents() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(C9251c.m1410b());
        arrayList.add(C9172d.m1653b());
        arrayList.add(C9256h.m1400a("fire-android", String.valueOf(Build.VERSION.SDK_INT)));
        arrayList.add(C9256h.m1400a("fire-core", "19.5.0"));
        arrayList.add(C9256h.m1400a("device-name", m2569e(Build.PRODUCT)));
        arrayList.add(C9256h.m1400a("device-model", m2569e(Build.DEVICE)));
        arrayList.add(C9256h.m1400a("device-brand", m2569e(Build.BRAND)));
        arrayList.add(C9256h.m1399b("android-target-sdk", C9148d.m1714b()));
        arrayList.add(C9256h.m1399b("android-min-sdk", C9150e.m1712b()));
        arrayList.add(C9256h.m1399b("android-platform", C9166f.m1664b()));
        arrayList.add(C9256h.m1399b("android-installer", C9167g.m1663b()));
        String m1405a = C9253e.m1405a();
        if (m1405a != null) {
            arrayList.add(C9256h.m1400a("kotlin", m1405a));
        }
        return arrayList;
    }
}
