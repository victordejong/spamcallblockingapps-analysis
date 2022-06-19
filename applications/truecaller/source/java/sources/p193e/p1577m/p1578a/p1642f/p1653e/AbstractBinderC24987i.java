package p193e.p1577m.p1578a.p1642f.p1653e;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.zzy;
import com.google.android.gms.common.internal.zzz;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;
/* renamed from: e.m.a.f.e.i */
/* loaded from: classes2-dex2jar.jar:e/m/a/f/e/i.class */
public abstract class AbstractBinderC24987i extends zzy {

    /* renamed from: b */
    public final int f69944b;

    public AbstractBinderC24987i(byte[] bArr) {
        Preconditions.m38907a(bArr.length == 25);
        this.f69944b = Arrays.hashCode(bArr);
    }

    /* renamed from: m1 */
    public static byte[] m4245m1(String str) {
        try {
            return str.getBytes("ISO-8859-1");
        } catch (UnsupportedEncodingException e) {
            throw new AssertionError(e);
        }
    }

    /* renamed from: B1 */
    public abstract byte[] mo4244B1();

    public final boolean equals(Object obj) {
        IObjectWrapper zzd;
        if (obj == null || !(obj instanceof zzz)) {
            return false;
        }
        try {
            zzz zzzVar = (zzz) obj;
            if (zzzVar.zzc() != this.f69944b || (zzd = zzzVar.zzd()) == null) {
                return false;
            }
            return Arrays.equals(mo4244B1(), (byte[]) ObjectWrapper.m38746B1(zzd));
        } catch (RemoteException e) {
            return false;
        }
    }

    public final int hashCode() {
        return this.f69944b;
    }

    @Override // com.google.android.gms.common.internal.zzz
    public final int zzc() {
        return this.f69944b;
    }

    @Override // com.google.android.gms.common.internal.zzz
    public final IObjectWrapper zzd() {
        return new ObjectWrapper(mo4244B1());
    }
}
