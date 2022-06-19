package com.truecaller.backup;

import androidx.annotation.Keep;
import com.truecaller.blocking.FiltersContract;
import java.util.Objects;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b/\b\u0087\b\u0018��2\u00020\u0001Bw\u0012\b\u0010\u0018\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\u0019\u001a\u00020\t\u0012\b\u0010\u001a\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\u001b\u001a\u00020\u0006\u0012\u0006\u0010\u001c\u001a\u00020\u0006\u0012\u0006\u0010\u001d\u001a\u00020\u0006\u0012\b\u0010\u001e\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u001f\u001a\u0004\u0018\u00010\t\u0012\b\b\u0002\u0010 \u001a\u00020\u0006\u0012\b\u0010!\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\"\u001a\u0004\u0018\u00010\t\u0012\b\u0010#\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b6\u00107J\u001a\u0010\u0004\u001a\u00020\u00032\b\u0010\u0002\u001a\u0004\u0018\u00010\u0001H\u0096\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u0012\u0010\n\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\f\u001a\u00020\tHÆ\u0003¢\u0006\u0004\b\f\u0010\u000bJ\u0012\u0010\r\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0004\b\r\u0010\u000bJ\u0010\u0010\u000e\u001a\u00020\u0006HÆ\u0003¢\u0006\u0004\b\u000e\u0010\bJ\u0010\u0010\u000f\u001a\u00020\u0006HÆ\u0003¢\u0006\u0004\b\u000f\u0010\bJ\u0010\u0010\u0010\u001a\u00020\u0006HÆ\u0003¢\u0006\u0004\b\u0010\u0010\bJ\u0012\u0010\u0011\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0004\b\u0011\u0010\u000bJ\u0012\u0010\u0012\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0004\b\u0012\u0010\u000bJ\u0010\u0010\u0013\u001a\u00020\u0006HÆ\u0003¢\u0006\u0004\b\u0013\u0010\bJ\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0004\b\u0014\u0010\u0015J\u0012\u0010\u0016\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0004\b\u0016\u0010\u000bJ\u0012\u0010\u0017\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0004\b\u0017\u0010\u0015J\u0096\u0001\u0010$\u001a\u00020��2\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\t2\b\b\u0002\u0010\u0019\u001a\u00020\t2\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\t2\b\b\u0002\u0010\u001b\u001a\u00020\u00062\b\b\u0002\u0010\u001c\u001a\u00020\u00062\b\b\u0002\u0010\u001d\u001a\u00020\u00062\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\t2\b\b\u0002\u0010 \u001a\u00020\u00062\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u0006HÆ\u0001¢\u0006\u0004\b$\u0010%J\u0010\u0010&\u001a\u00020\tHÖ\u0001¢\u0006\u0004\b&\u0010\u000bR\u001b\u0010\u001f\u001a\u0004\u0018\u00010\t8\u0006@\u0006¢\u0006\f\n\u0004\b\u001f\u0010'\u001a\u0004\b(\u0010\u000bR\u0019\u0010\u001d\u001a\u00020\u00068\u0006@\u0006¢\u0006\f\n\u0004\b\u001d\u0010)\u001a\u0004\b*\u0010\bR\u0019\u0010\u001b\u001a\u00020\u00068\u0006@\u0006¢\u0006\f\n\u0004\b\u001b\u0010)\u001a\u0004\b+\u0010\bR\u001b\u0010\u001a\u001a\u0004\u0018\u00010\t8\u0006@\u0006¢\u0006\f\n\u0004\b\u001a\u0010'\u001a\u0004\b,\u0010\u000bR\u001b\u0010!\u001a\u0004\u0018\u00010\u00068\u0006@\u0006¢\u0006\f\n\u0004\b!\u0010-\u001a\u0004\b.\u0010\u0015R\u001b\u0010#\u001a\u0004\u0018\u00010\u00068\u0006@\u0006¢\u0006\f\n\u0004\b#\u0010-\u001a\u0004\b/\u0010\u0015R\u001b\u0010\u001e\u001a\u0004\u0018\u00010\t8\u0006@\u0006¢\u0006\f\n\u0004\b\u001e\u0010'\u001a\u0004\b0\u0010\u000bR\u0019\u0010\u0019\u001a\u00020\t8\u0006@\u0006¢\u0006\f\n\u0004\b\u0019\u0010'\u001a\u0004\b1\u0010\u000bR\u001b\u0010\"\u001a\u0004\u0018\u00010\t8\u0006@\u0006¢\u0006\f\n\u0004\b\"\u0010'\u001a\u0004\b2\u0010\u000bR\u001b\u0010\u0018\u001a\u0004\u0018\u00010\t8\u0006@\u0006¢\u0006\f\n\u0004\b\u0018\u0010'\u001a\u0004\b3\u0010\u000bR\u0019\u0010 \u001a\u00020\u00068\u0006@\u0006¢\u0006\f\n\u0004\b \u0010)\u001a\u0004\b4\u0010\bR\u0019\u0010\u001c\u001a\u00020\u00068\u0006@\u0006¢\u0006\f\n\u0004\b\u001c\u0010)\u001a\u0004\b5\u0010\b¨\u00068"}, d2 = {"Lcom/truecaller/backup/FilterBackupItem;", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "", "component1", "()Ljava/lang/String;", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "()Ljava/lang/Integer;", "component11", "component12", "serverId", "value", "label", "rule", "wildcardType", "syncState", "trackingType", "trackingSource", "entityType", "categoryId", "historyEventId", "spamVersion", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)Lcom/truecaller/backup/FilterBackupItem;", "toString", "Ljava/lang/String;", "getTrackingSource", "I", "getSyncState", "getRule", "getLabel", "Ljava/lang/Integer;", "getCategoryId", "getSpamVersion", "getTrackingType", "getValue", "getHistoryEventId", "getServerId", "getEntityType", "getWildcardType", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)V", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes5-dex2jar.jar:com/truecaller/backup/FilterBackupItem.class */
public final class FilterBackupItem {
    private final Integer categoryId;
    private final int entityType;
    private final String historyEventId;
    private final String label;
    private final int rule;
    private final String serverId;
    private final Integer spamVersion;
    private final int syncState;
    private final String trackingSource;
    private final String trackingType;
    private final String value;
    private final int wildcardType;

