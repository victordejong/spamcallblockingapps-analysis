package p081h.p203i.p204a.p224e.p259j.p266g;

import android.content.SharedPreferences;
import android.util.Log;
/* renamed from: h.i.a.e.j.g.l */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/l.class */
public final class C7631l extends AbstractC7581f<String> {
    public C7631l(C7664p pVar, String str, String str2) {
        super(pVar, str, str2, null);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7581f
    /* renamed from: a */
    public final /* synthetic */ String mo20070a(String str) {
        return str;
    }

    /* renamed from: b */
    public final String mo20071a(SharedPreferences sharedPreferences) {
        try {
            return sharedPreferences.getString(this.f17829b, null);
        } catch (ClassCastException e) {
            String valueOf = String.valueOf(this.f17829b);
            Log.e("PhenotypeFlag", valueOf.length() != 0 ? "Invalid string value in SharedPreferences for ".concat(valueOf) : new String("Invalid string value in SharedPreferences for "), e);
            return null;
        }
    }
}
