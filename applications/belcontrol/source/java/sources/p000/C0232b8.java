package p000;

import android.app.Notification;
import android.os.Bundle;
import android.util.Log;
import android.util.SparseArray;
import androidx.core.graphics.drawable.IconCompat;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import z7;
/* renamed from: b8 */
/* loaded from: classes-dex2jar.jar:b8.class */
public class C0232b8 {

    /* renamed from: a */
    public static final Object f1821a = new Object();

    /* renamed from: b */
    public static Field f1822b;

    /* renamed from: c */
    public static boolean f1823c;

    /* renamed from: a */
    public static SparseArray<Bundle> m5760a(List<Bundle> list) {
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
    public static Bundle m5759b(z7.a aVar) {
        Bundle bundle = new Bundle();
        IconCompat f = aVar.f();
        bundle.putInt("icon", f != null ? f.j() : 0);
        bundle.putCharSequence("title", aVar.j());
        bundle.putParcelable("actionIntent", aVar.a());
        Bundle bundle2 = aVar.d() != null ? new Bundle(aVar.d()) : new Bundle();
        bundle2.putBoolean("android.support.allowGeneratedReplies", aVar.b());
        bundle.putBundle("extras", bundle2);
        bundle.putParcelableArray("remoteInputs", m5756e(aVar.g()));
        bundle.putBoolean("showsUserInterface", aVar.i());
        bundle.putInt("semanticAction", aVar.h());
        return bundle;
    }

    /* renamed from: c */
    public static Bundle m5758c(Notification notification) {
        synchronized (f1821a) {
            if (f1823c) {
                return null;
            }
            try {
                if (f1822b == null) {
                    Field declaredField = Notification.class.getDeclaredField("extras");
                    if (!Bundle.class.isAssignableFrom(declaredField.getType())) {
                        Log.e("NotificationCompat", "Notification.extras field is not of type Bundle");
                        f1823c = true;
                        return null;
                    }
                    declaredField.setAccessible(true);
                    f1822b = declaredField;
                }
                Bundle bundle = (Bundle) f1822b.get(notification);
                Bundle bundle2 = bundle;
                if (bundle == null) {
                    bundle2 = new Bundle();
                    f1822b.set(notification, bundle2);
                }
                return bundle2;
            } catch (IllegalAccessException | NoSuchFieldException e) {
                Log.e("NotificationCompat", "Unable to access notification extras", e);
                f1823c = true;
                return null;
            }
        }
    }

    /* renamed from: d */
    public static Bundle m5757d(C1281d8 c1281d8) {
        Bundle bundle = new Bundle();
        bundle.putString("resultKey", c1281d8.m2777i());
        bundle.putCharSequence("label", c1281d8.m2778h());
        bundle.putCharSequenceArray("choices", c1281d8.m2781e());
        bundle.putBoolean("allowFreeFormInput", c1281d8.m2783c());
        bundle.putBundle("extras", c1281d8.m2779g());
        Set<String> m2782d = c1281d8.m2782d();
        if (m2782d != null && !m2782d.isEmpty()) {
            ArrayList<String> arrayList = new ArrayList<>(m2782d.size());
            for (String str : m2782d) {
                arrayList.add(str);
            }
            bundle.putStringArrayList("allowedDataTypes", arrayList);
        }
        return bundle;
    }

    /* renamed from: e */
    public static Bundle[] m5756e(C1281d8[] c1281d8Arr) {
        if (c1281d8Arr == null) {
            return null;
        }
        Bundle[] bundleArr = new Bundle[c1281d8Arr.length];
        for (int i = 0; i < c1281d8Arr.length; i++) {
            bundleArr[i] = m5757d(c1281d8Arr[i]);
        }
        return bundleArr;
    }

    /* renamed from: f */
    public static Bundle m5755f(Notification.Builder builder, z7.a aVar) {
        IconCompat f = aVar.f();
        builder.addAction(f != null ? f.j() : 0, aVar.j(), aVar.a());
        Bundle bundle = new Bundle(aVar.d());
        if (aVar.g() != null) {
            bundle.putParcelableArray("android.support.remoteInputs", m5756e(aVar.g()));
        }
        if (aVar.c() != null) {
            bundle.putParcelableArray("android.support.dataRemoteInputs", m5756e(aVar.c()));
        }
        bundle.putBoolean("android.support.allowGeneratedReplies", aVar.b());
        return bundle;
    }
}
