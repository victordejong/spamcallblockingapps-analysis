package com.truecaller.insights.core.senderinfo.rowsenders;

import androidx.annotation.Keep;
import e.m.e.d0.b;
import java.util.List;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\t\b\u0087\b\u0018��2\u00020\u0001B\u001d\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0004\b\u0019\u0010\u001aJ\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003¢\u0006\u0004\b\u0007\u0010\bJ*\u0010\u000b\u001a\u00020��2\b\b\u0002\u0010\t\u001a\u00020\u00022\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0001¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\u000e\u001a\u00020\rHÖ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u0010\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0010\u0010\u0004J\u001a\u0010\u0013\u001a\u00020\u00122\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0013\u0010\u0014R\"\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\n\u0010\u0015\u001a\u0004\b\u0016\u0010\bR\u001c\u0010\t\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\t\u0010\u0017\u001a\u0004\b\u0018\u0010\u0004¨\u0006\u001b"}, d2 = {"Lcom/truecaller/insights/core/senderinfo/rowsenders/RowImportantSenderConfig;", "", "", "component1", "()I", "", "Lcom/truecaller/insights/core/senderinfo/rowsenders/RowSendersList;", "component2", "()Ljava/util/List;", "version", "importantSenders", "copy", "(ILjava/util/List;)Lcom/truecaller/insights/core/senderinfo/rowsenders/RowImportantSenderConfig;", "", "toString", "()Ljava/lang/String;", "hashCode", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/util/List;", "getImportantSenders", "I", "getVersion", "<init>", "(ILjava/util/List;)V", "insights_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/core/senderinfo/rowsenders/RowImportantSenderConfig.class */
public final class RowImportantSenderConfig {
    @b("important_senders")
    private final List<RowSendersList> importantSenders;
    @b("version")
    private final int version;

    public RowImportantSenderConfig(int i, List<RowSendersList> list) {
        l.e(list, "importantSenders");
        this.version = i;
        this.importantSenders = list;
    }

    public static /* synthetic */ RowImportantSenderConfig copy$default(RowImportantSenderConfig rowImportantSenderConfig, int i, List list, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = rowImportantSenderConfig.version;
        }
        if ((i2 & 2) != 0) {
            list = rowImportantSenderConfig.importantSenders;
        }
        return rowImportantSenderConfig.copy(i, list);
    }

    public final int component1() {
        return this.version;
    }

    public final List<RowSendersList> component2() {
        return this.importantSenders;
    }

    public final RowImportantSenderConfig copy(int i, List<RowSendersList> list) {
        l.e(list, "importantSenders");
        return new RowImportantSenderConfig(i, list);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof RowImportantSenderConfig)) {
                return false;
            }
            RowImportantSenderConfig rowImportantSenderConfig = (RowImportantSenderConfig) obj;
            return this.version == rowImportantSenderConfig.version && l.a(this.importantSenders, rowImportantSenderConfig.importantSenders);
        }
        return true;
    }

    public final List<RowSendersList> getImportantSenders() {
        return this.importantSenders;
    }

    public final int getVersion() {
        return this.version;
    }

    public int hashCode() {
        int i = this.version;
        List<RowSendersList> list = this.importantSenders;
        return (i * 31) + (list != null ? list.hashCode() : 0);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("RowImportantSenderConfig(version=");
        m8728C.append(this.version);
        m8728C.append(", importantSenders=");
        return C22128a.m8602l(m8728C, this.importantSenders, ")");
    }
}
