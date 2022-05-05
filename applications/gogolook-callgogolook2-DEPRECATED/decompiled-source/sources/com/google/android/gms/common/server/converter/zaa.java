package com.google.android.gms.common.server.converter;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p235d.p245q.p246a.C7055a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/server/converter/zaa.class */
public final class zaa extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zaa> CREATOR = new C7055a();

    /* renamed from: a */
    public final int f6624a;

    /* renamed from: b */
    public final StringToIntConverter f6625b;

    public zaa(int i, StringToIntConverter stringToIntConverter) {
        this.f6624a = i;
        this.f6625b = stringToIntConverter;
    }

    public zaa(StringToIntConverter stringToIntConverter) {
        this.f6624a = 1;
        this.f6625b = stringToIntConverter;
    }

    /* renamed from: a */
    public static zaa m31934a(FastJsonResponse.AbstractC3566a<?, ?> aVar) {
        if (aVar instanceof StringToIntConverter) {
            return new zaa((StringToIntConverter) aVar);
        }
        throw new IllegalArgumentException("Unsupported safe parcelable field converter class.");
    }

    /* renamed from: c */
    public final FastJsonResponse.AbstractC3566a<?, ?> m31933c() {
        StringToIntConverter stringToIntConverter = this.f6625b;
        if (stringToIntConverter != null) {
            return stringToIntConverter;
        }
        throw new IllegalStateException("There was no converter wrapped in this ConverterWrapper.");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21225a(parcel, 1, this.f6624a);
        C7031b.m21220a(parcel, 2, (Parcelable) this.f6625b, i, false);
        C7031b.m21229a(parcel, a);
    }
}
