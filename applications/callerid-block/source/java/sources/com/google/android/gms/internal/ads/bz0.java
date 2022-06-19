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
    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* renamed from: c */
    private static final void m7909c(SQLiteDatabase sQLiteDatabase, ArrayList<vx2> arrayList) {
        char c;
        int size = arrayList.size();
        int i = 0;
        ?? r0 = 0;
        while (true) {
            c = r0;
            if (i >= size) {
                break;
            }
            vx2 vx2Var = arrayList.get(i);
            char c2 = c;
            if (vx2Var.H() == zzvy.c) {
                c2 = c;
                if (vx2Var.G() > c) {
                    c2 = vx2Var.G();
                }
            }
            i++;
            r0 = c2;
        }
        if (c != 0) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("value", Long.valueOf(c));
            sQLiteDatabase.update("offline_signal_statistics", contentValues, "statistic_name = 'last_successful_request_time'", null);
        }
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
            zp1 m4559a = zp1.m4559a("oa_upload");
            m4559a.m4557c("oa_failed_reqs", String.valueOf(wy0.m4984b(sQLiteDatabase, 0)));
            m4559a.m4557c("oa_total_reqs", String.valueOf(wy0.m4984b(sQLiteDatabase, 1)));
            m4559a.m4557c("oa_upload_time", String.valueOf(C1407r.m8913k().m8247a()));
            m4559a.m4557c("oa_last_successful_time", String.valueOf(wy0.m4983c(sQLiteDatabase, 2)));
            m4559a.m4557c("oa_session_id", this.f6225g.m8893K() ? "" : this.f6223e);
            this.f6224f.m8101b(m4559a);
            ArrayList<vx2> m4985a = wy0.m4985a(sQLiteDatabase);
            m7909c(sQLiteDatabase, m4985a);
            int size = m4985a.size();
            for (int i2 = 0; i2 < size; i2++) {
                vx2 vx2Var = m4985a.get(i2);
                zp1 m4559a2 = zp1.m4559a("oa_signals");
                m4559a2.m4557c("oa_session_id", this.f6225g.m8893K() ? "" : this.f6223e);
                qx2 M = vx2Var.M();
                String valueOf = M.E() ? String.valueOf(M.F().zza()) : "-1";
                String obj = ix1.m7066b(vx2Var.L(), az0.a).toString();
                m4559a2.m4557c("oa_sig_ts", String.valueOf(vx2Var.G()));
                m4559a2.m4557c("oa_sig_status", String.valueOf(vx2Var.H().zza()));
                m4559a2.m4557c("oa_sig_resp_lat", String.valueOf(vx2Var.I()));
                m4559a2.m4557c("oa_sig_render_lat", String.valueOf(vx2Var.J()));
                m4559a2.m4557c("oa_sig_formats", obj);
                m4559a2.m4557c("oa_sig_nw_type", valueOf);
                m4559a2.m4557c("oa_sig_wifi", String.valueOf(vx2Var.N().zza()));
                m4559a2.m4557c("oa_sig_airplane", String.valueOf(vx2Var.O().zza()));
                m4559a2.m4557c("oa_sig_data", String.valueOf(vx2Var.P().zza()));
                m4559a2.m4557c("oa_sig_nw_resp", String.valueOf(vx2Var.Q()));
                m4559a2.m4557c("oa_sig_offline", String.valueOf(vx2Var.R().zza()));
                m4559a2.m4557c("oa_sig_nw_state", String.valueOf(vx2Var.S().zza()));
                if (M.G() && M.E() && M.F().equals(zzwn.c)) {
                    m4559a2.m4557c("oa_sig_cell_type", String.valueOf(M.H().zza()));
                }
                this.f6224f.m8101b(m4559a2);
            }
        } else {
            ArrayList<vx2> m4985a2 = wy0.m4985a(sQLiteDatabase);
            wx2 E = yx2.E();
            E.u(this.f6220b.getPackageName());
            E.v(Build.MODEL);
            E.r(wy0.m4984b(sQLiteDatabase, 0));
            E.q(m4985a2);
            E.s(wy0.m4984b(sQLiteDatabase, 1));
            E.t(C1407r.m8913k().m8247a());
            E.w(wy0.m4983c(sQLiteDatabase, 2));
            yx2 m = E.m();
            m7909c(sQLiteDatabase, m4985a2);
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
