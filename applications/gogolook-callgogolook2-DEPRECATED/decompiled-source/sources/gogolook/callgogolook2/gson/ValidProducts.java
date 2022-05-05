package gogolook.callgogolook2.gson;

import gogolook.callgogolook2.realm.obj.iap.IapPlanRealmObject;
import java.util.List;
import kotlin.Metadata;
import p081h.p203i.p384e.p385v.AbstractC10120c;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\b\u0018�� \u00172\u00020\u0001:\u0002\u0017\u0018B)\u0012\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0006J\u0011\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J-\u0010\u000f\u001a\u00020��2\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001R\"\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\"\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u000b\u0010\b\"\u0004\b\f\u0010\n¨\u0006\u0019"}, m815d2 = {"Lgogolook/callgogolook2/gson/ValidProducts;", "", IapPlanRealmObject.PRODUCTS, "", "Lgogolook/callgogolook2/gson/ValidProducts$ProductItem;", "promotions", "(Ljava/util/List;Ljava/util/List;)V", "getProducts", "()Ljava/util/List;", "setProducts", "(Ljava/util/List;)V", "getPromotions", "setPromotions", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "", "Companion", "ProductItem", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/gson/ValidProducts.class */
public final class ValidProducts {
    public static final Companion Companion = new Companion(null);
    public static final int STATUS_ACTIVE = 1;
    public static final int STATUS_TERMINATED = 0;
    public List<ProductItem> products;
    public List<ProductItem> promotions;

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u0004X\u0086D¢\u0006\b\n��\u001a\u0004\b\b\u0010\u0006¨\u0006\t"}, m815d2 = {"Lgogolook/callgogolook2/gson/ValidProducts$Companion;", "", "()V", "STATUS_ACTIVE", "", "getSTATUS_ACTIVE", "()I", "STATUS_TERMINATED", "getSTATUS_TERMINATED", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/gson/ValidProducts$Companion.class */
    public static final class Companion {
        public Companion() {
        }

        public /* synthetic */ Companion(C15145g gVar) {
            this();
        }
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018��2\u00020\u0001B+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0003¢\u0006\u0002\u0010\bJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J1\u0010\u0013\u001a\u00020��2\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0007\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n��\u001a\u0004\b\t\u0010\nR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\nR\u0016\u0010\u0006\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n��\u001a\u0004\b\f\u0010\nR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n��\u001a\u0004\b\r\u0010\u000e¨\u0006\u0019"}, m815d2 = {"Lgogolook/callgogolook2/gson/ValidProducts$ProductItem;", "", "productId", "", "status", "", "productType", "name", "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V", "getName", "()Ljava/lang/String;", "getProductId", "getProductType", "getStatus", "()I", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "toString", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/gson/ValidProducts$ProductItem.class */
    public static final class ProductItem {
        @AbstractC10120c("name")
        public final String name;
        @AbstractC10120c("product_id")
        public final String productId;
        @AbstractC10120c("product_type")
        public final String productType;
        @AbstractC10120c("status")
        public final int status;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ProductItem)) {
                return false;
            }
            ProductItem productItem = (ProductItem) obj;
            if (!C15149k.m384a((Object) this.productId, (Object) productItem.productId)) {
                return false;
            }
            return (this.status == productItem.status) && C15149k.m384a((Object) this.productType, (Object) productItem.productType) && C15149k.m384a((Object) this.name, (Object) productItem.name);
        }

        public int hashCode() {
            int hashCode;
            String str = this.productId;
            int i = 0;
            int hashCode2 = str != null ? str.hashCode() : 0;
            hashCode = Integer.valueOf(this.status).hashCode();
            String str2 = this.productType;
            int hashCode3 = str2 != null ? str2.hashCode() : 0;
            String str3 = this.name;
            if (str3 != null) {
                i = str3.hashCode();
            }
            return (((((hashCode2 * 31) + hashCode) * 31) + hashCode3) * 31) + i;
        }

        public String toString() {
            return "ProductItem(productId=" + this.productId + ", status=" + this.status + ", productType=" + this.productType + ", name=" + this.name + ")";
        }
    }

    public ValidProducts() {
        this(null, null, 3, null);
    }

    public ValidProducts(List<ProductItem> list, List<ProductItem> list2) {
        this.products = list;
        this.promotions = list2;
    }

    public /* synthetic */ ValidProducts(List list, List list2, int i, C15145g gVar) {
        this((i & 1) != 0 ? null : list, (i & 2) != 0 ? null : list2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ValidProducts)) {
            return false;
        }
        ValidProducts validProducts = (ValidProducts) obj;
        return C15149k.m384a(this.products, validProducts.products) && C15149k.m384a(this.promotions, validProducts.promotions);
    }

    public int hashCode() {
        List<ProductItem> list = this.products;
        int i = 0;
        int hashCode = list != null ? list.hashCode() : 0;
        List<ProductItem> list2 = this.promotions;
        if (list2 != null) {
            i = list2.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        return "ValidProducts(products=" + this.products + ", promotions=" + this.promotions + ")";
    }
}
