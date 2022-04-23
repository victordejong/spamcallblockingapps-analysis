package gogolook.callgogolook2.realm.obj.iap;

import androidx.media2.exoplayer.external.extractor.ogg.OpusReader;
import io.realm.AbstractC10918x8295ff29;
import io.realm.RealmObject;
import io.realm.annotations.PrimaryKey;
import io.realm.internal.RealmObjectProxy;
import kotlin.Metadata;
import p459j.p460a.p576w.p578o.C13801h;
import p459j.p460a.p582w0.C14326z2;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n��\n\u0002\u0010\t\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b.\b\u0016\u0018�� ?2\u00020\u0001:\u0001?B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u0089\u0001\b\u0007\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\u0006\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u000f\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u000f\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u000f\u0012\b\b\u0002\u0010\u0015\u001a\u00020\u000f¢\u0006\u0002\u0010\u0016J\u0010\u0010<\u001a\u00020\u00062\u0006\u0010=\u001a\u00020\u000fH\u0002J\b\u0010>\u001a\u00020\u0006H\u0016R\u001c\u0010\b\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001a\u0010\u0015\u001a\u00020\u000fX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u001a\u0010\t\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001f\u0010\u0018\"\u0004\b \u0010\u001aR\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b!\u0010\u0018\"\u0004\b\"\u0010\u001aR\u001a\u0010\u0010\u001a\u00020\u000fX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b#\u0010\u001c\"\u0004\b$\u0010\u001eR\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b%\u0010\u0018\"\u0004\b&\u0010\u001aR\u001e\u0010\u0005\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n��\u001a\u0004\b'\u0010\u0018\"\u0004\b(\u0010\u001aR\u0011\u0010)\u001a\u00020\u00068F¢\u0006\u0006\u001a\u0004\b*\u0010\u0018R\u001a\u0010\u000e\u001a\u00020\u000fX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b+\u0010\u001c\"\u0004\b,\u0010\u001eR\u001a\u0010\u0014\u001a\u00020\u000fX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b-\u0010\u001c\"\u0004\b.\u0010\u001eR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b/\u00100\"\u0004\b1\u00102R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b3\u00104\"\u0004\b5\u00106R\u001e\u0010\f\u001a\u0004\u0018\u00010\rX\u0086\u000e¢\u0006\u0010\n\u0002\u0010;\u001a\u0004\b7\u00108\"\u0004\b9\u0010:¨\u0006@"}, m815d2 = {"Lgogolook/callgogolook2/realm/obj/iap/PlanProductRealmObject;", "Lio/realm/RealmObject;", "product", "Lgogolook/callgogolook2/iap/model/Product;", "(Lgogolook/callgogolook2/iap/model/Product;)V", "productId", "", "name", "desc", PlanProductRealmObject.MARKET, PlanProductRealmObject.PROMOTION, "", PlanProductRealmObject.STOP_SALE_TIME, "", "productType", "", PlanProductRealmObject.OFFER_TYPE, PlanProductRealmObject.SKU_DETAILS, "Lgogolook/callgogolook2/realm/obj/iap/SkuDetailsRealmObject;", "period", PlanProductRealmObject.PROMO_TYPE, PlanProductRealmObject.DISCOUNT, "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Long;IILgogolook/callgogolook2/realm/obj/iap/SkuDetailsRealmObject;Ljava/lang/String;II)V", "getDesc", "()Ljava/lang/String;", "setDesc", "(Ljava/lang/String;)V", "getDiscount", "()I", "setDiscount", "(I)V", "getMarket", "setMarket", "getName", "setName", "getOfferType", "setOfferType", "getPeriod", "setPeriod", "getProductId", "setProductId", "productPeriodType", "getProductPeriodType", "getProductType", "setProductType", "getPromoType", "setPromoType", "getPromotion", "()Z", "setPromotion", "(Z)V", "getSkuDetails", "()Lgogolook/callgogolook2/realm/obj/iap/SkuDetailsRealmObject;", "setSkuDetails", "(Lgogolook/callgogolook2/realm/obj/iap/SkuDetailsRealmObject;)V", "getStopSaleTime", "()Ljava/lang/Long;", "setStopSaleTime", "(Ljava/lang/Long;)V", "Ljava/lang/Long;", "checkPeriodType", "monthMatch", "toString", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/realm/obj/iap/PlanProductRealmObject.class */
public class PlanProductRealmObject extends RealmObject implements AbstractC10918x8295ff29 {
    public static final C5073a Companion = new C5073a(null);
    public static final String DESC = "desc";
    public static final String DISCOUNT = "discount";
    public static final String MARKET = "market";
    public static final String NAME = "name";
    public static final String OFFER_TYPE = "offerType";
    public static final String PERIOD = "period";
    public static final String PRODUCT_ID = "productId";
    public static final String PRODUCT_TYPE = "productType";
    public static final String PRODUCT_TYPE_DEFAULT_BIANNUAL = "ad_free_biannual";
    public static final String PRODUCT_TYPE_DEFAULT_M = "ad_free_m";
    public static final String PRODUCT_TYPE_DEFAULT_Y = "ad_free_y";
    public static final String PROMOTION = "promotion";
    public static final String PROMO_TYPE = "promoType";
    public static final int PROMO_TYPE_MARKETING = 1;
    public static final int PROMO_TYPE_REGULAR = 0;
    public static final int PROMO_TYPE_REPORTED = 2;
    public static final int PROMO_TYPE_WINBACK = 3;
    public static final int PROMO_TYPE_WINBACK2 = 4;
    public static final String SKU_DETAILS = "skuDetails";
    public static final String STOP_SALE_TIME = "stopSaleTime";
    public String desc;
    public int discount;
    public String market;
    public String name;
    public int offerType;
    public String period;
    @PrimaryKey
    public String productId;
    public int productType;
    public int promoType;
    public boolean promotion;
    public SkuDetailsRealmObject skuDetails;
    public Long stopSaleTime;

    /* renamed from: gogolook.callgogolook2.realm.obj.iap.PlanProductRealmObject$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/realm/obj/iap/PlanProductRealmObject$a.class */
    public static final class C5073a {
        public C5073a() {
        }

        public /* synthetic */ C5073a(C15145g gVar) {
            this();
        }
    }

    public PlanProductRealmObject() {
        this(null, null, null, null, false, null, 0, 0, null, null, 0, 0, 4095, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public PlanProductRealmObject(C13801h hVar) {
        this(hVar.m3416g(), hVar.m3419d(), hVar.m3422a(), hVar.m3420c(), hVar.m3413j(), Long.valueOf(hVar.m3411l()), hVar.m3415h(), hVar.m3418e(), null, hVar.m3417f(), hVar.m3414i(), hVar.m3421b());
        C15149k.m377b(hVar, "product");
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public PlanProductRealmObject(String str) {
        this(str, null, null, null, false, null, 0, 0, null, null, 0, 0, 4094, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public PlanProductRealmObject(String str, String str2) {
        this(str, str2, null, null, false, null, 0, 0, null, null, 0, 0, 4092, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public PlanProductRealmObject(String str, String str2, String str3) {
        this(str, str2, str3, null, false, null, 0, 0, null, null, 0, 0, 4088, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public PlanProductRealmObject(String str, String str2, String str3, String str4) {
        this(str, str2, str3, str4, false, null, 0, 0, null, null, 0, 0, 4080, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public PlanProductRealmObject(String str, String str2, String str3, String str4, boolean z) {
        this(str, str2, str3, str4, z, null, 0, 0, null, null, 0, 0, 4064, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public PlanProductRealmObject(String str, String str2, String str3, String str4, boolean z, Long l) {
        this(str, str2, str3, str4, z, l, 0, 0, null, null, 0, 0, 4032, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public PlanProductRealmObject(String str, String str2, String str3, String str4, boolean z, Long l, int i) {
        this(str, str2, str3, str4, z, l, i, 0, null, null, 0, 0, 3968, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public PlanProductRealmObject(String str, String str2, String str3, String str4, boolean z, Long l, int i, int i2) {
        this(str, str2, str3, str4, z, l, i, i2, null, null, 0, 0, OpusReader.DEFAULT_SEEK_PRE_ROLL_SAMPLES, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public PlanProductRealmObject(String str, String str2, String str3, String str4, boolean z, Long l, int i, int i2, SkuDetailsRealmObject skuDetailsRealmObject) {
        this(str, str2, str3, str4, z, l, i, i2, skuDetailsRealmObject, null, 0, 0, 3584, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public PlanProductRealmObject(String str, String str2, String str3, String str4, boolean z, Long l, int i, int i2, SkuDetailsRealmObject skuDetailsRealmObject, String str5) {
        this(str, str2, str3, str4, z, l, i, i2, skuDetailsRealmObject, str5, 0, 0, 3072, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public PlanProductRealmObject(String str, String str2, String str3, String str4, boolean z, Long l, int i, int i2, SkuDetailsRealmObject skuDetailsRealmObject, String str5, int i3) {
        this(str, str2, str3, str4, z, l, i, i2, skuDetailsRealmObject, str5, i3, 0, 2048, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public PlanProductRealmObject(String str, String str2, String str3, String str4, boolean z, Long l, int i, int i2, SkuDetailsRealmObject skuDetailsRealmObject, String str5, int i3, int i4) {
        C15149k.m377b(str, "productId");
        C15149k.m377b(str4, MARKET);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
        realmSet$productId(str);
        realmSet$name(str2);
        realmSet$desc(str3);
        realmSet$market(str4);
        realmSet$promotion(z);
        realmSet$stopSaleTime(l);
        realmSet$productType(i);
        realmSet$offerType(i2);
        realmSet$skuDetails(skuDetailsRealmObject);
        realmSet$period(str5);
        realmSet$promoType(i3);
        realmSet$discount(i4);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ PlanProductRealmObject(java.lang.String r15, java.lang.String r16, java.lang.String r17, java.lang.String r18, boolean r19, java.lang.Long r20, int r21, int r22, gogolook.callgogolook2.realm.obj.iap.SkuDetailsRealmObject r23, java.lang.String r24, int r25, int r26, int r27, p626l.p641z.p643d.C15145g r28) {
        /*
            Method dump skipped, instructions count: 224
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gogolook.callgogolook2.realm.obj.iap.PlanProductRealmObject.<init>(java.lang.String, java.lang.String, java.lang.String, java.lang.String, boolean, java.lang.Long, int, int, gogolook.callgogolook2.realm.obj.iap.SkuDetailsRealmObject, java.lang.String, int, int, int, l.z.d.g):void");
    }

    private final String checkPeriodType(int i) {
        return i != 1 ? i != 6 ? "ad_free_y" : "ad_free_biannual" : "ad_free_m";
    }

    public final String getDesc() {
        return realmGet$desc();
    }

    public final int getDiscount() {
        return realmGet$discount();
    }

    public final String getMarket() {
        return realmGet$market();
    }

    public final String getName() {
        return realmGet$name();
    }

    public final int getOfferType() {
        return realmGet$offerType();
    }

    public final String getPeriod() {
        return realmGet$period();
    }

    public final String getProductId() {
        return realmGet$productId();
    }

    public final String getProductPeriodType() {
        String subscriptionPeriod;
        SkuDetailsRealmObject realmGet$skuDetails = realmGet$skuDetails();
        return (realmGet$skuDetails == null || (subscriptionPeriod = realmGet$skuDetails.getSubscriptionPeriod()) == null) ? "ad_free_y" : checkPeriodType(C14326z2.m1569a(subscriptionPeriod));
    }

    public final int getProductType() {
        return realmGet$productType();
    }

    public final int getPromoType() {
        return realmGet$promoType();
    }

    public final boolean getPromotion() {
        return realmGet$promotion();
    }

    public final SkuDetailsRealmObject getSkuDetails() {
        return realmGet$skuDetails();
    }

    public final Long getStopSaleTime() {
        return realmGet$stopSaleTime();
    }

    @Override // io.realm.AbstractC10918x8295ff29
    public String realmGet$desc() {
        return this.desc;
    }

    @Override // io.realm.AbstractC10918x8295ff29
    public int realmGet$discount() {
        return this.discount;
    }

    @Override // io.realm.AbstractC10918x8295ff29
    public String realmGet$market() {
        return this.market;
    }

    @Override // io.realm.AbstractC10918x8295ff29
    public String realmGet$name() {
        return this.name;
    }

    @Override // io.realm.AbstractC10918x8295ff29
    public int realmGet$offerType() {
        return this.offerType;
    }

    @Override // io.realm.AbstractC10918x8295ff29
    public String realmGet$period() {
        return this.period;
    }

    @Override // io.realm.AbstractC10918x8295ff29
    public String realmGet$productId() {
        return this.productId;
    }

    @Override // io.realm.AbstractC10918x8295ff29
    public int realmGet$productType() {
        return this.productType;
    }

    @Override // io.realm.AbstractC10918x8295ff29
    public int realmGet$promoType() {
        return this.promoType;
    }

    @Override // io.realm.AbstractC10918x8295ff29
    public boolean realmGet$promotion() {
        return this.promotion;
    }

    @Override // io.realm.AbstractC10918x8295ff29
    public SkuDetailsRealmObject realmGet$skuDetails() {
        return this.skuDetails;
    }

    @Override // io.realm.AbstractC10918x8295ff29
    public Long realmGet$stopSaleTime() {
        return this.stopSaleTime;
    }

    @Override // io.realm.AbstractC10918x8295ff29
    public void realmSet$desc(String str) {
        this.desc = str;
    }

    @Override // io.realm.AbstractC10918x8295ff29
    public void realmSet$discount(int i) {
        this.discount = i;
    }

    @Override // io.realm.AbstractC10918x8295ff29
    public void realmSet$market(String str) {
        this.market = str;
    }

    @Override // io.realm.AbstractC10918x8295ff29
    public void realmSet$name(String str) {
        this.name = str;
    }

    @Override // io.realm.AbstractC10918x8295ff29
    public void realmSet$offerType(int i) {
        this.offerType = i;
    }

    @Override // io.realm.AbstractC10918x8295ff29
    public void realmSet$period(String str) {
        this.period = str;
    }

    @Override // io.realm.AbstractC10918x8295ff29
    public void realmSet$productId(String str) {
        this.productId = str;
    }

    @Override // io.realm.AbstractC10918x8295ff29
    public void realmSet$productType(int i) {
        this.productType = i;
    }

    @Override // io.realm.AbstractC10918x8295ff29
    public void realmSet$promoType(int i) {
        this.promoType = i;
    }

    @Override // io.realm.AbstractC10918x8295ff29
    public void realmSet$promotion(boolean z) {
        this.promotion = z;
    }

    @Override // io.realm.AbstractC10918x8295ff29
    public void realmSet$skuDetails(SkuDetailsRealmObject skuDetailsRealmObject) {
        this.skuDetails = skuDetailsRealmObject;
    }

    @Override // io.realm.AbstractC10918x8295ff29
    public void realmSet$stopSaleTime(Long l) {
        this.stopSaleTime = l;
    }

    public final void setDesc(String str) {
        realmSet$desc(str);
    }

    public final void setDiscount(int i) {
        realmSet$discount(i);
    }

    public final void setMarket(String str) {
        C15149k.m377b(str, "<set-?>");
        realmSet$market(str);
    }

    public final void setName(String str) {
        realmSet$name(str);
    }

    public final void setOfferType(int i) {
        realmSet$offerType(i);
    }

    public final void setPeriod(String str) {
        realmSet$period(str);
    }

    public final void setProductId(String str) {
        C15149k.m377b(str, "<set-?>");
        realmSet$productId(str);
    }

    public final void setProductType(int i) {
        realmSet$productType(i);
    }

    public final void setPromoType(int i) {
        realmSet$promoType(i);
    }

    public final void setPromotion(boolean z) {
        realmSet$promotion(z);
    }

    public final void setSkuDetails(SkuDetailsRealmObject skuDetailsRealmObject) {
        realmSet$skuDetails(skuDetailsRealmObject);
    }

    public final void setStopSaleTime(Long l) {
        realmSet$stopSaleTime(l);
    }

    public String toString() {
        return "[productId: " + realmGet$productId() + ", \nname: " + realmGet$name() + ", \ndesc: " + realmGet$desc() + ", \nmarket: " + realmGet$market() + ", \npromotion: " + realmGet$promotion() + ", \nstopSaleTime: " + realmGet$stopSaleTime() + ", \nproductType: " + realmGet$productType() + ", \nofferType: " + realmGet$offerType() + ", \nperiod: " + realmGet$period() + ", \npromoType: " + realmGet$promoType() + ", \ndiscount: " + realmGet$discount() + ", \nskuDetails: " + realmGet$skuDetails() + " ]";
    }
}
