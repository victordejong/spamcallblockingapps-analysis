package p081h.p160h.p179e.p180a.p188o;

import gogolook.callgogolook2.gson.UserProfile;
import gogolook.callgogolook2.realm.obj.contact.ContactRealmObject;
import gogolook.callgogolook2.realm.obj.logsgroup.LogsGroupRealmObject;
import kotlin.Metadata;
import org.json.JSONException;
import org.json.JSONObject;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0019\u0018�� \"2\u00020\u0001:\u0001\"B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010!\u001a\u00020\u0004H\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\bR\u001a\u0010\u0012\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\bR\u001a\u0010\u0015\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0016\u0010\f\"\u0004\b\u0017\u0010\u000eR\u001a\u0010\u0018\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0019\u0010\u0006\"\u0004\b\u001a\u0010\bR\u001a\u0010\u001b\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001c\u0010\u0006\"\u0004\b\u001d\u0010\bR\u001a\u0010\u001e\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001f\u0010\f\"\u0004\b \u0010\u000e¨\u0006#"}, m815d2 = {"Lcom/gogolook/whoscallsdk/core/offlinedb/PersonalDbData;", "", "()V", "checkSum", "", "getCheckSum", "()Ljava/lang/String;", "setCheckSum", "(Ljava/lang/String;)V", UserProfile.CARDCATE_KEY_CID, "", "getCid", "()I", "setCid", "(I)V", "dbType", "getDbType", "setDbType", "region", "getRegion", "setRegion", "totalNum", "getTotalNum", "setTotalNum", ContactRealmObject.UPDATE_TIME, "getUpdateTime", "setUpdateTime", "url", "getUrl", "setUrl", "version", "getVersion", "setVersion", "toString", "Companion", "whoscallSDK_core_whoscallDebug"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: h.h.e.a.o.d */
/* loaded from: classes2-dex2jar.jar:h/h/e/a/o/d.class */
public final class C6406d {

    /* renamed from: i */
    public static final C6407a f15948i = new C6407a(null);

    /* renamed from: b */
    public int f15950b;

    /* renamed from: e */
    public int f15953e;

    /* renamed from: a */
    public String f15949a = "";

    /* renamed from: c */
    public String f15951c = "";

    /* renamed from: d */
    public int f15952d = -1;

    /* renamed from: f */
    public String f15954f = "";

    /* renamed from: g */
    public String f15955g = "";

    /* renamed from: h */
    public String f15956h = "basic";

    /* renamed from: h.h.e.a.o.d$a */
    /* loaded from: classes2-dex2jar.jar:h/h/e/a/o/d$a.class */
    public static final class C6407a {
        public C6407a() {
        }

        public /* synthetic */ C6407a(C15145g gVar) {
            this();
        }

        /* renamed from: a */
        public final C6406d m22747a(JSONObject jSONObject) {
            C15149k.m377b(jSONObject, "jsonObj");
            try {
                C6406d dVar = new C6406d();
                String string = jSONObject.getString(LogsGroupRealmObject.UPDATETIME);
                C15149k.m383a((Object) string, "jsonObj.getString(\"update_time\")");
                dVar.m22752d(string);
                dVar.m22755c(jSONObject.getInt("version"));
                String string2 = jSONObject.getString("url");
                C15149k.m383a((Object) string2, "jsonObj.getString(\"url\")");
                dVar.m22750e(string2);
                dVar.m22761a(jSONObject.getInt(UserProfile.CARDCATE_KEY_CID));
                dVar.m22758b(jSONObject.getInt("num_size"));
                String string3 = jSONObject.getString("region");
                C15149k.m383a((Object) string3, "jsonObj.getString(\"region\")");
                dVar.m22754c(string3);
                String string4 = jSONObject.getString("checksums");
                C15149k.m383a((Object) string4, "jsonObj.getString(\"checksums\")");
                dVar.m22760a(string4);
                String string5 = jSONObject.getString("db_type");
                C15149k.m383a((Object) string5, "jsonObj.getString(\"db_type\")");
                dVar.m22757b(string5);
                return dVar;
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }
    }

    /* renamed from: a */
    public final String m22762a() {
        return this.f15955g;
    }

    /* renamed from: a */
    public final void m22761a(int i) {
        this.f15952d = i;
    }

    /* renamed from: a */
    public final void m22760a(String str) {
        C15149k.m377b(str, "<set-?>");
        this.f15955g = str;
    }

    /* renamed from: b */
    public final int m22759b() {
        return this.f15952d;
    }

    /* renamed from: b */
    public final void m22758b(int i) {
        this.f15953e = i;
    }

    /* renamed from: b */
    public final void m22757b(String str) {
        C15149k.m377b(str, "<set-?>");
        this.f15956h = str;
    }

    /* renamed from: c */
    public final String m22756c() {
        return this.f15956h;
    }

    /* renamed from: c */
    public final void m22755c(int i) {
        this.f15950b = i;
    }

    /* renamed from: c */
    public final void m22754c(String str) {
        C15149k.m377b(str, "<set-?>");
        this.f15954f = str;
    }

    /* renamed from: d */
    public final int m22753d() {
        return this.f15953e;
    }

    /* renamed from: d */
    public final void m22752d(String str) {
        C15149k.m377b(str, "<set-?>");
        this.f15949a = str;
    }

    /* renamed from: e */
    public final String m22751e() {
        return this.f15949a;
    }

    /* renamed from: e */
    public final void m22750e(String str) {
        C15149k.m377b(str, "<set-?>");
        this.f15951c = str;
    }

    /* renamed from: f */
    public final String m22749f() {
        return this.f15951c;
    }

    /* renamed from: g */
    public final int m22748g() {
        return this.f15950b;
    }

    public String toString() {
        String str;
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(LogsGroupRealmObject.UPDATETIME, this.f15949a);
            jSONObject.put("version", this.f15950b);
            jSONObject.put("url", this.f15951c);
            jSONObject.put(UserProfile.CARDCATE_KEY_CID, this.f15952d);
            jSONObject.put("num_size", this.f15953e);
            jSONObject.put("region", this.f15954f);
            jSONObject.put("checksums", this.f15955g);
            jSONObject.put("db_type", this.f15956h);
            str = jSONObject.toString();
            C15149k.m383a((Object) str, "obj.toString()");
        } catch (JSONException e) {
            e.printStackTrace();
            str = "";
        }
        return str;
    }
}
