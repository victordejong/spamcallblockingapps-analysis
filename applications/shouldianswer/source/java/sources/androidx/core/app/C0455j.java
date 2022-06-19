package androidx.core.app;

import android.app.Notification;
import android.os.Bundle;
import android.util.Log;
import android.util.SparseArray;
import androidx.core.app.C0445h;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
/* renamed from: androidx.core.app.j */
/* loaded from: classes-dex2jar.jar:androidx/core/app/j.class */
public class C0455j {

    /* renamed from: b */
    private static Field f1697b;

    /* renamed from: c */
    private static boolean f1698c;

    /* renamed from: a */
    private static final Object f1696a = new Object();

    /* renamed from: d */
    private static final Object f1699d = new Object();

    /* renamed from: a */
    public static Bundle m6578a(Notification.Builder builder, C0445h.C0446a c0446a) {
        builder.addAction(c0446a.m6647a(), c0446a.m6646b(), c0446a.m6645c());
        Bundle bundle = new Bundle(c0446a.m6644d());
        if (c0446a.m6642f() != null) {
            bundle.putParcelableArray("android.support.remoteInputs", m6573a(c0446a.m6642f()));
        }
        if (c0446a.m6640h() != null) {
            bundle.putParcelableArray("android.support.dataRemoteInputs", m6573a(c0446a.m6640h()));
        }
        bundle.putBoolean("android.support.allowGeneratedReplies", c0446a.m6643e());
        return bundle;
    }

    /* renamed from: a */
    public static Bundle m6577a(Notification notification) {
        synchronized (f1696a) {
            if (f1698c) {
                return null;
            }
            try {
                if (f1697b == null) {
                    Field declaredField = Notification.class.getDeclaredField("extras");
                    if (!Bundle.class.isAssignableFrom(declaredField.getType())) {
                        Log.e("NotificationCompat", "Notification.extras field is not of type Bundle");
                        f1698c = true;
                        return null;
                    }
                    declaredField.setAccessible(true);
                    f1697b = declaredField;
                }
                Bundle bundle = (Bundle) f1697b.get(notification);
                Bundle bundle2 = bundle;
                if (bundle == null) {
                    bundle2 = new Bundle();
                    f1697b.set(notification, bundle2);
                }
                return bundle2;
            } catch (IllegalAccessException e) {
                Log.e("NotificationCompat", "Unable to access notification extras", e);
                f1698c = true;
                return null;
            } catch (NoSuchFieldException e2) {
                Log.e("NotificationCompat", "Unable to access notification extras", e2);
                f1698c = true;
                return null;
            }
        }
    }

    /* renamed from: a */
    public static Bundle m6576a(C0445h.C0446a c0446a) {
        Bundle bundle = new Bundle();
        bundle.putInt("icon", c0446a.m6647a());
        bundle.putCharSequence("title", c0446a.m6646b());
        bundle.putParcelable("actionIntent", c0446a.m6645c());
        Bundle bundle2 = c0446a.m6644d() != null ? new Bundle(c0446a.m6644d()) : new Bundle();
        bundle2.putBoolean("android.support.allowGeneratedReplies", c0446a.m6643e());
        bundle.putBundle("extras", bundle2);
        bundle.putParcelableArray("remoteInputs", m6573a(c0446a.m6642f()));
        bundle.putBoolean("showsUserInterface", c0446a.m6639i());
        bundle.putInt("semanticAction", c0446a.m6641g());
        return bundle;
    }

    /* renamed from: a */
    private static Bundle m6575a(C0456k c0456k) {
        Bundle bundle = new Bundle();
        bundle.putString("resultKey", c0456k.m6572a());
        bundle.putCharSequence("label", c0456k.m6569b());
        bundle.putCharSequenceArray("choices", c0456k.m6568c());
        bundle.putBoolean("allowFreeFormInput", c0456k.m6565f());
        bundle.putBundle("extras", c0456k.m6564g());
        Set<String> m6567d = c0456k.m6567d();
        if (m6567d != null && !m6567d.isEmpty()) {
            ArrayList<String> arrayList = new ArrayList<>(m6567d.size());
            for (String str : m6567d) {
                arrayList.add(str);
            }
            bundle.putStringArrayList("allowedDataTypes", arrayList);
        }
        return bundle;
    }

    /* renamed from: a */
    public static SparseArray<Bundle> m6574a(List<Bundle> list) {
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

    /* renamed from: a */
    private static Bundle[] m6573a(C0456k[] c0456kArr) {
        if (c0456kArr == null) {
            return null;
        }
        Bundle[] bundleArr = new Bundle[c0456kArr.length];
        for (int i = 0; i < c0456kArr.length; i++) {
            bundleArr[i] = m6575a(c0456kArr[i]);
        }
        return bundleArr;
    }
}
