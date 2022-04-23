package p081h.p203i.p204a.p224e.p259j.p266g;

import android.content.SharedPreferences;
import android.util.Log;
/* renamed from: h.i.a.e.j.g.k */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/k.class */
public final class C7624k extends AbstractC7581f<Boolean> {
    public C7624k(C7664p pVar, String str, Boolean bool) {
        super(pVar, str, bool, null);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7581f
    /* renamed from: a */
    public final /* synthetic */ Boolean mo20070a(String str) {
        if (C7733y5.f18088c.matcher(str).matches()) {
            return true;
        }
        if (C7733y5.f18089d.matcher(str).matches()) {
            return false;
        }
        String str2 = this.f17829b;
        StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 28 + String.valueOf(str).length());
        sb.append("Invalid boolean value for ");
        sb.append(str2);
        sb.append(": ");
        sb.append(str);
        Log.e("PhenotypeFlag", sb.toString());
        return null;
    }

    /* renamed from: b */
    public final Boolean mo20071a(SharedPreferences sharedPreferences) {
        try {
            return Boolean.valueOf(sharedPreferences.getBoolean(this.f17829b, false));
        } catch (ClassCastException e) {
            String valueOf = String.valueOf(this.f17829b);
            Log.e("PhenotypeFlag", valueOf.length() != 0 ? "Invalid boolean value in SharedPreferences for ".concat(valueOf) : new String("Invalid boolean value in SharedPreferences for "), e);
            return null;
        }
    }
}
