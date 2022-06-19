package com.truecaller.insights.core.senderinfo.rowsenders;

import androidx.annotation.Keep;
import e.m.e.d0.b;
import java.util.List;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\b\u0087\b\u0018��2\u00020\u0001B\u001d\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00020\u0005¢\u0006\u0004\b\u0018\u0010\u0019J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u0005HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J*\u0010\n\u001a\u00020��2\b\b\u0002\u0010\b\u001a\u00020\u00022\u000e\b\u0002\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00020\u0005HÆ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\f\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\f\u0010\u0004J\u0010\u0010\u000e\u001a\u00020\rHÖ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u001a\u0010\u0012\u001a\u00020\u00112\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0012\u0010\u0013R\u001c\u0010\b\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\b\u0010\u0014\u001a\u0004\b\u0015\u0010\u0004R\"\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00020\u00058\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\t\u0010\u0016\u001a\u0004\b\u0017\u0010\u0007¨\u0006\u001a"}, d2 = {"Lcom/truecaller/insights/core/senderinfo/rowsenders/RowSendersList;", "", "", "component1", "()Ljava/lang/String;", "", "component2", "()Ljava/util/List;", "countryCode", "senders", "copy", "(Ljava/lang/String;Ljava/util/List;)Lcom/truecaller/insights/core/senderinfo/rowsenders/RowSendersList;", "toString", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getCountryCode", "Ljava/util/List;", "getSenders", "<init>", "(Ljava/lang/String;Ljava/util/List;)V", "insights_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/core/senderinfo/rowsenders/RowSendersList.class */
public final class RowSendersList {
    @b("country_code")
    private final String countryCode;
    @b("sender_ids")
    private final List<String> senders;

    public RowSendersList(String str, List<String> list) {
        l.e(str, "countryCode");
        l.e(list, "senders");
        this.countryCode = str;
        this.senders = list;
    }

    public static /* synthetic */ RowSendersList copy$default(RowSendersList rowSendersList, String str, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            str = rowSendersList.countryCode;
        }
        if ((i & 2) != 0) {
            list = rowSendersList.senders;
        }
        return rowSendersList.copy(str, list);
    }

    public final String component1() {
        return this.countryCode;
    }

    public final List<String> component2() {
        return this.senders;
    }

    public final RowSendersList copy(String str, List<String> list) {
        l.e(str, "countryCode");
        l.e(list, "senders");
        return new RowSendersList(str, list);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof RowSendersList)) {
                return false;
            }
            RowSendersList rowSendersList = (RowSendersList) obj;
            return l.a(this.countryCode, rowSendersList.countryCode) && l.a(this.senders, rowSendersList.senders);
        }
        return true;
    }

    public final String getCountryCode() {
        return this.countryCode;
    }

    public final List<String> getSenders() {
        return this.senders;
    }

    public int hashCode() {
        String str = this.countryCode;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        List<String> list = this.senders;
        if (list != null) {
            i = list.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("RowSendersList(countryCode=");
        m8728C.append(this.countryCode);
        m8728C.append(", senders=");
        return C22128a.m8602l(m8728C, this.senders, ")");
    }
}
