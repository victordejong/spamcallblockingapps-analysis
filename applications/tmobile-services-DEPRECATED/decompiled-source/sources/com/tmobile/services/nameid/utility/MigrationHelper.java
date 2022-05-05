package com.tmobile.services.nameid.utility;

import android.content.Context;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.FragmentManager;
import com.facebook.stetho.server.http.HttpStatus;
import com.tmobile.services.nameid.MainApplication;
import com.tmobile.services.nameid.api.ApiUtils;
import com.tmobile.services.nameid.api.ApiWrapper;
import com.tmobile.services.nameid.api.MetroApiWrapper;
import com.tmobile.services.nameid.model.Caller;
import com.tmobile.services.nameid.model.CallerSetting;
import com.tmobile.services.nameid.model.MetroBlockListPullRes;
import com.tmobile.services.nameid.model.UserPreferenceStatus;
import com.tmobile.services.nameid.utility.SubscriptionHelper;
import io.reactivex.Observer;
import io.reactivex.annotations.NonNull;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.realm.ImportFlag;
import io.realm.Realm;
import io.realm.RealmConfiguration;
import io.realm.RealmResults;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.annotation.Nullable;
import retrofit2.HttpException;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/MigrationHelper.class */
public class MigrationHelper {

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/MigrationHelper$BlockList.class */
    public static class BlockList {

        /* renamed from: a */
        private String f14395a;

        /* renamed from: b */
        private int f14396b;

        private BlockList() {
        }

        /* renamed from: a */
        String m5511a() {
            return this.f14395a;
        }

        /* renamed from: b */
        int m5510b() {
            return this.f14396b;
        }

        /* renamed from: c */
        void m5509c(String str) {
            this.f14395a = str;
        }

