package com.truecaller.wizard;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\r\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\b\u0081\b\u0018��2\u00020\u0001B9\u0012\u0006\u0010\u000e\u001a\u00020\u0002\u0012\u0006\u0010\u000f\u001a\u00020\u0005\u0012\u0006\u0010\u0010\u001a\u00020\u0002\u0012\u0006\u0010\u0011\u001a\u00020\u0005\u0012\u0006\u0010\u0012\u001a\u00020\u0005\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b.\u0010/J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\b\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\b\u0010\u0004J\u0010\u0010\t\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\t\u0010\u0007J\u0010\u0010\n\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\n\u0010\u0007J\u0012\u0010\f\u001a\u0004\u0018\u00010\u000bHÆ\u0003¢\u0006\u0004\b\f\u0010\rJN\u0010\u0014\u001a\u00020��2\b\b\u0002\u0010\u000e\u001a\u00020\u00022\b\b\u0002\u0010\u000f\u001a\u00020\u00052\b\b\u0002\u0010\u0010\u001a\u00020\u00022\b\b\u0002\u0010\u0011\u001a\u00020\u00052\b\b\u0002\u0010\u0012\u001a\u00020\u00052\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u000bHÆ\u0001¢\u0006\u0004\b\u0014\u0010\u0015J\u0010\u0010\u0016\u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b\u0016\u0010\u0007J\u0010\u0010\u0017\u001a\u00020\u000bHÖ\u0001¢\u0006\u0004\b\u0017\u0010\u0018J\u001a\u0010\u001c\u001a\u00020\u001b2\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019HÖ\u0003¢\u0006\u0004\b\u001c\u0010\u001dJ\u0010\u0010\u001e\u001a\u00020\u000bHÖ\u0001¢\u0006\u0004\b\u001e\u0010\u0018J \u0010#\u001a\u00020\"2\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\u000bHÖ\u0001¢\u0006\u0004\b#\u0010$R\u0019\u0010\u000e\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u000e\u0010%\u001a\u0004\b&\u0010\u0004R\u0019\u0010\u0010\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0010\u0010%\u001a\u0004\b'\u0010\u0004R\u0019\u0010\u0012\u001a\u00020\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\u0012\u0010(\u001a\u0004\b)\u0010\u0007R\u0019\u0010\u0011\u001a\u00020\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\u0011\u0010(\u001a\u0004\b*\u0010\u0007R\u0019\u0010\u000f\u001a\u00020\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\u000f\u0010(\u001a\u0004\b+\u0010\u0007R\u001b\u0010\u0013\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006¢\u0006\f\n\u0004\b\u0013\u0010,\u001a\u0004\b-\u0010\r¨\u00060"}, d2 = {"Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;", "Landroid/os/Parcelable;", "", "component1", "()J", "", "component2", "()Ljava/lang/String;", "component3", "component4", "component5", "", "component6", "()Ljava/lang/Integer;", "userId", "requestId", "backupTimeStamp", "phoneNumber", "countryIso", "dialingCode", "copy", "(JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;", "toString", "hashCode", "()I", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "describeContents", "Landroid/os/Parcel;", "parcel", "flags", "Ls1/s;", "writeToParcel", "(Landroid/os/Parcel;I)V", "J", "getUserId", "getBackupTimeStamp", "Ljava/lang/String;", "getCountryIso", "getPhoneNumber", "getRequestId", "Ljava/lang/Integer;", "getDialingCode", "<init>", "(JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V", "wizard-tc_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes16-dex2jar.jar:com/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams.class */
public final class AccountHelperImpl$AccountRecoveryParams implements Parcelable {
    public static final Parcelable.Creator<AccountHelperImpl$AccountRecoveryParams> CREATOR = new C4860a();
    private final long backupTimeStamp;
    private final String countryIso;
    private final Integer dialingCode;
    private final String phoneNumber;
    private final String requestId;
    private final long userId;

    /* renamed from: com.truecaller.wizard.AccountHelperImpl$AccountRecoveryParams$a */
    /* loaded from: classes16-dex2jar.jar:com/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams$a.class */
    public static final class C4860a implements Parcelable.Creator<AccountHelperImpl$AccountRecoveryParams> {
        @Override // android.os.Parcelable.Creator
        public AccountHelperImpl$AccountRecoveryParams createFromParcel(Parcel parcel) {
            l.e(parcel, "in");
            return new AccountHelperImpl$AccountRecoveryParams(parcel.readLong(), parcel.readString(), parcel.readLong(), parcel.readString(), parcel.readString(), parcel.readInt() != 0 ? Integer.valueOf(parcel.readInt()) : null);
        }

        @Override // android.os.Parcelable.Creator
        public AccountHelperImpl$AccountRecoveryParams[] newArray(int i) {
            return new AccountHelperImpl$AccountRecoveryParams[i];
        }
    }

