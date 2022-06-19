package com.sinch.verification.core;

import android.os.Parcel;
import android.os.Parcelable;
import com.mopub.common.AdType;
import com.sinch.verification.core.config.method.VerificationMethodProperties;
import com.sinch.verification.core.internal.VerificationMethodType;
import com.sinch.verification.core.verification.VerificationLanguage;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018��2\u00020\u00012\u00020\u0002B?\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\t\u001a\u00020\n\u0012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\f¢\u0006\u0002\u0010\u000eJ\t\u0010\u0019\u001a\u00020\u0004HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0006HÆ\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\t\u0010\u001d\u001a\u00020\nHÆ\u0003J\u000f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\r0\fHÆ\u0003JO\u0010\u001f\u001a\u00020��2\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\t\u001a\u00020\n2\u000e\b\u0002\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\fHÆ\u0001J\t\u0010 \u001a\u00020!HÖ\u0001J\u0013\u0010\"\u001a\u00020\n2\b\u0010#\u001a\u0004\u0018\u00010$HÖ\u0003J\t\u0010%\u001a\u00020!HÖ\u0001J\t\u0010&\u001a\u00020\u0006HÖ\u0001J\u0019\u0010'\u001a\u00020(2\u0006\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020!HÖ\u0001R\u001a\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\fX\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u0006X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u0011\u0010\u0012R\u0014\u0010\t\u001a\u00020\nX\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u0015\u0010\u0012R\u0016\u0010\b\u001a\u0004\u0018\u00010\u0006X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u0016\u0010\u0012R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n��\u001a\u0004\b\u0017\u0010\u0018¨\u0006,"}, m4298d2 = {"Lcom/sinch/verification/core/VerificationInitData;", "Lcom/sinch/verification/core/config/method/VerificationMethodProperties;", "Landroid/os/Parcelable;", "usedMethod", "Lcom/sinch/verification/core/internal/VerificationMethodType;", "number", "", AdType.CUSTOM, "reference", "honourEarlyReject", "", "acceptedLanguages", "", "Lcom/sinch/verification/core/verification/VerificationLanguage;", "(Lcom/sinch/verification/core/internal/VerificationMethodType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)V", "getAcceptedLanguages", "()Ljava/util/List;", "getCustom", "()Ljava/lang/String;", "getHonourEarlyReject", "()Z", "getNumber", "getReference", "getUsedMethod", "()Lcom/sinch/verification/core/internal/VerificationMethodType;", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "describeContents", "", "equals", "other", "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "verification-core_productionRelease"}, m4297k = 1, m4296mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/VerificationInitData.class */
public final class VerificationInitData implements Parcelable, VerificationMethodProperties {
    public static final Parcelable.Creator CREATOR = new Creator();
    private final List<VerificationLanguage> acceptedLanguages;
    private final String custom;
    private final boolean honourEarlyReject;
    private final String number;
    private final String reference;
    private final VerificationMethodType usedMethod;

    @Metadata(m4300bv = {1, 0, 3}, m4297k = 3, m4296mv = {1, 1, 16})
    /* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/VerificationInitData$Creator.class */
    public static final class Creator implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        public final Object createFromParcel(Parcel in) {
            C18524p.m3841c(in, "in");
            VerificationMethodType verificationMethodType = (VerificationMethodType) Enum.valueOf(VerificationMethodType.class, in.readString());
            String readString = in.readString();
            String readString2 = in.readString();
            String readString3 = in.readString();
            boolean z = in.readInt() != 0;
            int readInt = in.readInt();
            ArrayList arrayList = new ArrayList(readInt);
            while (readInt != 0) {
                arrayList.add((VerificationLanguage) VerificationLanguage.CREATOR.createFromParcel(in));
                readInt--;
            }
            return new VerificationInitData(verificationMethodType, readString, readString2, readString3, z, arrayList);
        }

        @Override // android.os.Parcelable.Creator
        public final Object[] newArray(int i) {
            return new VerificationInitData[i];
        }
    }

    public VerificationInitData(VerificationMethodType usedMethod, String number, String str, String str2, boolean z, List<VerificationLanguage> acceptedLanguages) {
        C18524p.m3841c(usedMethod, "usedMethod");
        C18524p.m3841c(number, "number");
        C18524p.m3841c(acceptedLanguages, "acceptedLanguages");
        this.usedMethod = usedMethod;
        this.number = number;
        this.custom = str;
        this.reference = str2;
        this.honourEarlyReject = z;
        this.acceptedLanguages = acceptedLanguages;
    }

    public static /* synthetic */ VerificationInitData copy$default(VerificationInitData verificationInitData, VerificationMethodType verificationMethodType, String str, String str2, String str3, boolean z, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            verificationMethodType = verificationInitData.usedMethod;
        }
        if ((i & 2) != 0) {
            str = verificationInitData.getNumber();
        }
        if ((i & 4) != 0) {
            str2 = verificationInitData.getCustom();
        }
        if ((i & 8) != 0) {
            str3 = verificationInitData.getReference();
        }
        if ((i & 16) != 0) {
            z = verificationInitData.getHonourEarlyReject();
        }
        if ((i & 32) != 0) {
            list = verificationInitData.getAcceptedLanguages();
        }
        return verificationInitData.copy(verificationMethodType, str, str2, str3, z, list);
    }

    public final VerificationMethodType component1() {
        return this.usedMethod;
    }

    public final String component2() {
        return getNumber();
    }

    public final String component3() {
        return getCustom();
    }

    public final String component4() {
        return getReference();
    }

    public final boolean component5() {
        return getHonourEarlyReject();
    }

    public final List<VerificationLanguage> component6() {
        return getAcceptedLanguages();
    }

    public final VerificationInitData copy(VerificationMethodType usedMethod, String number, String str, String str2, boolean z, List<VerificationLanguage> acceptedLanguages) {
        C18524p.m3841c(usedMethod, "usedMethod");
        C18524p.m3841c(number, "number");
        C18524p.m3841c(acceptedLanguages, "acceptedLanguages");
        return new VerificationInitData(usedMethod, number, str, str2, z, acceptedLanguages);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof VerificationInitData)) {
                return false;
            }
            VerificationInitData verificationInitData = (VerificationInitData) obj;
            return C18524p.m3850a(this.usedMethod, verificationInitData.usedMethod) && C18524p.m3850a((Object) getNumber(), (Object) verificationInitData.getNumber()) && C18524p.m3850a((Object) getCustom(), (Object) verificationInitData.getCustom()) && C18524p.m3850a((Object) getReference(), (Object) verificationInitData.getReference()) && getHonourEarlyReject() == verificationInitData.getHonourEarlyReject() && C18524p.m3850a(getAcceptedLanguages(), verificationInitData.getAcceptedLanguages());
        }
        return true;
    }

    @Override // com.sinch.verification.core.config.method.VerificationMethodProperties
    public final List<VerificationLanguage> getAcceptedLanguages() {
        return this.acceptedLanguages;
    }

    @Override // com.sinch.verification.core.config.method.VerificationMethodProperties
    public final String getCustom() {
        return this.custom;
    }

    @Override // com.sinch.verification.core.config.method.VerificationMethodProperties
    public final boolean getHonourEarlyReject() {
        return this.honourEarlyReject;
    }

    @Override // com.sinch.verification.core.config.method.VerificationMethodProperties
    public final String getNumber() {
        return this.number;
    }

    @Override // com.sinch.verification.core.config.method.VerificationMethodProperties
    public final String getReference() {
        return this.reference;
    }

    public final VerificationMethodType getUsedMethod() {
        return this.usedMethod;
    }

    public final int hashCode() {
        VerificationMethodType verificationMethodType = this.usedMethod;
        int i = 0;
        int hashCode = verificationMethodType != null ? verificationMethodType.hashCode() : 0;
        String number = getNumber();
        int hashCode2 = number != null ? number.hashCode() : 0;
        String custom = getCustom();
        int hashCode3 = custom != null ? custom.hashCode() : 0;
        String reference = getReference();
        int hashCode4 = reference != null ? reference.hashCode() : 0;
        boolean honourEarlyReject = getHonourEarlyReject();
        int i2 = honourEarlyReject;
        if (honourEarlyReject) {
            i2 = 1;
        }
        List<VerificationLanguage> acceptedLanguages = getAcceptedLanguages();
        if (acceptedLanguages != null) {
            i = acceptedLanguages.hashCode();
        }
        return (((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i2) * 31) + i;
    }

    public final String toString() {
        return "VerificationInitData(usedMethod=" + this.usedMethod + ", number=" + getNumber() + ", custom=" + getCustom() + ", reference=" + getReference() + ", honourEarlyReject=" + getHonourEarlyReject() + ", acceptedLanguages=" + getAcceptedLanguages() + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        C18524p.m3841c(parcel, "parcel");
        parcel.writeString(this.usedMethod.name());
        parcel.writeString(this.number);
        parcel.writeString(this.custom);
        parcel.writeString(this.reference);
        parcel.writeInt(this.honourEarlyReject ? 1 : 0);
        List<VerificationLanguage> list = this.acceptedLanguages;
        parcel.writeInt(list.size());
        for (VerificationLanguage verificationLanguage : list) {
            verificationLanguage.writeToParcel(parcel, 0);
        }
    }
}