        /* renamed from: d */
        void m5508d(int i) {
            this.f14396b = i;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/MigrationHelper$DatabaseHelper.class */
    public static class DatabaseHelper extends SQLiteOpenHelper {
        private DatabaseHelper(Context context) {
            super(context, "PrivacyStarDatabase", (SQLiteDatabase.CursorFactory) null, 14);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onConfigure(SQLiteDatabase sQLiteDatabase) {
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase sQLiteDatabase) {
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/MigrationHelper$ResponseAddObserver.class */
    public static class ResponseAddObserver implements Observer<UserPreferenceStatus> {
        @Nullable

        /* renamed from: f */
        private Context f14397f;

        /* renamed from: g */
        private int f14398g;

        /* renamed from: h */
        private boolean f14399h;

        ResponseAddObserver(@Nullable Context context, int i, boolean z) {
            this.f14397f = context;
            this.f14398g = i;
            this.f14399h = z;
        }

        /* renamed from: c */
        public void onNext(@NonNull UserPreferenceStatus userPreferenceStatus) {
            PreferenceUtils.m5386k("PREF_DOING_MIGRATION", false);
            PreferenceUtils.m5386k("PREF_NOTIFY_OF_MIGRATION", true);
            PreferenceUtils.m5386k("PREF_DID_MIGRATION", true);
            LogUtil.m5643d("MigrationHelper#onNext", "PREF_DID_MIGRATION - true");
            int size = userPreferenceStatus.getSuccessfulItems().size();
            int size2 = userPreferenceStatus.getFailItems().size();
            AnalyticsWrapper.m5871i(size + size2, size2, HttpStatus.HTTP_OK);
            Realm e = MigrationHelper.m5527e();
            try {
                Realm G0 = Realm.m3064G0();
                if (e != null) {
                    final RealmResults E = e.m3053Q0(CallerSetting.class).m2918E();
                    G0.m3067D0(new Realm.Transaction() { // from class: com.tmobile.services.nameid.utility.s0
                        @Override // io.realm.Realm.Transaction
                        /* renamed from: a */
                        public final void mo3037a(Realm realm) {
                            realm.m3044w0(RealmResults.this, new ImportFlag[0]);
                        }
                    });
                    e.m3067D0(C1979r0.f14588a);
                }
                if (G0 != null) {
                    G0.close();
                }
                if (e != null) {
                    e.close();
                }
                ApiUtils.m6823y0(userPreferenceStatus);
                if (this.f14397f == null) {
                }
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    if (e != null) {
                        try {
                            e.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                    }
                    throw th2;
                }
            }
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
        }

        @Override // io.reactivex.Observer
        public void onError(@NonNull Throwable th) {
            LogUtil.m5641f("MigrationHelper", "error migrating block list", th);
            if (this.f14397f == null) {
                PreferenceUtils.m5386k("PREF_DOING_MIGRATION", false);
                return;
            }
            int c = PreferenceUtils.m5394c("PREF_NUMBER_MIGRATION_RETRIES", 0) + 1;
            PreferenceUtils.m5385l("PREF_NUMBER_MIGRATION_RETRIES", c);
            int i = -1;
            if (th instanceof HttpException) {
                i = ((HttpException) th).code();
            }
            PreferenceUtils.m5386k("PREF_DOING_MIGRATION", false);
            if (c <= 3) {
                MigrationHelper.m5517o(this.f14397f, this.f14399h);
                return;
            }
            int i2 = this.f14398g;
            AnalyticsWrapper.m5871i(i2, i2, i);
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(@NonNull Disposable disposable) {
        }
    }

    private MigrationHelper() {
        throw new IllegalAccessError("This is a utility class, it should not be created");
    }

    /* renamed from: a */
    public static boolean m5531a() {
        return m5530b(SubscriptionHelper.m5325c());
    }

    /* renamed from: b */
    public static boolean m5530b(SubscriptionHelper.State state) {
        return (SubscriptionHelper.m5315m(state) || SubscriptionHelper.m5310r(state)) && Feature.PHONE_NUMBER_BLOCK.isOwned(state) && m5526f();
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x00a9, code lost:
        if (r7.isClosed() == false) goto L_0x00ac;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m5529c(android.content.Context r7, io.realm.Realm r8) {
        /*
            Method dump skipped, instructions count: 205
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tmobile.services.nameid.utility.MigrationHelper.m5529c(android.content.Context, io.realm.Realm):void");
    }

    /* renamed from: d */
    private static void m5528d(Realm realm, final Cursor cursor) {
        LogUtil.m5643d("Obtained cursor to table %s, converting to Realm.", "blockList");
        realm.m3067D0(new Realm.Transaction() { // from class: com.tmobile.services.nameid.utility.y0
            @Override // io.realm.Realm.Transaction
            /* renamed from: a */
            public final void mo3037a(Realm realm2) {
                MigrationHelper.m5525g(cursor, realm2);
            }
        });
    }

    @Nullable
    /* renamed from: e */
    public static Realm m5527e() {
        try {
            RealmConfiguration.Builder builder = new RealmConfiguration.Builder();
            builder.m2973b();
            builder.m2967h("migrate.realm");
            return Realm.m3062I0(builder.m2974a());
        } catch (Exception e) {
            LogUtil.m5641f("MigrationHelper", "Error creating a cache realm", e);
            return null;
        }
    }

    /* renamed from: f */
    public static boolean m5526f() {
        long f;
        Realm e = m5527e();
        if (e != null) {
            try {
                f = e.m3053Q0(CallerSetting.class).m2896f();
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    if (e != null) {
                        try {
                            e.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                    }
                    throw th2;
                }
            }
        } else {
            f = 0;
        }
        if (e != null) {
            e.close();
        }
        boolean b = PreferenceUtils.m5395b("PREF_DID_MIGRATION", false);
        LogUtil.m5643d("MigrationHelper#hasItemsForMigration", "There are " + f + " to migrate from realm.  Has migration already happened? " + b);
        boolean z = false;
        if (f != 0) {
            z = false;
            if (!b) {
                z = true;
            }
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public static /* synthetic */ void m5525g(Cursor cursor, Realm realm) {
        if (cursor.moveToFirst()) {
            while (!cursor.isAfterLast()) {
                BlockList r = m5514r(cursor);
                String j = PhoneNumberHelper.m5409j(r.m5511a());
                boolean p = PhoneNumberHelper.m5403p(j);
                String d = PhoneNumberHelper.m5415d(j);
                int b = r.m5510b();
                LogUtil.m5643d("MigrationHelper#", "migratedNumber: " + j + " validForBackendAdd? " + p + " e164Number " + d + " unblocked: " + b);
                if (!p) {
                    cursor.moveToNext();
                } else if (r.m5510b() != 1) {
                    CallerSetting callerSetting = new CallerSetting();
                    callerSetting.setE164Number(PhoneNumberHelper.m5415d(j));
                    callerSetting.addCallerForSetting(callerSetting.getE164Number(), realm);
                    callerSetting.setAction(CallerSetting.Action.BLOCKED.getValue());
                    callerSetting.setFromMigration(true);
                    realm.m3045v0(callerSetting, new ImportFlag[0]);
                    cursor.moveToNext();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public static /* synthetic */ void m5524h(Caller caller, Realm realm) {
        Caller caller2 = (Caller) realm.m3045v0(caller, new ImportFlag[0]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public static /* synthetic */ void m5522j(CallerSetting callerSetting, Realm realm) {
        CallerSetting copy = callerSetting.copy();
        copy.setPending(true);
        realm.m3046u0(copy, new ImportFlag[0]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: l */
    public static /* synthetic */ void m5520l(MetroBlockListPullRes metroBlockListPullRes, List list, Realm realm) {
        for (int i = 0; i < metroBlockListPullRes.getCnt(); i++) {
            try {
                if (PhoneNumberHelper.m5403p((String) list.get(i))) {
                    CallerSetting callerSetting = new CallerSetting();
                    callerSetting.setPending(false);
                    callerSetting.setAction(CallerSetting.Action.BLOCKED.getValue());
                    callerSetting.setFromMigration(true);
                    callerSetting.setPreferenceId("");
                    callerSetting.setE164Number(PhoneNumberHelper.m5415d((String) list.get(i)));
                    callerSetting.addCallerForSetting(callerSetting.getE164Number(), realm);
                    LogUtil.m5643d("MigrationHelperpStarMetroPullListToRealm", "added " + ((String) list.get(i)) + " to migration realm");
                    realm.m3046u0(callerSetting, new ImportFlag[0]);
                }
            } catch (Exception e) {
                LogUtil.m5641f("MigrationHelper#pStarMetroPullListToRealm", "error adding blocklist to realm", e);
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: m */
    public static /* synthetic */ void m5519m(Context context, final MetroBlockListPullRes metroBlockListPullRes) throws Exception {
        LogUtil.m5643d("MigrationHelper#pStarMetroPullListToRealm", "successful response from /block_list/ with " + metroBlockListPullRes.getCnt() + " items found");
        if (!NetworkChecks.f14407b.m5480c(context) && MainApplication.m7527m() != null) {
            LogUtil.m5643d("MigrationHelper#pStarMetroPullListToRealm", "Network not available to pull block list");
            FragmentManager supportFragmentManager = context instanceof AppCompatActivity ? ((AppCompatActivity) context).getSupportFragmentManager() : null;
            if (supportFragmentManager != null) {
                WidgetUtils.m5241c0(context, supportFragmentManager);
            }
        } else if (metroBlockListPullRes.getBl() != null && metroBlockListPullRes.getCnt() != 0) {
            PreferenceUtils.m5386k("PREF_HAS_PULLED_PSTAR_METRO_BL", true);
            final List<String> bl = metroBlockListPullRes.getBl();
            Realm e = m5527e();
            if (e != null) {
                try {
                    e.m3067D0(new Realm.Transaction() { // from class: com.tmobile.services.nameid.utility.v0
                        @Override // io.realm.Realm.Transaction
                        /* renamed from: a */
                        public final void mo3037a(Realm realm) {
                            MigrationHelper.m5520l(MetroBlockListPullRes.this, bl, realm);
                        }
                    });
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        if (e != null) {
                            try {
                                e.close();
                            } catch (Throwable th3) {
                                th.addSuppressed(th3);
                            }
                        }
                        throw th2;
                    }
                }
            }
            if (e != null) {
                e.close();
            }
            LogUtil.m5643d("MigrationHelperpStarMetroPullListToRealm", "BlockedList: " + bl.toString());
        }
    }

    /* renamed from: o */
    public static void m5517o(@Nullable Context context, boolean z) {
        LogUtil.m5643d("MigrationHelper#migrateItems", "Migrating items to backend");
        boolean r = SubscriptionHelper.m5310r(SubscriptionHelper.m5325c());
        Realm e = m5527e();
        try {
            try {
                e = Realm.m3064G0();
                if (e != null) {
                    try {
                        for (final CallerSetting callerSetting : e.m3053Q0(CallerSetting.class).m2918E()) {
                            final Caller caller = new Caller();
                            caller.setNumberAsInput(callerSetting.getE164Number());
                            caller.setDate(new Date(0L));
                            caller.setName("");
                            caller.setE164Number(callerSetting.getE164Number());
                            e.m3067D0(new Realm.Transaction() { // from class: com.tmobile.services.nameid.utility.u0
                                @Override // io.realm.Realm.Transaction
                                /* renamed from: a */
                                public final void mo3037a(Realm realm) {
                                    MigrationHelper.m5524h(Caller.this, realm);
                                }
                            });
                            e.m3067D0(new Realm.Transaction() { // from class: com.tmobile.services.nameid.utility.w0
                                @Override // io.realm.Realm.Transaction
                                /* renamed from: a */
                                public final void mo3037a(Realm realm) {
                                    CallerSetting.this.setCallerId(caller.getId());
                                }
                            });
                        }
                    } finally {
                        try {
                            throw th;
                        } finally {
                        }
                    }
                }
                if (e != null) {
                    e.close();
                }
            } catch (Exception e2) {
                LogUtil.m5641f("MigrationHelper#", "Error retrieving CallerSettings from migrated Realm:", e2);
            }
            if (e != null) {
                e.close();
            }
            if (r) {
                LogUtil.m5643d("MigrationHelper#migrateItems", "is pending");
                try {
                    Realm e3 = m5527e();
                    if (e3 != null) {
                        RealmResults<CallerSetting> E = e3.m3053Q0(CallerSetting.class).m2918E();
                        if (!E.isEmpty()) {
                            PreferenceUtils.m5386k("PREF_DOING_MIGRATION", true);
                            Realm G0 = Realm.m3064G0();
                            try {
                                for (final CallerSetting callerSetting2 : E) {
                                    G0.m3067D0(new Realm.Transaction() { // from class: com.tmobile.services.nameid.utility.q0
                                        @Override // io.realm.Realm.Transaction
                                        /* renamed from: a */
                                        public final void mo3037a(Realm realm) {
                                            MigrationHelper.m5522j(CallerSetting.this, realm);
                                        }
                                    });
                                }
                                if (G0 != null) {
                                    G0.close();
                                }
                                e3.m3067D0(C1973p0.f14582a);
                                PreferenceUtils.m5386k("PREF_NOTIFY_OF_MIGRATION", true);
                                PreferenceUtils.m5386k("PREF_DID_MIGRATION", true);
                                PreferenceUtils.m5386k("PREF_DOING_MIGRATION", false);
                                if (e3 != null) {
                                    e3.close();
                                }
                            } finally {
                                try {
                                    throw th;
                                } finally {
                                }
                            }
                        } else if (e3 != null) {
                            e3.close();
                        }
                    } else if (e3 != null) {
                        e3.close();
                    }
                } catch (Exception e4) {
                    LogUtil.m5641f("MigrationHelper#", "Error copying CallerSettings from migrated Realm:", e4);
                }
            } else {
                LogUtil.m5643d("MigrationHelper#migrateItems", "is not pending");
                try {
                    Realm e5 = m5527e();
                    if (e5 != null) {
                        RealmResults E2 = e5.m3053Q0(CallerSetting.class).m2918E();
                        ArrayList arrayList = new ArrayList(E2);
                        if (!E2.isEmpty()) {
                            PreferenceUtils.m5386k("PREF_DOING_MIGRATION", true);
                            ApiWrapper.m6783d(arrayList, new ResponseAddObserver(context, E2.size(), z));
                            if (e5 != null) {
                                e5.close();
                            }
                        } else if (e5 != null) {
                            e5.close();
                        }
                    } else if (e5 != null) {
                        e5.close();
                    }
                } catch (Exception e6) {
                    LogUtil.m5641f("MigrationHelper#", "Error sending CallerSettings from migrated Realm:", e6);
                }
            }
        } catch (Throwable th) {
            try {
                throw th;
            } finally {
                if (e != null) {
                    try {
                        e.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
            }
        }
    }

    /* renamed from: p */
    public static boolean m5516p(Context context) {
        boolean z = false;
        try {
            if (context.getPackageManager().getPackageInfo("com.privacystar.android.metro", 0) != null) {
                z = true;
            }
        } catch (PackageManager.NameNotFoundException e) {
            LogUtil.m5643d("MigrationHelperpStarMetroExists", "could not find com.privacystar.android.metro");
        }
        return z;
    }

    /* renamed from: q */
    public static void m5515q(final Context context) {
        LogUtil.m5643d("MigrationHelper#pStarMetroPullListToRealm", "attempting to retrieve blocked list from backend for Metro user");
        if (!PreferenceUtils.m5395b("PREF_HAS_PULLED_PSTAR_METRO_BL", false)) {
            MetroApiWrapper.m6740G(context, new Consumer() { // from class: com.tmobile.services.nameid.utility.t0
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    MigrationHelper.m5519m(context, (MetroBlockListPullRes) obj);
                }
            }, C1997x0.f14617f);
        }
    }

    /* renamed from: r */
    private static BlockList m5514r(Cursor cursor) {
        BlockList blockList = new BlockList();
        blockList.m5509c(cursor.getString(cursor.getColumnIndexOrThrow("phone")));
        blockList.m5508d(cursor.getInt(cursor.getColumnIndexOrThrow("unblocked")));
        return blockList;
    }

    /* renamed from: s */
    private static boolean m5513s(Context context, String str) {
        boolean t;
        synchronized (MigrationHelper.class) {
            try {
                t = m5512t(context, str);
            } catch (Throwable th) {
                throw th;
            }
        }
        return t;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0059, code lost:
        if (r0.getCount() > 0) goto L_0x0061;
     */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00fb  */
    /* renamed from: t */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static boolean m5512t(android.content.Context r7, java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 258
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tmobile.services.nameid.utility.MigrationHelper.m5512t(android.content.Context, java.lang.String):boolean");
    }
}