    public AccountHelperImpl$AccountRecoveryParams(long j, String str, long j2, String str2, String str3, Integer num) {
        C22128a.m8703I0(str, "requestId", str2, "phoneNumber", str3, "countryIso");
        this.userId = j;
        this.requestId = str;
        this.backupTimeStamp = j2;
        this.phoneNumber = str2;
        this.countryIso = str3;
        this.dialingCode = num;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /* JADX WARN: Type inference failed for: r10v0, types: [com.truecaller.wizard.AccountHelperImpl$AccountRecoveryParams] */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r14v3 */
    public static /* synthetic */ AccountHelperImpl$AccountRecoveryParams copy$default(AccountHelperImpl$AccountRecoveryParams accountHelperImpl$AccountRecoveryParams, long j, String str, long j2, String str2, String str3, Integer num, int i, Object obj) {
        ?? r11 = j;
        if ((i & 1) != 0) {
            r11 = ((AccountHelperImpl$AccountRecoveryParams) accountHelperImpl$AccountRecoveryParams).userId;
        }
        if ((i & 2) != 0) {
            str = ((AccountHelperImpl$AccountRecoveryParams) accountHelperImpl$AccountRecoveryParams).requestId;
        }
        ?? r14 = j2;
        if ((i & 4) != 0) {
            r14 = ((AccountHelperImpl$AccountRecoveryParams) accountHelperImpl$AccountRecoveryParams).backupTimeStamp;
        }
        if ((i & 8) != 0) {
            str2 = ((AccountHelperImpl$AccountRecoveryParams) accountHelperImpl$AccountRecoveryParams).phoneNumber;
        }
        if ((i & 16) != 0) {
            str3 = ((AccountHelperImpl$AccountRecoveryParams) accountHelperImpl$AccountRecoveryParams).countryIso;
        }
        if ((i & 32) != 0) {
            num = ((AccountHelperImpl$AccountRecoveryParams) accountHelperImpl$AccountRecoveryParams).dialingCode;
        }
        return accountHelperImpl$AccountRecoveryParams.copy(r11, str, r14, str2, str3, num);
    }

    public final long component1() {
        return this.userId;
    }

    public final String component2() {
        return this.requestId;
    }

    public final long component3() {
        return this.backupTimeStamp;
    }

    public final String component4() {
        return this.phoneNumber;
    }

    public final String component5() {
        return this.countryIso;
    }

    public final Integer component6() {
        return this.dialingCode;
    }

    public final AccountHelperImpl$AccountRecoveryParams copy(long j, String str, long j2, String str2, String str3, Integer num) {
        l.e(str, "requestId");
        l.e(str2, "phoneNumber");
        l.e(str3, "countryIso");
        return new AccountHelperImpl$AccountRecoveryParams(j, str, j2, str2, str3, num);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof AccountHelperImpl$AccountRecoveryParams)) {
                return false;
            }
            AccountHelperImpl$AccountRecoveryParams accountHelperImpl$AccountRecoveryParams = (AccountHelperImpl$AccountRecoveryParams) obj;
            return this.userId == accountHelperImpl$AccountRecoveryParams.userId && l.a(this.requestId, accountHelperImpl$AccountRecoveryParams.requestId) && this.backupTimeStamp == accountHelperImpl$AccountRecoveryParams.backupTimeStamp && l.a(this.phoneNumber, accountHelperImpl$AccountRecoveryParams.phoneNumber) && l.a(this.countryIso, accountHelperImpl$AccountRecoveryParams.countryIso) && l.a(this.dialingCode, accountHelperImpl$AccountRecoveryParams.dialingCode);
        }
        return true;
    }

    public final long getBackupTimeStamp() {
        return this.backupTimeStamp;
    }

    public final String getCountryIso() {
        return this.countryIso;
    }

    public final Integer getDialingCode() {
        return this.dialingCode;
    }

    public final String getPhoneNumber() {
        return this.phoneNumber;
    }

    public final String getRequestId() {
        return this.requestId;
    }

    public final long getUserId() {
        return this.userId;
    }

    public int hashCode() {
        int m34274a = C4876d.m34274a(this.userId);
        String str = this.requestId;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        int m34274a2 = C4876d.m34274a(this.backupTimeStamp);
        String str2 = this.phoneNumber;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.countryIso;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        Integer num = this.dialingCode;
        if (num != null) {
            i = num.hashCode();
        }
        return (((((((((m34274a * 31) + hashCode) * 31) + m34274a2) * 31) + hashCode2) * 31) + hashCode3) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("AccountRecoveryParams(userId=");
        m8728C.append(this.userId);
        m8728C.append(", requestId=");
        m8728C.append(this.requestId);
        m8728C.append(", backupTimeStamp=");
        m8728C.append(this.backupTimeStamp);
        m8728C.append(", phoneNumber=");
        m8728C.append(this.phoneNumber);
        m8728C.append(", countryIso=");
        m8728C.append(this.countryIso);
        m8728C.append(", dialingCode=");
        return C22128a.m8689L2(m8728C, this.dialingCode, ")");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int i2;
        l.e(parcel, "parcel");
        parcel.writeLong(this.userId);
        parcel.writeString(this.requestId);
        parcel.writeLong(this.backupTimeStamp);
        parcel.writeString(this.phoneNumber);
        parcel.writeString(this.countryIso);
        Integer num = this.dialingCode;
        if (num != null) {
            parcel.writeInt(1);
            i2 = num.intValue();
        } else {
            i2 = 0;
        }
        parcel.writeInt(i2);
    }
}
