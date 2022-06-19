package com.truecaller.premium.data;

import kotlin.Metadata;
import s1.f0.r;
import s1.z.c.f;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\u000b\b\u0086\u0001\u0018�� \t2\b\u0012\u0004\u0012\u00020��0\u0001:\u0001\nB\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u000bj\u0002\b\f¨\u0006\r"}, d2 = {"Lcom/truecaller/premium/data/PremiumProductType;", "", "", "productType", "Ljava/lang/String;", "getProductType", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "Companion", "a", "IN_APP", "SUBSCRIPTION", "premium-data_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes12-dex2jar.jar:com/truecaller/premium/data/PremiumProductType.class */
public enum PremiumProductType {
    IN_APP("consumable"),
    SUBSCRIPTION("subscription");
    
    public static final C4340a Companion = new C4340a(null);
    private final String productType;

    /* renamed from: com.truecaller.premium.data.PremiumProductType$a */
    /* loaded from: classes12-dex2jar.jar:com/truecaller/premium/data/PremiumProductType$a.class */
    public static final class C4340a {
        public C4340a(f fVar) {
        }

        /* renamed from: a */
        public final PremiumProductType m34823a(String str) {
            PremiumProductType premiumProductType;
            PremiumProductType[] values = PremiumProductType.values();
            int i = 0;
            while (true) {
                if (i >= 2) {
                    premiumProductType = null;
                    break;
                }
                PremiumProductType premiumProductType2 = values[i];
                if (r.n(premiumProductType2.getProductType(), str, true)) {
                    premiumProductType = premiumProductType2;
                    break;
                }
                i++;
            }
            if (premiumProductType == null) {
                premiumProductType = PremiumProductType.SUBSCRIPTION;
            }
            return premiumProductType;
        }
    }

    PremiumProductType(String str) {
        this.productType = str;
    }

    public static final PremiumProductType fromString(String str) {
        return Companion.m34823a(str);
    }

    public final String getProductType() {
        return this.productType;
    }
}
