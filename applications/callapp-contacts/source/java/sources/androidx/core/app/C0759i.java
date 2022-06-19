package androidx.core.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import android.util.SparseArray;
import androidx.core.app.C0745g;
import androidx.core.graphics.drawable.IconCompat;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import net.pubnative.lite.sdk.models.APIAsset;
/* renamed from: androidx.core.app.i */
/* loaded from: classes-dex2jar.jar:androidx/core/app/i.class */
public final class C0759i {

    /* renamed from: b */
    private static Field f3394b;

    /* renamed from: c */
    private static boolean f3395c;

    /* renamed from: a */
    private static final Object f3393a = new Object();

    /* renamed from: d */
    private static final Object f3396d = new Object();

    private C0759i() {
    }

    /* renamed from: a */
    public static Bundle m44547a(Notification.Builder builder, C0745g.C0747a c0747a) {
        IconCompat m44584a = c0747a.m44584a();
        builder.addAction(m44584a != null ? m44584a.m44369b() : 0, c0747a.f3299i, c0747a.f3300j);
        Bundle bundle = new Bundle(c0747a.f3291a);
        if (c0747a.f3292b != null) {
            bundle.putParcelableArray("android.support.remoteInputs", m44540a(c0747a.f3292b));
        }
        if (c0747a.f3293c != null) {
            bundle.putParcelableArray("android.support.dataRemoteInputs", m44540a(c0747a.f3293c));
        }
        bundle.putBoolean("android.support.allowGeneratedReplies", c0747a.f3294d);
        return bundle;
    }

    /* renamed from: a */
    public static Bundle m44546a(Notification notification) {
        synchronized (f3393a) {
            if (f3395c) {
                return null;
            }
            try {
                if (f3394b == null) {
                    Field declaredField = Notification.class.getDeclaredField("extras");
                    if (!Bundle.class.isAssignableFrom(declaredField.getType())) {
                        Log.e("NotificationCompat", "Notification.extras field is not of type Bundle");
                        f3395c = true;
                        return null;
                    }
                    declaredField.setAccessible(true);
                    f3394b = declaredField;
                }
                Bundle bundle = (Bundle) f3394b.get(notification);
                Bundle bundle2 = bundle;
                if (bundle == null) {
                    bundle2 = new Bundle();
                    f3394b.set(notification, bundle2);
                }
                return bundle2;
            } catch (IllegalAccessException e) {
                Log.e("NotificationCompat", "Unable to access notification extras", e);
                f3395c = true;
                return null;
            } catch (NoSuchFieldException e2) {
                Log.e("NotificationCompat", "Unable to access notification extras", e2);
                f3395c = true;
                return null;
            }
        }
    }

    /* renamed from: a */
    public static Bundle m44543a(C0745g.C0747a c0747a) {
        Bundle bundle = new Bundle();
        IconCompat m44584a = c0747a.m44584a();
        bundle.putInt(APIAsset.ICON, m44584a != null ? m44584a.m44369b() : 0);
        bundle.putCharSequence("title", c0747a.f3299i);
        bundle.putParcelable("actionIntent", c0747a.f3300j);
        Bundle bundle2 = c0747a.f3291a != null ? new Bundle(c0747a.f3291a) : new Bundle();
        bundle2.putBoolean("android.support.allowGeneratedReplies", c0747a.f3294d);
        bundle.putBundle("extras", bundle2);
        bundle.putParcelableArray("remoteInputs", m44540a(c0747a.f3292b));
        bundle.putBoolean("showsUserInterface", c0747a.f3295e);
        bundle.putInt("semanticAction", c0747a.f3296f);
        return bundle;
    }

    /* renamed from: a */
    public static SparseArray<Bundle> m44542a(List<Bundle> list) {
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
    public static C0745g.C0747a m44545a(Bundle bundle) {
        Bundle bundle2 = bundle.getBundle("extras");
        return new C0745g.C0747a(bundle.getInt(APIAsset.ICON), bundle.getCharSequence("title"), (PendingIntent) bundle.getParcelable("actionIntent"), bundle.getBundle("extras"), m44541a(m44544a(bundle, "remoteInputs")), m44541a(m44544a(bundle, "dataOnlyRemoteInputs")), bundle2 != null ? bundle2.getBoolean("android.support.allowGeneratedReplies", false) : false, bundle.getInt("semanticAction"), bundle.getBoolean("showsUserInterface"), false);
    }

    /* renamed from: a */
    private static Bundle[] m44544a(Bundle bundle, String str) {
        Parcelable[] parcelableArray = bundle.getParcelableArray(str);
        if ((parcelableArray instanceof Bundle[]) || parcelableArray == null) {
            return (Bundle[]) parcelableArray;
        }
        Bundle[] bundleArr = (Bundle[]) Arrays.copyOf(parcelableArray, parcelableArray.length, Bundle[].class);
        bundle.putParcelableArray(str, bundleArr);
        return bundleArr;
    }

    /* renamed from: a */
    private static Bundle[] m44540a(C0763l[] c0763lArr) {
        if (c0763lArr == null) {
            return null;
        }
        Bundle[] bundleArr = new Bundle[c0763lArr.length];
        for (int i = 0; i < c0763lArr.length; i++) {
            C0763l c0763l = c0763lArr[i];
            Bundle bundle = new Bundle();
            bundle.putString("resultKey", c0763l.f3414a);
            bundle.putCharSequence("label", c0763l.f3415b);
            bundle.putCharSequenceArray("choices", c0763l.f3416c);
            bundle.putBoolean("allowFreeFormInput", c0763l.f3417d);
            bundle.putBundle("extras", c0763l.f3418e);
            Set<String> set = c0763l.f3419f;
            if (set != null && !set.isEmpty()) {
                ArrayList<String> arrayList = new ArrayList<>(set.size());
                for (String str : set) {
                    arrayList.add(str);
                }
                bundle.putStringArrayList("allowedDataTypes", arrayList);
            }
            bundleArr[i] = bundle;
        }
        return bundleArr;
    }

    /* renamed from: a */
    private static C0763l[] m44541a(Bundle[] bundleArr) {
        if (bundleArr == null) {
            return null;
        }
        C0763l[] c0763lArr = new C0763l[bundleArr.length];
        for (int i = 0; i < bundleArr.length; i++) {
            Bundle bundle = bundleArr[i];
            ArrayList<String> stringArrayList = bundle.getStringArrayList("allowedDataTypes");
            HashSet hashSet = new HashSet();
            if (stringArrayList != null) {
                Iterator<String> it2 = stringArrayList.iterator();
                while (it2.hasNext()) {
                    hashSet.add(it2.next());
                }
            }
            c0763lArr[i] = new C0763l(bundle.getString("resultKey"), bundle.getCharSequence("label"), bundle.getCharSequenceArray("choices"), bundle.getBoolean("allowFreeFormInput"), 0, bundle.getBundle("extras"), hashSet);
        }
        return c0763lArr;
    }
}
