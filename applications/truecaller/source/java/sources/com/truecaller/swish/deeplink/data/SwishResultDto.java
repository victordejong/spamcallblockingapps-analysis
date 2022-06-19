package com.truecaller.swish.deeplink.data;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.razorpay.AnalyticsConstants;
import kotlin.Metadata;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0006\n\u0002\b\t\b\u0007\u0018��2\u00020\u0001B%\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u000b\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\u0017\u0010\u0018J\u0010\u0010\u0003\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0003\u0010\u0004J \u0010\t\u001a\u00020\b2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\t\u0010\nR\u001b\u0010\f\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\u001b\u0010\u0011\u001a\u0004\u0018\u00010\u00108\u0006@\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R\u001b\u0010\u0015\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006¢\u0006\f\n\u0004\b\u0015\u0010\r\u001a\u0004\b\u0016\u0010\u000f¨\u0006\u0019"}, d2 = {"Lcom/truecaller/swish/deeplink/data/SwishResultDto;", "Landroid/os/Parcelable;", "", "describeContents", "()I", "Landroid/os/Parcel;", "parcel", "flags", "Ls1/s;", "writeToParcel", "(Landroid/os/Parcel;I)V", "", "payee", "Ljava/lang/String;", "getPayee", "()Ljava/lang/String;", "", AnalyticsConstants.AMOUNT, "Ljava/lang/Double;", "getAmount", "()Ljava/lang/Double;", "result", "getResult", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;)V", "swish-integration_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes14-dex2jar.jar:com/truecaller/swish/deeplink/data/SwishResultDto.class */
public final class SwishResultDto implements Parcelable {
    public static final Parcelable.Creator<SwishResultDto> CREATOR = new C4599a();
    private final Double amount;
    private final String payee;
    private final String result;

    /* renamed from: com.truecaller.swish.deeplink.data.SwishResultDto$a */
    /* loaded from: classes14-dex2jar.jar:com/truecaller/swish/deeplink/data/SwishResultDto$a.class */
    public static final class C4599a implements Parcelable.Creator<SwishResultDto> {
        @Override // android.os.Parcelable.Creator
        public SwishResultDto createFromParcel(Parcel parcel) {
            l.e(parcel, "in");
            return new SwishResultDto(parcel.readString(), parcel.readString(), parcel.readInt() != 0 ? Double.valueOf(parcel.readDouble()) : null);
        }

        @Override // android.os.Parcelable.Creator
        public SwishResultDto[] newArray(int i) {
            return new SwishResultDto[i];
        }
    }

    public SwishResultDto(String str, String str2, Double d) {
        this.result = str;
        this.payee = str2;
        this.amount = d;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final Double getAmount() {
        return this.amount;
    }

    public final String getPayee() {
        return this.payee;
    }

    public final String getResult() {
        return this.result;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        parcel.writeString(this.result);
        parcel.writeString(this.payee);
        Double d = this.amount;
        if (d == null) {
            parcel.writeInt(0);
            return;
        }
        parcel.writeInt(1);
        parcel.writeDouble(d.doubleValue());
    }
}
