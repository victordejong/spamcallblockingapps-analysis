package p000;

import android.os.Bundle;
import android.os.Parcelable;
import androidx.versionedparcelable.ParcelImpl;
/* renamed from: c40 */
/* loaded from: classes-dex2jar.jar:c40.class */
public class c40 {
    /* renamed from: a */
    public static <T extends f40> T m5455a(Parcelable parcelable) {
        if (parcelable instanceof ParcelImpl) {
            return (T) ((ParcelImpl) parcelable).m5991a();
        }
        throw new IllegalArgumentException("Invalid parcel");
    }

    /* renamed from: b */
    public static <T extends f40> T m5454b(Bundle bundle, String str) {
        try {
            Bundle bundle2 = (Bundle) bundle.getParcelable(str);
            if (bundle2 == null) {
                return null;
            }
            bundle2.setClassLoader(c40.class.getClassLoader());
            return (T) m5455a(bundle2.getParcelable("a"));
        } catch (RuntimeException e) {
            return null;
        }
    }

    /* renamed from: c */
    public static void m5453c(Bundle bundle, String str, f40 f40Var) {
        if (f40Var == null) {
            return;
        }
        Bundle bundle2 = new Bundle();
        bundle2.putParcelable("a", m5452d(f40Var));
        bundle.putParcelable(str, bundle2);
    }

    /* renamed from: d */
    public static Parcelable m5452d(f40 f40Var) {
        return new ParcelImpl(f40Var);
    }
}
