package p131c.p161d.p170b.p224d.p252g.p253a;

import android.content.SharedPreferences;
import com.google.android.gms.internal.ads.zzaax;
import com.google.android.gms.internal.ads.zzadk;
/* renamed from: c.d.b.d.g.a.k */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/k.class */
public final class C3713k implements zzadk {

    /* renamed from: a */
    public final /* synthetic */ zzaax f13825a;

    public C3713k(zzaax zzaaxVar) {
        this.f13825a = zzaaxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzadk
    /* renamed from: a */
    public final Boolean mo16854a(String str, boolean z) {
        SharedPreferences sharedPreferences;
        sharedPreferences = this.f13825a.f23644e;
        return Boolean.valueOf(sharedPreferences.getBoolean(str, z));
    }

    @Override // com.google.android.gms.internal.ads.zzadk
    /* renamed from: a */
    public final Double mo16857a(String str, double d) {
        SharedPreferences sharedPreferences;
        sharedPreferences = this.f13825a.f23644e;
        return Double.valueOf(sharedPreferences.getFloat(str, (float) d));
    }

    @Override // com.google.android.gms.internal.ads.zzadk
    /* renamed from: a */
    public final Long mo16856a(String str, long j) {
        SharedPreferences sharedPreferences;
        SharedPreferences sharedPreferences2;
        try {
            sharedPreferences2 = this.f13825a.f23644e;
            return Long.valueOf(sharedPreferences2.getLong(str, j));
        } catch (ClassCastException e) {
            sharedPreferences = this.f13825a.f23644e;
            return Long.valueOf(sharedPreferences.getInt(str, (int) j));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzadk
    /* renamed from: a */
    public final String mo16855a(String str, String str2) {
        SharedPreferences sharedPreferences;
        sharedPreferences = this.f13825a.f23644e;
        return sharedPreferences.getString(str, str2);
    }
}
