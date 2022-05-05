package com.google.android.gms.common.server.converter;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;
@SafeParcelable.Class
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/converter/zab.class */
public final class zab extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zab> CREATOR = new zaa();
    @SafeParcelable.VersionField

    /* renamed from: f */
    private final int f7589f;
    @SafeParcelable.Field

    /* renamed from: g */
    private final StringToIntConverter f7590g;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zab(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) StringToIntConverter stringToIntConverter) {
        this.f7589f = i;
        this.f7590g = stringToIntConverter;
    }

    private zab(StringToIntConverter stringToIntConverter) {
        this.f7589f = 1;
        this.f7590g = stringToIntConverter;
    }

    /* renamed from: B */
    public static zab m14395B(FastJsonResponse.FieldConverter<?, ?> fieldConverter) {
        if (fieldConverter instanceof StringToIntConverter) {
            return new zab((StringToIntConverter) fieldConverter);
        }
        throw new IllegalArgumentException("Unsupported safe parcelable field converter class.");
    }

    /* renamed from: I */
    public final FastJsonResponse.FieldConverter<?, ?> m14394I() {
        StringToIntConverter stringToIntConverter = this.f7590g;
        if (stringToIntConverter != null) {
            return stringToIntConverter;
        }
        throw new IllegalStateException("There was no converter wrapped in this ConverterWrapper.");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m14463a(parcel);
        SafeParcelWriter.m14453k(parcel, 1, this.f7589f);
        SafeParcelWriter.m14448p(parcel, 2, this.f7590g, i, false);
        SafeParcelWriter.m14462b(parcel, a);
    }
}
