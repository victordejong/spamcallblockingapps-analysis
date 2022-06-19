package com.truecaller.insights.reminders.actions.binders;

import androidx.annotation.Keep;
import com.truecaller.insights.models.DomainOrigin;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0006\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0012\b\u0087\b\u0018��2\u00020\u0001BO\u0012\u0006\u0010\u0010\u001a\u00020\u0002\u0012\u0006\u0010\u0011\u001a\u00020\u0002\u0012\u0006\u0010\u0012\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0016\u001a\u00020\f\u0012\u0006\u0010\u0017\u001a\u00020\u0002¢\u0006\u0004\b/\u00100J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0005\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0004J\u0012\u0010\b\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0004\b\b\u0010\tJ\u0012\u0010\n\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\n\u0010\u0004J\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u000b\u0010\u0004J\u0010\u0010\r\u001a\u00020\fHÆ\u0003¢\u0006\u0004\b\r\u0010\u000eJ\u0010\u0010\u000f\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u000f\u0010\u0004Jf\u0010\u0018\u001a\u00020��2\b\b\u0002\u0010\u0010\u001a\u00020\u00022\b\b\u0002\u0010\u0011\u001a\u00020\u00022\b\b\u0002\u0010\u0012\u001a\u00020\u00022\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00022\b\b\u0002\u0010\u0016\u001a\u00020\f2\b\b\u0002\u0010\u0017\u001a\u00020\u0002HÆ\u0001¢\u0006\u0004\b\u0018\u0010\u0019J\u0010\u0010\u001a\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u001a\u0010\u0004J\u0010\u0010\u001c\u001a\u00020\u001bHÖ\u0001¢\u0006\u0004\b\u001c\u0010\u001dJ\u001a\u0010 \u001a\u00020\u001f2\b\u0010\u001e\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b \u0010!R\u0019\u0010\u0017\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0017\u0010\"\u001a\u0004\b#\u0010\u0004R\u0019\u0010\u0012\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0012\u0010\"\u001a\u0004\b$\u0010\u0004R\u0019\u0010\u0010\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0010\u0010\"\u001a\u0004\b%\u0010\u0004R$\u0010\u0013\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010&\u001a\u0004\b'\u0010\t\"\u0004\b(\u0010)R\u001b\u0010\u0014\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0014\u0010\"\u001a\u0004\b*\u0010\u0004R\u0019\u0010\u0011\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0011\u0010\"\u001a\u0004\b+\u0010\u0004R\u001b\u0010\u0015\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0015\u0010\"\u001a\u0004\b,\u0010\u0004R\u0019\u0010\u0016\u001a\u00020\f8\u0006@\u0006¢\u0006\f\n\u0004\b\u0016\u0010-\u001a\u0004\b.\u0010\u000e¨\u00061"}, d2 = {"Lcom/truecaller/insights/reminders/actions/binders/BillReminderMeta;", "", "", "component1", "()Ljava/lang/String;", "component2", "component3", "", "component4", "()Ljava/lang/Double;", "component5", "component6", "Lcom/truecaller/insights/models/DomainOrigin;", "component7", "()Lcom/truecaller/insights/models/DomainOrigin;", "component8", "vendorName", "refId", "accountNumber", "billAmount", "utilityType", "operatorLocation", "origin", "subCategory", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/insights/models/DomainOrigin;Ljava/lang/String;)Lcom/truecaller/insights/reminders/actions/binders/BillReminderMeta;", "toString", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getSubCategory", "getAccountNumber", "getVendorName", "Ljava/lang/Double;", "getBillAmount", "setBillAmount", "(Ljava/lang/Double;)V", "getUtilityType", "getRefId", "getOperatorLocation", "Lcom/truecaller/insights/models/DomainOrigin;", "getOrigin", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/insights/models/DomainOrigin;Ljava/lang/String;)V", "insights_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/reminders/actions/binders/BillReminderMeta.class */
public final class BillReminderMeta {
    private final String accountNumber;
    private Double billAmount;
    private final String operatorLocation;
    private final DomainOrigin origin;
    private final String refId;
    private final String subCategory;
    private final String utilityType;
    private final String vendorName;

    public BillReminderMeta(String str, String str2, String str3, Double d, String str4, String str5, DomainOrigin domainOrigin, String str6) {
        l.e(str, "vendorName");
        l.e(str2, "refId");
        l.e(str3, "accountNumber");
        l.e(domainOrigin, "origin");
        l.e(str6, "subCategory");
        this.vendorName = str;
        this.refId = str2;
        this.accountNumber = str3;
        this.billAmount = d;
        this.utilityType = str4;
        this.operatorLocation = str5;
        this.origin = domainOrigin;
        this.subCategory = str6;
    }

