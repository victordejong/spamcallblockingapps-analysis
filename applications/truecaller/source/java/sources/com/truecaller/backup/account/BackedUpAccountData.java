package com.truecaller.backup.account;

import androidx.annotation.Keep;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\b\u0087\b\u0018��2\u00020\u0001B\u001f\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0005\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0004J.\u0010\n\u001a\u00020��2\b\b\u0002\u0010\u0007\u001a\u00020\u00022\b\b\u0002\u0010\b\u001a\u00020\u00022\b\b\u0002\u0010\t\u001a\u00020\u0002HÆ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\f\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\f\u0010\u0004J\u0010\u0010\u000e\u001a\u00020\rHÖ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u001a\u0010\u0012\u001a\u00020\u00112\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0012\u0010\u0013R\u0019\u0010\b\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\u0014\u001a\u0004\b\u0015\u0010\u0004R\u0019\u0010\u0007\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u0014\u001a\u0004\b\u0016\u0010\u0004R\u0019\u0010\t\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\t\u0010\u0014\u001a\u0004\b\u0017\u0010\u0004¨\u0006\u001a"}, d2 = {"Lcom/truecaller/backup/account/BackedUpAccountData;", "", "", "component1", "()Ljava/lang/String;", "component2", "component3", "normalizedPhoneNumber", "countryIso", "installationId", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/truecaller/backup/account/BackedUpAccountData;", "toString", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getCountryIso", "getNormalizedPhoneNumber", "getInstallationId", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "backup_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes5-dex2jar.jar:com/truecaller/backup/account/BackedUpAccountData.class */
public final class BackedUpAccountData {
    private final String countryIso;
    private final String installationId;
    private final String normalizedPhoneNumber;

    public BackedUpAccountData(String str, String str2, String str3) {
        C22128a.m8703I0(str, "normalizedPhoneNumber", str2, "countryIso", str3, "installationId");
        this.normalizedPhoneNumber = str;
        this.countryIso = str2;
        this.installationId = str3;
    }

    public static /* synthetic */ BackedUpAccountData copy$default(BackedUpAccountData backedUpAccountData, String str, String str2, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = backedUpAccountData.normalizedPhoneNumber;
        }
        if ((i & 2) != 0) {
            str2 = backedUpAccountData.countryIso;
        }
        if ((i & 4) != 0) {
            str3 = backedUpAccountData.installationId;
        }
        return backedUpAccountData.copy(str, str2, str3);
    }

    public final String component1() {
        return this.normalizedPhoneNumber;
    }

    public final String component2() {
        return this.countryIso;
    }

    public final String component3() {
        return this.installationId;
    }

    public final BackedUpAccountData copy(String str, String str2, String str3) {
        l.e(str, "normalizedPhoneNumber");
        l.e(str2, "countryIso");
        l.e(str3, "installationId");
        return new BackedUpAccountData(str, str2, str3);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof BackedUpAccountData)) {
                return false;
            }
            BackedUpAccountData backedUpAccountData = (BackedUpAccountData) obj;
            return l.a(this.normalizedPhoneNumber, backedUpAccountData.normalizedPhoneNumber) && l.a(this.countryIso, backedUpAccountData.countryIso) && l.a(this.installationId, backedUpAccountData.installationId);
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

    public int hashCode() {
        String str = this.normalizedPhoneNumber;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.countryIso;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.installationId;
        if (str3 != null) {
            i = str3.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("BackedUpAccountData(normalizedPhoneNumber=");
        m8728C.append(this.normalizedPhoneNumber);
        m8728C.append(", countryIso=");
        m8728C.append(this.countryIso);
        m8728C.append(", installationId=");
        return C22128a.m8618h(m8728C, this.installationId, ")");
    }
}
