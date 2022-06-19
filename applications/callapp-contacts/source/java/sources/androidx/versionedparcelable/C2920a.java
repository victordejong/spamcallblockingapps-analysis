package androidx.versionedparcelable;

import android.os.Bundle;
import android.os.Parcelable;
/* renamed from: androidx.versionedparcelable.a */
/* loaded from: classes-dex2jar.jar:androidx/versionedparcelable/a.class */
public class C2920a {
    private C2920a() {
    }

    /* renamed from: a */
    public static Parcelable m39627a(AbstractC2922c abstractC2922c) {
        return new ParcelImpl(abstractC2922c);
    }

    /* renamed from: a */
    public static <T extends AbstractC2922c> T m39630a(Bundle bundle, String str) {
        try {
            Bundle bundle2 = (Bundle) bundle.getParcelable(str);
            if (bundle2 == null) {
                return null;
            }
            bundle2.setClassLoader(C2920a.class.getClassLoader());
            return (T) m39628a(bundle2.getParcelable("a"));
        } catch (RuntimeException e) {
            return null;
        }
    }

    /* renamed from: a */
    public static <T extends AbstractC2922c> T m39628a(Parcelable parcelable) {
        if (parcelable instanceof ParcelImpl) {
            return (T) ((ParcelImpl) parcelable).getVersionedParcel();
        }
        throw new IllegalArgumentException("Invalid parcel");
    }

    /* renamed from: a */
    public static void m39629a(Bundle bundle, String str, AbstractC2922c abstractC2922c) {
        if (abstractC2922c == null) {
            return;
        }
        Bundle bundle2 = new Bundle();
        bundle2.putParcelable("a", m39627a(abstractC2922c));
        bundle.putParcelable(str, bundle2);
    }
}
