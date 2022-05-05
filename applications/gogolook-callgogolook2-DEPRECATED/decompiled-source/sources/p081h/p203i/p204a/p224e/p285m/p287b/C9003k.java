package p081h.p203i.p204a.p224e.p285m.p287b;

import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.WorkerThread;
import androidx.core.app.NotificationCompat;
import com.google.android.gms.measurement.internal.zzad;
import com.google.android.gms.measurement.internal.zzfh;
import com.google.android.gms.measurement.internal.zzl;
/* renamed from: h.i.a.e.m.b.k */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/m/b/k.class */
public final class C9003k extends AbstractC9055s3 {

    /* renamed from: c */
    public final C9009l f20458c = new C9009l(this, getContext(), "google_app_measurement_local.db");

    /* renamed from: d */
    public boolean f20459d;

    public C9003k(C9052s0 s0Var) {
        super(s0Var);
    }

    @WorkerThread
    /* renamed from: A */
    public final SQLiteDatabase m16517A() throws SQLiteException {
        if (this.f20459d) {
            return null;
        }
        SQLiteDatabase writableDatabase = this.f20458c.getWritableDatabase();
        if (writableDatabase != null) {
            return writableDatabase;
        }
        this.f20459d = true;
        return null;
    }

    @WorkerThread
    /* renamed from: B */
    public final void m16516B() {
        mo16327f();
        mo16328d();
        try {
            int delete = m16517A().delete(NotificationCompat.CarExtender.KEY_MESSAGES, null, null) + 0;
            if (delete > 0) {
                mo16178c().m16389A().m16337a("Reset local analytics data. records", Integer.valueOf(delete));
            }
        } catch (SQLiteException e) {
            mo16178c().m16375s().m16337a("Error resetting local analytics data. error", e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:152:0x03cc  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x0411  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x0420  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x044e  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x045d  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x0499  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x04a8  */
    /* JADX WARN: Removed duplicated region for block: B:194:0x04c8  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x04d4  */
    /* JADX WARN: Removed duplicated region for block: B:225:0x04b0 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:227:0x04b0 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:229:0x04b0 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v128, types: [long] */
    /* JADX WARN: Type inference failed for: r20v10 */
    /* JADX WARN: Type inference failed for: r20v11 */
    /* JADX WARN: Type inference failed for: r20v4 */
    /* JADX WARN: Type inference failed for: r20v5 */
    /* JADX WARN: Type inference failed for: r20v6 */
    /* JADX WARN: Type inference failed for: r20v7 */
    /* JADX WARN: Type inference failed for: r20v8 */
    /* JADX WARN: Type inference failed for: r20v9 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable> m16515a(int r11) {
        /*
            Method dump skipped, instructions count: 1268
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p285m.p287b.C9003k.m16515a(int):java.util.List");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0264  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x026f  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x018b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:127:0x024a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:131:0x024a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01b0  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01be  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0235  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0243  */
    /* JADX WARN: Type inference failed for: r21v1 */
    /* JADX WARN: Type inference failed for: r21v2, types: [long] */
    /* JADX WARN: Type inference failed for: r21v4 */
    /* JADX WARN: Type inference failed for: r21v6 */
    /* JADX WARN: Unknown variable types count: 1 */
    @androidx.annotation.WorkerThread
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m16514a(int r10, byte[] r11) {
        /*
            Method dump skipped, instructions count: 646
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p285m.p287b.C9003k.m16514a(int, byte[]):boolean");
    }

    /* renamed from: a */
    public final boolean m16513a(zzad zzadVar) {
        Parcel obtain = Parcel.obtain();
        zzadVar.writeToParcel(obtain, 0);
        byte[] marshall = obtain.marshall();
        obtain.recycle();
        if (marshall.length <= 131072) {
            return m16514a(0, marshall);
        }
        mo16178c().m16372v().m16338a("Event is too long for local database. Sending event directly to service");
        return false;
    }

    /* renamed from: a */
    public final boolean m16512a(zzfh zzfhVar) {
        Parcel obtain = Parcel.obtain();
        zzfhVar.writeToParcel(obtain, 0);
        byte[] marshall = obtain.marshall();
        obtain.recycle();
        if (marshall.length <= 131072) {
            return m16514a(1, marshall);
        }
        mo16178c().m16372v().m16338a("User property too long for local database. Sending directly to service");
        return false;
    }

    /* renamed from: a */
    public final boolean m16511a(zzl zzlVar) {
        m16351j();
        byte[] a = C8959c4.m16732a((Parcelable) zzlVar);
        if (a.length <= 131072) {
            return m16514a(2, a);
        }
        mo16178c().m16372v().m16338a("Conditional user property too long for local database. Sending directly to service");
        return false;
    }

    @Override // p081h.p203i.p204a.p224e.p285m.p287b.AbstractC9055s3
    /* renamed from: x */
    public final boolean mo16224x() {
        return false;
    }
}
