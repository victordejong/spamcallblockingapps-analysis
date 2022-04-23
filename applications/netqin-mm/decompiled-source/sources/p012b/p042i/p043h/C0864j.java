package p012b.p042i.p043h;

import android.app.Notification;
import android.os.Bundle;
import android.util.Log;
import android.util.SparseArray;
import androidx.core.graphics.drawable.IconCompat;
import java.lang.reflect.Field;
import java.util.List;
import p012b.p042i.p043h.C0857h;
/* renamed from: b.i.h.j */
/* loaded from: classes-dex2jar.jar:b/i/h/j.class */
public class C0864j {

    /* renamed from: a */
    public static final Object f4053a = new Object();

    /* renamed from: b */
    public static Field f4054b;

    /* renamed from: c */
    public static boolean f4055c;

    /* renamed from: a */
    public static Bundle m35713a(Notification.Builder builder, C0857h.C0858a aVar) {
        IconCompat f = aVar.m35762f();
        builder.addAction(f != null ? f.m38560g() : 0, aVar.m35758j(), aVar.m35767a());
        Bundle bundle = new Bundle(aVar.m35764d());
        if (aVar.m35761g() != null) {
            bundle.putParcelableArray("android.support.remoteInputs", m35708a(aVar.m35761g()));
        }
        if (aVar.m35765c() != null) {
            bundle.putParcelableArray("android.support.dataRemoteInputs", m35708a(aVar.m35765c()));
        }
        bundle.putBoolean("android.support.allowGeneratedReplies", aVar.m35766b());
        return bundle;
    }

    /* renamed from: a */
    public static Bundle m35712a(Notification notification) {
        synchronized (f4053a) {
            if (f4055c) {
                return null;
            }
            try {
                if (f4054b == null) {
                    Field declaredField = Notification.class.getDeclaredField("extras");
                    if (!Bundle.class.isAssignableFrom(declaredField.getType())) {
                        Log.e("NotificationCompat", "Notification.extras field is not of type Bundle");
                        f4055c = true;
                        return null;
                    }
                    declaredField.setAccessible(true);
                    f4054b = declaredField;
                }
                Bundle bundle = (Bundle) f4054b.get(notification);
                Bundle bundle2 = bundle;
                if (bundle == null) {
                    bundle2 = new Bundle();
                    f4054b.set(notification, bundle2);
                }
                return bundle2;
            } catch (IllegalAccessException e) {
                Log.e("NotificationCompat", "Unable to access notification extras", e);
                f4055c = true;
                return null;
            } catch (NoSuchFieldException e2) {
                Log.e("NotificationCompat", "Unable to access notification extras", e2);
                f4055c = true;
                return null;
            }
        }
    }

    /* renamed from: a */
    public static Bundle m35711a(C0857h.C0858a aVar) {
        Bundle bundle = new Bundle();
        IconCompat f = aVar.m35762f();
        bundle.putInt("icon", f != null ? f.m38560g() : 0);
        bundle.putCharSequence("title", aVar.m35758j());
        bundle.putParcelable("actionIntent", aVar.m35767a());
        Bundle bundle2 = aVar.m35764d() != null ? new Bundle(aVar.m35764d()) : new Bundle();
        bundle2.putBoolean("android.support.allowGeneratedReplies", aVar.m35766b());
        bundle.putBundle("extras", bundle2);
        bundle.putParcelableArray("remoteInputs", m35708a(aVar.m35761g()));
        bundle.putBoolean("showsUserInterface", aVar.m35759i());
        bundle.putInt("semanticAction", aVar.m35760h());
        return bundle;
    }

    /* renamed from: a */
    public static Bundle m35710a(C0865k kVar) {
        new Bundle();
        kVar.m35707a();
        throw null;
    }

    /* renamed from: a */
    public static SparseArray<Bundle> m35709a(List<Bundle> list) {
        int size = list.size();
        SparseArray<Bundle> sparseArray = null;
        for (int i = 0; i < size; i++) {
            Bundle bundle = list.get(i);
            sparseArray = sparseArray;
            if (bundle != null) {
                sparseArray = sparseArray;
                if (sparseArray == null) {
                    sparseArray = new SparseArray<>();
                }
                sparseArray.put(i, bundle);
            }
        }
        return sparseArray;
    }

    /* renamed from: a */
    public static Bundle[] m35708a(C0865k[] kVarArr) {
        if (kVarArr == null) {
            return null;
        }
        Bundle[] bundleArr = new Bundle[kVarArr.length];
        if (kVarArr.length <= 0) {
            return bundleArr;
        }
        m35710a(kVarArr[0]);
        throw null;
    }
}
