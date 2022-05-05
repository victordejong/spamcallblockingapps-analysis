package androidx.core.app;

import android.app.Notification;
import android.os.Bundle;
import android.util.Log;
import android.util.SparseArray;
import androidx.annotation.RequiresApi;
import androidx.core.app.NotificationCompat;
import androidx.core.graphics.drawable.IconCompat;
import com.google.firebase.messaging.Constants;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
@RequiresApi
/* loaded from: classes-dex2jar.jar:androidx/core/app/NotificationCompatJellybean.class */
public class NotificationCompatJellybean {

    /* renamed from: a */
    private static final Object f2928a = new Object();

    /* renamed from: b */
    private static Field f2929b;

    /* renamed from: c */
    private static boolean f2930c;

    private NotificationCompatJellybean() {
    }

    /* renamed from: a */
    public static SparseArray<Bundle> m19742a(List<Bundle> list) {
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
    /* renamed from: b */
    public static Bundle m19741b(NotificationCompat.Action action) {
        Bundle bundle = new Bundle();
        IconCompat f = action.m19798f();
        bundle.putInt("icon", f != null ? f.m19490e() : 0);
        bundle.putCharSequence("title", action.m19794j());
        bundle.putParcelable("actionIntent", action.m19803a());
        Bundle bundle2 = action.m19800d() != null ? new Bundle(action.m19800d()) : new Bundle();
        bundle2.putBoolean("android.support.allowGeneratedReplies", action.m19802b());
        bundle.putBundle("extras", bundle2);
        bundle.putParcelableArray("remoteInputs", m19738e(action.m19797g()));
        bundle.putBoolean("showsUserInterface", action.m19795i());
        bundle.putInt("semanticAction", action.m19796h());
        return bundle;
    }

    /* renamed from: c */
    public static Bundle m19740c(Notification notification) {
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
    private static Bundle m19739d(RemoteInput remoteInput) {
        Bundle bundle = new Bundle();
        bundle.putString("resultKey", remoteInput.m19696i());
        bundle.putCharSequence(Constants.ScionAnalytics.PARAM_LABEL, remoteInput.m19697h());
        bundle.putCharSequenceArray("choices", remoteInput.m19700e());
        bundle.putBoolean("allowFreeFormInput", remoteInput.m19702c());
        bundle.putBundle("extras", remoteInput.m19698g());
        Set<String> d = remoteInput.m19701d();
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
    private static Bundle[] m19738e(RemoteInput[] remoteInputArr) {
        if (remoteInputArr == null) {
            return null;
        }
        Bundle[] bundleArr = new Bundle[remoteInputArr.length];
        for (int i = 0; i < remoteInputArr.length; i++) {
            bundleArr[i] = m19739d(remoteInputArr[i]);
        }
        return bundleArr;
    }

    /* renamed from: f */
    public static Bundle m19737f(Notification.Builder builder, NotificationCompat.Action action) {
        IconCompat f = action.m19798f();
        builder.addAction(f != null ? f.m19490e() : 0, action.m19794j(), action.m19803a());
        Bundle bundle = new Bundle(action.m19800d());
        if (action.m19797g() != null) {
            bundle.putParcelableArray("android.support.remoteInputs", m19738e(action.m19797g()));
        }
        if (action.m19801c() != null) {
            bundle.putParcelableArray("android.support.dataRemoteInputs", m19738e(action.m19801c()));
        }
        bundle.putBoolean("android.support.allowGeneratedReplies", action.m19802b());
        return bundle;
    }
}
