package p189o4;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import p134j4.BinderC3213i;
import p134j4.C3238p;
/* renamed from: o4.e0 */
/* loaded from: classes-dex2jar.jar:o4/e0.class */
public abstract class AbstractBinderC3865e0 extends BinderC3884u implements AbstractC3867f0 {
    public AbstractBinderC3865e0() {
        super("com.google.android.play.core.assetpacks.protocol.IAssetModuleServiceCallback");
    }

    @Override // p189o4.BinderC3884u
    /* renamed from: q */
    public final boolean mo1730q(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 2:
                int readInt = parcel.readInt();
                Bundle bundle = (Bundle) C3885v.m1733a(parcel, Bundle.CREATOR);
                BinderC3213i binderC3213i = (BinderC3213i) this;
                binderC3213i.f10823b.f10913d.m1747c(binderC3213i.f10822a);
                C3238p.f10908g.m1507e("onStartDownload(%d)", Integer.valueOf(readInt));
                return true;
            case 3:
                int readInt2 = parcel.readInt();
                Bundle bundle2 = (Bundle) C3885v.m1733a(parcel, Bundle.CREATOR);
                BinderC3213i binderC3213i2 = (BinderC3213i) this;
                binderC3213i2.f10823b.f10913d.m1747c(binderC3213i2.f10822a);
                C3238p.f10908g.m1507e("onCancelDownload(%d)", Integer.valueOf(readInt2));
                return true;
            case 4:
                int readInt3 = parcel.readInt();
                Bundle bundle3 = (Bundle) C3885v.m1733a(parcel, Bundle.CREATOR);
                BinderC3213i binderC3213i3 = (BinderC3213i) this;
                binderC3213i3.f10823b.f10913d.m1747c(binderC3213i3.f10822a);
                C3238p.f10908g.m1507e("onGetSession(%d)", Integer.valueOf(readInt3));
                return true;
            case 5:
                mo1752e(parcel.createTypedArrayList(Bundle.CREATOR));
                return true;
            case 6:
                Parcelable.Creator creator = Bundle.CREATOR;
                Bundle bundle4 = (Bundle) C3885v.m1733a(parcel, creator);
                Bundle bundle5 = (Bundle) C3885v.m1733a(parcel, creator);
                BinderC3213i binderC3213i4 = (BinderC3213i) this;
                binderC3213i4.f10823b.f10913d.m1747c(binderC3213i4.f10822a);
                C3238p.f10908g.m1507e("onNotifyChunkTransferred(%s, %s, %d, session=%d)", bundle4.getString("module_name"), bundle4.getString("slice_id"), Integer.valueOf(bundle4.getInt("chunk_number")), Integer.valueOf(bundle4.getInt("session_id")));
                return true;
            case 7:
                zzd((Bundle) C3885v.m1733a(parcel, Bundle.CREATOR));
                return true;
            case 8:
                Parcelable.Creator creator2 = Bundle.CREATOR;
                Bundle bundle6 = (Bundle) C3885v.m1733a(parcel, creator2);
                Bundle bundle7 = (Bundle) C3885v.m1733a(parcel, creator2);
                BinderC3213i binderC3213i5 = (BinderC3213i) this;
                binderC3213i5.f10823b.f10913d.m1747c(binderC3213i5.f10822a);
                C3238p.f10908g.m1507e("onNotifyModuleCompleted(%s, sessionId=%d)", bundle6.getString("module_name"), Integer.valueOf(bundle6.getInt("session_id")));
                return true;
            case 9:
            default:
                return false;
            case 10:
                Parcelable.Creator creator3 = Bundle.CREATOR;
                Bundle bundle8 = (Bundle) C3885v.m1733a(parcel, creator3);
                Bundle bundle9 = (Bundle) C3885v.m1733a(parcel, creator3);
                BinderC3213i binderC3213i6 = (BinderC3213i) this;
                binderC3213i6.f10823b.f10913d.m1747c(binderC3213i6.f10822a);
                C3238p.f10908g.m1507e("onNotifySessionFailed(%d)", Integer.valueOf(bundle8.getInt("session_id")));
                return true;
            case 11:
                Parcelable.Creator creator4 = Bundle.CREATOR;
                mo1751m((Bundle) C3885v.m1733a(parcel, creator4), (Bundle) C3885v.m1733a(parcel, creator4));
                return true;
            case 12:
                Parcelable.Creator creator5 = Bundle.CREATOR;
                mo1753d((Bundle) C3885v.m1733a(parcel, creator5), (Bundle) C3885v.m1733a(parcel, creator5));
                return true;
            case 13:
                Parcelable.Creator creator6 = Bundle.CREATOR;
                Bundle bundle10 = (Bundle) C3885v.m1733a(parcel, creator6);
                Bundle bundle11 = (Bundle) C3885v.m1733a(parcel, creator6);
                BinderC3213i binderC3213i7 = (BinderC3213i) this;
                binderC3213i7.f10823b.f10913d.m1747c(binderC3213i7.f10822a);
                C3238p.f10908g.m1507e("onRequestDownloadInfo()", new Object[0]);
                return true;
            case 14:
                Parcelable.Creator creator7 = Bundle.CREATOR;
                Bundle bundle12 = (Bundle) C3885v.m1733a(parcel, creator7);
                Bundle bundle13 = (Bundle) C3885v.m1733a(parcel, creator7);
                BinderC3213i binderC3213i8 = (BinderC3213i) this;
                binderC3213i8.f10823b.f10913d.m1747c(binderC3213i8.f10822a);
                C3238p.f10908g.m1507e("onRemoveModule()", new Object[0]);
                return true;
            case 15:
                Bundle bundle14 = (Bundle) C3885v.m1733a(parcel, Bundle.CREATOR);
                BinderC3213i binderC3213i9 = (BinderC3213i) this;
                binderC3213i9.f10823b.f10913d.m1747c(binderC3213i9.f10822a);
                C3238p.f10908g.m1507e("onCancelDownloads()", new Object[0]);
                return true;
        }
    }
}
