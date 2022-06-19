package p000;

import android.os.Build;
import android.os.Bundle;
import androidx.savedstate.SavedStateRegistry;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
/* renamed from: af */
/* loaded from: classes-dex2jar.jar:af.class */
public final class C0035af {

    /* renamed from: a */
    public final Map<String, Object> f283a;

    /* renamed from: b */
    public final SavedStateRegistry.AbstractC0191b f284b;

    static {
        Class cls = Double.TYPE;
        Class cls2 = Integer.TYPE;
        Class cls3 = Long.TYPE;
        Class cls4 = Byte.TYPE;
        Class cls5 = Character.TYPE;
        Class cls6 = Float.TYPE;
        Class cls7 = Short.TYPE;
        int i = Build.VERSION.SDK_INT;
        if (i >= 21) {
        }
        if (i >= 21) {
        }
    }

    public C0035af() {
        new HashMap();
        this.f284b = new a(this);
        this.f283a = new HashMap();
    }

    public C0035af(Map<String, Object> map) {
        new HashMap();
        this.f284b = new a(this);
        this.f283a = new HashMap(map);
    }

    /* renamed from: a */
    public static C0035af m7223a(Bundle bundle, Bundle bundle2) {
        if (bundle == null && bundle2 == null) {
            return new C0035af();
        }
        HashMap hashMap = new HashMap();
        if (bundle2 != null) {
            for (String str : bundle2.keySet()) {
                hashMap.put(str, bundle2.get(str));
            }
        }
        if (bundle == null) {
            return new C0035af(hashMap);
        }
        ArrayList parcelableArrayList = bundle.getParcelableArrayList("keys");
        ArrayList parcelableArrayList2 = bundle.getParcelableArrayList("values");
        if (parcelableArrayList == null || parcelableArrayList2 == null || parcelableArrayList.size() != parcelableArrayList2.size()) {
            throw new IllegalStateException("Invalid bundle passed as restored state");
        }
        for (int i = 0; i < parcelableArrayList.size(); i++) {
            hashMap.put((String) parcelableArrayList.get(i), parcelableArrayList2.get(i));
        }
        return new C0035af(hashMap);
    }

    /* renamed from: b */
    public SavedStateRegistry.AbstractC0191b m7222b() {
        return this.f284b;
    }
}
