package androidx.core.app;

import android.app.Notification;
import android.os.Bundle;
import android.util.Log;
import android.util.SparseArray;
import androidx.core.app.C0565h;
import androidx.core.graphics.drawable.IconCompat;
import java.lang.reflect.Field;
import java.util.List;
/* renamed from: androidx.core.app.j */
/* loaded from: classes-dex2jar.jar:androidx/core/app/j.class */
public class C0577j {

    /* renamed from: b */
    private static Field f2929b;

    /* renamed from: c */
    private static boolean f2930c;

    /* renamed from: a */
    private static final Object f2928a = new Object();

    /* renamed from: d */
    private static final Object f2931d = new Object();

    /* renamed from: a */
    public static SparseArray<Bundle> m33388a(List<Bundle> list) {
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
    public static Bundle m33387b(C0565h.C0566a c0566a) {
        Bundle bundle = new Bundle();
        IconCompat m33446e = c0566a.m33446e();
        bundle.putInt("icon", m33446e != null ? m33446e.m33243e() : 0);
        bundle.putCharSequence("title", c0566a.m33442i());
        bundle.putParcelable("actionIntent", c0566a.m33450a());
        Bundle bundle2 = c0566a.m33447d() != null ? new Bundle(c0566a.m33447d()) : new Bundle();
        bundle2.putBoolean("android.support.allowGeneratedReplies", c0566a.m33449b());
        bundle.putBundle("extras", bundle2);
        bundle.putParcelableArray("remoteInputs", m33384e(c0566a.m33445f()));
        bundle.putBoolean("showsUserInterface", c0566a.m33443h());
        bundle.putInt("semanticAction", c0566a.m33444g());
        return bundle;
    }

    /* renamed from: c */
    public static Bundle m33386c(Notification notification) {
        synchronized (f2928a) {
            if (f2930c) {
                return null;
            }
            try {
                if (f2929b == null) {
                    Field declaredField = Notification.class.getDeclaredField("extras");
                    if (!Bundle.class.isAssignableFrom(declaredField.getType())) {
                        Log.e("NotificationCompat", "Notification.extras field is not of type Bundle");
                        f2930c = true;
                        return null;
                    }
                    declaredField.setAccessible(true);
                    f2929b = declaredField;
                }
                Bundle bundle = (Bundle) f2929b.get(notification);
                Bundle bundle2 = bundle;
                if (bundle == null) {
                    bundle2 = new Bundle();
                    f2929b.set(notification, bundle2);
                }
                return bundle2;
            } catch (IllegalAccessException e) {
                Log.e("NotificationCompat", "Unable to access notification extras", e);
                f2930c = true;
                return null;
            } catch (NoSuchFieldException e2) {
                Log.e("NotificationCompat", "Unable to access notification extras", e2);
                f2930c = true;
                return null;
            }
        }
    }

    /* renamed from: d */
    private static Bundle m33385d(C0580m c0580m) {
        new Bundle();
        throw null;
    }

    /* renamed from: e */
    private static Bundle[] m33384e(C0580m[] c0580mArr) {
        if (c0580mArr == null) {
            return null;
        }
        Bundle[] bundleArr = new Bundle[c0580mArr.length];
        for (int i = 0; i < c0580mArr.length; i++) {
            bundleArr[i] = m33385d(c0580mArr[i]);
        }
        return bundleArr;
    }

    /* renamed from: f */
    public static Bundle m33383f(Notification.Builder builder, C0565h.C0566a c0566a) {
        IconCompat m33446e = c0566a.m33446e();
        builder.addAction(m33446e != null ? m33446e.m33243e() : 0, c0566a.m33442i(), c0566a.m33450a());
        Bundle bundle = new Bundle(c0566a.m33447d());
        if (c0566a.m33445f() != null) {
            bundle.putParcelableArray("android.support.remoteInputs", m33384e(c0566a.m33445f()));
        }
        if (c0566a.m33448c() != null) {
            bundle.putParcelableArray("android.support.dataRemoteInputs", m33384e(c0566a.m33448c()));
        }
        bundle.putBoolean("android.support.allowGeneratedReplies", c0566a.m33449b());
        return bundle;
    }
}
