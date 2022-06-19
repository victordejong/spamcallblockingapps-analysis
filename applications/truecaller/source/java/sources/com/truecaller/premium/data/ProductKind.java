package com.truecaller.premium.data;

import kotlin.Metadata;
import s1.f0.r;
import s1.z.c.f;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0016\b\u0086\u0001\u0018�� \u000e2\b\u0012\u0004\u0012\u00020��0\u0001:\u0001\u000fB\u0019\b\u0002\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\f\u0010\rR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0019\u0010\b\u001a\u00020\u00078\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001c¨\u0006\u001d"}, d2 = {"Lcom/truecaller/premium/data/ProductKind;", "", "", "rank", "I", "getRank", "()I", "", "kind", "Ljava/lang/String;", "getKind", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;ILjava/lang/String;I)V", "Companion", "a", "SUBSCRIPTION_BASIC_MONTHLY", "SUBSCRIPTION_MONTHLY", "SUBSCRIPTION_QUARTERLY", "SUBSCRIPTION_HALFYEARLY", "SUBSCRIPTION_YEARLY", "SUBSCRIPTION_WELCOME_OFFER_YEARLY", "SUBSCRIPTION_GOLD", "CONSUMABLE_YEARLY", "CONSUMABLE_GOLD_YEARLY", "CONSUMABLE_MONTHLY", "CONSUMABLE_QUARTERLY", "CONSUMABLE_HALFYEARLY", "NONE", "premium_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes12-dex2jar.jar:com/truecaller/premium/data/ProductKind.class */
public enum ProductKind {
    SUBSCRIPTION_BASIC_MONTHLY("subsbasicmonthly", 0),
    SUBSCRIPTION_MONTHLY("subsmonthly", 1),
    SUBSCRIPTION_QUARTERLY("subsquarterly", 2),
    SUBSCRIPTION_HALFYEARLY("subshalfyearly", 3),
    SUBSCRIPTION_YEARLY("subsyearly", 4),
    SUBSCRIPTION_WELCOME_OFFER_YEARLY("subswelcomeyearly", 5),
    SUBSCRIPTION_GOLD("goldyearly", 6),
    CONSUMABLE_YEARLY("consumableyearly", 7),
    CONSUMABLE_GOLD_YEARLY("consumablegoldyearly", 8),
    CONSUMABLE_MONTHLY("consumablemonthly", 10),
    CONSUMABLE_QUARTERLY("consumablequarterly", 11),
    CONSUMABLE_HALFYEARLY("consumablehalfyearly", 12),
    NONE("none", 9);
    
    public static final C4341a Companion = new C4341a(null);
    private final String kind;
    private final int rank;

    /* renamed from: com.truecaller.premium.data.ProductKind$a */
    /* loaded from: classes12-dex2jar.jar:com/truecaller/premium/data/ProductKind$a.class */
    public static final class C4341a {
        public C4341a(f fVar) {
        }

        /* renamed from: a */
        public final ProductKind m34822a(String str) {
            ProductKind productKind;
            ProductKind[] values = ProductKind.values();
            int i = 0;
            while (true) {
                if (i >= 13) {
                    productKind = null;
                    break;
                }
                ProductKind productKind2 = values[i];
                if (r.n(productKind2.getKind(), str, true)) {
                    productKind = productKind2;
                    break;
                }
                i++;
            }
            if (productKind == null) {
                productKind = ProductKind.NONE;
            }
            return productKind;
        }
    }

    ProductKind(String str, int i) {
        this.kind = str;
        this.rank = i;
    }

    public static final ProductKind fromString(String str) {
        return Companion.m34822a(str);
    }

    public final String getKind() {
        return this.kind;
    }

    public final int getRank() {
        return this.rank;
    }
}
