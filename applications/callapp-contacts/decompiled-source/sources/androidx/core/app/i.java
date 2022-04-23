package androidx.core.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import android.util.SparseArray;
import androidx.core.app.g;
import androidx.core.graphics.drawable.IconCompat;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import net.pubnative.lite.sdk.models.APIAsset;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/core/app/i.class */
public final class i {

    /* renamed from: b  reason: collision with root package name */
    private static Field f1758b;

    /* renamed from: c  reason: collision with root package name */
    private static boolean f1759c;

    /* renamed from: a  reason: collision with root package name */
    private static final Object f1757a = new Object();

    /* renamed from: d  reason: collision with root package name */
    private static final Object f1760d = new Object();

    private i() {
    }

    public static Bundle a(Notification.Builder builder, g.a aVar) {
        IconCompat a2 = aVar.a();
        builder.addAction(a2 != null ? a2.b() : 0, aVar.i, aVar.j);
        Bundle bundle = new Bundle(aVar.f1724a);
        if (aVar.f1725b != null) {
            bundle.putParcelableArray("android.support.remoteInputs", a(aVar.f1725b));
        }
        if (aVar.f1726c != null) {
            bundle.putParcelableArray("android.support.dataRemoteInputs", a(aVar.f1726c));
        }
        bundle.putBoolean("android.support.allowGeneratedReplies", aVar.f1727d);
        return bundle;
    }

    public static Bundle a(Notification notification) {
        synchronized (f1757a) {
            if (f1759c) {
                return null;
            }
            try {
                if (f1758b == null) {
                    Field declaredField = Notification.class.getDeclaredField("extras");
                    if (!Bundle.class.isAssignableFrom(declaredField.getType())) {
                        Log.e("NotificationCompat", "Notification.extras field is not of type Bundle");
                        f1759c = true;
                        return null;
                    }
                    declaredField.setAccessible(true);
                    f1758b = declaredField;
                }
                Bundle bundle = (Bundle) f1758b.get(notification);
                Bundle bundle2 = bundle;
                if (bundle == null) {
                    bundle2 = new Bundle();
                    f1758b.set(notification, bundle2);
                }
                return bundle2;
            } catch (IllegalAccessException e) {
                Log.e("NotificationCompat", "Unable to access notification extras", e);
                f1759c = true;
                return null;
            } catch (NoSuchFieldException e2) {
                Log.e("NotificationCompat", "Unable to access notification extras", e2);
                f1759c = true;
                return null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Bundle a(g.a aVar) {
        Bundle bundle = new Bundle();
        IconCompat a2 = aVar.a();
        bundle.putInt(APIAsset.ICON, a2 != null ? a2.b() : 0);
        bundle.putCharSequence("title", aVar.i);
        bundle.putParcelable("actionIntent", aVar.j);
        Bundle bundle2 = aVar.f1724a != null ? new Bundle(aVar.f1724a) : new Bundle();
        bundle2.putBoolean("android.support.allowGeneratedReplies", aVar.f1727d);
        bundle.putBundle("extras", bundle2);
        bundle.putParcelableArray("remoteInputs", a(aVar.f1725b));
        bundle.putBoolean("showsUserInterface", aVar.e);
        bundle.putInt("semanticAction", aVar.f);
        return bundle;
    }

    public static SparseArray<Bundle> a(List<Bundle> list) {
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public static g.a a(Bundle bundle) {
        Bundle bundle2 = bundle.getBundle("extras");
        return new g.a(bundle.getInt(APIAsset.ICON), bundle.getCharSequence("title"), (PendingIntent) bundle.getParcelable("actionIntent"), bundle.getBundle("extras"), a(a(bundle, "remoteInputs")), a(a(bundle, "dataOnlyRemoteInputs")), bundle2 != null ? bundle2.getBoolean("android.support.allowGeneratedReplies", false) : false, bundle.getInt("semanticAction"), bundle.getBoolean("showsUserInterface"), false);
    }

    private static Bundle[] a(Bundle bundle, String str) {
        Parcelable[] parcelableArray = bundle.getParcelableArray(str);
        if ((parcelableArray instanceof Bundle[]) || parcelableArray == null) {
            return (Bundle[]) parcelableArray;
        }
        Bundle[] bundleArr = (Bundle[]) Arrays.copyOf(parcelableArray, parcelableArray.length, Bundle[].class);
        bundle.putParcelableArray(str, bundleArr);
        return bundleArr;
    }

    private static Bundle[] a(l[] lVarArr) {
        if (lVarArr == null) {
            return null;
        }
        Bundle[] bundleArr = new Bundle[lVarArr.length];
        for (int i = 0; i < lVarArr.length; i++) {
            l lVar = lVarArr[i];
            Bundle bundle = new Bundle();
            bundle.putString("resultKey", lVar.f1773a);
            bundle.putCharSequence("label", lVar.f1774b);
            bundle.putCharSequenceArray("choices", lVar.f1775c);
            bundle.putBoolean("allowFreeFormInput", lVar.f1776d);
            bundle.putBundle("extras", lVar.e);
            Set<String> set = lVar.f;
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

    private static l[] a(Bundle[] bundleArr) {
        if (bundleArr == null) {
            return null;
        }
        l[] lVarArr = new l[bundleArr.length];
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
            lVarArr[i] = new l(bundle.getString("resultKey"), bundle.getCharSequence("label"), bundle.getCharSequenceArray("choices"), bundle.getBoolean("allowFreeFormInput"), 0, bundle.getBundle("extras"), hashSet);
        }
        return lVarArr;
    }
}