    public /* synthetic */ BillReminderMeta(String str, String str2, String str3, Double d, String str4, String str5, DomainOrigin domainOrigin, String str6, int i, f fVar) {
        this(str, str2, str3, (i & 8) != 0 ? null : d, str4, str5, domainOrigin, str6);
    }

    public static /* synthetic */ BillReminderMeta copy$default(BillReminderMeta billReminderMeta, String str, String str2, String str3, Double d, String str4, String str5, DomainOrigin domainOrigin, String str6, int i, Object obj) {
        if ((i & 1) != 0) {
            str = billReminderMeta.vendorName;
        }
        if ((i & 2) != 0) {
            str2 = billReminderMeta.refId;
        }
        if ((i & 4) != 0) {
            str3 = billReminderMeta.accountNumber;
        }
        if ((i & 8) != 0) {
            d = billReminderMeta.billAmount;
        }
        if ((i & 16) != 0) {
            str4 = billReminderMeta.utilityType;
        }
        if ((i & 32) != 0) {
            str5 = billReminderMeta.operatorLocation;
        }
        if ((i & 64) != 0) {
            domainOrigin = billReminderMeta.origin;
        }
        if ((i & 128) != 0) {
            str6 = billReminderMeta.subCategory;
        }
        return billReminderMeta.copy(str, str2, str3, d, str4, str5, domainOrigin, str6);
    }

    public final String component1() {
        return this.vendorName;
    }

    public final String component2() {
        return this.refId;
    }

    public final String component3() {
        return this.accountNumber;
    }

    public final Double component4() {
        return this.billAmount;
    }

    public final String component5() {
        return this.utilityType;
    }

    public final String component6() {
        return this.operatorLocation;
    }

    public final DomainOrigin component7() {
        return this.origin;
    }

    public final String component8() {
        return this.subCategory;
    }

    public final BillReminderMeta copy(String str, String str2, String str3, Double d, String str4, String str5, DomainOrigin domainOrigin, String str6) {
        l.e(str, "vendorName");
        l.e(str2, "refId");
        l.e(str3, "accountNumber");
        l.e(domainOrigin, "origin");
        l.e(str6, "subCategory");
        return new BillReminderMeta(str, str2, str3, d, str4, str5, domainOrigin, str6);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof BillReminderMeta)) {
                return false;
            }
            BillReminderMeta billReminderMeta = (BillReminderMeta) obj;
            return l.a(this.vendorName, billReminderMeta.vendorName) && l.a(this.refId, billReminderMeta.refId) && l.a(this.accountNumber, billReminderMeta.accountNumber) && l.a(this.billAmount, billReminderMeta.billAmount) && l.a(this.utilityType, billReminderMeta.utilityType) && l.a(this.operatorLocation, billReminderMeta.operatorLocation) && l.a(this.origin, billReminderMeta.origin) && l.a(this.subCategory, billReminderMeta.subCategory);
        }
        return true;
    }

    public final String getAccountNumber() {
        return this.accountNumber;
    }

    public final Double getBillAmount() {
        return this.billAmount;
    }

    public final String getOperatorLocation() {
        return this.operatorLocation;
    }

    public final DomainOrigin getOrigin() {
        return this.origin;
    }

    public final String getRefId() {
        return this.refId;
    }

    public final String getSubCategory() {
        return this.subCategory;
    }

    public final String getUtilityType() {
        return this.utilityType;
    }

    public final String getVendorName() {
        return this.vendorName;
    }

    public int hashCode() {
        String str = this.vendorName;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.refId;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.accountNumber;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        Double d = this.billAmount;
        int hashCode4 = d != null ? d.hashCode() : 0;
        String str4 = this.utilityType;
        int hashCode5 = str4 != null ? str4.hashCode() : 0;
        String str5 = this.operatorLocation;
        int hashCode6 = str5 != null ? str5.hashCode() : 0;
        DomainOrigin domainOrigin = this.origin;
        int hashCode7 = domainOrigin != null ? domainOrigin.hashCode() : 0;
        String str6 = this.subCategory;
        if (str6 != null) {
            i = str6.hashCode();
        }
        return (((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + i;
    }

    public final void setBillAmount(Double d) {
        this.billAmount = d;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("BillReminderMeta(vendorName=");
        m8728C.append(this.vendorName);
        m8728C.append(", refId=");
        m8728C.append(this.refId);
        m8728C.append(", accountNumber=");
        m8728C.append(this.accountNumber);
        m8728C.append(", billAmount=");
        m8728C.append(this.billAmount);
        m8728C.append(", utilityType=");
        m8728C.append(this.utilityType);
        m8728C.append(", operatorLocation=");
        m8728C.append(this.operatorLocation);
        m8728C.append(", origin=");
        m8728C.append(this.origin);
        m8728C.append(", subCategory=");
        return C22128a.m8618h(m8728C, this.subCategory, ")");
    }
}
