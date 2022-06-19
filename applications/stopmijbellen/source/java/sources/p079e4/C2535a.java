package p079e4;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.p012v4.media.C0082b;
import p216r0.AbstractC4178a;
import p226s.C4263g;
/* renamed from: e4.a */
/* loaded from: classes-dex2jar.jar:e4/a.class */
public class C2535a extends AbstractC4178a {
    public static final Parcelable.Creator<C2535a> CREATOR = new C2536a();

    /* renamed from: c */
    public final C4263g<String, Bundle> f8880c;

    /* renamed from: e4.a$a */
    /* loaded from: classes-dex2jar.jar:e4/a$a.class */
    public static final class C2536a implements Parcelable.ClassLoaderCreator<C2535a> {
        @Override // android.os.Parcelable.Creator
        public Object createFromParcel(Parcel parcel) {
            return new C2535a(parcel, null, null);
        }

        @Override // android.os.Parcelable.ClassLoaderCreator
        public C2535a createFromParcel(Parcel parcel, ClassLoader classLoader) {
            return new C2535a(parcel, classLoader, null);
        }

        @Override // android.os.Parcelable.Creator
        public Object[] newArray(int i) {
            return new C2535a[i];
        }
    }

    public C2535a(Parcel parcel, ClassLoader classLoader, C2536a c2536a) {
        super(parcel, classLoader);
        int readInt = parcel.readInt();
        String[] strArr = new String[readInt];
        parcel.readStringArray(strArr);
        Bundle[] bundleArr = new Bundle[readInt];
        parcel.readTypedArray(bundleArr, Bundle.CREATOR);
        this.f8880c = new C4263g<>(readInt);
        for (int i = 0; i < readInt; i++) {
            this.f8880c.put(strArr[i], bundleArr[i]);
        }
    }

    public C2535a(Parcelable parcelable) {
        super(parcelable);
        this.f8880c = new C4263g<>();
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("ExtendableSavedState{");
        m8752j.append(Integer.toHexString(System.identityHashCode(this)));
        m8752j.append(" states=");
        m8752j.append(this.f8880c);
        m8752j.append("}");
        return m8752j.toString();
    }

    @Override // p216r0.AbstractC4178a, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.f13167a, i);
        int i2 = this.f8880c.f13365c;
        parcel.writeInt(i2);
        String[] strArr = new String[i2];
        Bundle[] bundleArr = new Bundle[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            strArr[i3] = this.f8880c.m1195h(i3);
            bundleArr[i3] = this.f8880c.m1192k(i3);
        }
        parcel.writeStringArray(strArr);
        parcel.writeTypedArray(bundleArr, 0);
    }
}
