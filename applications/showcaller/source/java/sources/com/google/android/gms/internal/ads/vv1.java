package com.google.android.gms.internal.ads;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.os.Build;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.util.AbstractC5728q1;
import java.util.ArrayList;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/vv1.class */
public final class vv1 {

    /* renamed from: a */
    private final C6854pm f31359a;

    /* renamed from: b */
    private final Context f31360b;

    /* renamed from: c */
    private final cv1 f31361c;

    /* renamed from: d */
    private final zzcgz f31362d;

    /* renamed from: e */
    private final String f31363e;

    /* renamed from: f */
    private final jo2 f31364f;

    /* renamed from: g */
    private final AbstractC5728q1 f31365g = C5667s.m18156h().m12230p();

    public vv1(Context context, zzcgz zzcgzVar, C6854pm c6854pm, cv1 cv1Var, String str, jo2 jo2Var) {
        this.f31360b = context;
        this.f31362d = zzcgzVar;
        this.f31359a = c6854pm;
        this.f31361c = cv1Var;
        this.f31363e = str;
        this.f31364f = jo2Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18 */
    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* renamed from: c */
    private static final void m9862c(SQLiteDatabase sQLiteDatabase, ArrayList<C7152xo> arrayList) {
        char c;
        int size = arrayList.size();
        int i = 0;
        ?? r0 = 0;
        while (true) {
            c = r0;
            if (i >= size) {
                break;
            }
            C7152xo c7152xo = arrayList.get(i);
            char c2 = c;
            if (c7152xo.m9113Y() == 2) {
                c2 = c;
                if (c7152xo.m9130E() > c) {
                    c2 = c7152xo.m9130E();
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
    public final void m9864a(boolean z) {
        try {
            this.f31361c.m15994a(new cn2(this, z) { // from class: com.google.android.gms.internal.ads.rv1

                /* renamed from: a */
                private final vv1 f29254a;

                /* renamed from: b */
                private final boolean f29255b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f29254a = this;
                    this.f29255b = z;
                }

                @Override // com.google.android.gms.internal.ads.cn2
                /* renamed from: a */
                public final Object mo8162a(Object obj) {
                    this.f29254a.m9863b(this.f29255b, (SQLiteDatabase) obj);
                    return null;
                }
            });
        } catch (Exception e) {
            String valueOf = String.valueOf(e.getMessage());
            ei0.m15467c(valueOf.length() != 0 ? "Error in offline signals database startup: ".concat(valueOf) : new String("Error in offline signals database startup: "));
        }
    }

    /* renamed from: b */
    public final /* synthetic */ Void m9863b(boolean z, SQLiteDatabase sQLiteDatabase) {
        if (z) {
            this.f31360b.deleteDatabase("OfflineUpload.db");
            return null;
        }
        int i = 2;
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25717i6)).booleanValue()) {
            io2 m14338a = io2.m14338a("oa_upload");
            m14338a.m14336c("oa_failed_reqs", String.valueOf(qv1.m11792b(sQLiteDatabase, 0)));
            m14338a.m14336c("oa_total_reqs", String.valueOf(qv1.m11792b(sQLiteDatabase, 1)));
            m14338a.m14336c("oa_upload_time", String.valueOf(C5667s.m18153k().mo16807a()));
            m14338a.m14336c("oa_last_successful_time", String.valueOf(qv1.m11791c(sQLiteDatabase, 2)));
            m14338a.m14336c("oa_session_id", this.f31365g.mo17948t() ? "" : this.f31363e);
            this.f31364f.mo9502b(m14338a);
            ArrayList<C7152xo> m11793a = qv1.m11793a(sQLiteDatabase);
            m9862c(sQLiteDatabase, m11793a);
            int size = m11793a.size();
            for (int i2 = 0; i2 < size; i2++) {
                C7152xo c7152xo = m11793a.get(i2);
                io2 m14338a2 = io2.m14338a("oa_signals");
                m14338a2.m14336c("oa_session_id", this.f31365g.mo17948t() ? "" : this.f31363e);
                C6967so m9126I = c7152xo.m9126I();
                String valueOf = m9126I.m10984C() ? String.valueOf(m9126I.m10979H() - 1) : "-1";
                String obj = mx2.m13062b(c7152xo.m9127H(), uv1.f30981a).toString();
                m14338a2.m14336c("oa_sig_ts", String.valueOf(c7152xo.m9130E()));
                m14338a2.m14336c("oa_sig_status", String.valueOf(c7152xo.m9113Y() - 1));
                m14338a2.m14336c("oa_sig_resp_lat", String.valueOf(c7152xo.m9129F()));
                m14338a2.m14336c("oa_sig_render_lat", String.valueOf(c7152xo.m9128G()));
                m14338a2.m14336c("oa_sig_formats", obj);
                m14338a2.m14336c("oa_sig_nw_type", valueOf);
                m14338a2.m14336c("oa_sig_wifi", String.valueOf(c7152xo.m9112Z() - 1));
                m14338a2.m14336c("oa_sig_airplane", String.valueOf(c7152xo.m9111a0() - 1));
                m14338a2.m14336c("oa_sig_data", String.valueOf(c7152xo.m9110b0() - 1));
                m14338a2.m14336c("oa_sig_nw_resp", String.valueOf(c7152xo.m9125J()));
                m14338a2.m14336c("oa_sig_offline", String.valueOf(c7152xo.m9109c0() - 1));
                m14338a2.m14336c("oa_sig_nw_state", String.valueOf(c7152xo.m9124L().zza()));
                if (m9126I.m10983D() && m9126I.m10984C() && m9126I.m10979H() == 2) {
                    m14338a2.m14336c("oa_sig_cell_type", String.valueOf(m9126I.m10978I() - 1));
                }
                this.f31364f.mo9502b(m14338a2);
            }
        } else {
            ArrayList<C7152xo> m11793a2 = qv1.m11793a(sQLiteDatabase);
            C7189yo m16312C = C6337bp.m16312C();
            m16312C.m8757v(this.f31360b.getPackageName());
            m16312C.m8756w(Build.MODEL);
            m16312C.m8760r(qv1.m11792b(sQLiteDatabase, 0));
            m16312C.m8761q(m11793a2);
            m16312C.m8759s(qv1.m11792b(sQLiteDatabase, 1));
            m16312C.m8758t(C5667s.m18153k().mo16807a());
            m16312C.m8755x(qv1.m11791c(sQLiteDatabase, 2));
            C6337bp m15512n = m16312C.m15512n();
            m9862c(sQLiteDatabase, m11793a2);
            this.f31359a.m12218b(new AbstractC6817om(m15512n) { // from class: com.google.android.gms.internal.ads.sv1

                /* renamed from: a */
                private final C6337bp f29708a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f29708a = m15512n;
                }

                @Override // com.google.android.gms.internal.ads.AbstractC6817om
                /* renamed from: a */
                public final void mo8772a(C6373co c6373co) {
                    c6373co.m16012A(this.f29708a);
                }
            });
            C6746mp m12839C = C6783np.m12839C();
            m12839C.m13137q(this.f31362d.f33855e);
            m12839C.m13136r(this.f31362d.f33856f);
            if (true == this.f31362d.f33857g) {
                i = 0;
            }
            m12839C.m13135s(i);
            this.f31359a.m12218b(new AbstractC6817om(m12839C.m15512n()) { // from class: com.google.android.gms.internal.ads.tv1

                /* renamed from: a */
                private final C6783np f30380a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f30380a = m15512n2;
                }

                @Override // com.google.android.gms.internal.ads.AbstractC6817om
                /* renamed from: a */
                public final void mo8772a(C6373co c6373co) {
                    C6783np c6783np = this.f30380a;
                    C7040un m14416x = c6373co.m16005v().m14416x();
                    m14416x.m10289r(c6783np);
                    c6373co.m16004w(m14416x);
                }
            });
            this.f31359a.m12217c(10004);
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
