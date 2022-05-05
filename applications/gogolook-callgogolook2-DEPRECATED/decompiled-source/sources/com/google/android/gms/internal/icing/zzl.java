package com.google.android.gms.internal.icing;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import gogolook.callgogolook2.realm.obj.favorite.FavoriteGroupRealmObject;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p259j.p273n.C8487c;
import p081h.p203i.p204a.p224e.p259j.p273n.C8490f;
import p081h.p203i.p204a.p224e.p259j.p273n.C8491g;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/icing/zzl.class */
public final class zzl extends AbstractSafeParcelable {

    /* renamed from: a */
    public final String f6832a;

    /* renamed from: b */
    public final zzs f6833b;

    /* renamed from: c */
    public final int f6834c;

    /* renamed from: d */
    public final byte[] f6835d;

    /* renamed from: e */
    public static final int f6831e = Integer.parseInt(FavoriteGroupRealmObject.PARENDID_DELETED);
    public static final Parcelable.Creator<zzl> CREATOR = new C8487c();

    static {
        C8491g gVar = new C8491g("SsbContext");
        gVar.m17898a(true);
        gVar.m17899a("blob");
        gVar.m17900a();
    }

    public zzl(String str, zzs zzsVar, int i, byte[] bArr) {
        String str2;
        boolean z = i == f6831e || C8490f.m17901a(i) != null;
        StringBuilder sb = new StringBuilder(32);
        sb.append("Invalid section type ");
        sb.append(i);
        C7021t.m21285a(z, sb.toString());
        this.f6832a = str;
        this.f6833b = zzsVar;
        this.f6834c = i;
        this.f6835d = bArr;
        int i2 = this.f6834c;
        if (i2 == f6831e || C8490f.m17901a(i2) != null) {
            str2 = (this.f6832a == null || this.f6835d == null) ? null : "Both content and blobContent set";
        } else {
            int i3 = this.f6834c;
            StringBuilder sb2 = new StringBuilder(32);
            sb2.append("Invalid section type ");
            sb2.append(i3);
            str2 = sb2.toString();
        }
        if (str2 != null) {
            throw new IllegalArgumentException(str2);
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21215a(parcel, 1, this.f6832a, false);
        C7031b.m21220a(parcel, 3, (Parcelable) this.f6833b, i, false);
        C7031b.m21225a(parcel, 4, this.f6834c);
        C7031b.m21211a(parcel, 5, this.f6835d, false);
        C7031b.m21229a(parcel, a);
    }
}
