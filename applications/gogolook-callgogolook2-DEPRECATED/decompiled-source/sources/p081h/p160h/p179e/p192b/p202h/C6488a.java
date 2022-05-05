package p081h.p160h.p179e.p192b.p202h;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.core.app.Person;
import p626l.p641z.p643d.C15149k;
/* renamed from: h.h.e.b.h.a */
/* loaded from: classes2-dex2jar.jar:h/h/e/b/h/a.class */
public final class C6488a {

    /* renamed from: a */
    public static final C6488a f16168a = new C6488a();

    /* renamed from: a */
    public static /* synthetic */ String m22474a(C6488a aVar, Context context, String str, String str2, int i, Object obj) {
        if ((i & 4) != 0) {
            str2 = "";
        }
        return aVar.m22475a(context, str, str2);
    }

    /* renamed from: a */
    public final SharedPreferences m22476a(Context context) {
        C15149k.m377b(context, "context");
        SharedPreferences sharedPreferences = context.getSharedPreferences("whoscallSDK_ml", 0);
        C15149k.m383a((Object) sharedPreferences, "context.getSharedPrefere…CE, Context.MODE_PRIVATE)");
        return sharedPreferences;
    }

    /* renamed from: a */
    public final String m22475a(Context context, String str, String str2) {
        C15149k.m377b(context, "context");
        C15149k.m377b(str, Person.KEY_KEY);
        C15149k.m377b(str2, "defaultValue");
        return m22476a(context).getString(str, str2);
    }

    /* renamed from: b */
    public final void m22473b(Context context, String str, String str2) {
        C15149k.m377b(context, "context");
        C15149k.m377b(str, Person.KEY_KEY);
        m22476a(context).edit().putString(str, str2).apply();
    }
}
