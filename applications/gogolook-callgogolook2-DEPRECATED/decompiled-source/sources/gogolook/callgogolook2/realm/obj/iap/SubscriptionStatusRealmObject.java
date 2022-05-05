package gogolook.callgogolook2.realm.obj.iap;

import androidx.core.app.FrameMetricsAggregator;
import gogolook.callgogolook2.gson.UserProfile;
import io.realm.AbstractC10922x33e87a04;
import io.realm.RealmObject;
import io.realm.annotations.PrimaryKey;
import io.realm.internal.RealmObjectProxy;
import kotlin.Metadata;
import p626l.p641z.p643d.C15145g;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\t\n\u0002\b&\b\u0016\u0018�� .2\u00020\u0001:\u0001.B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004Bq\b\u0007\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0010J\b\u0010-\u001a\u00020\u0007H\u0016R\u001e\u0010\u000f\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0015\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001e\u0010\n\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001a\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u001e\u0010\r\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0015\u001a\u0004\b\u001b\u0010\u0012\"\u0004\b\u001c\u0010\u0014R\u001e\u0010\f\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001a\u001a\u0004\b\u001d\u0010\u0017\"\u0004\b\u001e\u0010\u0019R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b#\u0010 \"\u0004\b$\u0010\"R\u001e\u0010\b\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001a\u001a\u0004\b%\u0010\u0017\"\u0004\b&\u0010\u0019R\u001e\u0010\u0002\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n��\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*R\u001e\u0010\u000e\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001a\u001a\u0004\b+\u0010\u0017\"\u0004\b,\u0010\u0019¨\u0006/"}, m815d2 = {"Lgogolook/callgogolook2/realm/obj/iap/SubscriptionStatusRealmObject;", "Lio/realm/RealmObject;", "status", "Lgogolook/callgogolook2/iap/model/SubscriptionStatus;", "(Lgogolook/callgogolook2/iap/model/SubscriptionStatus;)V", "", "productId", "", "startTimeMillis", "", "expiryTimeMillis", IapProductRealmObject.PRICE_CURRENCY_CODE, IapProductRealmObject.PRICE_AMOUNT_MICROS, "paymentStatus", "userCancellationTimeMillis", "cancelSurveyReason", "(ILjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;)V", "getCancelSurveyReason", "()Ljava/lang/Integer;", "setCancelSurveyReason", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getExpiryTimeMillis", "()Ljava/lang/Long;", "setExpiryTimeMillis", "(Ljava/lang/Long;)V", "Ljava/lang/Long;", "getPaymentStatus", "setPaymentStatus", "getPriceAmountMicros", "setPriceAmountMicros", "getPriceCurrencyCode", "()Ljava/lang/String;", "setPriceCurrencyCode", "(Ljava/lang/String;)V", "getProductId", "setProductId", "getStartTimeMillis", "setStartTimeMillis", "getStatus", "()I", "setStatus", "(I)V", "getUserCancellationTimeMillis", "setUserCancellationTimeMillis", "toString", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/realm/obj/iap/SubscriptionStatusRealmObject.class */
public class SubscriptionStatusRealmObject extends RealmObject implements AbstractC10922x33e87a04 {
    public static final C5075a Companion = new C5075a(null);
    public static final int STATUS_ACTIVE = 1;
    public static final int STATUS_CANCELLED = 2;
    public static final int STATUS_CANCELLED_DURING_FREE_TRIAL = 8;
    public static final int STATUS_EXPIRED = 6;
    public static final int STATUS_FREE_TRIAL = 7;
    public static final int STATUS_IN_GRACE_PERIOD = 3;
    public static final int STATUS_ON_HOLD = 4;
    public static final int STATUS_PAUSE = 5;
    public static final int STATUS_UNDEFINED = 0;
    public Integer cancelSurveyReason;
    public Long expiryTimeMillis;
    public Integer paymentStatus;
    public Long priceAmountMicros;
    public String priceCurrencyCode;
    public String productId;
    public Long startTimeMillis;
    @PrimaryKey
    public int status;
    public Long userCancellationTimeMillis;

    /* renamed from: gogolook.callgogolook2.realm.obj.iap.SubscriptionStatusRealmObject$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/realm/obj/iap/SubscriptionStatusRealmObject$a.class */
    public static final class C5075a {
        public C5075a() {
        }

        public /* synthetic */ C5075a(C15145g gVar) {
            this();
        }
    }

    public SubscriptionStatusRealmObject() {
        this(0, null, null, null, null, null, null, null, null, FrameMetricsAggregator.EVERY_DURATION, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public SubscriptionStatusRealmObject(int i) {
        this(i, null, null, null, null, null, null, null, null, 510, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public SubscriptionStatusRealmObject(int i, String str) {
        this(i, str, null, null, null, null, null, null, null, 508, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public SubscriptionStatusRealmObject(int i, String str, Long l) {
        this(i, str, l, null, null, null, null, null, null, 504, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public SubscriptionStatusRealmObject(int i, String str, Long l, Long l2) {
        this(i, str, l, l2, null, null, null, null, null, 496, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public SubscriptionStatusRealmObject(int i, String str, Long l, Long l2, String str2) {
        this(i, str, l, l2, str2, null, null, null, null, 480, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public SubscriptionStatusRealmObject(int i, String str, Long l, Long l2, String str2, Long l3) {
        this(i, str, l, l2, str2, l3, null, null, null, 448, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public SubscriptionStatusRealmObject(int i, String str, Long l, Long l2, String str2, Long l3, Integer num) {
        this(i, str, l, l2, str2, l3, num, null, null, 384, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public SubscriptionStatusRealmObject(int i, String str, Long l, Long l2, String str2, Long l3, Integer num, Long l4) {
        this(i, str, l, l2, str2, l3, num, l4, null, 256, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public SubscriptionStatusRealmObject(int i, String str, Long l, Long l2, String str2, Long l3, Integer num, Long l4, Integer num2) {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
        realmSet$status(i);
        realmSet$productId(str);
        realmSet$startTimeMillis(l);
        realmSet$expiryTimeMillis(l2);
        realmSet$priceCurrencyCode(str2);
        realmSet$priceAmountMicros(l3);
        realmSet$paymentStatus(num);
        realmSet$userCancellationTimeMillis(l4);
        realmSet$cancelSurveyReason(num2);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ SubscriptionStatusRealmObject(int r12, java.lang.String r13, java.lang.Long r14, java.lang.Long r15, java.lang.String r16, java.lang.Long r17, java.lang.Integer r18, java.lang.Long r19, java.lang.Integer r20, int r21, p626l.p641z.p643d.C15145g r22) {
        /*
            r11 = this;
            r0 = r21
            r1 = 1
            r0 = r0 & r1
            if (r0 == 0) goto L_0x000c
            r0 = 0
            r12 = r0
            goto L_0x000c
        L_0x000c:
            r0 = 0
            r22 = r0
            r0 = r21
            r1 = 2
            r0 = r0 & r1
            if (r0 == 0) goto L_0x001b
            r0 = 0
            r13 = r0
            goto L_0x001b
        L_0x001b:
            r0 = r21
            r1 = 4
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0027
            r0 = 0
            r14 = r0
            goto L_0x0027
        L_0x0027:
            r0 = r21
            r1 = 8
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0035
            r0 = 0
            r15 = r0
            goto L_0x0035
        L_0x0035:
            r0 = r21
            r1 = 16
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0043
            r0 = 0
            r16 = r0
            goto L_0x0043
        L_0x0043:
            r0 = r21
            r1 = 32
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0051
            r0 = 0
            r17 = r0
            goto L_0x0051
        L_0x0051:
            r0 = r21
            r1 = 64
            r0 = r0 & r1
            if (r0 == 0) goto L_0x005f
            r0 = 0
            r18 = r0
            goto L_0x005f
        L_0x005f:
            r0 = r21
            r1 = 128(0x80, float:1.794E-43)
            r0 = r0 & r1
            if (r0 == 0) goto L_0x006e
            r0 = 0
            r19 = r0
            goto L_0x006e
        L_0x006e:
            r0 = r21
            r1 = 256(0x100, float:3.59E-43)
            r0 = r0 & r1
            if (r0 == 0) goto L_0x007e
            r0 = r22
            r20 = r0
            goto L_0x007e
        L_0x007e:
            r0 = r11
            r1 = r12
            r2 = r13
            r3 = r14
            r4 = r15
            r5 = r16
            r6 = r17
            r7 = r18
            r8 = r19
            r9 = r20
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9)
            r0 = r11
            boolean r0 = r0 instanceof io.realm.internal.RealmObjectProxy
            if (r0 == 0) goto L_0x00a1
            r0 = r11
            io.realm.internal.RealmObjectProxy r0 = (io.realm.internal.RealmObjectProxy) r0
            r0.realm$injectObjectContext()
        L_0x00a1:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: gogolook.callgogolook2.realm.obj.iap.SubscriptionStatusRealmObject.<init>(int, java.lang.String, java.lang.Long, java.lang.Long, java.lang.String, java.lang.Long, java.lang.Integer, java.lang.Long, java.lang.Integer, int, l.z.d.g):void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public SubscriptionStatusRealmObject(p459j.p460a.p576w.p578o.C13804j r12) {
        /*
            Method dump skipped, instructions count: 224
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gogolook.callgogolook2.realm.obj.iap.SubscriptionStatusRealmObject.<init>(j.a.w.o.j):void");
    }

    public final Integer getCancelSurveyReason() {
        return realmGet$cancelSurveyReason();
    }

    public final Long getExpiryTimeMillis() {
        return realmGet$expiryTimeMillis();
    }

    public final Integer getPaymentStatus() {
        return realmGet$paymentStatus();
    }

    public final Long getPriceAmountMicros() {
        return realmGet$priceAmountMicros();
    }

    public final String getPriceCurrencyCode() {
        return realmGet$priceCurrencyCode();
    }

    public final String getProductId() {
        return realmGet$productId();
    }

    public final Long getStartTimeMillis() {
        return realmGet$startTimeMillis();
    }

    public final int getStatus() {
        return realmGet$status();
    }

    public final Long getUserCancellationTimeMillis() {
        return realmGet$userCancellationTimeMillis();
    }

    @Override // io.realm.AbstractC10922x33e87a04
    public Integer realmGet$cancelSurveyReason() {
        return this.cancelSurveyReason;
    }

    @Override // io.realm.AbstractC10922x33e87a04
    public Long realmGet$expiryTimeMillis() {
        return this.expiryTimeMillis;
    }

    @Override // io.realm.AbstractC10922x33e87a04
    public Integer realmGet$paymentStatus() {
        return this.paymentStatus;
    }

    @Override // io.realm.AbstractC10922x33e87a04
    public Long realmGet$priceAmountMicros() {
        return this.priceAmountMicros;
    }

    @Override // io.realm.AbstractC10922x33e87a04
    public String realmGet$priceCurrencyCode() {
        return this.priceCurrencyCode;
    }

    @Override // io.realm.AbstractC10922x33e87a04
    public String realmGet$productId() {
        return this.productId;
    }

    @Override // io.realm.AbstractC10922x33e87a04
    public Long realmGet$startTimeMillis() {
        return this.startTimeMillis;
    }

    @Override // io.realm.AbstractC10922x33e87a04
    public int realmGet$status() {
        return this.status;
    }

    @Override // io.realm.AbstractC10922x33e87a04
    public Long realmGet$userCancellationTimeMillis() {
        return this.userCancellationTimeMillis;
    }

    @Override // io.realm.AbstractC10922x33e87a04
    public void realmSet$cancelSurveyReason(Integer num) {
        this.cancelSurveyReason = num;
    }

    @Override // io.realm.AbstractC10922x33e87a04
    public void realmSet$expiryTimeMillis(Long l) {
        this.expiryTimeMillis = l;
    }

    @Override // io.realm.AbstractC10922x33e87a04
    public void realmSet$paymentStatus(Integer num) {
        this.paymentStatus = num;
    }

    @Override // io.realm.AbstractC10922x33e87a04
    public void realmSet$priceAmountMicros(Long l) {
        this.priceAmountMicros = l;
    }

    @Override // io.realm.AbstractC10922x33e87a04
    public void realmSet$priceCurrencyCode(String str) {
        this.priceCurrencyCode = str;
    }

    @Override // io.realm.AbstractC10922x33e87a04
    public void realmSet$productId(String str) {
        this.productId = str;
    }

    @Override // io.realm.AbstractC10922x33e87a04
    public void realmSet$startTimeMillis(Long l) {
        this.startTimeMillis = l;
    }

    @Override // io.realm.AbstractC10922x33e87a04
    public void realmSet$status(int i) {
        this.status = i;
    }

    @Override // io.realm.AbstractC10922x33e87a04
    public void realmSet$userCancellationTimeMillis(Long l) {
        this.userCancellationTimeMillis = l;
    }

    public final void setCancelSurveyReason(Integer num) {
        realmSet$cancelSurveyReason(num);
    }

    public final void setExpiryTimeMillis(Long l) {
        realmSet$expiryTimeMillis(l);
    }

    public final void setPaymentStatus(Integer num) {
        realmSet$paymentStatus(num);
    }

    public final void setPriceAmountMicros(Long l) {
        realmSet$priceAmountMicros(l);
    }

    public final void setPriceCurrencyCode(String str) {
        realmSet$priceCurrencyCode(str);
    }

    public final void setProductId(String str) {
        realmSet$productId(str);
    }

    public final void setStartTimeMillis(Long l) {
        realmSet$startTimeMillis(l);
    }

    public final void setStatus(int i) {
        realmSet$status(i);
    }

    public final void setUserCancellationTimeMillis(Long l) {
        realmSet$userCancellationTimeMillis(l);
    }

    public String toString() {
        return "[status: " + realmGet$status() + UserProfile.CARD_CATE_SEPARATOR + "productId: " + realmGet$productId() + UserProfile.CARD_CATE_SEPARATOR + "startTimeMillis: " + realmGet$startTimeMillis() + UserProfile.CARD_CATE_SEPARATOR + "expiryTimeMillis: " + realmGet$expiryTimeMillis() + UserProfile.CARD_CATE_SEPARATOR + "priceCurrencyCode: " + realmGet$priceCurrencyCode() + UserProfile.CARD_CATE_SEPARATOR + "priceAmountMicros: " + realmGet$priceAmountMicros() + UserProfile.CARD_CATE_SEPARATOR + "paymentStatus: " + realmGet$paymentStatus() + UserProfile.CARD_CATE_SEPARATOR + "userCancellationTimeMillis: " + realmGet$userCancellationTimeMillis() + UserProfile.CARD_CATE_SEPARATOR + "cancelSurveyReason: " + realmGet$cancelSurveyReason() + ']';
    }
}
