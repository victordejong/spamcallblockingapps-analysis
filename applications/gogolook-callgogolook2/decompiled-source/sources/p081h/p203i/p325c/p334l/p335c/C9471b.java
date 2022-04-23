package p081h.p203i.p325c.p334l.p335c;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.firebase.appindexing.internal.zza;
import com.google.firebase.appindexing.internal.zzb;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.c.l.c.b */
/* loaded from: classes2-dex2jar.jar:h/i/c/l/c/b.class */
public final class C9471b implements Parcelable.Creator<zza> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zza createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        zzb zzbVar = null;
        String str5 = null;
        Bundle bundle = null;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            switch (C7029a.m21265a(a)) {
                case 1:
                    str = C7029a.m21242o(parcel, a);
                    break;
                case 2:
                    str2 = C7029a.m21242o(parcel, a);
                    break;
                case 3:
                    str3 = C7029a.m21242o(parcel, a);
                    break;
                case 4:
                    str4 = C7029a.m21242o(parcel, a);
                    break;
                case 5:
                    zzbVar = (zzb) C7029a.m21260a(parcel, a, zzb.CREATOR);
                    break;
                case 6:
                    str5 = C7029a.m21242o(parcel, a);
                    break;
                case 7:
                    bundle = C7029a.m21251f(parcel, a);
                    break;
                default:
                    C7029a.m21266F(parcel, a);
                    break;
            }
        }
        C7029a.m21239r(parcel, b);
        return new zza(str, str2, str3, str4, zzbVar, str5, bundle);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zza[] newArray(int i) {
        return new zza[i];
    }
}
