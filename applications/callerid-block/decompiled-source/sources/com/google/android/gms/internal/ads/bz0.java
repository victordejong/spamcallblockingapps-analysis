package com.google.android.gms.internal.ads;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.os.Build;
import com.google.android.gms.ads.internal.C1407r;
import com.google.android.gms.ads.internal.util.AbstractC1409a1;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bz0.class */
public final class bz0 {

    /* renamed from: a */
    private final wv2 f6219a;

    /* renamed from: b */
    private final Context f6220b;

    /* renamed from: c */
    private final jy0 f6221c;

    /* renamed from: d */
    private final zzbbq f6222d;

    /* renamed from: e */
    private final String f6223e;

    /* renamed from: f */
    private final aq1 f6224f;

    /* renamed from: g */
    private final AbstractC1409a1 f6225g = C1407r.m8916h().m4585l();

    public bz0(Context context, zzbbq zzbbqVar, wv2 wv2Var, jy0 jy0Var, String str, aq1 aq1Var) {
        this.f6220b = context;
        this.f6222d = zzbbqVar;
        this.f6219a = wv2Var;
        this.f6221c = jy0Var;
        this.f6223e = str;
        this.f6224f = aq1Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18 */
    /* JADX WARN: Type inference failed for: r0v23 */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4, types: [long] */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v3, types: [long] */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static final void m7909c(android.database.sqlite.SQLiteDatabase r6, java.util.ArrayList<com.google.android.gms.internal.ads.vx2> r7) {
        /*
            r0 = r7
            int r0 = r0.size()
            r8 = r0
            r0 = 0
            r9 = r0
            r0 = 0
            r10 = r0
        L_0x000c:
            r0 = r9
            r1 = r8
            if (r0 >= r1) goto L_0x004c
            r0 = r7
            r1 = r9
            java.lang.Object r0 = r0.get(r1)
            com.google.android.gms.internal.ads.vx2 r0 = (com.google.android.gms.internal.ads.vx2) r0
            r12 = r0
            r0 = r10
            r13 = r0
            r0 = r12
            com.google.android.gms.internal.ads.zzvy r0 = r0.H()
            com.google.android.gms.internal.ads.zzvy r1 = com.google.android.gms.internal.ads.zzvy.c
            if (r0 != r1) goto L_0x0042
            r0 = r10
            r13 = r0
            r0 = r12
            long r0 = r0.G()
            r1 = r10
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0042
            r0 = r12
            long r0 = r0.G()
            r13 = r0
        L_0x0042:
            int r9 = r9 + 1
            r0 = r13
            r10 = r0
            goto L_0x000c
        L_0x004c:
            r0 = r10
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0071
            android.content.ContentValues r0 = new android.content.ContentValues
            r1 = r0
            r1.<init>()
            r7 = r0
            r0 = r7
            java.lang.String r1 = "value"
            r2 = r10
            java.lang.Long r2 = java.lang.Long.valueOf(r2)
            r0.put(r1, r2)
            r0 = r6
            java.lang.String r1 = "offline_signal_statistics"
            r2 = r7
            java.lang.String r3 = "statistic_name = 'last_successful_request_time'"
            r4 = 0
            int r0 = r0.update(r1, r2, r3, r4)
        L_0x0071:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.bz0.m7909c(android.database.sqlite.SQLiteDatabase, java.util.ArrayList):void");
    }

    /* renamed from: a */
    public final void m7911a(boolean z) {
        try {
            this.f6221c.m6905a(new xy0(this, z));
        } catch (Exception e) {
            String valueOf = String.valueOf(e.getMessage());
            C1894po.m6183c(valueOf.length() != 0 ? "Error in offline signals database startup: ".concat(valueOf) : new String("Error in offline signals database startup: "));
        }
    }

    /* renamed from: b */
    final /* synthetic */ Void m7910b(boolean z, SQLiteDatabase sQLiteDatabase) {
        if (z) {
            this.f6220b.deleteDatabase("OfflineUpload.db");
            return null;
        }
        int i = 2;
        if (((Boolean) C1674c.m7906c().m6878b(C1842m3.f7411f5)).booleanValue()) {
            zp1 a = zp1.m4559a("oa_upload");
            a.m4557c("oa_failed_reqs", String.valueOf(wy0.m4984b(sQLiteDatabase, 0)));
            a.m4557c("oa_total_reqs", String.valueOf(wy0.m4984b(sQLiteDatabase, 1)));
            a.m4557c("oa_upload_time", String.valueOf(C1407r.m8913k().m8247a()));
            a.m4557c("oa_last_successful_time", String.valueOf(wy0.m4983c(sQLiteDatabase, 2)));
            a.m4557c("oa_session_id", this.f6225g.m8893K() ? "" : this.f6223e);
            this.f6224f.m8101b(a);
            ArrayList<vx2> a2 = wy0.m4985a(sQLiteDatabase);
            m7909c(sQLiteDatabase, a2);
            int size = a2.size();
            for (int i2 = 0; i2 < size; i2++) {
                vx2 vx2Var = a2.get(i2);
                zp1 a3 = zp1.m4559a("oa_signals");
                a3.m4557c("oa_session_id", this.f6225g.m8893K() ? "" : this.f6223e);
                qx2 M = vx2Var.M();
                String valueOf = M.E() ? String.valueOf(M.F().zza()) : "-1";
                String obj = ix1.m7066b(vx2Var.L(), az0.a).toString();
                a3.m4557c("oa_sig_ts", String.valueOf(vx2Var.G()));
                a3.m4557c("oa_sig_status", String.valueOf(vx2Var.H().zza()));
                a3.m4557c("oa_sig_resp_lat", String.valueOf(vx2Var.I()));
                a3.m4557c("oa_sig_render_lat", String.valueOf(vx2Var.J()));
                a3.m4557c("oa_sig_formats", obj);
                a3.m4557c("oa_sig_nw_type", valueOf);
                a3.m4557c("oa_sig_wifi", String.valueOf(vx2Var.N().zza()));
                a3.m4557c("oa_sig_airplane", String.valueOf(vx2Var.O().zza()));
                a3.m4557c("oa_sig_data", String.valueOf(vx2Var.P().zza()));
                a3.m4557c("oa_sig_nw_resp", String.valueOf(vx2Var.Q()));
                a3.m4557c("oa_sig_offline", String.valueOf(vx2Var.R().zza()));
                a3.m4557c("oa_sig_nw_state", String.valueOf(vx2Var.S().zza()));
                if (M.G() && M.E() && M.F().equals(zzwn.c)) {
                    a3.m4557c("oa_sig_cell_type", String.valueOf(M.H().zza()));
                }
                this.f6224f.m8101b(a3);
            }
        } else {
            ArrayList<vx2> a4 = wy0.m4985a(sQLiteDatabase);
            wx2 E = yx2.E();
            E.u(this.f6220b.getPackageName());
            E.v(Build.MODEL);
            E.r(wy0.m4984b(sQLiteDatabase, 0));
            E.q(a4);
            E.s(wy0.m4984b(sQLiteDatabase, 1));
            E.t(C1407r.m8913k().m8247a());
            E.w(wy0.m4983c(sQLiteDatabase, 2));
            yx2 m = E.m();
            m7909c(sQLiteDatabase, a4);
            this.f6219a.m4990c(new yy0(m));
            jy2 E2 = ky2.E();
            E2.q(this.f6222d.c);
            E2.r(this.f6222d.d);
            if (true == this.f6222d.e) {
                i = 0;
            }
            E2.s(i);
            this.f6219a.m4990c(new zy0(E2.m()));
            this.f6219a.m4991b(zzui.V);
        }
        sQLiteDatabase.delete("offline_signal_contents", null, null);
        ContentValues contentValues = new ContentValues();
        contentValues.put("value", (Integer) 0);
        sQLiteDatabase.update("offline_signal_statistics", contentValues, "statistic_name = ?", new String[]{"failed_requests"});
        ContentValues contentValues2 = new ContentValues();
        contentValues2.put("value", (Integer) 0);
        sQLiteDatabase.update("offline_signal_statistics", contentValues2, "statistic_name = ?", new String[]{"total_requests"});
        return null;
    }
}
