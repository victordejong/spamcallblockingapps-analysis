package com.truecaller.swish.deeplink.data;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.razorpay.AnalyticsConstants;
import kotlin.Metadata;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\r\b\u0001\u0018��2\u00020\u0001B\u001f\u0012\u0006\u0010\u0015\u001a\u00020\u0010\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b\u001b\u0010\u001cJ\u0010\u0010\u0003\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0003\u0010\u0004J \u0010\t\u001a\u00020\b2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\t\u0010\nR\u0019\u0010\f\u001a\u00020\u000b8\u0006@\u0006¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\u0019\u0010\u0011\u001a\u00020\u00108\u0006@\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R\u0019\u0010\u0015\u001a\u00020\u00108\u0006@\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u0012\u001a\u0004\b\u0016\u0010\u0014R\u001c\u0010\u0017\u001a\u00020\u00028\u0002@\u0002X\u0082D¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u0012\u0004\b\u0019\u0010\u001a¨\u0006\u001d"}, d2 = {"Lcom/truecaller/swish/deeplink/data/SwishDto;", "Landroid/os/Parcelable;", "", "describeContents", "()I", "Landroid/os/Parcel;", "parcel", "flags", "Ls1/s;", "writeToParcel", "(Landroid/os/Parcel;I)V", "Lcom/truecaller/swish/deeplink/data/SwishNumberDto;", AnalyticsConstants.AMOUNT, "Lcom/truecaller/swish/deeplink/data/SwishNumberDto;", "getAmount", "()Lcom/truecaller/swish/deeplink/data/SwishNumberDto;", "Lcom/truecaller/swish/deeplink/data/SwishStringDto;", "message", "Lcom/truecaller/swish/deeplink/data/SwishStringDto;", "getMessage", "()Lcom/truecaller/swish/deeplink/data/SwishStringDto;", "payee", "getPayee", "version", "I", "getVersion$annotations", "()V", "<init>", "(Lcom/truecaller/swish/deeplink/data/SwishStringDto;Lcom/truecaller/swish/deeplink/data/SwishNumberDto;Lcom/truecaller/swish/deeplink/data/SwishStringDto;)V", "swish-integration_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes14-dex2jar.jar:com/truecaller/swish/deeplink/data/SwishDto.class */
public final class SwishDto implements Parcelable {
    public static final Parcelable.Creator<SwishDto> CREATOR = new C4597a();
    private final SwishNumberDto amount;
    private final SwishStringDto message;
    private final SwishStringDto payee;
    private final int version = 1;

    /* renamed from: com.truecaller.swish.deeplink.data.SwishDto$a */
    /* loaded from: classes14-dex2jar.jar:com/truecaller/swish/deeplink/data/SwishDto$a.class */
    public static final class C4597a implements Parcelable.Creator<SwishDto> {
        @Override // android.os.Parcelable.Creator
        public SwishDto createFromParcel(Parcel parcel) {
            l.e(parcel, "in");
            Parcelable.Creator<SwishStringDto> creator = SwishStringDto.CREATOR;
            return new SwishDto(creator.createFromParcel(parcel), SwishNumberDto.CREATOR.createFromParcel(parcel), creator.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public SwishDto[] newArray(int i) {
            return new SwishDto[i];
        }
    }

    public SwishDto(SwishStringDto swishStringDto, SwishNumberDto swishNumberDto, SwishStringDto swishStringDto2) {
        l.e(swishStringDto, "payee");
        l.e(swishNumberDto, AnalyticsConstants.AMOUNT);
        l.e(swishStringDto2, "message");
        this.payee = swishStringDto;
        this.amount = swishNumberDto;
        this.message = swishStringDto2;
    }

    private static /* synthetic */ void getVersion$annotations() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final SwishNumberDto getAmount() {
        return this.amount;
    }

    public final SwishStringDto getMessage() {
        return this.message;
    }

    public final SwishStringDto getPayee() {
        return this.payee;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        this.payee.writeToParcel(parcel, 0);
        this.amount.writeToParcel(parcel, 0);
        this.message.writeToParcel(parcel, 0);
    }
}