    public FilterBackupItem(String str, String str2, String str3, int i, int i2, int i3, String str4, String str5, int i4, Integer num, String str6, Integer num2) {
        l.e(str2, "value");
        this.serverId = str;
        this.value = str2;
        this.label = str3;
        this.rule = i;
        this.wildcardType = i2;
        this.syncState = i3;
        this.trackingType = str4;
        this.trackingSource = str5;
        this.entityType = i4;
        this.categoryId = num;
        this.historyEventId = str6;
        this.spamVersion = num2;
    }

    public /* synthetic */ FilterBackupItem(String str, String str2, String str3, int i, int i2, int i3, String str4, String str5, int i4, Integer num, String str6, Integer num2, int i5, f fVar) {
        this(str, str2, str3, i, i2, i3, str4, str5, (i5 & 256) != 0 ? FiltersContract.Filters.EntityType.UNKNOWN.value : i4, num, str6, num2);
    }

    public static /* synthetic */ FilterBackupItem copy$default(FilterBackupItem filterBackupItem, String str, String str2, String str3, int i, int i2, int i3, String str4, String str5, int i4, Integer num, String str6, Integer num2, int i5, Object obj) {
        if ((i5 & 1) != 0) {
            str = filterBackupItem.serverId;
        }
        if ((i5 & 2) != 0) {
            str2 = filterBackupItem.value;
        }
        if ((i5 & 4) != 0) {
            str3 = filterBackupItem.label;
        }
        if ((i5 & 8) != 0) {
            i = filterBackupItem.rule;
        }
        if ((i5 & 16) != 0) {
            i2 = filterBackupItem.wildcardType;
        }
        if ((i5 & 32) != 0) {
            i3 = filterBackupItem.syncState;
        }
        if ((i5 & 64) != 0) {
            str4 = filterBackupItem.trackingType;
        }
        if ((i5 & 128) != 0) {
            str5 = filterBackupItem.trackingSource;
        }
        if ((i5 & 256) != 0) {
            i4 = filterBackupItem.entityType;
        }
        if ((i5 & 512) != 0) {
            num = filterBackupItem.categoryId;
        }
        if ((i5 & 1024) != 0) {
            str6 = filterBackupItem.historyEventId;
        }
        if ((i5 & 2048) != 0) {
            num2 = filterBackupItem.spamVersion;
        }
        return filterBackupItem.copy(str, str2, str3, i, i2, i3, str4, str5, i4, num, str6, num2);
    }

