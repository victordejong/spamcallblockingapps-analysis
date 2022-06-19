package p1727n3.p1807k.p1808a;

import android.os.Bundle;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
/* renamed from: n3.k.a.w */
/* loaded from: classes-dex2jar.jar:n3/k/a/w.class */
public class C26457w {

    /* renamed from: a */
    public static final Object f74192a = new Object();

    /* renamed from: a */
    public static C26466z[] m1820a(Bundle[] bundleArr) {
        if (bundleArr == null) {
            return null;
        }
        C26466z[] c26466zArr = new C26466z[bundleArr.length];
        for (int i = 0; i < bundleArr.length; i++) {
            Bundle bundle = bundleArr[i];
            ArrayList<String> stringArrayList = bundle.getStringArrayList("allowedDataTypes");
            HashSet hashSet = new HashSet();
            if (stringArrayList != null) {
                Iterator<String> it = stringArrayList.iterator();
                while (it.hasNext()) {
                    hashSet.add(it.next());
                }
            }
            c26466zArr[i] = new C26466z(bundle.getString("resultKey"), bundle.getCharSequence("label"), bundle.getCharSequenceArray("choices"), bundle.getBoolean("allowFreeFormInput"), 0, bundle.getBundle("extras"), hashSet);
        }
        return c26466zArr;
    }

    /* renamed from: b */
    public static Bundle[] m1819b(Bundle bundle, String str) {
        Parcelable[] parcelableArray = bundle.getParcelableArray(str);
        if ((parcelableArray instanceof Bundle[]) || parcelableArray == null) {
            return (Bundle[]) parcelableArray;
        }
        Bundle[] bundleArr = (Bundle[]) Arrays.copyOf(parcelableArray, parcelableArray.length, Bundle[].class);
        bundle.putParcelableArray(str, bundleArr);
        return bundleArr;
    }

    /* renamed from: c */
    public static Bundle[] m1818c(C26466z[] c26466zArr) {
        if (c26466zArr == null) {
            return null;
        }
        Bundle[] bundleArr = new Bundle[c26466zArr.length];
        for (int i = 0; i < c26466zArr.length; i++) {
            C26466z c26466z = c26466zArr[i];
            Bundle bundle = new Bundle();
            bundle.putString("resultKey", c26466z.f74228a);
            bundle.putCharSequence("label", c26466z.f74229b);
            bundle.putCharSequenceArray("choices", c26466z.f74230c);
            bundle.putBoolean("allowFreeFormInput", c26466z.f74231d);
            bundle.putBundle("extras", c26466z.f74233f);
            Set<String> set = c26466z.f74234g;
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
}
