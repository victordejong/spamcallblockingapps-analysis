package com.truecaller.wizard;

import androidx.annotation.Keep;
import com.huawei.hms.push.constant.RemoteMessageConst;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0011\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u000e\b\u0081\b\u0018��2\u00020\u0001BC\u0012\u0006\u0010\r\u001a\u00020\u0002\u0012\u0006\u0010\u000e\u001a\u00020\u0005\u0012\u0006\u0010\u000f\u001a\u00020\u0005\u0012\u0006\u0010\u0010\u001a\u00020\u0005\u0012\u0006\u0010\u0011\u001a\u00020\u0002\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b'\u0010(J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\b\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\b\u0010\u0007J\u0010\u0010\t\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\t\u0010\u0007J\u0010\u0010\n\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\n\u0010\u0004J\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0004\b\u000b\u0010\u0007J\u0012\u0010\f\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0004\b\f\u0010\u0007JZ\u0010\u0014\u001a\u00020��2\b\b\u0002\u0010\r\u001a\u00020\u00022\b\b\u0002\u0010\u000e\u001a\u00020\u00052\b\b\u0002\u0010\u000f\u001a\u00020\u00052\b\b\u0002\u0010\u0010\u001a\u00020\u00052\b\b\u0002\u0010\u0011\u001a\u00020\u00022\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0004\b\u0014\u0010\u0015J\u0010\u0010\u0016\u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b\u0016\u0010\u0007J\u0010\u0010\u0018\u001a\u00020\u0017HÖ\u0001¢\u0006\u0004\b\u0018\u0010\u0019J\u001a\u0010\u001c\u001a\u00020\u001b2\b\u0010\u001a\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u001c\u0010\u001dR\u0019\u0010\u000f\u001a\u00020\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u001e\u001a\u0004\b\u001f\u0010\u0007R\u0019\u0010\r\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\r\u0010 \u001a\u0004\b!\u0010\u0004R\u0019\u0010\u000e\u001a\u00020\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u001e\u001a\u0004\b\"\u0010\u0007R\u001b\u0010\u0013\u001a\u0004\u0018\u00010\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u001e\u001a\u0004\b#\u0010\u0007R\u0019\u0010\u0010\u001a\u00020\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u001e\u001a\u0004\b$\u0010\u0007R\u0019\u0010\u0011\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0011\u0010 \u001a\u0004\b%\u0010\u0004R\u001b\u0010\u0012\u001a\u0004\u0018\u00010\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u001e\u001a\u0004\b&\u0010\u0007¨\u0006)"}, d2 = {"Lcom/truecaller/wizard/AccountHelperImpl$VerifiedNumberParams;", "", "", "component1", "()J", "", "component2", "()Ljava/lang/String;", "component3", "component4", "component5", "component6", "component7", "userId", "normalizedPhoneNumber", "countryIso", "installationId", RemoteMessageConst.TTL, "normalizedSecondaryPhoneNumber", "secondaryCountryIso", "copy", "(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Lcom/truecaller/wizard/AccountHelperImpl$VerifiedNumberParams;", "toString", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getCountryIso", "J", "getUserId", "getNormalizedPhoneNumber", "getSecondaryCountryIso", "getInstallationId", "getTtl", "getNormalizedSecondaryPhoneNumber", "<init>", "(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V", "wizard-tc_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes16-dex2jar.jar:com/truecaller/wizard/AccountHelperImpl$VerifiedNumberParams.class */
public final class AccountHelperImpl$VerifiedNumberParams {
    private final String countryIso;
    private final String installationId;
    private final String normalizedPhoneNumber;
    private final String normalizedSecondaryPhoneNumber;
    private final String secondaryCountryIso;
    private final long ttl;
    private final long userId;

