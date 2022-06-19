package com.truecaller.data.entity;

import androidx.annotation.Keep;
import com.mopub.mobileads.VastIconXmlManager;
import com.razorpay.AnalyticsConstants;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0014\n\u0002\u0010\u000b\n\u0002\b\u001f\b\u0087\b\u0018��2\u00020\u0001B[\u0012\u0006\u0010\u0013\u001a\u00020\u0005\u0012\u0006\u0010\u0014\u001a\u00020\u0002\u0012\u0006\u0010\u0015\u001a\u00020\u0005\u0012\u0006\u0010\u0016\u001a\u00020\u0005\u0012\u0006\u0010\u0017\u001a\u00020\u000b\u0012\b\b\u0002\u0010\u0018\u001a\u00020\u000b\u0012\b\b\u0002\u0010\u0019\u001a\u00020\u000b\u0012\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b=\u0010>J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\b\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\b\u0010\u0004J\u0010\u0010\t\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\t\u0010\u0007J\u0010\u0010\n\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\n\u0010\u0007J\u0010\u0010\f\u001a\u00020\u000bHÆ\u0003¢\u0006\u0004\b\f\u0010\rJ\u0010\u0010\u000e\u001a\u00020\u000bHÆ\u0003¢\u0006\u0004\b\u000e\u0010\rJ\u0010\u0010\u000f\u001a\u00020\u000bHÆ\u0003¢\u0006\u0004\b\u000f\u0010\rJ\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0010\u0010\u0004J\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u000bHÆ\u0003¢\u0006\u0004\b\u0011\u0010\u0012Jn\u0010\u001c\u001a\u00020��2\b\b\u0002\u0010\u0013\u001a\u00020\u00052\b\b\u0002\u0010\u0014\u001a\u00020\u00022\b\b\u0002\u0010\u0015\u001a\u00020\u00052\b\b\u0002\u0010\u0016\u001a\u00020\u00052\b\b\u0002\u0010\u0017\u001a\u00020\u000b2\b\b\u0002\u0010\u0018\u001a\u00020\u000b2\b\b\u0002\u0010\u0019\u001a\u00020\u000b2\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u000bHÆ\u0001¢\u0006\u0004\b\u001c\u0010\u001dJ\u0010\u0010\u001e\u001a\u00020\u000bHÖ\u0001¢\u0006\u0004\b\u001e\u0010\rJ\u001a\u0010!\u001a\u00020 2\b\u0010\u001f\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b!\u0010\"R$\u0010\u001a\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010#\u001a\u0004\b$\u0010\u0004\"\u0004\b%\u0010&R\"\u0010\u0019\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010'\u001a\u0004\b(\u0010\r\"\u0004\b)\u0010*R\"\u0010\u0014\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010#\u001a\u0004\b+\u0010\u0004\"\u0004\b,\u0010&R\"\u0010\u0016\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010-\u001a\u0004\b.\u0010\u0007\"\u0004\b/\u00100R\"\u0010\u0018\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010'\u001a\u0004\b1\u0010\r\"\u0004\b2\u0010*R\"\u0010\u0017\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010'\u001a\u0004\b3\u0010\r\"\u0004\b4\u0010*R$\u0010\u001b\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u00105\u001a\u0004\b6\u0010\u0012\"\u0004\b7\u00108R\"\u0010\u0013\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010-\u001a\u0004\b9\u0010\u0007\"\u0004\b:\u00100R\"\u0010\u0015\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010-\u001a\u0004\b;\u0010\u0007\"\u0004\b<\u00100¨\u0006?"}, d2 = {"Lcom/truecaller/data/entity/CallLogFlashItem;", "", "", "toString", "()Ljava/lang/String;", "", "component1", "()J", "component2", "component3", "component4", "", "component5", "()I", "component6", "component7", "component8", "component9", "()Ljava/lang/Integer;", "callLogId", "number", "timestamp", VastIconXmlManager.DURATION, "type", "action", "features", "componentName", "flag", "copy", "(JLjava/lang/String;JJIIILjava/lang/String;Ljava/lang/Integer;)Lcom/truecaller/data/entity/CallLogFlashItem;", "hashCode", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getComponentName", "setComponentName", "(Ljava/lang/String;)V", "I", "getFeatures", "setFeatures", "(I)V", "getNumber", "setNumber", "J", "getDuration", "setDuration", "(J)V", "getAction", "setAction", "getType", "setType", "Ljava/lang/Integer;", "getFlag", "setFlag", "(Ljava/lang/Integer;)V", "getCallLogId", "setCallLogId", "getTimestamp", "setTimestamp", "<init>", "(JLjava/lang/String;JJIIILjava/lang/String;Ljava/lang/Integer;)V", "data_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes8-dex2jar.jar:com/truecaller/data/entity/CallLogFlashItem.class */
public final class CallLogFlashItem {
    private int action;
    private long callLogId;
    private String componentName;
    private long duration;
    private int features;
    private transient Integer flag;
    private String number;
    private long timestamp;
    private int type;

    public CallLogFlashItem(long j, String str, long j2, long j3, int i, int i2, int i3, String str2, Integer num) {
        l.e(str, "number");
        this.callLogId = j;
        this.number = str;
        this.timestamp = j2;
        this.duration = j3;
        this.type = i;
        this.action = i2;
        this.features = i3;
        this.componentName = str2;
        this.flag = num;
    }

    public /* synthetic */ CallLogFlashItem(long j, String str, long j2, long j3, int i, int i2, int i3, String str2, Integer num, int i4, f fVar) {
        this(j, str, j2, j3, i, (i4 & 32) != 0 ? 0 : i2, (i4 & 64) != 0 ? 0 : i3, (i4 & 128) != 0 ? null : str2, (i4 & 256) != 0 ? 0 : num);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v31, types: [long] */
    /* JADX WARN: Type inference failed for: r0v33, types: [long] */
    /* JADX WARN: Type inference failed for: r0v37, types: [long] */
    /* JADX WARN: Type inference failed for: r14v0, types: [com.truecaller.data.entity.CallLogFlashItem] */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Type inference failed for: r18v1 */
    /* JADX WARN: Type inference failed for: r18v2 */
    /* JADX WARN: Type inference failed for: r18v3 */
    /* JADX WARN: Type inference failed for: r20v1 */
    /* JADX WARN: Type inference failed for: r20v2 */
    /* JADX WARN: Type inference failed for: r20v3 */
    public static /* synthetic */ CallLogFlashItem copy$default(CallLogFlashItem callLogFlashItem, long j, String str, long j2, long j3, int i, int i2, int i3, String str2, Integer num, int i4, Object obj) {
        ?? r15 = j;
        if ((i4 & 1) != 0) {
            r15 = ((CallLogFlashItem) callLogFlashItem).callLogId;
        }
        if ((i4 & 2) != 0) {
            str = ((CallLogFlashItem) callLogFlashItem).number;
        }
        ?? r18 = j2;
        if ((i4 & 4) != 0) {
            r18 = ((CallLogFlashItem) callLogFlashItem).timestamp;
        }
        ?? r20 = j3;
        if ((i4 & 8) != 0) {
            r20 = ((CallLogFlashItem) callLogFlashItem).duration;
        }
        if ((i4 & 16) != 0) {
            i = ((CallLogFlashItem) callLogFlashItem).type;
        }
        if ((i4 & 32) != 0) {
            i2 = ((CallLogFlashItem) callLogFlashItem).action;
        }
        if ((i4 & 64) != 0) {
            i3 = ((CallLogFlashItem) callLogFlashItem).features;
        }
        if ((i4 & 128) != 0) {
            str2 = ((CallLogFlashItem) callLogFlashItem).componentName;
        }
        if ((i4 & 256) != 0) {
            num = ((CallLogFlashItem) callLogFlashItem).flag;
        }
        return callLogFlashItem.copy(r15, str, r18, r20, i, i2, i3, str2, num);
    }

    public final long component1() {
        return this.callLogId;
    }

    public final String component2() {
        return this.number;
    }

    public final long component3() {
        return this.timestamp;
    }

    public final long component4() {
        return this.duration;
    }

    public final int component5() {
        return this.type;
    }

    public final int component6() {
        return this.action;
    }

    public final int component7() {
        return this.features;
    }

    public final String component8() {
        return this.componentName;
    }

    public final Integer component9() {
        return this.flag;
    }

    public final CallLogFlashItem copy(long j, String str, long j2, long j3, int i, int i2, int i3, String str2, Integer num) {
        l.e(str, "number");
        return new CallLogFlashItem(j, str, j2, j3, i, i2, i3, str2, num);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof CallLogFlashItem)) {
                return false;
            }
            CallLogFlashItem callLogFlashItem = (CallLogFlashItem) obj;
            return this.callLogId == callLogFlashItem.callLogId && l.a(this.number, callLogFlashItem.number) && this.timestamp == callLogFlashItem.timestamp && this.duration == callLogFlashItem.duration && this.type == callLogFlashItem.type && this.action == callLogFlashItem.action && this.features == callLogFlashItem.features && l.a(this.componentName, callLogFlashItem.componentName) && l.a(this.flag, callLogFlashItem.flag);
        }
        return true;
    }

    public final int getAction() {
        return this.action;
    }

    public final long getCallLogId() {
        return this.callLogId;
    }

    public final String getComponentName() {
        return this.componentName;
    }

    public final long getDuration() {
        return this.duration;
    }

    public final int getFeatures() {
        return this.features;
    }

    public final Integer getFlag() {
        return this.flag;
    }

    public final String getNumber() {
        return this.number;
    }

    public final long getTimestamp() {
        return this.timestamp;
    }

    public final int getType() {
        return this.type;
    }

    public int hashCode() {
        int m34274a = C4876d.m34274a(this.callLogId);
        String str = this.number;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        int m34274a2 = C4876d.m34274a(this.timestamp);
        int m34274a3 = C4876d.m34274a(this.duration);
        int i2 = this.type;
        int i3 = this.action;
        int i4 = this.features;
        String str2 = this.componentName;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        Integer num = this.flag;
        if (num != null) {
            i = num.hashCode();
        }
        return (((((((((((((((m34274a * 31) + hashCode) * 31) + m34274a2) * 31) + m34274a3) * 31) + i2) * 31) + i3) * 31) + i4) * 31) + hashCode2) * 31) + i;
    }

    public final void setAction(int i) {
        this.action = i;
    }

    public final void setCallLogId(long j) {
        this.callLogId = j;
    }

    public final void setComponentName(String str) {
        this.componentName = str;
    }

    public final void setDuration(long j) {
        this.duration = j;
    }

    public final void setFeatures(int i) {
        this.features = i;
    }

    public final void setFlag(Integer num) {
        this.flag = num;
    }

    public final void setNumber(String str) {
        l.e(str, "<set-?>");
        this.number = str;
    }

    public final void setTimestamp(long j) {
        this.timestamp = j;
    }

    public final void setType(int i) {
        this.type = i;
    }

    public String toString() {
        String str = this.number == null ? AnalyticsConstants.NULL : "<non-null raw number>";
        StringBuilder m8728C = C22128a.m8728C("{CallLogFlashItem:{callLogId=");
        m8728C.append(this.callLogId);
        m8728C.append(", number= ");
        m8728C.append(str);
        m8728C.append(", timestamp=");
        m8728C.append(this.timestamp);
        m8728C.append(", duration=");
        m8728C.append(this.duration);
        m8728C.append(", type=");
        m8728C.append(this.type);
        m8728C.append(", action=");
        m8728C.append(this.action);
        m8728C.append(", features=");
        m8728C.append(this.features);
        m8728C.append(", phoneAccountComponentName=");
        return C22128a.m8622g(m8728C, this.componentName, ' ', "}");
    }
}
