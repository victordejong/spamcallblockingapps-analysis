package com.truecaller.contextcall.p160ui.reasonpicker.ondemand;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b7\u0018��2\u00020\u0001:\u0003\b\t\nB\t\b\u0002¢\u0006\u0004\b\u0006\u0010\u0007R\u0016\u0010\u0005\u001a\u00020\u00028&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004\u0082\u0001\u0003\u000b\f\r¨\u0006\u000e"}, d2 = {"Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource;", "Landroid/os/Parcelable;", "", "getAnalyticsContext", "()Ljava/lang/String;", "analyticsContext", "<init>", "()V", "DetailsScreen", "MidCall", "SecondCall", "Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource$DetailsScreen;", "Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource$SecondCall;", "Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource$MidCall;", "context-call_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* renamed from: com.truecaller.contextcall.ui.reasonpicker.ondemand.OnDemandMessageSource */
/* loaded from: classes8-dex2jar.jar:com/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource.class */
public abstract class OnDemandMessageSource implements Parcelable {

    @Metadata(bv = {1, 0, 3}, d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0087\b\u0018��2\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u001a\u0010\u0006\u001a\u00020��2\b\b\u0002\u0010\u0005\u001a\u00020\u0002HÆ\u0001¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\b\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\b\u0010\u0004J\u0010\u0010\n\u001a\u00020\tHÖ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u001a\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\fHÖ\u0003¢\u0006\u0004\b\u000f\u0010\u0010J\u0010\u0010\u0011\u001a\u00020\tHÖ\u0001¢\u0006\u0004\b\u0011\u0010\u000bJ \u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\tHÖ\u0001¢\u0006\u0004\b\u0016\u0010\u0017R\u001c\u0010\u0005\u001a\u00020\u00028\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0005\u0010\u0018\u001a\u0004\b\u0019\u0010\u0004¨\u0006\u001c"}, d2 = {"Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource$DetailsScreen;", "Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource;", "", "component1", "()Ljava/lang/String;", "analyticsContext", "copy", "(Ljava/lang/String;)Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource$DetailsScreen;", "toString", "", "hashCode", "()I", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "describeContents", "Landroid/os/Parcel;", "parcel", "flags", "Ls1/s;", "writeToParcel", "(Landroid/os/Parcel;I)V", "Ljava/lang/String;", "getAnalyticsContext", "<init>", "(Ljava/lang/String;)V", "context-call_release"}, k = 1, mv = {1, 4, 1})
    @Keep
    /* renamed from: com.truecaller.contextcall.ui.reasonpicker.ondemand.OnDemandMessageSource$DetailsScreen */
    /* loaded from: classes8-dex2jar.jar:com/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource$DetailsScreen.class */
    public static final class DetailsScreen extends OnDemandMessageSource {
        public static final Parcelable.Creator<DetailsScreen> CREATOR = new C3786a();
        private final String analyticsContext;

        /* renamed from: com.truecaller.contextcall.ui.reasonpicker.ondemand.OnDemandMessageSource$DetailsScreen$a */
        /* loaded from: classes8-dex2jar.jar:com/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource$DetailsScreen$a.class */
        public static final class C3786a implements Parcelable.Creator<DetailsScreen> {
            @Override // android.os.Parcelable.Creator
            public DetailsScreen createFromParcel(Parcel parcel) {
                l.e(parcel, "in");
                return new DetailsScreen(parcel.readString());
            }

            @Override // android.os.Parcelable.Creator
            public DetailsScreen[] newArray(int i) {
                return new DetailsScreen[i];
            }
        }

        public DetailsScreen() {
            this(null, 1, null);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public DetailsScreen(String str) {
            super(null);
            l.e(str, "analyticsContext");
            this.analyticsContext = str;
        }

        public /* synthetic */ DetailsScreen(String str, int i, f fVar) {
            this((i & 1) != 0 ? "detailView" : str);
        }

        public static /* synthetic */ DetailsScreen copy$default(DetailsScreen detailsScreen, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = detailsScreen.getAnalyticsContext();
            }
            return detailsScreen.copy(str);
        }

        public final String component1() {
            return getAnalyticsContext();
        }

        public final DetailsScreen copy(String str) {
            l.e(str, "analyticsContext");
            return new DetailsScreen(str);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof DetailsScreen) && l.a(getAnalyticsContext(), ((DetailsScreen) obj).getAnalyticsContext());
            }
            return true;
        }

        @Override // com.truecaller.contextcall.p160ui.reasonpicker.ondemand.OnDemandMessageSource
        public String getAnalyticsContext() {
            return this.analyticsContext;
        }

