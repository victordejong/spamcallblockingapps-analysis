package com.google.android.gms.tagmanager;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.common.util.VisibleForTesting;
import com.privacystar.core.util.DateUtil;
import java.util.Collections;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzeb.class */
public final class zzeb implements zzcb {
    private static final String zzxf = String.format("CREATE TABLE IF NOT EXISTS %s ( '%s' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, '%s' INTEGER NOT NULL, '%s' TEXT NOT NULL,'%s' INTEGER NOT NULL);", "gtm_hits", "hit_id", "hit_time", "hit_url", "hit_first_send_time");
    private final zzed zzbdf;
    private volatile zzbe zzbdg;
    private final zzcc zzbdh;
    private final String zzbdi;
    private long zzbdj;
    private final int zzbdk;
    private final Context zzri;
    private Clock zzrz;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzeb(zzcc zzccVar, Context context) {
        this(zzccVar, context, "gtm_urls.db", 2000);
    }

    @VisibleForTesting
    private zzeb(zzcc zzccVar, Context context, String str, int i) {
        this.zzri = context.getApplicationContext();
        this.zzbdi = str;
        this.zzbdh = zzccVar;
        this.zzrz = DefaultClock.getInstance();
        this.zzbdf = new zzed(this, this.zzri, this.zzbdi);
        this.zzbdg = new zzfu(this.zzri, new zzec(this));
        this.zzbdj = 0L;
        this.zzbdk = 2000;
    }

