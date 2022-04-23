package gogolook.callgogolook2.realm.obj.iap;

import gogolook.callgogolook2.gson.UserProfile;
import io.realm.AbstractC10916xca23a6f0;
import io.realm.RealmObject;
import io.realm.annotations.PrimaryKey;
import io.realm.internal.RealmObjectProxy;
import kotlin.Metadata;
import p459j.p460a.p576w.p578o.C13795b;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u000e\b\u0016\u0018�� \u00162\u00020\u0001:\u0001\u0016B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B%\b\u0007\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\b\u0010\u0015\u001a\u00020\u0006H\u0016R\u001e\u0010\u0005\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n��\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u0007\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u000f\u0010\f\"\u0004\b\u0010\u0010\u000eR\u001a\u0010\b\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u0017"}, m815d2 = {"Lgogolook/callgogolook2/realm/obj/iap/PlanFeatureRealmObject;", "Lio/realm/RealmObject;", "feature", "Lgogolook/callgogolook2/iap/model/Feature;", "(Lgogolook/callgogolook2/iap/model/Feature;)V", "name", "", "region", "type", "", "(Ljava/lang/String;Ljava/lang/String;I)V", "getName", "()Ljava/lang/String;", "setName", "(Ljava/lang/String;)V", "getRegion", "setRegion", "getType", "()I", "setType", "(I)V", "toString", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/realm/obj/iap/PlanFeatureRealmObject.class */
public class PlanFeatureRealmObject extends RealmObject implements AbstractC10916xca23a6f0 {
    public static final C5072a Companion = new C5072a(null);
    public static final String NAME = "name";
    public static final String REGION = "region";
    public static final String TYPE = "type";
    @PrimaryKey
    public String name;
    public String region;
    public int type;

    /* renamed from: gogolook.callgogolook2.realm.obj.iap.PlanFeatureRealmObject$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/realm/obj/iap/PlanFeatureRealmObject$a.class */
    public static final class C5072a {
        public C5072a() {
        }

        public /* synthetic */ C5072a(C15145g gVar) {
            this();
        }
    }

    public PlanFeatureRealmObject() {
        this(null, null, 0, 7, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public PlanFeatureRealmObject(C13795b bVar) {
        this(bVar.m3443a(), bVar.m3442b(), bVar.m3441c());
        C15149k.m377b(bVar, "feature");
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public PlanFeatureRealmObject(String str) {
        this(str, null, 0, 6, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public PlanFeatureRealmObject(String str, String str2) {
        this(str, str2, 0, 4, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public PlanFeatureRealmObject(String str, String str2, int i) {
        C15149k.m377b(str, "name");
        C15149k.m377b(str2, "region");
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
        realmSet$name(str);
        realmSet$region(str2);
        realmSet$type(i);
    }

    public /* synthetic */ PlanFeatureRealmObject(String str, String str2, int i, int i2, C15145g gVar) {
        this((i2 & 1) != 0 ? "0" : str, (i2 & 2) != 0 ? "" : str2, (i2 & 4) != 0 ? 0 : i);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public final String getName() {
        return realmGet$name();
    }

    public final String getRegion() {
        return realmGet$region();
    }

    public final int getType() {
        return realmGet$type();
    }

    @Override // io.realm.AbstractC10916xca23a6f0
    public String realmGet$name() {
        return this.name;
    }

    @Override // io.realm.AbstractC10916xca23a6f0
    public String realmGet$region() {
        return this.region;
    }

    @Override // io.realm.AbstractC10916xca23a6f0
    public int realmGet$type() {
        return this.type;
    }

    @Override // io.realm.AbstractC10916xca23a6f0
    public void realmSet$name(String str) {
        this.name = str;
    }

    @Override // io.realm.AbstractC10916xca23a6f0
    public void realmSet$region(String str) {
        this.region = str;
    }

    @Override // io.realm.AbstractC10916xca23a6f0
    public void realmSet$type(int i) {
        this.type = i;
    }

    public final void setName(String str) {
        C15149k.m377b(str, "<set-?>");
        realmSet$name(str);
    }

    public final void setRegion(String str) {
        C15149k.m377b(str, "<set-?>");
        realmSet$region(str);
    }

    public final void setType(int i) {
        realmSet$type(i);
    }

    public String toString() {
        return "[name: " + realmGet$name() + UserProfile.CARD_CATE_SEPARATOR + "region: " + realmGet$region() + UserProfile.CARD_CATE_SEPARATOR + "type: " + realmGet$type() + ']';
    }
}
