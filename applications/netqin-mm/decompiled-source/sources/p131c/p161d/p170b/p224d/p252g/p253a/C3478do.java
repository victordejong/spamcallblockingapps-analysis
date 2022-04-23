package p131c.p161d.p170b.p224d.p252g.p253a;

import android.database.sqlite.SQLiteDatabase;
import com.google.android.gms.internal.ads.zzbbq;
import com.google.android.gms.internal.ads.zzcsp;
import com.google.android.gms.internal.ads.zzdrp;
import com.google.android.gms.internal.ads.zzdyr;
/* renamed from: c.d.b.d.g.a.do */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/do.class */
public final class C3478do implements zzdyr<SQLiteDatabase> {

    /* renamed from: a */
    public final /* synthetic */ zzdrp f12763a;

    public C3478do(zzcsp zzcspVar, zzdrp zzdrpVar) {
        this.f12763a = zzdrpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdyr
    /* renamed from: a */
    public final void mo12980a(Throwable th) {
        String valueOf = String.valueOf(th.getMessage());
        zzbbq.m15856b(valueOf.length() != 0 ? "Failed to get offline buffered ping database: ".concat(valueOf) : new String("Failed to get offline buffered ping database: "));
    }

    @Override // com.google.android.gms.internal.ads.zzdyr
    public final /* synthetic */ void onSuccess(SQLiteDatabase sQLiteDatabase) {
        try {
            this.f12763a.apply(sQLiteDatabase);
        } catch (Exception e) {
            String valueOf = String.valueOf(e.getMessage());
            zzbbq.m15856b(valueOf.length() != 0 ? "Error executing function on offline buffered ping database: ".concat(valueOf) : new String("Error executing function on offline buffered ping database: "));
        }
    }
}
