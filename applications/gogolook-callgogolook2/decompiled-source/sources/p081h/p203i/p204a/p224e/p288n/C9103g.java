package p081h.p203i.p204a.p224e.p288n;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.phenotype.ExperimentTokens;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.n.g */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/n/g.class */
public final class C9103g implements Parcelable.Creator<ExperimentTokens> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ExperimentTokens createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        String str = null;
        byte[] bArr = null;
        byte[][] bArr2 = null;
        byte[][] bArr3 = null;
        byte[][] bArr4 = null;
        byte[][] bArr5 = null;
        int[] iArr = null;
        byte[][] bArr6 = null;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            switch (C7029a.m21265a(a)) {
                case 2:
                    str = C7029a.m21242o(parcel, a);
                    break;
                case 3:
                    bArr = C7029a.m21250g(parcel, a);
                    break;
                case 4:
                    bArr2 = C7029a.m21249h(parcel, a);
                    break;
                case 5:
                    bArr3 = C7029a.m21249h(parcel, a);
                    break;
                case 6:
                    bArr4 = C7029a.m21249h(parcel, a);
                    break;
                case 7:
                    bArr5 = C7029a.m21249h(parcel, a);
                    break;
                case 8:
                    iArr = C7029a.m21246k(parcel, a);
                    break;
                case 9:
                    bArr6 = C7029a.m21249h(parcel, a);
                    break;
                default:
                    C7029a.m21266F(parcel, a);
                    break;
            }
        }
        C7029a.m21239r(parcel, b);
        return new ExperimentTokens(str, bArr, bArr2, bArr3, bArr4, bArr5, iArr, bArr6);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ExperimentTokens[] newArray(int i) {
        return new ExperimentTokens[i];
    }
}
