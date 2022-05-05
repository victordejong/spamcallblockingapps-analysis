package p081h.p203i.p204a.p224e.p259j.p260a;

import android.content.SharedPreferences;
import org.json.JSONObject;
@AbstractC7354p0
/* renamed from: h.i.a.e.j.a.t6 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/t6.class */
public abstract class AbstractC7409t6<T> {

    /* renamed from: a */
    public final int f17466a;

    /* renamed from: b */
    public final String f17467b;

    /* renamed from: c */
    public final T f17468c;

    public AbstractC7409t6(int i, String str, T t) {
        this.f17466a = i;
        this.f17467b = str;
        this.f17468c = t;
        C7430v3.m20637d().m20451a(this);
    }

    public /* synthetic */ AbstractC7409t6(int i, String str, Object obj, C7421u6 u6Var) {
        this(i, str, obj);
    }

    /* renamed from: a */
    public static AbstractC7409t6<String> m20666a(int i, String str) {
        AbstractC7409t6<String> a = m20661a(i, str, (String) null);
        C7430v3.m20637d().m20450b(a);
        return a;
    }

    /* renamed from: a */
    public static AbstractC7409t6<Float> m20665a(int i, String str, float f) {
        return new C7457x6(i, str, Float.valueOf(f));
    }

    /* renamed from: a */
    public static AbstractC7409t6<Integer> m20664a(int i, String str, int i2) {
        return new C7433v6(i, str, Integer.valueOf(i2));
    }

    /* renamed from: a */
    public static AbstractC7409t6<Long> m20663a(int i, String str, long j) {
        return new C7445w6(i, str, Long.valueOf(j));
    }

    /* renamed from: a */
    public static AbstractC7409t6<Boolean> m20662a(int i, String str, Boolean bool) {
        return new C7421u6(i, str, bool);
    }

    /* renamed from: a */
    public static AbstractC7409t6<String> m20661a(int i, String str, String str2) {
        return new C7469y6(i, str, str2);
    }

    /* renamed from: b */
    public static AbstractC7409t6<String> m20659b(int i, String str) {
        AbstractC7409t6<String> a = m20661a(i, str, (String) null);
        C7430v3.m20637d().m20449c(a);
        return a;
    }

    /* renamed from: a */
    public abstract T mo20473a(SharedPreferences sharedPreferences);

    /* renamed from: a */
    public abstract T mo20472a(JSONObject jSONObject);

    /* renamed from: a */
    public final String m20667a() {
        return this.f17467b;
    }

    /* renamed from: b */
    public final int m20660b() {
        return this.f17466a;
    }

    /* renamed from: c */
    public final T m20658c() {
        return this.f17468c;
    }
}
