package p1727n3.p1803i0;

import android.os.Bundle;
import android.os.Parcelable;
import androidx.versionedparcelable.ParcelImpl;
/* renamed from: n3.i0.a */
/* loaded from: classes-dex2jar.jar:n3/i0/a.class */
public class C26403a {
    /* renamed from: a */
    public static <T extends AbstractC26407e> T m1939a(Bundle bundle, String str) {
        try {
            Bundle bundle2 = (Bundle) bundle.getParcelable(str);
            if (bundle2 == null) {
                return null;
            }
            bundle2.setClassLoader(C26403a.class.getClassLoader());
            Parcelable parcelable = bundle2.getParcelable("a");
            if (!(parcelable instanceof ParcelImpl)) {
                throw new IllegalArgumentException("Invalid parcel");
            }
            return (T) ((ParcelImpl) parcelable).mo42658a();
        } catch (RuntimeException e) {
            return null;
        }
    }
}
