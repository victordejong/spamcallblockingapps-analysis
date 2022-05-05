package p081h.p203i.p204a.p224e.p234c;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.clearcut.zze;
import com.google.android.gms.internal.clearcut.zzr;
import com.google.android.gms.phenotype.ExperimentTokens;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.c.e */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/c/e.class */
public final class C6785e implements Parcelable.Creator<zze> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zze createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        zzr zzrVar = null;
        byte[] bArr = null;
        int[] iArr = null;
        String[] strArr = null;
        int[] iArr2 = null;
        byte[][] bArr2 = null;
        ExperimentTokens[] experimentTokensArr = null;
        boolean z = true;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            switch (C7029a.m21265a(a)) {
                case 2:
                    zzrVar = (zzr) C7029a.m21260a(parcel, a, zzr.CREATOR);
                    break;
                case 3:
                    bArr = C7029a.m21250g(parcel, a);
                    break;
                case 4:
                    iArr = C7029a.m21246k(parcel, a);
                    break;
                case 5:
                    strArr = C7029a.m21241p(parcel, a);
                    break;
                case 6:
                    iArr2 = C7029a.m21246k(parcel, a);
                    break;
                case 7:
                    bArr2 = C7029a.m21249h(parcel, a);
                    break;
                case 8:
                    z = C7029a.m21238s(parcel, a);
                    break;
                case 9:
                    experimentTokensArr = (ExperimentTokens[]) C7029a.m21256b(parcel, a, ExperimentTokens.CREATOR);
                    break;
                default:
                    C7029a.m21266F(parcel, a);
                    break;
            }
        }
        C7029a.m21239r(parcel, b);
        return new zze(zzrVar, bArr, iArr, strArr, iArr2, bArr2, z, experimentTokensArr);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zze[] newArray(int i) {
        return new zze[i];
    }
}
