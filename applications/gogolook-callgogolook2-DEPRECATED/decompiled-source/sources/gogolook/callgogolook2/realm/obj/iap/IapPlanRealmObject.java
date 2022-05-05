package gogolook.callgogolook2.realm.obj.iap;

import gogolook.callgogolook2.gson.UserProfile;
import io.realm.AbstractC10912x119a1184;
import io.realm.RealmList;
import io.realm.RealmObject;
import io.realm.annotations.PrimaryKey;
import io.realm.internal.RealmObjectProxy;
import java.util.ArrayList;
import kotlin.Metadata;
import p626l.p632u.C15022n;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0018\b\u0016\u0018�� #2\u00020\u0001:\u0001#BS\b\u0007\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t\u0012\u0010\b\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\t¢\u0006\u0002\u0010\rJ\u0018\u0010 \u001a\u00020\u00032\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tH\u0002J\u0018\u0010!\u001a\u00020\u00032\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\tH\u0002J\b\u0010\"\u001a\u00020\u0003H\u0016R\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\"\u0010\b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001a\u0010\u000f\"\u0004\b\u001b\u0010\u0011R\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001c\u0010\u000f\"\u0004\b\u001d\u0010\u0011R\"\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001e\u0010\u0013\"\u0004\b\u001f\u0010\u0015¨\u0006$"}, m815d2 = {"Lgogolook/callgogolook2/realm/obj/iap/IapPlanRealmObject;", "Lio/realm/RealmObject;", IapPlanRealmObject.PLAN_ID, "", "name", "desc", IapPlanRealmObject.LEVEL, "", IapPlanRealmObject.FEATURES, "Lio/realm/RealmList;", "Lgogolook/callgogolook2/realm/obj/iap/PlanFeatureRealmObject;", IapPlanRealmObject.PRODUCTS, "Lgogolook/callgogolook2/realm/obj/iap/PlanProductRealmObject;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILio/realm/RealmList;Lio/realm/RealmList;)V", "getDesc", "()Ljava/lang/String;", "setDesc", "(Ljava/lang/String;)V", "getFeatures", "()Lio/realm/RealmList;", "setFeatures", "(Lio/realm/RealmList;)V", "getLevel", "()I", "setLevel", "(I)V", "getName", "setName", "getPlanId", "setPlanId", "getProducts", "setProducts", "featuresToString", "productsToString", "toString", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/realm/obj/iap/IapPlanRealmObject.class */
public class IapPlanRealmObject extends RealmObject implements AbstractC10912x119a1184 {
    public static final C5070a Companion = new C5070a(null);
    public static final String DESC = "desc";
    public static final String FEATURES = "features";
    public static final String LEVEL = "level";
    public static final String NAME = "name";
    public static final String PLAN_ID = "planId";
    public static final String PRODUCTS = "products";
    public String desc;
    public RealmList<PlanFeatureRealmObject> features;
    public int level;
    public String name;
    @PrimaryKey
    public String planId;
    public RealmList<PlanProductRealmObject> products;

    /* renamed from: gogolook.callgogolook2.realm.obj.iap.IapPlanRealmObject$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/realm/obj/iap/IapPlanRealmObject$a.class */
    public static final class C5070a {
        public C5070a() {
        }

        public /* synthetic */ C5070a(C15145g gVar) {
            this();
        }
    }

