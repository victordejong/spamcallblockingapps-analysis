package com.truecaller.profile.data.dto;

import androidx.annotation.Keep;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\b\u0087\b\u0018��2\u00020\u0001B\u0017\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0005¢\u0006\u0004\b\u0018\u0010\u0019J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J$\u0010\n\u001a\u00020��2\b\b\u0002\u0010\b\u001a\u00020\u00022\b\b\u0002\u0010\t\u001a\u00020\u0005HÆ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\f\u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b\f\u0010\u0007J\u0010\u0010\u000e\u001a\u00020\rHÖ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u001a\u0010\u0012\u001a\u00020\u00112\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0012\u0010\u0013R\u0019\u0010\b\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\u0014\u001a\u0004\b\u0015\u0010\u0004R\u0019\u0010\t\u001a\u00020\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\t\u0010\u0016\u001a\u0004\b\u0017\u0010\u0007¨\u0006\u001a"}, d2 = {"Lcom/truecaller/profile/data/dto/PhoneNumber;", "", "", "component1", "()J", "", "component2", "()Ljava/lang/String;", "number", "countryCode", "copy", "(JLjava/lang/String;)Lcom/truecaller/profile/data/dto/PhoneNumber;", "toString", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "J", "getNumber", "Ljava/lang/String;", "getCountryCode", "<init>", "(JLjava/lang/String;)V", "profile_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes12-dex2jar.jar:com/truecaller/profile/data/dto/PhoneNumber.class */
public final class PhoneNumber {
    private final String countryCode;
    private final long number;

    public PhoneNumber(long j, String str) {
        l.e(str, "countryCode");
        this.number = j;
        this.countryCode = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* JADX WARN: Type inference failed for: r5v0, types: [com.truecaller.profile.data.dto.PhoneNumber] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3 */
    public static /* synthetic */ PhoneNumber copy$default(PhoneNumber phoneNumber, long j, String str, int i, Object obj) {
        ?? r6 = j;
        if ((i & 1) != 0) {
            r6 = ((PhoneNumber) phoneNumber).number;
        }
        if ((i & 2) != 0) {
            str = ((PhoneNumber) phoneNumber).countryCode;
        }
        return phoneNumber.copy(r6, str);
    }

    public final long component1() {
        return this.number;
    }

    public final String component2() {
        return this.countryCode;
    }

    public final PhoneNumber copy(long j, String str) {
        l.e(str, "countryCode");
        return new PhoneNumber(j, str);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof PhoneNumber)) {
                return false;
            }
            PhoneNumber phoneNumber = (PhoneNumber) obj;
            return this.number == phoneNumber.number && l.a(this.countryCode, phoneNumber.countryCode);
        }
        return true;
    }

    public final String getCountryCode() {
        return this.countryCode;
    }

    public final long getNumber() {
        return this.number;
    }

    public int hashCode() {
        int m34274a = C4876d.m34274a(this.number);
        String str = this.countryCode;
        return (m34274a * 31) + (str != null ? str.hashCode() : 0);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("PhoneNumber(number=");
        m8728C.append(this.number);
        m8728C.append(", countryCode=");
        return C22128a.m8618h(m8728C, this.countryCode, ")");
    }
}
