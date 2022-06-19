package com.truecaller.personalsafety.domain.data;

import androidx.annotation.Keep;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u000b\b\u0087\b\u0018��2\u00020\u0001B/\u0012\b\b\u0002\u0010\n\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0002\u0012\b\b\u0002\u0010\f\u001a\u00020\u0006\u0012\b\b\u0002\u0010\r\u001a\u00020\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0005\u0010\u0004J\u0010\u0010\u0007\u001a\u00020\u0006HÆ\u0003¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\t\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\t\u0010\u0004J8\u0010\u000e\u001a\u00020��2\b\b\u0002\u0010\n\u001a\u00020\u00022\b\b\u0002\u0010\u000b\u001a\u00020\u00022\b\b\u0002\u0010\f\u001a\u00020\u00062\b\b\u0002\u0010\r\u001a\u00020\u0002HÆ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u0010\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0010\u0010\u0004J\u0010\u0010\u0012\u001a\u00020\u0011HÖ\u0001¢\u0006\u0004\b\u0012\u0010\u0013J\u001a\u0010\u0016\u001a\u00020\u00152\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0016\u0010\u0017R\u0019\u0010\n\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\n\u0010\u0018\u001a\u0004\b\u0019\u0010\u0004R\u0019\u0010\u000b\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u000b\u0010\u0018\u001a\u0004\b\u001a\u0010\u0004R\u0019\u0010\r\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\r\u0010\u0018\u001a\u0004\b\u001b\u0010\u0004R\u0019\u0010\f\u001a\u00020\u00068\u0006@\u0006¢\u0006\f\n\u0004\b\f\u0010\u001c\u001a\u0004\b\u001d\u0010\b¨\u0006 "}, d2 = {"Lcom/truecaller/personalsafety/domain/data/PersonalSafetyHomePromoConfig;", "", "", "component1", "()Ljava/lang/String;", "component2", "", "component3", "()J", "component4", "title", "text", "durationDays", "launchUrl", "copy", "(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lcom/truecaller/personalsafety/domain/data/PersonalSafetyHomePromoConfig;", "toString", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getTitle", "getText", "getLaunchUrl", "J", "getDurationDays", "<init>", "(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V", "personal-safety_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes11-dex2jar.jar:com/truecaller/personalsafety/domain/data/PersonalSafetyHomePromoConfig.class */
public final class PersonalSafetyHomePromoConfig {
    private final long durationDays;
    private final String launchUrl;
    private final String text;
    private final String title;

    public PersonalSafetyHomePromoConfig() {
        this(null, null, 0L, null, 15, null);
    }

    public PersonalSafetyHomePromoConfig(String str, String str2, long j, String str3) {
        C22128a.m8703I0(str, "title", str2, "text", str3, "launchUrl");
        this.title = str;
        this.text = str2;
        this.durationDays = j;
        this.launchUrl = str3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v3 */
    public /* synthetic */ PersonalSafetyHomePromoConfig(String str, String str2, long j, String str3, int i, f fVar) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? 30 : j, (i & 8) != 0 ? "" : str3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r7v0, types: [com.truecaller.personalsafety.domain.data.PersonalSafetyHomePromoConfig] */
    public static /* synthetic */ PersonalSafetyHomePromoConfig copy$default(PersonalSafetyHomePromoConfig personalSafetyHomePromoConfig, String str, String str2, long j, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = ((PersonalSafetyHomePromoConfig) personalSafetyHomePromoConfig).title;
        }
        if ((i & 2) != 0) {
            str2 = ((PersonalSafetyHomePromoConfig) personalSafetyHomePromoConfig).text;
        }
        ?? r10 = j;
        if ((i & 4) != 0) {
            r10 = ((PersonalSafetyHomePromoConfig) personalSafetyHomePromoConfig).durationDays;
        }
        if ((i & 8) != 0) {
            str3 = ((PersonalSafetyHomePromoConfig) personalSafetyHomePromoConfig).launchUrl;
        }
        return personalSafetyHomePromoConfig.copy(str, str2, r10, str3);
    }

    public final String component1() {
        return this.title;
    }

    public final String component2() {
        return this.text;
    }

    public final long component3() {
        return this.durationDays;
    }

    public final String component4() {
        return this.launchUrl;
    }

    public final PersonalSafetyHomePromoConfig copy(String str, String str2, long j, String str3) {
        l.e(str, "title");
        l.e(str2, "text");
        l.e(str3, "launchUrl");
        return new PersonalSafetyHomePromoConfig(str, str2, j, str3);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof PersonalSafetyHomePromoConfig)) {
                return false;
            }
            PersonalSafetyHomePromoConfig personalSafetyHomePromoConfig = (PersonalSafetyHomePromoConfig) obj;
            return l.a(this.title, personalSafetyHomePromoConfig.title) && l.a(this.text, personalSafetyHomePromoConfig.text) && this.durationDays == personalSafetyHomePromoConfig.durationDays && l.a(this.launchUrl, personalSafetyHomePromoConfig.launchUrl);
        }
        return true;
    }

    public final long getDurationDays() {
        return this.durationDays;
    }

    public final String getLaunchUrl() {
        return this.launchUrl;
    }

    public final String getText() {
        return this.text;
    }

    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        String str = this.title;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.text;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        int m34274a = C4876d.m34274a(this.durationDays);
        String str3 = this.launchUrl;
        if (str3 != null) {
            i = str3.hashCode();
        }
        return (((((hashCode * 31) + hashCode2) * 31) + m34274a) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("PersonalSafetyHomePromoConfig(title=");
        m8728C.append(this.title);
        m8728C.append(", text=");
        m8728C.append(this.text);
        m8728C.append(", durationDays=");
        m8728C.append(this.durationDays);
        m8728C.append(", launchUrl=");
        return C22128a.m8618h(m8728C, this.launchUrl, ")");
    }
}
