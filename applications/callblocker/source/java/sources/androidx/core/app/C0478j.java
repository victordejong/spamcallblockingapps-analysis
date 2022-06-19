package androidx.core.app;

import android.app.Notification;
import android.os.Bundle;
import android.util.Log;
import android.util.SparseArray;
import androidx.core.app.C0472h;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
/* renamed from: androidx.core.app.j */
/* loaded from: classes-dex2jar.jar:androidx/core/app/j.class */
public class C0478j {

    /* renamed from: b */
    private static Field f1848b;

    /* renamed from: c */
    private static boolean f1849c;

    /* renamed from: a */
    private static final Object f1847a = new Object();

    /* renamed from: d */
    private static final Object f1850d = new Object();

    /* renamed from: a */
    public static Bundle m20755a(Notification.Builder builder, C0472h.C0473a c0473a) {
        builder.addAction(c0473a.m20794a(), c0473a.m20793b(), c0473a.m20792c());
        Bundle bundle = new Bundle(c0473a.m20791d());
        if (c0473a.m20789f() != null) {
            bundle.putParcelableArray("android.support.remoteInputs", m20750a(c0473a.m20789f()));
        }
        if (c0473a.m20787h() != null) {
            bundle.putParcelableArray("android.support.dataRemoteInputs", m20750a(c0473a.m20787h()));
        }
        bundle.putBoolean("android.support.allowGeneratedReplies", c0473a.m20790e());
        return bundle;
    }

    /* renamed from: a */
    public static Bundle m20754a(Notification notification) {
        Bundle bundle;
        synchronized (f1847a) {
            if (f1849c) {
                bundle = null;
            } else {
                try {
                    if (f1848b == null) {
                        Field declaredField = Notification.class.getDeclaredField("extras");
                        if (!Bundle.class.isAssignableFrom(declaredField.getType())) {
                            Log.e("NotificationCompat", "Notification.extras field is not of type Bundle");
                            f1849c = true;
                            bundle = null;
                        } else {
                            declaredField.setAccessible(true);
                            f1848b = declaredField;
                        }
                    }
                    Bundle bundle2 = (Bundle) f1848b.get(notification);
                    Bundle bundle3 = bundle2;
                    if (bundle2 == null) {
                        bundle3 = new Bundle();
                        f1848b.set(notification, bundle3);
                    }
                    bundle = bundle3;
                } catch (IllegalAccessException e) {
                    Log.e("NotificationCompat", "Unable to access notification extras", e);
                    f1849c = true;
                    bundle = null;
                    return bundle;
                } catch (NoSuchFieldException e2) {
                    Log.e("NotificationCompat", "Unable to access notification extras", e2);
                    f1849c = true;
                    bundle = null;
                    return bundle;
                }
            }
        }
        return bundle;
    }

    /* renamed from: a */
    public static Bundle m20753a(C0472h.C0473a c0473a) {
        Bundle bundle = new Bundle();
        bundle.putInt("icon", c0473a.m20794a());
        bundle.putCharSequence("title", c0473a.m20793b());
        bundle.putParcelable("actionIntent", c0473a.m20792c());
        Bundle bundle2 = c0473a.m20791d() != null ? new Bundle(c0473a.m20791d()) : new Bundle();
        bundle2.putBoolean("android.support.allowGeneratedReplies", c0473a.m20790e());
        bundle.putBundle("extras", bundle2);
        bundle.putParcelableArray("remoteInputs", m20750a(c0473a.m20789f()));
        bundle.putBoolean("showsUserInterface", c0473a.m20786i());
        bundle.putInt("semanticAction", c0473a.m20788g());
        return bundle;
    }

    /* renamed from: a */
    private static Bundle m20752a(C0479k c0479k) {
        Bundle bundle = new Bundle();
        bundle.putString("resultKey", c0479k.m20749a());
        bundle.putCharSequence("label", c0479k.m20746b());
        bundle.putCharSequenceArray("choices", c0479k.m20745c());
        bundle.putBoolean("allowFreeFormInput", c0479k.m20743e());
        bundle.putBundle("extras", c0479k.m20742f());
        Set<String> m20744d = c0479k.m20744d();
        if (m20744d != null && !m20744d.isEmpty()) {
            ArrayList<String> arrayList = new ArrayList<>(m20744d.size());
            for (String str : m20744d) {
                arrayList.add(str);
            }
            bundle.putStringArrayList("allowedDataTypes", arrayList);
        }
        return bundle;
    }

    /* renamed from: a */
    public static SparseArray<Bundle> m20751a(List<Bundle> list) {
        SparseArray<Bundle> sparseArray = null;
        int size = list.size();
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

    /* renamed from: a */
    private static Bundle[] m20750a(C0479k[] c0479kArr) {
        Bundle[] bundleArr;
        if (c0479kArr == null) {
            bundleArr = null;
        } else {
            Bundle[] bundleArr2 = new Bundle[c0479kArr.length];
            for (int i = 0; i < c0479kArr.length; i++) {
                bundleArr2[i] = m20752a(c0479kArr[i]);
            }
            bundleArr = bundleArr2;
        }
        return bundleArr;
    }
}
