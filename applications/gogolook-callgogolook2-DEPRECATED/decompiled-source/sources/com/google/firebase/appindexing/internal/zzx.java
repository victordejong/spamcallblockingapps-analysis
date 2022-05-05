package com.google.firebase.appindexing.internal;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p325c.p334l.p335c.C9475f;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/appindexing/internal/zzx.class */
public final class zzx extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzx> CREATOR = new C9475f();

    /* renamed from: a */
    public final int f7741a;
    @Nullable

    /* renamed from: b */
    public final Thing[] f7742b;
    @Nullable

    /* renamed from: c */
    public final String[] f7743c;
    @Nullable

    /* renamed from: d */
    public final String[] f7744d;

    public zzx(int i, @Nullable Thing[] thingArr, @Nullable String[] strArr, @Nullable String[] strArr2) {
        int i2 = i;
        if (i != 0) {
            i2 = i;
            if (i != 1) {
                i2 = i;
                if (i != 2) {
                    i2 = i;
                    if (i != 3) {
                        i2 = i;
                        if (i != 4) {
                            i2 = i;
                            if (i != 6) {
                                i2 = 0;
                            }
                        }
                    }
                }
            }
        }
        this.f7741a = i2;
        this.f7742b = thingArr;
        this.f7743c = strArr;
        this.f7744d = strArr2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21225a(parcel, 1, this.f7741a);
        C7031b.m21209a(parcel, 2, (Parcelable[]) this.f7742b, i, false);
        C7031b.m21208a(parcel, 3, this.f7743c, false);
        C7031b.m21208a(parcel, 5, this.f7744d, false);
        C7031b.m21229a(parcel, a);
    }
}