        public int hashCode() {
            String analyticsContext = getAnalyticsContext();
            return analyticsContext != null ? analyticsContext.hashCode() : 0;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("DetailsScreen(analyticsContext=");
            m8728C.append(getAnalyticsContext());
            m8728C.append(")");
            return m8728C.toString();
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            l.e(parcel, "parcel");
            parcel.writeString(this.analyticsContext);
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\b\u0087\b\u0018��2\u00020\u0001B\u001f\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0002¢\u0006\u0004\b \u0010!J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0005\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0004J.\u0010\n\u001a\u00020��2\b\b\u0002\u0010\u0007\u001a\u00020\u00022\b\b\u0002\u0010\b\u001a\u00020\u00022\b\b\u0002\u0010\t\u001a\u00020\u0002HÆ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\f\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\f\u0010\u0004J\u0010\u0010\u000e\u001a\u00020\rHÖ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u001a\u0010\u0013\u001a\u00020\u00122\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010HÖ\u0003¢\u0006\u0004\b\u0013\u0010\u0014J\u0010\u0010\u0015\u001a\u00020\rHÖ\u0001¢\u0006\u0004\b\u0015\u0010\u000fJ \u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\rHÖ\u0001¢\u0006\u0004\b\u001a\u0010\u001bR\u0019\u0010\u0007\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u001c\u001a\u0004\b\u001d\u0010\u0004R\u0019\u0010\b\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\u001c\u001a\u0004\b\u001e\u0010\u0004R\u001c\u0010\t\u001a\u00020\u00028\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\t\u0010\u001c\u001a\u0004\b\u001f\u0010\u0004¨\u0006\""}, d2 = {"Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource$MidCall;", "Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource;", "", "component1", "()Ljava/lang/String;", "component2", "component3", "normalizedNumber", "nameOrNumberToDisplay", "analyticsContext", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource$MidCall;", "toString", "", "hashCode", "()I", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "describeContents", "Landroid/os/Parcel;", "parcel", "flags", "Ls1/s;", "writeToParcel", "(Landroid/os/Parcel;I)V", "Ljava/lang/String;", "getNormalizedNumber", "getNameOrNumberToDisplay", "getAnalyticsContext", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "context-call_release"}, k = 1, mv = {1, 4, 1})
    @Keep
    /* renamed from: com.truecaller.contextcall.ui.reasonpicker.ondemand.OnDemandMessageSource$MidCall */
    /* loaded from: classes8-dex2jar.jar:com/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource$MidCall.class */
    public static final class MidCall extends OnDemandMessageSource {
        public static final Parcelable.Creator<MidCall> CREATOR = new C3787a();
        private final String analyticsContext;
        private final String nameOrNumberToDisplay;
        private final String normalizedNumber;

        /* renamed from: com.truecaller.contextcall.ui.reasonpicker.ondemand.OnDemandMessageSource$MidCall$a */
        /* loaded from: classes8-dex2jar.jar:com/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource$MidCall$a.class */
        public static final class C3787a implements Parcelable.Creator<MidCall> {
            @Override // android.os.Parcelable.Creator
            public MidCall createFromParcel(Parcel parcel) {
                l.e(parcel, "in");
                return new MidCall(parcel.readString(), parcel.readString(), parcel.readString());
            }

            @Override // android.os.Parcelable.Creator
            public MidCall[] newArray(int i) {
                return new MidCall[i];
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public MidCall(String str, String str2, String str3) {
            super(null);
            C22128a.m8703I0(str, "normalizedNumber", str2, "nameOrNumberToDisplay", str3, "analyticsContext");
            this.normalizedNumber = str;
            this.nameOrNumberToDisplay = str2;
            this.analyticsContext = str3;
        }

        public static /* synthetic */ MidCall copy$default(MidCall midCall, String str, String str2, String str3, int i, Object obj) {
            if ((i & 1) != 0) {
                str = midCall.normalizedNumber;
            }
            if ((i & 2) != 0) {
                str2 = midCall.nameOrNumberToDisplay;
            }
            if ((i & 4) != 0) {
                str3 = midCall.getAnalyticsContext();
            }
            return midCall.copy(str, str2, str3);
        }

        public final String component1() {
            return this.normalizedNumber;
        }

        public final String component2() {
            return this.nameOrNumberToDisplay;
        }

        public final String component3() {
            return getAnalyticsContext();
        }

        public final MidCall copy(String str, String str2, String str3) {
            l.e(str, "normalizedNumber");
            l.e(str2, "nameOrNumberToDisplay");
            l.e(str3, "analyticsContext");
            return new MidCall(str, str2, str3);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof MidCall)) {
                    return false;
                }
                MidCall midCall = (MidCall) obj;
                return l.a(this.normalizedNumber, midCall.normalizedNumber) && l.a(this.nameOrNumberToDisplay, midCall.nameOrNumberToDisplay) && l.a(getAnalyticsContext(), midCall.getAnalyticsContext());
            }
            return true;
        }

        @Override // com.truecaller.contextcall.p160ui.reasonpicker.ondemand.OnDemandMessageSource
        public String getAnalyticsContext() {
            return this.analyticsContext;
        }

        public final String getNameOrNumberToDisplay() {
            return this.nameOrNumberToDisplay;
        }

        public final String getNormalizedNumber() {
            return this.normalizedNumber;
        }

        public int hashCode() {
            String str = this.normalizedNumber;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            String str2 = this.nameOrNumberToDisplay;
            int hashCode2 = str2 != null ? str2.hashCode() : 0;
            String analyticsContext = getAnalyticsContext();
            if (analyticsContext != null) {
                i = analyticsContext.hashCode();
            }
            return (((hashCode * 31) + hashCode2) * 31) + i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("MidCall(normalizedNumber=");
            m8728C.append(this.normalizedNumber);
            m8728C.append(", nameOrNumberToDisplay=");
            m8728C.append(this.nameOrNumberToDisplay);
            m8728C.append(", analyticsContext=");
            m8728C.append(getAnalyticsContext());
            m8728C.append(")");
            return m8728C.toString();
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            l.e(parcel, "parcel");
            parcel.writeString(this.normalizedNumber);
            parcel.writeString(this.nameOrNumberToDisplay);
            parcel.writeString(this.analyticsContext);
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\b\u0087\b\u0018��2\u00020\u0001:\u0001(B'\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\u0006\u0010\f\u001a\u00020\u0006\u0012\u0006\u0010\r\u001a\u00020\u0002¢\u0006\u0004\b&\u0010'J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0005\u0010\u0004J\u0010\u0010\u0007\u001a\u00020\u0006HÆ\u0003¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\t\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\t\u0010\u0004J8\u0010\u000e\u001a\u00020��2\b\b\u0002\u0010\n\u001a\u00020\u00022\b\b\u0002\u0010\u000b\u001a\u00020\u00022\b\b\u0002\u0010\f\u001a\u00020\u00062\b\b\u0002\u0010\r\u001a\u00020\u0002HÆ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u0010\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0010\u0010\u0004J\u0010\u0010\u0012\u001a\u00020\u0011HÖ\u0001¢\u0006\u0004\b\u0012\u0010\u0013J\u001a\u0010\u0017\u001a\u00020\u00162\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014HÖ\u0003¢\u0006\u0004\b\u0017\u0010\u0018J\u0010\u0010\u0019\u001a\u00020\u0011HÖ\u0001¢\u0006\u0004\b\u0019\u0010\u0013J \u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u0011HÖ\u0001¢\u0006\u0004\b\u001e\u0010\u001fR\u0019\u0010\n\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\n\u0010 \u001a\u0004\b!\u0010\u0004R\u0019\u0010\f\u001a\u00020\u00068\u0006@\u0006¢\u0006\f\n\u0004\b\f\u0010\"\u001a\u0004\b#\u0010\bR\u0019\u0010\u000b\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u000b\u0010 \u001a\u0004\b$\u0010\u0004R\u001c\u0010\r\u001a\u00020\u00028\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\r\u0010 \u001a\u0004\b%\u0010\u0004¨\u0006)"}, d2 = {"Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource$SecondCall;", "Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource;", "", "component1", "()Ljava/lang/String;", "component2", "Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource$SecondCall$Type;", "component3", "()Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource$SecondCall$Type;", "component4", "normalizedNumber", "nameOrNumberToDisplay", "type", "analyticsContext", "copy", "(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource$SecondCall$Type;Ljava/lang/String;)Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource$SecondCall;", "toString", "", "hashCode", "()I", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "describeContents", "Landroid/os/Parcel;", "parcel", "flags", "Ls1/s;", "writeToParcel", "(Landroid/os/Parcel;I)V", "Ljava/lang/String;", "getNormalizedNumber", "Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource$SecondCall$Type;", "getType", "getNameOrNumberToDisplay", "getAnalyticsContext", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource$SecondCall$Type;Ljava/lang/String;)V", "Type", "context-call_release"}, k = 1, mv = {1, 4, 1})
    @Keep
    /* renamed from: com.truecaller.contextcall.ui.reasonpicker.ondemand.OnDemandMessageSource$SecondCall */
    /* loaded from: classes8-dex2jar.jar:com/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource$SecondCall.class */
    public static final class SecondCall extends OnDemandMessageSource {
        public static final Parcelable.Creator<SecondCall> CREATOR = new C3788a();
        private final String analyticsContext;
        private final String nameOrNumberToDisplay;
        private final String normalizedNumber;
        private final Type type;

        @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource$SecondCall$Type;", "", "<init>", "(Ljava/lang/String;I)V", "MissedCall", "OutgoingCall", "context-call_release"}, k = 1, mv = {1, 4, 1})
        /* renamed from: com.truecaller.contextcall.ui.reasonpicker.ondemand.OnDemandMessageSource$SecondCall$Type */
        /* loaded from: classes8-dex2jar.jar:com/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource$SecondCall$Type.class */
        public enum Type {
            MissedCall,
            OutgoingCall
        }

        /* renamed from: com.truecaller.contextcall.ui.reasonpicker.ondemand.OnDemandMessageSource$SecondCall$a */
        /* loaded from: classes8-dex2jar.jar:com/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource$SecondCall$a.class */
        public static final class C3788a implements Parcelable.Creator<SecondCall> {
            @Override // android.os.Parcelable.Creator
            public SecondCall createFromParcel(Parcel parcel) {
                l.e(parcel, "in");
                return new SecondCall(parcel.readString(), parcel.readString(), (Type) Enum.valueOf(Type.class, parcel.readString()), parcel.readString());
            }

            @Override // android.os.Parcelable.Creator
            public SecondCall[] newArray(int i) {
                return new SecondCall[i];
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SecondCall(String str, String str2, Type type, String str3) {
            super(null);
            l.e(str, "normalizedNumber");
            l.e(str2, "nameOrNumberToDisplay");
            l.e(type, "type");
            l.e(str3, "analyticsContext");
            this.normalizedNumber = str;
            this.nameOrNumberToDisplay = str2;
            this.type = type;
            this.analyticsContext = str3;
        }

        public static /* synthetic */ SecondCall copy$default(SecondCall secondCall, String str, String str2, Type type, String str3, int i, Object obj) {
            if ((i & 1) != 0) {
                str = secondCall.normalizedNumber;
            }
            if ((i & 2) != 0) {
                str2 = secondCall.nameOrNumberToDisplay;
            }
            if ((i & 4) != 0) {
                type = secondCall.type;
            }
            if ((i & 8) != 0) {
                str3 = secondCall.getAnalyticsContext();
            }
            return secondCall.copy(str, str2, type, str3);
        }

        public final String component1() {
            return this.normalizedNumber;
        }

        public final String component2() {
            return this.nameOrNumberToDisplay;
        }

        public final Type component3() {
            return this.type;
        }

        public final String component4() {
            return getAnalyticsContext();
        }

        public final SecondCall copy(String str, String str2, Type type, String str3) {
            l.e(str, "normalizedNumber");
            l.e(str2, "nameOrNumberToDisplay");
            l.e(type, "type");
            l.e(str3, "analyticsContext");
            return new SecondCall(str, str2, type, str3);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof SecondCall)) {
                    return false;
                }
                SecondCall secondCall = (SecondCall) obj;
                return l.a(this.normalizedNumber, secondCall.normalizedNumber) && l.a(this.nameOrNumberToDisplay, secondCall.nameOrNumberToDisplay) && l.a(this.type, secondCall.type) && l.a(getAnalyticsContext(), secondCall.getAnalyticsContext());
            }
            return true;
        }

        @Override // com.truecaller.contextcall.p160ui.reasonpicker.ondemand.OnDemandMessageSource
        public String getAnalyticsContext() {
            return this.analyticsContext;
        }

        public final String getNameOrNumberToDisplay() {
            return this.nameOrNumberToDisplay;
        }

        public final String getNormalizedNumber() {
            return this.normalizedNumber;
        }

        public final Type getType() {
            return this.type;
        }

        public int hashCode() {
            String str = this.normalizedNumber;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            String str2 = this.nameOrNumberToDisplay;
            int hashCode2 = str2 != null ? str2.hashCode() : 0;
            Type type = this.type;
            int hashCode3 = type != null ? type.hashCode() : 0;
            String analyticsContext = getAnalyticsContext();
            if (analyticsContext != null) {
                i = analyticsContext.hashCode();
            }
            return (((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("SecondCall(normalizedNumber=");
            m8728C.append(this.normalizedNumber);
            m8728C.append(", nameOrNumberToDisplay=");
            m8728C.append(this.nameOrNumberToDisplay);
            m8728C.append(", type=");
            m8728C.append(this.type);
            m8728C.append(", analyticsContext=");
            m8728C.append(getAnalyticsContext());
            m8728C.append(")");
            return m8728C.toString();
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            l.e(parcel, "parcel");
            parcel.writeString(this.normalizedNumber);
            parcel.writeString(this.nameOrNumberToDisplay);
            parcel.writeString(this.type.name());
            parcel.writeString(this.analyticsContext);
        }
    }

    private OnDemandMessageSource() {
    }

    public /* synthetic */ OnDemandMessageSource(f fVar) {
        this();
    }

    public abstract String getAnalyticsContext();
}
