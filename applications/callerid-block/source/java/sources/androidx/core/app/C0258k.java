package androidx.core.app;

import android.app.Notification;
import android.os.Bundle;
import android.util.Log;
import android.util.SparseArray;
import androidx.core.app.C0253i;
import androidx.core.graphics.drawable.IconCompat;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
/* renamed from: androidx.core.app.k */
/* loaded from: classes-dex2jar.jar:androidx/core/app/k.class */
class C0258k {

    /* renamed from: a */
    private static final Object f1657a = new Object();

    /* renamed from: b */
    private static Field f1658b;

    /* renamed from: c */
    private static boolean f1659c;

    /* renamed from: a */
    public static SparseArray<Bundle> m13592a(List<Bundle> list) {
        int size = list.size();
        SparseArray<Bundle> sparseArray = null;
        int i = 0;
        while (i < size) {
            Bundle bundle = list.get(i);
            SparseArray<Bundle> sparseArray2 = sparseArray;
            if (bundle != null) {
                sparseArray2 = sparseArray;
                if (sparseArray == null) {
                    sparseArray2 = new SparseArray<>();
                }
                sparseArray2.put(i, bundle);
            }
            i++;
            sparseArray = sparseArray2;
        }
        return sparseArray;
    }

    /* renamed from: b */
    static Bundle m13591b(C0253i.C0254a c0254a) {
        Bundle bundle = new Bundle();
        IconCompat m13633e = c0254a.m13633e();
        bundle.putInt("icon", m13633e != null ? m13633e.c() : 0);
        bundle.putCharSequence("title", c0254a.m13629i());
        bundle.putParcelable("actionIntent", c0254a.m13637a());
        Bundle bundle2 = c0254a.m13634d() != null ? new Bundle(c0254a.m13634d()) : new Bundle();
        bundle2.putBoolean("android.support.allowGeneratedReplies", c0254a.m13636b());
        bundle.putBundle("extras", bundle2);
        bundle.putParcelableArray("remoteInputs", m13588e(c0254a.m13632f()));
        bundle.putBoolean("showsUserInterface", c0254a.m13630h());
        bundle.putInt("semanticAction", c0254a.m13631g());
        return bundle;
    }

    /* renamed from: c */
    public static Bundle m13590c(Notification notification) {
        synchronized (f1657a) {
            try {
                if (f1659c) {
                    return null;
                }
                try {
                    if (f1658b == null) {
                        Field declaredField = Notification.class.getDeclaredField("extras");
                        if (!Bundle.class.isAssignableFrom(declaredField.getType())) {
                            Log.e("NotificationCompat", "Notification.extras field is not of type Bundle");
                            f1659c = true;
                            return null;
                        }
                        declaredField.setAccessible(true);
                        f1658b = declaredField;
                    }
                    Bundle bundle = (Bundle) f1658b.get(notification);
                    Bundle bundle2 = bundle;
                    if (bundle == null) {
                        bundle2 = new Bundle();
                        f1658b.set(notification, bundle2);
                    }
                    return bundle2;
                } catch (IllegalAccessException | NoSuchFieldException e) {
                    Log.e("NotificationCompat", "Unable to access notification extras", e);
                    f1659c = true;
                    return null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: d */
    private static Bundle m13589d(C0260m c0260m) {
        Bundle bundle = new Bundle();
        bundle.putString("resultKey", c0260m.m13576i());
        bundle.putCharSequence("label", c0260m.m13577h());
        bundle.putCharSequenceArray("choices", c0260m.m13580e());
        bundle.putBoolean("allowFreeFormInput", c0260m.m13582c());
        bundle.putBundle("extras", c0260m.m13578g());
        Set<String> m13581d = c0260m.m13581d();
        if (m13581d != null && !m13581d.isEmpty()) {
            ArrayList<String> arrayList = new ArrayList<>(m13581d.size());
            for (String str : m13581d) {
                arrayList.add(str);
            }
            bundle.putStringArrayList("allowedDataTypes", arrayList);
        }
        return bundle;
    }

    /* renamed from: e */
    private static Bundle[] m13588e(C0260m[] c0260mArr) {
        if (c0260mArr == null) {
            return null;
        }
        Bundle[] bundleArr = new Bundle[c0260mArr.length];
        for (int i = 0; i < c0260mArr.length; i++) {
            bundleArr[i] = m13589d(c0260mArr[i]);
        }
        return bundleArr;
    }

    /* renamed from: f */
    public static Bundle m13587f(Notification.Builder builder, C0253i.C0254a c0254a) {
        IconCompat m13633e = c0254a.m13633e();
        builder.addAction(m13633e != null ? m13633e.c() : 0, c0254a.m13629i(), c0254a.m13637a());
        Bundle bundle = new Bundle(c0254a.m13634d());
        if (c0254a.m13632f() != null) {
            bundle.putParcelableArray("android.support.remoteInputs", m13588e(c0254a.m13632f()));
        }
        if (c0254a.m13635c() != null) {
            bundle.putParcelableArray("android.support.dataRemoteInputs", m13588e(c0254a.m13635c()));
        }
        bundle.putBoolean("android.support.allowGeneratedReplies", c0254a.m13636b());
        return bundle;
    }
}
