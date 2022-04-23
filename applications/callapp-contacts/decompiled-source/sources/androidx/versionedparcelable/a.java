package androidx.versionedparcelable;

import android.os.Bundle;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:androidx/versionedparcelable/a.class */
public class a {
    private a() {
    }

    public static Parcelable a(c cVar) {
        return new ParcelImpl(cVar);
    }

    public static <T extends c> T a(Bundle bundle, String str) {
        try {
            Bundle bundle2 = (Bundle) bundle.getParcelable(str);
            if (bundle2 == null) {
                return null;
            }
            bundle2.setClassLoader(a.class.getClassLoader());
            return (T) a(bundle2.getParcelable("a"));
        } catch (RuntimeException e) {
            return null;
        }
    }

    public static <T extends c> T a(Parcelable parcelable) {
        if (parcelable instanceof ParcelImpl) {
            return (T) ((ParcelImpl) parcelable).getVersionedParcel();
        }
        throw new IllegalArgumentException("Invalid parcel");
    }

    public static void a(Bundle bundle, String str, c cVar) {
        if (cVar != null) {
            Bundle bundle2 = new Bundle();
            bundle2.putParcelable("a", a(cVar));
            bundle.putParcelable(str, bundle2);
        }
    }
}
