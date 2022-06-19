package com.truecaller.videocallerid.utils.analytics;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.razorpay.AnalyticsConstants;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\b\u0081\b\u0018��2\u00020\u0001B\u001b\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\t\u001a\u00020\u0005¢\u0006\u0004\b \u0010!J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J&\u0010\n\u001a\u00020��2\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00022\b\b\u0002\u0010\t\u001a\u00020\u0005HÆ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\f\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\f\u0010\u0004J\u0010\u0010\u000e\u001a\u00020\rHÖ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u001a\u0010\u0013\u001a\u00020\u00122\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010HÖ\u0003¢\u0006\u0004\b\u0013\u0010\u0014J\u0010\u0010\u0015\u001a\u00020\rHÖ\u0001¢\u0006\u0004\b\u0015\u0010\u000fJ \u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\rHÖ\u0001¢\u0006\u0004\b\u001a\u0010\u001bR\u001b\u0010\b\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\u001c\u001a\u0004\b\u001d\u0010\u0004R\u0019\u0010\t\u001a\u00020\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\t\u0010\u001e\u001a\u0004\b\u001f\u0010\u0007¨\u0006\""}, d2 = {"Lcom/truecaller/videocallerid/utils/analytics/OnboardingData;", "Landroid/os/Parcelable;", "", "component1", "()Ljava/lang/String;", "Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;", "component2", "()Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;", "id", AnalyticsConstants.CONTEXT, "copy", "(Ljava/lang/String;Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;)Lcom/truecaller/videocallerid/utils/analytics/OnboardingData;", "toString", "", "hashCode", "()I", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "describeContents", "Landroid/os/Parcel;", "parcel", "flags", "Ls1/s;", "writeToParcel", "(Landroid/os/Parcel;I)V", "Ljava/lang/String;", "getId", "Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;", "getContext", "<init>", "(Ljava/lang/String;Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;)V", "video-caller-id_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/utils/analytics/OnboardingData.class */
public final class OnboardingData implements Parcelable {
    public static final Parcelable.Creator<OnboardingData> CREATOR = new C4770a();
    private final OnboardingContext context;

    /* renamed from: id */
    private final String f16183id;

    /* renamed from: com.truecaller.videocallerid.utils.analytics.OnboardingData$a */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/utils/analytics/OnboardingData$a.class */
    public static final class C4770a implements Parcelable.Creator<OnboardingData> {
        @Override // android.os.Parcelable.Creator
        public OnboardingData createFromParcel(Parcel parcel) {
            l.e(parcel, "in");
            return new OnboardingData(parcel.readString(), (OnboardingContext) Enum.valueOf(OnboardingContext.class, parcel.readString()));
        }

        @Override // android.os.Parcelable.Creator
        public OnboardingData[] newArray(int i) {
            return new OnboardingData[i];
        }
    }

    public OnboardingData(String str, OnboardingContext onboardingContext) {
        l.e(onboardingContext, AnalyticsConstants.CONTEXT);
        this.f16183id = str;
        this.context = onboardingContext;
    }

    public /* synthetic */ OnboardingData(String str, OnboardingContext onboardingContext, int i, f fVar) {
        this((i & 1) != 0 ? null : str, onboardingContext);
    }

    public static /* synthetic */ OnboardingData copy$default(OnboardingData onboardingData, String str, OnboardingContext onboardingContext, int i, Object obj) {
        if ((i & 1) != 0) {
            str = onboardingData.f16183id;
        }
        if ((i & 2) != 0) {
            onboardingContext = onboardingData.context;
        }
        return onboardingData.copy(str, onboardingContext);
    }

    public final String component1() {
        return this.f16183id;
    }

    public final OnboardingContext component2() {
        return this.context;
    }

    public final OnboardingData copy(String str, OnboardingContext onboardingContext) {
        l.e(onboardingContext, AnalyticsConstants.CONTEXT);
        return new OnboardingData(str, onboardingContext);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof OnboardingData)) {
                return false;
            }
            OnboardingData onboardingData = (OnboardingData) obj;
            return l.a(this.f16183id, onboardingData.f16183id) && l.a(this.context, onboardingData.context);
        }
        return true;
    }

    public final OnboardingContext getContext() {
        return this.context;
    }

    public final String getId() {
        return this.f16183id;
    }

    public int hashCode() {
        String str = this.f16183id;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        OnboardingContext onboardingContext = this.context;
        if (onboardingContext != null) {
            i = onboardingContext.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("OnboardingData(id=");
        m8728C.append(this.f16183id);
        m8728C.append(", context=");
        m8728C.append(this.context);
        m8728C.append(")");
        return m8728C.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        parcel.writeString(this.f16183id);
        parcel.writeString(this.context.name());
    }
}
