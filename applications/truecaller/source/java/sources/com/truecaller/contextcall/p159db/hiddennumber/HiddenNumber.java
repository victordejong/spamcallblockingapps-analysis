package com.truecaller.contextcall.p159db.hiddennumber;

import androidx.annotation.Keep;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0081\b\u0018��2\u00020\u0001B\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u001a\u0010\u0006\u001a\u00020��2\b\b\u0002\u0010\u0005\u001a\u00020\u0002HÆ\u0001¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\b\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\b\u0010\u0004J\u0010\u0010\n\u001a\u00020\tHÖ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u001a\u0010\u000e\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0005\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0005\u0010\u0010\u001a\u0004\b\u0011\u0010\u0004¨\u0006\u0014"}, d2 = {"Lcom/truecaller/contextcall/db/hiddennumber/HiddenNumber;", "", "", "component1", "()Ljava/lang/String;", "number", "copy", "(Ljava/lang/String;)Lcom/truecaller/contextcall/db/hiddennumber/HiddenNumber;", "toString", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getNumber", "<init>", "(Ljava/lang/String;)V", "context-call_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* renamed from: com.truecaller.contextcall.db.hiddennumber.HiddenNumber */
/* loaded from: classes8-dex2jar.jar:com/truecaller/contextcall/db/hiddennumber/HiddenNumber.class */
public final class HiddenNumber {
    private final String number;

    public HiddenNumber(String str) {
        l.e(str, "number");
        this.number = str;
    }

    public static /* synthetic */ HiddenNumber copy$default(HiddenNumber hiddenNumber, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = hiddenNumber.number;
        }
        return hiddenNumber.copy(str);
    }

    public final String component1() {
        return this.number;
    }

    public final HiddenNumber copy(String str) {
        l.e(str, "number");
        return new HiddenNumber(str);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof HiddenNumber) && l.a(this.number, ((HiddenNumber) obj).number);
        }
        return true;
    }

    public final String getNumber() {
        return this.number;
    }

    public int hashCode() {
        String str = this.number;
        return str != null ? str.hashCode() : 0;
    }

    public String toString() {
        return C22128a.m8618h(C22128a.m8728C("HiddenNumber(number="), this.number, ")");
    }
}
