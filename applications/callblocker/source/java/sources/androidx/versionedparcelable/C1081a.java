package androidx.versionedparcelable;

import android.os.Bundle;
import android.os.Parcelable;
/* renamed from: androidx.versionedparcelable.a */
/* loaded from: classes-dex2jar.jar:androidx/versionedparcelable/a.class */
public class C1081a {
    private C1081a() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v9, types: [androidx.versionedparcelable.c] */
    /* renamed from: a */
    public static <T extends AbstractC1083c> T m18131a(Bundle bundle, String str) {
        T t;
        try {
            Bundle bundle2 = (Bundle) bundle.getParcelable(str);
            if (bundle2 == null) {
                t = null;
            } else {
                bundle2.setClassLoader(C1081a.class.getClassLoader());
                t = m18130a(bundle2.getParcelable("a"));
            }
        } catch (RuntimeException e) {
            t = null;
        }
        return t;
    }

    /* renamed from: a */
    public static <T extends AbstractC1083c> T m18130a(Parcelable parcelable) {
        if (!(parcelable instanceof ParcelImpl)) {
            throw new IllegalArgumentException("Invalid parcel");
        }
        return (T) ((ParcelImpl) parcelable).m18158a();
    }
}
