package com.truecaller.swish.deeplink.data;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import kotlin.Metadata;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0006\n\u0002\b\u0007\b\u0001\u0018��2\u00020\u0001B\u0017\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\u0015\u0010\u0016J\u0010\u0010\u0003\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0003\u0010\u0004J \u0010\t\u001a\u00020\b2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\t\u0010\nR\u0019\u0010\f\u001a\u00020\u000b8\u0006@\u0006¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\u0019\u0010\u0011\u001a\u00020\u00108\u0006@\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u0017"}, d2 = {"Lcom/truecaller/swish/deeplink/data/SwishNumberDto;", "Landroid/os/Parcelable;", "", "describeContents", "()I", "Landroid/os/Parcel;", "parcel", "flags", "Ls1/s;", "writeToParcel", "(Landroid/os/Parcel;I)V", "", "editable", "Z", "getEditable", "()Z", "", "value", "D", "getValue", "()D", "<init>", "(DZ)V", "swish-integration_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes14-dex2jar.jar:com/truecaller/swish/deeplink/data/SwishNumberDto.class */
public final class SwishNumberDto implements Parcelable {
    public static final Parcelable.Creator<SwishNumberDto> CREATOR = new C4598a();
    private final boolean editable;
    private final double value;

    /* renamed from: com.truecaller.swish.deeplink.data.SwishNumberDto$a */
    /* loaded from: classes14-dex2jar.jar:com/truecaller/swish/deeplink/data/SwishNumberDto$a.class */
    public static final class C4598a implements Parcelable.Creator<SwishNumberDto> {
        @Override // android.os.Parcelable.Creator
        public SwishNumberDto createFromParcel(Parcel parcel) {
            l.e(parcel, "in");
            return new SwishNumberDto(parcel.readDouble(), parcel.readInt() != 0);
        }

        @Override // android.os.Parcelable.Creator
        public SwishNumberDto[] newArray(int i) {
            return new SwishNumberDto[i];
        }
    }

    public SwishNumberDto(double d, boolean z) {
        this.value = d;
        this.editable = z;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final boolean getEditable() {
        return this.editable;
    }

    public final double getValue() {
        return this.value;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        parcel.writeDouble(this.value);
        parcel.writeInt(this.editable ? 1 : 0);
    }
}
