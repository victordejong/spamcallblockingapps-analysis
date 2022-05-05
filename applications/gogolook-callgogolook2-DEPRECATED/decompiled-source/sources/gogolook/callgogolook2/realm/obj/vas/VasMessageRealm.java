package gogolook.callgogolook2.realm.obj.vas;

import androidx.media2.exoplayer.external.extractor.ogg.OpusReader;
import gogolook.callgogolook2.gson.UserProfile;
import gogolook.callgogolook2.vas.util.SimpleVasInfoPack;
import io.realm.AbstractC10945xa8916503;
import io.realm.RealmObject;
import io.realm.annotations.PrimaryKey;
import io.realm.internal.RealmObjectProxy;
import kotlin.Metadata;
import p459j.p460a.p541n0.p542u.p545c.EnumC13225a;
import p459j.p460a.p604y0.p605c.p606c.C14492d;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n��\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0006\n\u0002\b$\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0016\u0018�� ;2\u00020\u0001:\u0001;B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u007f\b\u0007\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\b\u0012\b\b\u0002\u0010\n\u001a\u00020\b\u0012\b\b\u0002\u0010\u000b\u001a\u00020\f\u0012\b\b\u0002\u0010\r\u001a\u00020\f\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u000f\u001a\u00020\f\u0012\b\b\u0002\u0010\u0010\u001a\u00020\b\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0012\u0012\b\b\u0002\u0010\u0013\u001a\u00020\b\u0012\b\b\u0002\u0010\u0014\u001a\u00020\f¢\u0006\u0002\u0010\u0015J\u0006\u00106\u001a\u000207J\b\u00108\u001a\u000209H\u0002J\b\u0010:\u001a\u00020\fH\u0016R\u001a\u0010\n\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u001a\u0010\r\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u001a\u0010\u000b\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001e\u0010\u001b\"\u0004\b\u001f\u0010\u001dR\u001e\u0010\u0005\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n��\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u001a\u0010\u000f\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b$\u0010\u001b\"\u0004\b%\u0010\u001dR\u001a\u0010\u0014\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b&\u0010\u001b\"\u0004\b'\u0010\u001dR\u001a\u0010\u0013\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b(\u0010\u0017\"\u0004\b)\u0010\u0019R\u001a\u0010\u0011\u001a\u00020\u0012X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-R\u001a\u0010\u0010\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b.\u0010\u0017\"\u0004\b/\u0010\u0019R\u001a\u0010\t\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b0\u0010\u0017\"\u0004\b1\u0010\u0019R\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b2\u0010\u0017\"\u0004\b3\u0010\u0019R\u001a\u0010\u000e\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b4\u0010!\"\u0004\b5\u0010#¨\u0006<"}, m815d2 = {"Lgogolook/callgogolook2/realm/obj/vas/VasMessageRealm;", "Lio/realm/RealmObject;", "vasMessage", "Lgogolook/callgogolook2/vas/data/local/VasMessage;", "(Lgogolook/callgogolook2/vas/data/local/VasMessage;)V", "id", "", "subscriptionType", "", "promotionType", "cancelType", "e164", "", "content", "time", "name", "priceType", "price", "", "periodType", "period", "(JIIILjava/lang/String;Ljava/lang/String;JLjava/lang/String;IDILjava/lang/String;)V", "getCancelType", "()I", "setCancelType", "(I)V", "getContent", "()Ljava/lang/String;", "setContent", "(Ljava/lang/String;)V", "getE164", "setE164", "getId", "()J", "setId", "(J)V", "getName", "setName", "getPeriod", "setPeriod", "getPeriodType", "setPeriodType", "getPrice", "()D", "setPrice", "(D)V", "getPriceType", "setPriceType", "getPromotionType", "setPromotionType", "getSubscriptionType", "setSubscriptionType", "getTime", "setTime", "extractVasInfoPack", "Lgogolook/callgogolook2/vas/util/SimpleVasInfoPack;", "getVasPeriod", "Lgogolook/callgogolook2/realm/obj/vas/VasPeriod;", "toString", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/realm/obj/vas/VasMessageRealm.class */
public class VasMessageRealm extends RealmObject implements AbstractC10945xa8916503 {
    public static final String CANCEL_TYPE = "cancel_type";
    public static final String CONTENT = "content";
    public static final C5087a Companion = new C5087a(null);
    public static final String E164 = "e164";

    /* renamed from: ID */
    public static final String f12557ID = "id";
    public static final String NAME = "name";
    public static final String PERIOD = "period";
    public static final String PERIOD_TYPE = "period_type";
    public static final String PRICE = "price";
    public static final String PRICE_TYPE = "price_type";
    public static final String PROMOTION_TYPE = "promotion_type";
    public static final String SUBSCRIPTION_TYPE = "subscription_type";
    public static final String TABLE_NAME = "vas_message";
    public static final String TIME = "time";
    public int cancelType;
    public String content;
    public String e164;
    @PrimaryKey

    /* renamed from: id */
    public long f12558id;
    public String name;
    public String period;
    public int periodType;
    public double price;
    public int priceType;
    public int promotionType;
    public int subscriptionType;
    public long time;

    /* renamed from: gogolook.callgogolook2.realm.obj.vas.VasMessageRealm$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/realm/obj/vas/VasMessageRealm$a.class */
    public static final class C5087a {
        public C5087a() {
        }

        public /* synthetic */ C5087a(C15145g gVar) {
            this();
        }
    }

    public VasMessageRealm() {
        this(0L, 0, 0, 0, null, null, 0L, null, 0, 0.0d, 0, null, 4095, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public VasMessageRealm(long j) {
        this(j, 0, 0, 0, null, null, 0L, null, 0, 0.0d, 0, null, 4094, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public VasMessageRealm(long j, int i) {
        this(j, i, 0, 0, null, null, 0L, null, 0, 0.0d, 0, null, 4092, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public VasMessageRealm(long j, int i, int i2) {
        this(j, i, i2, 0, null, null, 0L, null, 0, 0.0d, 0, null, 4088, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public VasMessageRealm(long j, int i, int i2, int i3) {
        this(j, i, i2, i3, null, null, 0L, null, 0, 0.0d, 0, null, 4080, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public VasMessageRealm(long j, int i, int i2, int i3, String str) {
        this(j, i, i2, i3, str, null, 0L, null, 0, 0.0d, 0, null, 4064, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public VasMessageRealm(long j, int i, int i2, int i3, String str, String str2) {
        this(j, i, i2, i3, str, str2, 0L, null, 0, 0.0d, 0, null, 4032, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public VasMessageRealm(long j, int i, int i2, int i3, String str, String str2, long j2) {
        this(j, i, i2, i3, str, str2, j2, null, 0, 0.0d, 0, null, 3968, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public VasMessageRealm(long j, int i, int i2, int i3, String str, String str2, long j2, String str3) {
        this(j, i, i2, i3, str, str2, j2, str3, 0, 0.0d, 0, null, OpusReader.DEFAULT_SEEK_PRE_ROLL_SAMPLES, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public VasMessageRealm(long j, int i, int i2, int i3, String str, String str2, long j2, String str3, int i4) {
        this(j, i, i2, i3, str, str2, j2, str3, i4, 0.0d, 0, null, 3584, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public VasMessageRealm(long j, int i, int i2, int i3, String str, String str2, long j2, String str3, int i4, double d) {
        this(j, i, i2, i3, str, str2, j2, str3, i4, d, 0, null, 3072, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public VasMessageRealm(long j, int i, int i2, int i3, String str, String str2, long j2, String str3, int i4, double d, int i5) {
        this(j, i, i2, i3, str, str2, j2, str3, i4, d, i5, null, 2048, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public VasMessageRealm(long j, int i, int i2, int i3, String str, String str2, long j2, String str3, int i4, double d, int i5, String str4) {
        C15149k.m377b(str, "e164");
        C15149k.m377b(str2, "content");
        C15149k.m377b(str3, "name");
        C15149k.m377b(str4, "period");
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
        realmSet$id(j);
        realmSet$subscriptionType(i);
        realmSet$promotionType(i2);
        realmSet$cancelType(i3);
        realmSet$e164(str);
        realmSet$content(str2);
        realmSet$time(j2);
        realmSet$name(str3);
        realmSet$priceType(i4);
        realmSet$price(d);
        realmSet$periodType(i5);
        realmSet$period(str4);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ VasMessageRealm(long r18, int r20, int r21, int r22, java.lang.String r23, java.lang.String r24, long r25, java.lang.String r27, int r28, double r29, int r31, java.lang.String r32, int r33, p626l.p641z.p643d.C15145g r34) {
        /*
            Method dump skipped, instructions count: 235
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gogolook.callgogolook2.realm.obj.vas.VasMessageRealm.<init>(long, int, int, int, java.lang.String, java.lang.String, long, java.lang.String, int, double, int, java.lang.String, int, l.z.d.g):void");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public VasMessageRealm(C14492d dVar) {
        this(dVar.m1239d(), dVar.m1232k(), dVar.m1233j(), dVar.m1243a(), dVar.m1240c(), dVar.m1241b(), dVar.m1231l(), dVar.m1238e(), dVar.m1234i(), dVar.m1235h(), dVar.m1236g(), dVar.m1237f());
        C15149k.m377b(dVar, "vasMessage");
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    private final EnumC13225a getVasPeriod() {
        EnumC13225a aVar;
        try {
            aVar = EnumC13225a.valueOf(realmGet$period());
        } catch (IllegalArgumentException e) {
            aVar = EnumC13225a.NONE;
        }
        return aVar;
    }

    public final SimpleVasInfoPack extractVasInfoPack() {
        SimpleVasInfoPack simpleVasInfoPack = new SimpleVasInfoPack();
        simpleVasInfoPack.f13007a = realmGet$subscriptionType();
        simpleVasInfoPack.f13008b = realmGet$promotionType();
        simpleVasInfoPack.f13009c = realmGet$price();
        simpleVasInfoPack.f13010d = getVasPeriod().m4386a();
        return simpleVasInfoPack;
    }

    public final int getCancelType() {
        return realmGet$cancelType();
    }

    public final String getContent() {
        return realmGet$content();
    }

    public final String getE164() {
        return realmGet$e164();
    }

    public final long getId() {
        return realmGet$id();
    }

    public final String getName() {
        return realmGet$name();
    }

    public final String getPeriod() {
        return realmGet$period();
    }

    public final int getPeriodType() {
        return realmGet$periodType();
    }

    public final double getPrice() {
        return realmGet$price();
    }

    public final int getPriceType() {
        return realmGet$priceType();
    }

    public final int getPromotionType() {
        return realmGet$promotionType();
    }

    public final int getSubscriptionType() {
        return realmGet$subscriptionType();
    }

    public final long getTime() {
        return realmGet$time();
    }

    @Override // io.realm.AbstractC10945xa8916503
    public int realmGet$cancelType() {
        return this.cancelType;
    }

    @Override // io.realm.AbstractC10945xa8916503
    public String realmGet$content() {
        return this.content;
    }

    @Override // io.realm.AbstractC10945xa8916503
    public String realmGet$e164() {
        return this.e164;
    }

    @Override // io.realm.AbstractC10945xa8916503
    public long realmGet$id() {
        return this.f12558id;
    }

    @Override // io.realm.AbstractC10945xa8916503
    public String realmGet$name() {
        return this.name;
    }

    @Override // io.realm.AbstractC10945xa8916503
    public String realmGet$period() {
        return this.period;
    }

    @Override // io.realm.AbstractC10945xa8916503
    public int realmGet$periodType() {
        return this.periodType;
    }

    @Override // io.realm.AbstractC10945xa8916503
    public double realmGet$price() {
        return this.price;
    }

    @Override // io.realm.AbstractC10945xa8916503
    public int realmGet$priceType() {
        return this.priceType;
    }

    @Override // io.realm.AbstractC10945xa8916503
    public int realmGet$promotionType() {
        return this.promotionType;
    }

    @Override // io.realm.AbstractC10945xa8916503
    public int realmGet$subscriptionType() {
        return this.subscriptionType;
    }

    @Override // io.realm.AbstractC10945xa8916503
    public long realmGet$time() {
        return this.time;
    }

    @Override // io.realm.AbstractC10945xa8916503
    public void realmSet$cancelType(int i) {
        this.cancelType = i;
    }

    @Override // io.realm.AbstractC10945xa8916503
    public void realmSet$content(String str) {
        this.content = str;
    }

    @Override // io.realm.AbstractC10945xa8916503
    public void realmSet$e164(String str) {
        this.e164 = str;
    }

    @Override // io.realm.AbstractC10945xa8916503
    public void realmSet$id(long j) {
        this.f12558id = j;
    }

    @Override // io.realm.AbstractC10945xa8916503
    public void realmSet$name(String str) {
        this.name = str;
    }

    @Override // io.realm.AbstractC10945xa8916503
    public void realmSet$period(String str) {
        this.period = str;
    }

    @Override // io.realm.AbstractC10945xa8916503
    public void realmSet$periodType(int i) {
        this.periodType = i;
    }

    @Override // io.realm.AbstractC10945xa8916503
    public void realmSet$price(double d) {
        this.price = d;
    }

    @Override // io.realm.AbstractC10945xa8916503
    public void realmSet$priceType(int i) {
        this.priceType = i;
    }

    @Override // io.realm.AbstractC10945xa8916503
    public void realmSet$promotionType(int i) {
        this.promotionType = i;
    }

    @Override // io.realm.AbstractC10945xa8916503
    public void realmSet$subscriptionType(int i) {
        this.subscriptionType = i;
    }

    @Override // io.realm.AbstractC10945xa8916503
    public void realmSet$time(long j) {
        this.time = j;
    }

    public final void setCancelType(int i) {
        realmSet$cancelType(i);
    }

    public final void setContent(String str) {
        C15149k.m377b(str, "<set-?>");
        realmSet$content(str);
    }

    public final void setE164(String str) {
        C15149k.m377b(str, "<set-?>");
        realmSet$e164(str);
    }

    public final void setId(long j) {
        realmSet$id(j);
    }

    public final void setName(String str) {
        C15149k.m377b(str, "<set-?>");
        realmSet$name(str);
    }

    public final void setPeriod(String str) {
        C15149k.m377b(str, "<set-?>");
        realmSet$period(str);
    }

    public final void setPeriodType(int i) {
        realmSet$periodType(i);
    }

    public final void setPrice(double d) {
        realmSet$price(d);
    }

    public final void setPriceType(int i) {
        realmSet$priceType(i);
    }

    public final void setPromotionType(int i) {
        realmSet$promotionType(i);
    }

    public final void setSubscriptionType(int i) {
        realmSet$subscriptionType(i);
    }

    public final void setTime(long j) {
        realmSet$time(j);
    }

    public String toString() {
        return "[e164: " + realmGet$e164() + UserProfile.CARD_CATE_SEPARATOR + "subscriptionType: " + realmGet$subscriptionType() + UserProfile.CARD_CATE_SEPARATOR + "promotionType: " + realmGet$promotionType() + UserProfile.CARD_CATE_SEPARATOR + "content: " + realmGet$content() + UserProfile.CARD_CATE_SEPARATOR + "name: " + realmGet$name() + UserProfile.CARD_CATE_SEPARATOR + "priceType: " + realmGet$priceType() + UserProfile.CARD_CATE_SEPARATOR + "price: " + realmGet$price() + UserProfile.CARD_CATE_SEPARATOR + "periodType: " + realmGet$periodType() + UserProfile.CARD_CATE_SEPARATOR + "period: " + realmGet$period() + UserProfile.CARD_CATE_SEPARATOR + "cancelType: " + realmGet$cancelType() + ']';
    }
}
