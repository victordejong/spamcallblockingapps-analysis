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

    /* renamed from: b */
    static Bundle m13591b(C0253i.C0254a aVar) {
        Bundle bundle = new Bundle();
        IconCompat e = aVar.m13633e();
        bundle.putInt("icon", e != null ? e.c() : 0);
        bundle.putCharSequence("title", aVar.m13629i());
        bundle.putParcelable("actionIntent", aVar.m13637a());
        Bundle bundle2 = aVar.m13634d() != null ? new Bundle(aVar.m13634d()) : new Bundle();
        bundle2.putBoolean("android.support.allowGeneratedReplies", aVar.m13636b());
        bundle.putBundle("extras", bundle2);
        bundle.putParcelableArray("remoteInputs", m13588e(aVar.m13632f()));
        bundle.putBoolean("showsUserInterface", aVar.m13630h());
        bundle.putInt("semanticAction", aVar.m13631g());
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
    private static Bundle m13589d(C0260m mVar) {
        Bundle bundle = new Bundle();
        bundle.putString("resultKey", mVar.m13576i());
        bundle.putCharSequence("label", mVar.m13577h());
        bundle.putCharSequenceArray("choices", mVar.m13580e());
        bundle.putBoolean("allowFreeFormInput", mVar.m13582c());
        bundle.putBundle("extras", mVar.m13578g());
        Set<String> d = mVar.m13581d();
        if (d != null && !d.isEmpty()) {
            ArrayList<String> arrayList = new ArrayList<>(d.size());
            for (String str : d) {
                arrayList.add(str);
            }
            bundle.putStringArrayList("allowedDataTypes", arrayList);
        }
        return bundle;
    }

    /* renamed from: e */
    private static Bundle[] m13588e(C0260m[] mVarArr) {
        if (mVarArr == null) {
            return null;
        }
        Bundle[] bundleArr = new Bundle[mVarArr.length];
        for (int i = 0; i < mVarArr.length; i++) {
            bundleArr[i] = m13589d(mVarArr[i]);
        }
        return bundleArr;
    }

    /* renamed from: f */
    public static Bundle m13587f(Notification.Builder builder, C0253i.C0254a aVar) {
        IconCompat e = aVar.m13633e();
        builder.addAction(e != null ? e.c() : 0, aVar.m13629i(), aVar.m13637a());
        Bundle bundle = new Bundle(aVar.m13634d());
        if (aVar.m13632f() != null) {
            bundle.putParcelableArray("android.support.remoteInputs", m13588e(aVar.m13632f()));
        }
        if (aVar.m13635c() != null) {
            bundle.putParcelableArray("android.support.dataRemoteInputs", m13588e(aVar.m13635c()));
        }
        bundle.putBoolean("android.support.allowGeneratedReplies", aVar.m13636b());
        return bundle;
    }
}