    private final void zza(String[] strArr) {
        SQLiteDatabase zzdh;
        if (strArr != null && strArr.length != 0 && (zzdh = zzdh("Error opening database for deleteHits.")) != null) {
            boolean z = true;
            try {
                zzdh.delete("gtm_hits", String.format("HIT_ID in (%s)", TextUtils.join(",", Collections.nCopies(strArr.length, "?"))), strArr);
                zzcc zzccVar = this.zzbdh;
                if (zzoz() != 0) {
                    z = false;
                }
                zzccVar.zzq(z);
            } catch (SQLiteException e) {
                zzdi.zzab("Error deleting hits");
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0090  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.util.List<java.lang.String> zzaa(int r11) {
        /*
            Method dump skipped, instructions count: 278
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.tagmanager.zzeb.zzaa(int):java.util.List");
    }

    /* JADX WARN: Removed duplicated region for block: B:113:0x02af A[Catch: all -> 0x02da, TRY_LEAVE, TryCatch #12 {all -> 0x02da, blocks: (B:111:0x029d, B:113:0x02af, B:114:0x02bb, B:116:0x02c8), top: B:135:0x029d }] */
    /* JADX WARN: Removed duplicated region for block: B:114:0x02bb A[Catch: all -> 0x02da, TRY_ENTER, TryCatch #12 {all -> 0x02da, blocks: (B:111:0x029d, B:113:0x02af, B:114:0x02bb, B:116:0x02c8), top: B:135:0x029d }] */
    /* JADX WARN: Removed duplicated region for block: B:118:0x02d0  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x02e9  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x010b  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x016f  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0173  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x01b6  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x01c5  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x020b  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0259  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.util.List<com.google.android.gms.tagmanager.zzbw> zzab(int r11) {
        /*
            Method dump skipped, instructions count: 755
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.tagmanager.zzeb.zzab(int):java.util.List");
    }

    private final SQLiteDatabase zzdh(String str) {
        try {
            return this.zzbdf.getWritableDatabase();
        } catch (SQLiteException e) {
            zzdi.zzab(str);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zze(long j) {
        zza(new String[]{String.valueOf(j)});
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zze(long j, long j2) {
        SQLiteDatabase zzdh = zzdh("Error opening database for getNumStoredHits.");
        if (zzdh != null) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("hit_first_send_time", Long.valueOf(j2));
            try {
                zzdh.update("gtm_hits", contentValues, "hit_id=?", new String[]{String.valueOf(j)});
            } catch (SQLiteException e) {
                StringBuilder sb = new StringBuilder(69);
                sb.append("Error setting HIT_FIRST_DISPATCH_TIME for hitId: ");
                sb.append(j);
                zzdi.zzab(sb.toString());
                zze(j);
            }
        }
    }

    private final int zzoz() {
        Throwable th;
        int i;
        SQLiteDatabase zzdh = zzdh("Error opening database for getNumStoredHits.");
        int i2 = 0;
        if (zzdh == null) {
            return 0;
        }
        Cursor cursor = null;
        Cursor cursor2 = null;
        try {
            try {
                cursor = zzdh.rawQuery("SELECT COUNT(*) from gtm_hits", null);
            } catch (SQLiteException e) {
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            if (cursor.moveToFirst()) {
                i2 = (int) cursor.getLong(0);
            }
            i = i2;
            if (cursor != null) {
                cursor.close();
                i = i2;
            }
        } catch (SQLiteException e2) {
            cursor2 = cursor;
            zzdi.zzab("Error getting numStoredHits");
            i = 0;
            if (cursor != null) {
                cursor.close();
                i = 0;
            }
            return i;
        } catch (Throwable th3) {
            th = th3;
            cursor2 = cursor;
            if (cursor2 != null) {
                cursor2.close();
            }
            throw th;
        }
        return i;
    }

    private final int zzpa() {
        Throwable th;
        int i;
        SQLiteDatabase zzdh = zzdh("Error opening database for getNumStoredHits.");
        if (zzdh == null) {
            return 0;
        }
        Cursor cursor = null;
        Cursor cursor2 = null;
        try {
            try {
                cursor = zzdh.query("gtm_hits", new String[]{"hit_id", "hit_first_send_time"}, "hit_first_send_time=0", null, null, null, null);
            } catch (SQLiteException e) {
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            i = cursor.getCount();
            if (cursor != null) {
                cursor.close();
            }
        } catch (SQLiteException e2) {
            cursor2 = cursor;
            zzdi.zzab("Error getting num untried hits");
            i = 0;
            if (cursor != null) {
                cursor.close();
                i = 0;
            }
            return i;
        } catch (Throwable th3) {
            th = th3;
            cursor2 = cursor;
            if (cursor2 != null) {
                cursor2.close();
            }
            throw th;
        }
        return i;
    }

    @Override // com.google.android.gms.tagmanager.zzcb
    public final void dispatch() {
        zzdi.m328v("GTM Dispatch running...");
        if (this.zzbdg.zzod()) {
            List<zzbw> zzab = zzab(40);
            if (zzab.isEmpty()) {
                zzdi.m328v("...nothing to dispatch");
                this.zzbdh.zzq(true);
                return;
            }
            this.zzbdg.zze(zzab);
            if (zzpa() > 0) {
                zzfn.zzpu().dispatch();
            }
        }
    }

    @Override // com.google.android.gms.tagmanager.zzcb
    public final void zzb(long j, String str) {
        long currentTimeMillis = this.zzrz.currentTimeMillis();
        if (currentTimeMillis > this.zzbdj + DateUtil.DAY_IN_MILLIS) {
            this.zzbdj = currentTimeMillis;
            SQLiteDatabase zzdh = zzdh("Error opening database for deleteStaleHits.");
            if (zzdh != null) {
                zzdh.delete("gtm_hits", "HIT_TIME < ?", new String[]{Long.toString(this.zzrz.currentTimeMillis() - 2592000000L)});
                this.zzbdh.zzq(zzoz() == 0);
            }
        }
        int zzoz = (zzoz() - this.zzbdk) + 1;
        if (zzoz > 0) {
            List<String> zzaa = zzaa(zzoz);
            int size = zzaa.size();
            StringBuilder sb = new StringBuilder(51);
            sb.append("Store full, deleting ");
            sb.append(size);
            sb.append(" hits to make room.");
            zzdi.m328v(sb.toString());
            zza((String[]) zzaa.toArray(new String[0]));
        }
        SQLiteDatabase zzdh2 = zzdh("Error opening database for putHit");
        if (zzdh2 != null) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("hit_time", Long.valueOf(j));
            contentValues.put("hit_url", str);
            contentValues.put("hit_first_send_time", (Integer) 0);
            try {
                zzdh2.insert("gtm_hits", null, contentValues);
                this.zzbdh.zzq(false);
            } catch (SQLiteException e) {
                zzdi.zzab("Error storing hit");
            }
        }
    }
}
