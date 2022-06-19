package com.truecaller.contextcall.p159db.reason.predefinedreasons;

import androidx.annotation.Keep;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u000b\b\u0081\b\u0018��2\u00020\u0001B'\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\u0006\u0010\f\u001a\u00020\u0006\u0012\u0006\u0010\r\u001a\u00020\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0005\u0010\u0004J\u0010\u0010\u0007\u001a\u00020\u0006HÆ\u0003¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\t\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\t\u0010\u0004J8\u0010\u000e\u001a\u00020��2\b\b\u0002\u0010\n\u001a\u00020\u00022\b\b\u0002\u0010\u000b\u001a\u00020\u00022\b\b\u0002\u0010\f\u001a\u00020\u00062\b\b\u0002\u0010\r\u001a\u00020\u0002HÆ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u0010\u001a\u00020\u0006HÖ\u0001¢\u0006\u0004\b\u0010\u0010\bJ\u0010\u0010\u0011\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0011\u0010\u0004J\u001a\u0010\u0014\u001a\u00020\u00132\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0014\u0010\u0015R\u001c\u0010\u000b\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u000b\u0010\u0016\u001a\u0004\b\u0017\u0010\u0004R\u001c\u0010\f\u001a\u00020\u00068\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\f\u0010\u0018\u001a\u0004\b\u0019\u0010\bR\u001c\u0010\r\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\r\u0010\u0016\u001a\u0004\b\u001a\u0010\u0004R\u001c\u0010\n\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\n\u0010\u0016\u001a\u0004\b\u001b\u0010\u0004¨\u0006\u001e"}, d2 = {"Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonEntity;", "", "", "component1", "()I", "component2", "", "component3", "()Ljava/lang/String;", "component4", "id", "index", "message", "type", "copy", "(IILjava/lang/String;I)Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonEntity;", "toString", "hashCode", "other", "", "equals", "(Ljava/lang/Object;)Z", "I", "getIndex", "Ljava/lang/String;", "getMessage", "getType", "getId", "<init>", "(IILjava/lang/String;I)V", "context-call_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* renamed from: com.truecaller.contextcall.db.reason.predefinedreasons.PredefinedCallReasonEntity */
/* loaded from: classes8-dex2jar.jar:com/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonEntity.class */
public final class PredefinedCallReasonEntity {

    /* renamed from: id */
    private final int f11429id;
    private final int index;
    private final String message;
    private final int type;

    public PredefinedCallReasonEntity(int i, int i2, String str, int i3) {
        l.e(str, "message");
        this.f11429id = i;
        this.index = i2;
        this.message = str;
        this.type = i3;
    }

    public static /* synthetic */ PredefinedCallReasonEntity copy$default(PredefinedCallReasonEntity predefinedCallReasonEntity, int i, int i2, String str, int i3, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            i = predefinedCallReasonEntity.f11429id;
        }
        if ((i4 & 2) != 0) {
            i2 = predefinedCallReasonEntity.index;
        }
        if ((i4 & 4) != 0) {
            str = predefinedCallReasonEntity.message;
        }
        if ((i4 & 8) != 0) {
            i3 = predefinedCallReasonEntity.type;
        }
        return predefinedCallReasonEntity.copy(i, i2, str, i3);
    }

    public final int component1() {
        return this.f11429id;
    }

    public final int component2() {
        return this.index;
    }

    public final String component3() {
        return this.message;
    }

    public final int component4() {
        return this.type;
    }

    public final PredefinedCallReasonEntity copy(int i, int i2, String str, int i3) {
        l.e(str, "message");
        return new PredefinedCallReasonEntity(i, i2, str, i3);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof PredefinedCallReasonEntity)) {
                return false;
            }
            PredefinedCallReasonEntity predefinedCallReasonEntity = (PredefinedCallReasonEntity) obj;
            return this.f11429id == predefinedCallReasonEntity.f11429id && this.index == predefinedCallReasonEntity.index && l.a(this.message, predefinedCallReasonEntity.message) && this.type == predefinedCallReasonEntity.type;
        }
        return true;
    }

    public final int getId() {
        return this.f11429id;
    }

    public final int getIndex() {
        return this.index;
    }

    public final String getMessage() {
        return this.message;
    }

    public final int getType() {
        return this.type;
    }

    public int hashCode() {
        int i = this.f11429id;
        int i2 = this.index;
        String str = this.message;
        return (((((i * 31) + i2) * 31) + (str != null ? str.hashCode() : 0)) * 31) + this.type;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("PredefinedCallReasonEntity(id=");
        m8728C.append(this.f11429id);
        m8728C.append(", index=");
        m8728C.append(this.index);
        m8728C.append(", message=");
        m8728C.append(this.message);
        m8728C.append(", type=");
        return C22128a.m8697J2(m8728C, this.type, ")");
    }
}