    public IapPlanRealmObject() {
        this(null, null, null, 0, null, null, 63, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public IapPlanRealmObject(String str) {
        this(str, null, null, 0, null, null, 62, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public IapPlanRealmObject(String str, String str2) {
        this(str, str2, null, 0, null, null, 60, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public IapPlanRealmObject(String str, String str2, String str3) {
        this(str, str2, str3, 0, null, null, 56, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public IapPlanRealmObject(String str, String str2, String str3, int i) {
        this(str, str2, str3, i, null, null, 48, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public IapPlanRealmObject(String str, String str2, String str3, int i, RealmList<PlanFeatureRealmObject> realmList) {
        this(str, str2, str3, i, realmList, null, 32, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public IapPlanRealmObject(String str, String str2, String str3, int i, RealmList<PlanFeatureRealmObject> realmList, RealmList<PlanProductRealmObject> realmList2) {
        C15149k.m377b(str, PLAN_ID);
        C15149k.m377b(str2, "name");
        C15149k.m377b(str3, "desc");
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
        realmSet$planId(str);
        realmSet$name(str2);
        realmSet$desc(str3);
        realmSet$level(i);
        realmSet$features(realmList);
        realmSet$products(realmList2);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ IapPlanRealmObject(java.lang.String r9, java.lang.String r10, java.lang.String r11, int r12, io.realm.RealmList r13, io.realm.RealmList r14, int r15, p626l.p641z.p643d.C15145g r16) {
        /*
            r8 = this;
            r0 = r15
            r1 = 1
            r0 = r0 & r1
            if (r0 == 0) goto L_0x000a
            java.lang.String r0 = "0"
            r9 = r0
        L_0x000a:
            java.lang.String r0 = ""
            r16 = r0
            r0 = r15
            r1 = 2
            r0 = r0 & r1
            if (r0 == 0) goto L_0x001b
            java.lang.String r0 = ""
            r10 = r0
            goto L_0x001b
        L_0x001b:
            r0 = r15
            r1 = 4
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0028
            r0 = r16
            r11 = r0
            goto L_0x0028
        L_0x0028:
            r0 = r15
            r1 = 8
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0036
            r0 = 0
            r12 = r0
            goto L_0x0036
        L_0x0036:
            r0 = r15
            r1 = 16
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0044
            r0 = 0
            r13 = r0
            goto L_0x0044
        L_0x0044:
            r0 = r15
            r1 = 32
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0052
            r0 = 0
            r14 = r0
            goto L_0x0052
        L_0x0052:
            r0 = r8
            r1 = r9
            r2 = r10
            r3 = r11
            r4 = r12
            r5 = r13
            r6 = r14
            r0.<init>(r1, r2, r3, r4, r5, r6)
            r0 = r8
            boolean r0 = r0 instanceof io.realm.internal.RealmObjectProxy
            if (r0 == 0) goto L_0x006f
            r0 = r8
            io.realm.internal.RealmObjectProxy r0 = (io.realm.internal.RealmObjectProxy) r0
            r0.realm$injectObjectContext()
        L_0x006f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: gogolook.callgogolook2.realm.obj.iap.IapPlanRealmObject.<init>(java.lang.String, java.lang.String, java.lang.String, int, io.realm.RealmList, io.realm.RealmList, int, l.z.d.g):void");
    }

    private final String featuresToString(RealmList<PlanFeatureRealmObject> realmList) {
        StringBuilder sb = new StringBuilder();
        sb.append("{ ");
        if (realmList != null) {
            ArrayList arrayList = new ArrayList(C15022n.m555a(realmList, 10));
            for (PlanFeatureRealmObject planFeatureRealmObject : realmList) {
                sb.append(planFeatureRealmObject.toString());
                sb.append(UserProfile.CARD_CATE_SEPARATOR);
                arrayList.add(sb);
            }
        }
        sb.delete(sb.lastIndexOf(UserProfile.CARD_CATE_SEPARATOR), sb.length() - 1).append(" }");
        String sb2 = sb.toString();
        C15149k.m383a((Object) sb2, "sb.toString()");
        return sb2;
    }

    private final String productsToString(RealmList<PlanProductRealmObject> realmList) {
        StringBuilder sb = new StringBuilder();
        sb.append("{ ");
        if (realmList != null) {
            ArrayList arrayList = new ArrayList(C15022n.m555a(realmList, 10));
            for (PlanProductRealmObject planProductRealmObject : realmList) {
                sb.append(planProductRealmObject.toString());
                sb.append(UserProfile.CARD_CATE_SEPARATOR);
                arrayList.add(sb);
            }
        }
        sb.delete(sb.lastIndexOf(UserProfile.CARD_CATE_SEPARATOR), sb.length() - 1).append(" }");
        String sb2 = sb.toString();
        C15149k.m383a((Object) sb2, "sb.toString()");
        return sb2;
    }

    public final String getDesc() {
        return realmGet$desc();
    }

    public final RealmList<PlanFeatureRealmObject> getFeatures() {
        return realmGet$features();
    }

    public final int getLevel() {
        return realmGet$level();
    }

    public final String getName() {
        return realmGet$name();
    }

    public final String getPlanId() {
        return realmGet$planId();
    }

    public final RealmList<PlanProductRealmObject> getProducts() {
        return realmGet$products();
    }

    @Override // io.realm.AbstractC10912x119a1184
    public String realmGet$desc() {
        return this.desc;
    }

    @Override // io.realm.AbstractC10912x119a1184
    public RealmList realmGet$features() {
        return this.features;
    }

    @Override // io.realm.AbstractC10912x119a1184
    public int realmGet$level() {
        return this.level;
    }

    @Override // io.realm.AbstractC10912x119a1184
    public String realmGet$name() {
        return this.name;
    }

    @Override // io.realm.AbstractC10912x119a1184
    public String realmGet$planId() {
        return this.planId;
    }

    @Override // io.realm.AbstractC10912x119a1184
    public RealmList realmGet$products() {
        return this.products;
    }

    @Override // io.realm.AbstractC10912x119a1184
    public void realmSet$desc(String str) {
        this.desc = str;
    }

    @Override // io.realm.AbstractC10912x119a1184
    public void realmSet$features(RealmList realmList) {
        this.features = realmList;
    }

    @Override // io.realm.AbstractC10912x119a1184
    public void realmSet$level(int i) {
        this.level = i;
    }

    @Override // io.realm.AbstractC10912x119a1184
    public void realmSet$name(String str) {
        this.name = str;
    }

    @Override // io.realm.AbstractC10912x119a1184
    public void realmSet$planId(String str) {
        this.planId = str;
    }

    @Override // io.realm.AbstractC10912x119a1184
    public void realmSet$products(RealmList realmList) {
        this.products = realmList;
    }

    public final void setDesc(String str) {
        C15149k.m377b(str, "<set-?>");
        realmSet$desc(str);
    }

    public final void setFeatures(RealmList<PlanFeatureRealmObject> realmList) {
        realmSet$features(realmList);
    }

    public final void setLevel(int i) {
        realmSet$level(i);
    }

    public final void setName(String str) {
        C15149k.m377b(str, "<set-?>");
        realmSet$name(str);
    }

    public final void setPlanId(String str) {
        C15149k.m377b(str, "<set-?>");
        realmSet$planId(str);
    }

    public final void setProducts(RealmList<PlanProductRealmObject> realmList) {
        realmSet$products(realmList);
    }

    public String toString() {
        return "[planId: " + realmGet$planId() + ", \nname: " + realmGet$name() + ", \ndesc: \"" + realmGet$desc() + "\", \nlevel: " + realmGet$level() + ", \nfeatures: " + featuresToString(realmGet$features()) + ", \nproducts: " + productsToString(realmGet$products()) + ']';
    }
}
