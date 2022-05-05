package p459j.p460a.p596x.p597k;

import gogolook.callgogolook2.gson.PromoInfo;
import gogolook.callgogolook2.realm.obj.iap.PlanProductRealmObject;
import kotlin.Metadata;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\bf\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0005H&J\b\u0010\u0006\u001a\u00020\u0005H&J\b\u0010\u0007\u001a\u00020\u0005H&J\b\u0010\b\u001a\u00020\u0005H&J\b\u0010\t\u001a\u00020\u0005H&J%\u0010\n\u001a\u00020\u00052\n\b\u0003\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000eH&¢\u0006\u0002\u0010\u000fJ%\u0010\u0010\u001a\u00020\u00052\n\b\u0003\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000eH&¢\u0006\u0002\u0010\u000fJ%\u0010\u0011\u001a\u00020\u00052\n\b\u0003\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000eH&¢\u0006\u0002\u0010\u000fJ\b\u0010\u0012\u001a\u00020\u0005H&¨\u0006\u0013"}, m815d2 = {"Lgogolook/callgogolook2/intro/iap/IapPromoContract$Presenter;", "", "getNegativeString", "", "handleLeaveAction", "", "handleNegativeAction", "handlePositiveAction", "initData", "updateFeatures", "updateHeader", PlanProductRealmObject.PROMO_TYPE, "", "productInfo", "Lgogolook/callgogolook2/gson/PromoInfo$ProductInfo;", "(Ljava/lang/Integer;Lgogolook/callgogolook2/gson/PromoInfo$ProductInfo;)V", "updatePositiveCta", "updatePricing", "updateSubtitle", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.x.k.b */
/* loaded from: classes2-dex2jar.jar:j/a/x/k/b.class */
public interface AbstractC14384b {

    /* renamed from: j.a.x.k.b$a */
    /* loaded from: classes2-dex2jar.jar:j/a/x/k/b$a.class */
    public static final class C14385a {
        /* renamed from: a */
        public static /* synthetic */ void m1430a(AbstractC14384b bVar, Integer num, PromoInfo.ProductInfo productInfo, int i, Object obj) {
            if (obj == null) {
                if ((i & 1) != 0) {
                    num = null;
                }
                if ((i & 2) != 0) {
                    productInfo = null;
                }
                bVar.mo1437a(num, productInfo);
                return;
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: updateHeader");
        }

        /* renamed from: b */
        public static /* synthetic */ void m1429b(AbstractC14384b bVar, Integer num, PromoInfo.ProductInfo productInfo, int i, Object obj) {
            if (obj == null) {
                if ((i & 1) != 0) {
                    num = null;
                }
                if ((i & 2) != 0) {
                    productInfo = null;
                }
                bVar.mo1433c(num, productInfo);
                return;
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: updatePositiveCta");
        }

        /* renamed from: c */
        public static /* synthetic */ void m1428c(AbstractC14384b bVar, Integer num, PromoInfo.ProductInfo productInfo, int i, Object obj) {
            if (obj == null) {
                if ((i & 1) != 0) {
                    num = null;
                }
                if ((i & 2) != 0) {
                    productInfo = null;
                }
                bVar.mo1435b(num, productInfo);
                return;
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: updatePricing");
        }
    }

    /* renamed from: a */
    void mo1438a();

    /* renamed from: a */
    void mo1437a(Integer num, PromoInfo.ProductInfo productInfo);

    /* renamed from: b */
    void mo1436b();

    /* renamed from: b */
    void mo1435b(Integer num, PromoInfo.ProductInfo productInfo);

    /* renamed from: c */
    void mo1434c();

    /* renamed from: c */
    void mo1433c(Integer num, PromoInfo.ProductInfo productInfo);

    /* renamed from: d */
    String mo1432d();

    /* renamed from: e */
    void mo1431e();
}
