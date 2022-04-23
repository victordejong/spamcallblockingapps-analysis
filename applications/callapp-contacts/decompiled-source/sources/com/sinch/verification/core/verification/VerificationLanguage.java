package com.sinch.verification.core.verification;

import android.os.Parcel;
import android.os.Parcelable;
import com.sinch.verification.utils.ExtensionsKt;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0012\n\u0002\u0010\b\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0087\b\u0018�� %2\u00020\u0001:\u0001%B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007J\b\u0010\u0012\u001a\u00020\u0003H\u0002J\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010\u000eJ0\u0010\u0016\u001a\u00020��2\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÆ\u0001¢\u0006\u0002\u0010\u0017J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001J\u0013\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dHÖ\u0003J\t\u0010\u001e\u001a\u00020\u0019HÖ\u0001J\t\u0010\u001f\u001a\u00020\u0003HÖ\u0001J\u0019\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020\u0019HÖ\u0001R\u0011\u0010\b\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\nR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n��\u001a\u0004\b\f\u0010\nR\u0015\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\n\n\u0002\u0010\u000f\u001a\u0004\b\r\u0010\u000eR\u0016\u0010\u0010\u001a\u0004\u0018\u00010\u00038BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0011\u0010\n¨\u0006&"}, d2 = {"Lcom/sinch/verification/core/verification/VerificationLanguage;", "Landroid/os/Parcelable;", "language", "", "region", "weight", "", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;)V", "httpHeader", "getHttpHeader", "()Ljava/lang/String;", "getLanguage", "getRegion", "getWeight", "()Ljava/lang/Double;", "Ljava/lang/Double;", "weightString", "getWeightString", "asHttpHeader", "component1", "component2", "component3", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;)Lcom/sinch/verification/core/verification/VerificationLanguage;", "describeContents", "", "equals", "", "other", "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "Companion", "verification-core_productionRelease"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/verification/VerificationLanguage.class */
public final class VerificationLanguage implements Parcelable {
    public static final String DECIMAL_PATTERN = "#.###";
    public static final String REGION_PREFIX = "-";
    public static final String WEIGHT_PREFIX = ";q=";
    private final String language;
    private final String region;
    private final Double weight;
    public static final Companion Companion = new Companion(null);
    public static final Parcelable.Creator CREATOR = new Creator();

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��¨\u0006\u0007"}, d2 = {"Lcom/sinch/verification/core/verification/VerificationLanguage$Companion;", "", "()V", "DECIMAL_PATTERN", "", "REGION_PREFIX", "WEIGHT_PREFIX", "verification-core_productionRelease"}, k = 1, mv = {1, 1, 16})
    /* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/verification/VerificationLanguage$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 1, 16})
    /* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/verification/VerificationLanguage$Creator.class */
    public static final class Creator implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        public final Object createFromParcel(Parcel in) {
            p.c(in, "in");
            return new VerificationLanguage(in.readString(), in.readString(), in.readInt() != 0 ? Double.valueOf(in.readDouble()) : null);
        }

        @Override // android.os.Parcelable.Creator
        public final Object[] newArray(int i) {
            return new VerificationLanguage[i];
        }
    }

    public VerificationLanguage(String language, String str, Double d2) {
        p.c(language, "language");
        this.language = language;
        this.region = str;
        this.weight = d2;
        if (d2 == null) {
            return;
        }
        if (d2.doubleValue() > 1.0d || d2.doubleValue() < 0.0d) {
            throw new IllegalArgumentException("The weight value should be within range 0<=weight<=1");
        }
    }

    public /* synthetic */ VerificationLanguage(String str, String str2, Double d2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : d2);
    }

    private final String asHttpHeader() {
        String str = this.region;
        String str2 = null;
        String prefixed = str != null ? ExtensionsKt.prefixed(str, REGION_PREFIX) : null;
        String weightString = getWeightString();
        if (weightString != null) {
            str2 = ExtensionsKt.prefixed(weightString, WEIGHT_PREFIX);
        }
        StringBuilder sb = new StringBuilder();
        sb.append(this.language);
        String str3 = prefixed;
        if (prefixed == null) {
            str3 = "";
        }
        sb.append(str3);
        String str4 = str2;
        if (str2 == null) {
            str4 = "";
        }
        sb.append(str4);
        return sb.toString();
    }

    public static /* synthetic */ VerificationLanguage copy$default(VerificationLanguage verificationLanguage, String str, String str2, Double d2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = verificationLanguage.language;
        }
        if ((i & 2) != 0) {
            str2 = verificationLanguage.region;
        }
        if ((i & 4) != 0) {
            d2 = verificationLanguage.weight;
        }
        return verificationLanguage.copy(str, str2, d2);
    }

    private final String getWeightString() {
        DecimalFormat decimalFormat = new DecimalFormat(DECIMAL_PATTERN, new DecimalFormatSymbols(Locale.UK));
        Double d2 = this.weight;
        if (d2 != null) {
            return decimalFormat.format(d2.doubleValue());
        }
        return null;
    }

    public final String component1() {
        return this.language;
    }

    public final String component2() {
        return this.region;
    }

    public final Double component3() {
        return this.weight;
    }

    public final VerificationLanguage copy(String language, String str, Double d2) {
        p.c(language, "language");
        return new VerificationLanguage(language, str, d2);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof VerificationLanguage)) {
            return false;
        }
        VerificationLanguage verificationLanguage = (VerificationLanguage) obj;
        return p.a((Object) this.language, (Object) verificationLanguage.language) && p.a((Object) this.region, (Object) verificationLanguage.region) && p.a(this.weight, verificationLanguage.weight);
    }

    public final String getHttpHeader() {
        return asHttpHeader();
    }

    public final String getLanguage() {
        return this.language;
    }

    public final String getRegion() {
        return this.region;
    }

    public final Double getWeight() {
        return this.weight;
    }

    public final int hashCode() {
        String str = this.language;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.region;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        Double d2 = this.weight;
        if (d2 != null) {
            i = d2.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public final String toString() {
        return "VerificationLanguage(language=" + this.language + ", region=" + this.region + ", weight=" + this.weight + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        p.c(parcel, "parcel");
        parcel.writeString(this.language);
        parcel.writeString(this.region);
        Double d2 = this.weight;
        if (d2 != null) {
            parcel.writeInt(1);
            parcel.writeDouble(d2.doubleValue());
            return;
        }
        parcel.writeInt(0);
    }
}