    public final String component1() {
        return this.serverId;
    }

    public final Integer component10() {
        return this.categoryId;
    }

    public final String component11() {
        return this.historyEventId;
    }

    public final Integer component12() {
        return this.spamVersion;
    }

    public final String component2() {
        return this.value;
    }

    public final String component3() {
        return this.label;
    }

    public final int component4() {
        return this.rule;
    }

    public final int component5() {
        return this.wildcardType;
    }

    public final int component6() {
        return this.syncState;
    }

    public final String component7() {
        return this.trackingType;
    }

    public final String component8() {
        return this.trackingSource;
    }

    public final int component9() {
        return this.entityType;
    }

    public final FilterBackupItem copy(String str, String str2, String str3, int i, int i2, int i3, String str4, String str5, int i4, Integer num, String str6, Integer num2) {
        l.e(str2, "value");
        return new FilterBackupItem(str, str2, str3, i, i2, i3, str4, str5, i4, num, str6, num2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!l.a(FilterBackupItem.class, obj != null ? obj.getClass() : null)) {
            return false;
        }
        Objects.requireNonNull(obj, "null cannot be cast to non-null type com.truecaller.backup.FilterBackupItem");
        FilterBackupItem filterBackupItem = (FilterBackupItem) obj;
        return !(l.a(this.value, filterBackupItem.value) ^ true) && this.rule == filterBackupItem.rule && this.wildcardType == filterBackupItem.wildcardType;
    }

    public final Integer getCategoryId() {
        return this.categoryId;
    }

    public final int getEntityType() {
        return this.entityType;
    }

    public final String getHistoryEventId() {
        return this.historyEventId;
    }

    public final String getLabel() {
        return this.label;
    }

    public final int getRule() {
        return this.rule;
    }

    public final String getServerId() {
        return this.serverId;
    }

    public final Integer getSpamVersion() {
        return this.spamVersion;
    }

    public final int getSyncState() {
        return this.syncState;
    }

    public final String getTrackingSource() {
        return this.trackingSource;
    }

    public final String getTrackingType() {
        return this.trackingType;
    }

    public final String getValue() {
        return this.value;
    }

    public final int getWildcardType() {
        return this.wildcardType;
    }

    public int hashCode() {
        return (((this.value.hashCode() * 31) + this.rule) * 31) + this.wildcardType;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("FilterBackupItem(serverId=");
        m8728C.append(this.serverId);
        m8728C.append(", value=");
        m8728C.append(this.value);
        m8728C.append(", label=");
        m8728C.append(this.label);
        m8728C.append(", rule=");
        m8728C.append(this.rule);
        m8728C.append(", wildcardType=");
        m8728C.append(this.wildcardType);
        m8728C.append(", syncState=");
        m8728C.append(this.syncState);
        m8728C.append(", trackingType=");
        m8728C.append(this.trackingType);
        m8728C.append(", trackingSource=");
        m8728C.append(this.trackingSource);
        m8728C.append(", entityType=");
        m8728C.append(this.entityType);
        m8728C.append(", categoryId=");
        m8728C.append(this.categoryId);
        m8728C.append(", historyEventId=");
        m8728C.append(this.historyEventId);
        m8728C.append(", spamVersion=");
        return C22128a.m8689L2(m8728C, this.spamVersion, ")");
    }
}
