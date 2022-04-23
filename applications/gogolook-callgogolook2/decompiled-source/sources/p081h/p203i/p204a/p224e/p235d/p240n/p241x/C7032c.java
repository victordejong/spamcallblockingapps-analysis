package p081h.p203i.p204a.p224e.p235d.p240n.p241x;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
/* renamed from: h.i.a.e.d.n.x.c */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/n/x/c.class */
public final class C7032c {
    /* renamed from: a */
    public static <T extends SafeParcelable> T m21200a(Intent intent, String str, Parcelable.Creator<T> creator) {
        byte[] byteArrayExtra = intent.getByteArrayExtra(str);
        if (byteArrayExtra == null) {
            return null;
        }
        return (T) m21199a(byteArrayExtra, creator);
    }

    /* renamed from: a */
    public static <T extends SafeParcelable> T m21199a(byte[] bArr, Parcelable.Creator<T> creator) {
        C7021t.m21290a(creator);
        Parcel obtain = Parcel.obtain();
        obtain.unmarshall(bArr, 0, bArr.length);
        obtain.setDataPosition(0);
        T createFromParcel = creator.createFromParcel(obtain);
        obtain.recycle();
        return createFromParcel;
    }
}
