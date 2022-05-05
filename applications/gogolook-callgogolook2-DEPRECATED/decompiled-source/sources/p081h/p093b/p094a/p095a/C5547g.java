package p081h.p093b.p094a.p095a;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: h.b.a.a.g */
/* loaded from: classes-dex2jar.jar:h/b/a/a/g.class */
public class C5547g {

    /* renamed from: a */
    public final String f13856a;

    /* renamed from: b */
    public final String f13857b;

    /* renamed from: c */
    public final JSONObject f13858c;

    /* renamed from: h.b.a.a.g$a */
    /* loaded from: classes-dex2jar.jar:h/b/a/a/g$a.class */
    public static class C5548a {
        @Nullable

        /* renamed from: a */
        public final List<C5547g> f13859a;

        public C5548a(@NonNull C5542e eVar, @Nullable List<C5547g> list) {
            this.f13859a = list;
        }

        @Nullable
        /* renamed from: a */
        public List<C5547g> m25156a() {
            return this.f13859a;
        }
    }

    public C5547g(@NonNull String str, @NonNull String str2) throws JSONException {
        this.f13856a = str;
        this.f13857b = str2;
        this.f13858c = new JSONObject(this.f13856a);
    }

    @NonNull
    /* renamed from: a */
    public String m25162a() {
        return this.f13856a;
    }

    @NonNull
    /* renamed from: b */
    public String m25161b() {
        return this.f13858c.optString("packageName");
    }

    /* renamed from: c */
    public int m25160c() {
        return this.f13858c.optInt("purchaseState", 1) != 4 ? 1 : 2;
    }

    @NonNull
    /* renamed from: d */
    public String m25159d() {
        JSONObject jSONObject = this.f13858c;
        return jSONObject.optString("token", jSONObject.optString("purchaseToken"));
    }

    @NonNull
    /* renamed from: e */
    public String m25158e() {
        return this.f13857b;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C5547g)) {
            return false;
        }
        C5547g gVar = (C5547g) obj;
        return TextUtils.equals(this.f13856a, gVar.m25162a()) && TextUtils.equals(this.f13857b, gVar.m25158e());
    }

    @NonNull
    /* renamed from: f */
    public String m25157f() {
        return this.f13858c.optString("productId");
    }

    public int hashCode() {
        return this.f13856a.hashCode();
    }

    @NonNull
    public String toString() {
        String valueOf = String.valueOf(this.f13856a);
        return valueOf.length() != 0 ? "Purchase. Json: ".concat(valueOf) : new String("Purchase. Json: ");
    }
}
