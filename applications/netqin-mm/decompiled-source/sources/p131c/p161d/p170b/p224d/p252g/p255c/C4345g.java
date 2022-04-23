package p131c.p161d.p170b.p224d.p252g.p255c;

import android.content.SharedPreferences;
import android.util.Log;
import com.google.android.gms.internal.clearcut.zzae;
import com.google.android.gms.internal.clearcut.zzao;
/* renamed from: c.d.b.d.g.c.g */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/c/g.class */
public final class C4345g extends zzae<String> {
    public C4345g(zzao zzaoVar, String str, String str2) {
        super(zzaoVar, str, str2, null);
    }

    @Override // com.google.android.gms.internal.clearcut.zzae
    /* renamed from: a */
    public final /* synthetic */ String mo10856a(String str) {
        return str;
    }

    /* renamed from: b */
    public final String mo10861a(SharedPreferences sharedPreferences) {
        try {
            return sharedPreferences.getString(this.f29215b, null);
        } catch (ClassCastException e) {
            String valueOf = String.valueOf(this.f29215b);
            Log.e("PhenotypeFlag", valueOf.length() != 0 ? "Invalid string value in SharedPreferences for ".concat(valueOf) : new String("Invalid string value in SharedPreferences for "), e);
            return null;
        }
    }
}
