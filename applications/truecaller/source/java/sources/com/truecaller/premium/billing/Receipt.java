package com.truecaller.premium.billing;

import com.huawei.hms.push.constant.RemoteMessageConst;
import java.util.List;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* loaded from: classes12-dex2jar.jar:com/truecaller/premium/billing/Receipt.class */
public final class Receipt {

    /* renamed from: a */
    public final List<String> f14234a;

    /* renamed from: b */
    public final String f14235b;

    /* renamed from: c */
    public final String f14236c;

    /* renamed from: d */
    public final long f14237d;

    /* renamed from: e */
    public final String f14238e;

    /* renamed from: f */
    public final boolean f14239f;

    /* renamed from: g */
    public final State f14240g;

    /* renamed from: h */
    public final String f14241h;

    /* renamed from: i */
    public final String f14242i;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/truecaller/premium/billing/Receipt$State;", "", "<init>", "(Ljava/lang/String;I)V", "PENDING", "PURCHASED", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes12-dex2jar.jar:com/truecaller/premium/billing/Receipt$State.class */
    public enum State {
        PENDING,
        PURCHASED
    }

    public Receipt(List<String> list, String str, String str2, long j, String str3, boolean z, State state, String str4, String str5) {
        l.e(list, "skus");
        l.e(str, RemoteMessageConst.DATA);
        l.e(str2, "signature");
        l.e(str3, "purchaseToken");
        l.e(state, "state");
        l.e(str4, "orderId");
        this.f14234a = list;
        this.f14235b = str;
        this.f14236c = str2;
        this.f14237d = j;
        this.f14238e = str3;
        this.f14239f = z;
        this.f14240g = state;
        this.f14241h = str4;
        this.f14242i = str5;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof Receipt)) {
                return false;
            }
            Receipt receipt = (Receipt) obj;
            return l.a(this.f14234a, receipt.f14234a) && l.a(this.f14235b, receipt.f14235b) && l.a(this.f14236c, receipt.f14236c) && this.f14237d == receipt.f14237d && l.a(this.f14238e, receipt.f14238e) && this.f14239f == receipt.f14239f && l.a(this.f14240g, receipt.f14240g) && l.a(this.f14241h, receipt.f14241h) && l.a(this.f14242i, receipt.f14242i);
        }
        return true;
    }

    public int hashCode() {
        List<String> list = this.f14234a;
        int i = 0;
        int hashCode = list != null ? list.hashCode() : 0;
        String str = this.f14235b;
        int hashCode2 = str != null ? str.hashCode() : 0;
        String str2 = this.f14236c;
        int hashCode3 = str2 != null ? str2.hashCode() : 0;
        int m34274a = C4876d.m34274a(this.f14237d);
        String str3 = this.f14238e;
        int hashCode4 = str3 != null ? str3.hashCode() : 0;
        boolean z = this.f14239f;
        int i2 = z ? 1 : 0;
        if (z) {
            i2 = 1;
        }
        State state = this.f14240g;
        int hashCode5 = state != null ? state.hashCode() : 0;
        String str4 = this.f14241h;
        int hashCode6 = str4 != null ? str4.hashCode() : 0;
        String str5 = this.f14242i;
        if (str5 != null) {
            i = str5.hashCode();
        }
        return (((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + m34274a) * 31) + hashCode4) * 31) + i2) * 31) + hashCode5) * 31) + hashCode6) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("Receipt(skus=");
        m8728C.append(this.f14234a);
        m8728C.append(", data=");
        m8728C.append(this.f14235b);
        m8728C.append(", signature=");
        m8728C.append(this.f14236c);
        m8728C.append(", purchaseTime=");
        m8728C.append(this.f14237d);
        m8728C.append(", purchaseToken=");
        m8728C.append(this.f14238e);
        m8728C.append(", acknowledged=");
        m8728C.append(this.f14239f);
        m8728C.append(", state=");
        m8728C.append(this.f14240g);
        m8728C.append(", orderId=");
        m8728C.append(this.f14241h);
        m8728C.append(", obfuscatedAccountId=");
        return C22128a.m8618h(m8728C, this.f14242i, ")");
    }
}