    public AccountHelperImpl$VerifiedNumberParams(long j, String str, String str2, String str3, long j2, String str4, String str5) {
        C22128a.m8703I0(str, "normalizedPhoneNumber", str2, "countryIso", str3, "installationId");
        this.userId = j;
        this.normalizedPhoneNumber = str;
        this.countryIso = str2;
        this.installationId = str3;
        this.ttl = j2;
        this.normalizedSecondaryPhoneNumber = str4;
        this.secondaryCountryIso = str5;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    /* JADX WARN: Type inference failed for: r0v29, types: [long] */
    /* JADX WARN: Type inference failed for: r11v0, types: [com.truecaller.wizard.AccountHelperImpl$VerifiedNumberParams] */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r17v1 */
    /* JADX WARN: Type inference failed for: r17v2 */
    /* JADX WARN: Type inference failed for: r17v3 */
    public static /* synthetic */ AccountHelperImpl$VerifiedNumberParams copy$default(AccountHelperImpl$VerifiedNumberParams accountHelperImpl$VerifiedNumberParams, long j, String str, String str2, String str3, long j2, String str4, String str5, int i, Object obj) {
        ?? r12 = j;
        if ((i & 1) != 0) {
            r12 = ((AccountHelperImpl$VerifiedNumberParams) accountHelperImpl$VerifiedNumberParams).userId;
        }
        if ((i & 2) != 0) {
            str = ((AccountHelperImpl$VerifiedNumberParams) accountHelperImpl$VerifiedNumberParams).normalizedPhoneNumber;
        }
        if ((i & 4) != 0) {
            str2 = ((AccountHelperImpl$VerifiedNumberParams) accountHelperImpl$VerifiedNumberParams).countryIso;
        }
        if ((i & 8) != 0) {
            str3 = ((AccountHelperImpl$VerifiedNumberParams) accountHelperImpl$VerifiedNumberParams).installationId;
        }
        ?? r17 = j2;
        if ((i & 16) != 0) {
            r17 = ((AccountHelperImpl$VerifiedNumberParams) accountHelperImpl$VerifiedNumberParams).ttl;
        }
        if ((i & 32) != 0) {
            str4 = ((AccountHelperImpl$VerifiedNumberParams) accountHelperImpl$VerifiedNumberParams).normalizedSecondaryPhoneNumber;
        }
        if ((i & 64) != 0) {
            str5 = ((AccountHelperImpl$VerifiedNumberParams) accountHelperImpl$VerifiedNumberParams).secondaryCountryIso;
        }
        return accountHelperImpl$VerifiedNumberParams.copy(r12, str, str2, str3, r17, str4, str5);
    }

    public final long component1() {
        return this.userId;
    }

    public final String component2() {
        return this.normalizedPhoneNumber;
    }

    public final String component3() {
        return this.countryIso;
    }

    public final String component4() {
        return this.installationId;
    }

    public final long component5() {
        return this.ttl;
    }

    public final String component6() {
        return this.normalizedSecondaryPhoneNumber;
    }

    public final String component7() {
        return this.secondaryCountryIso;
    }

    public final AccountHelperImpl$VerifiedNumberParams copy(long j, String str, String str2, String str3, long j2, String str4, String str5) {
        l.e(str, "normalizedPhoneNumber");
        l.e(str2, "countryIso");
        l.e(str3, "installationId");
        return new AccountHelperImpl$VerifiedNumberParams(j, str, str2, str3, j2, str4, str5);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof AccountHelperImpl$VerifiedNumberParams)) {
                return false;
            }
            AccountHelperImpl$VerifiedNumberParams accountHelperImpl$VerifiedNumberParams = (AccountHelperImpl$VerifiedNumberParams) obj;
            return this.userId == accountHelperImpl$VerifiedNumberParams.userId && l.a(this.normalizedPhoneNumber, accountHelperImpl$VerifiedNumberParams.normalizedPhoneNumber) && l.a(this.countryIso, accountHelperImpl$VerifiedNumberParams.countryIso) && l.a(this.installationId, accountHelperImpl$VerifiedNumberParams.installationId) && this.ttl == accountHelperImpl$VerifiedNumberParams.ttl && l.a(this.normalizedSecondaryPhoneNumber, accountHelperImpl$VerifiedNumberParams.normalizedSecondaryPhoneNumber) && l.a(this.secondaryCountryIso, accountHelperImpl$VerifiedNumberParams.secondaryCountryIso);
        }
        return true;
    }

    public final String getCountryIso() {
        return this.countryIso;
    }

    public final String getInstallationId() {
        return this.installationId;
    }

    public final String getNormalizedPhoneNumber() {
        return this.normalizedPhoneNumber;
    }

    public final String getNormalizedSecondaryPhoneNumber() {
        return this.normalizedSecondaryPhoneNumber;
    }

    public final String getSecondaryCountryIso() {
        return this.secondaryCountryIso;
    }

    public final long getTtl() {
        return this.ttl;
    }

    public final long getUserId() {
        return this.userId;
    }

    public int hashCode() {
        int m34274a = C4876d.m34274a(this.userId);
        String str = this.normalizedPhoneNumber;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.countryIso;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.installationId;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        int m34274a2 = C4876d.m34274a(this.ttl);
        String str4 = this.normalizedSecondaryPhoneNumber;
        int hashCode4 = str4 != null ? str4.hashCode() : 0;
        String str5 = this.secondaryCountryIso;
        if (str5 != null) {
            i = str5.hashCode();
        }
        return (((((((((((m34274a * 31) + hashCode) * 31) + hashCode2) * 31) + hashCode3) * 31) + m34274a2) * 31) + hashCode4) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("VerifiedNumberParams(userId=");
        m8728C.append(this.userId);
        m8728C.append(", normalizedPhoneNumber=");
        m8728C.append(this.normalizedPhoneNumber);
        m8728C.append(", countryIso=");
        m8728C.append(this.countryIso);
        m8728C.append(", installationId=");
        m8728C.append(this.installationId);
        m8728C.append(", ttl=");
        m8728C.append(this.ttl);
        m8728C.append(", normalizedSecondaryPhoneNumber=");
        m8728C.append(this.normalizedSecondaryPhoneNumber);
        m8728C.append(", secondaryCountryIso=");
        return C22128a.m8618h(m8728C, this.secondaryCountryIso, ")");
    }
}
