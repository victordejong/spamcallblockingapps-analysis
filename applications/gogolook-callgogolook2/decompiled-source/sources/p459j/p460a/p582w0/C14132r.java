package p459j.p460a.p582w0;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.WorkerThread;
import gogolook.callgogolook2.realm.obj.favorite.FavoriteListRealmObject;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import p459j.p460a.p471b1.p472a.C11507b;
import p459j.p460a.p541n0.C13057d;
import p459j.p460a.p541n0.C13193p;
import p459j.p460a.p582w0.p583a5.C13891a;
import p459j.p460a.p582w0.p587d5.C13978e;
import p626l.C14989s;
/* renamed from: j.a.w0.r */
/* loaded from: classes3-dex2jar.jar:j/a/w0/r.class */
public class C14132r {
    @WorkerThread
    /* renamed from: a */
    public static String m2401a(@NonNull String str) {
        List<FavoriteListRealmObject> b = C13057d.m4679b(C13193p.m4437a("_e164", "_status"), C13193p.m4438a(str, 2), C13193p.m4439a(C13193p.EnumC13194a.EQUAL_TO, C13193p.EnumC13194a.NOT_EQUAL_TO), null, null);
        if (b == null || b.isEmpty()) {
            return null;
        }
        return b.get(0).get_parentid();
    }

    /* renamed from: a */
    public static ConcurrentHashMap<String, Integer> m2403a() {
        List<FavoriteListRealmObject> b;
        List<FavoriteListRealmObject> b2 = C13057d.m4679b(C13193p.m4437a(FavoriteListRealmObject.AUTOCATE), C13193p.m4438a(-1), C13193p.m4439a(C13193p.EnumC13194a.EQUAL_TO), null, null);
        if (b2 == null || b2.isEmpty() || (b = C13057d.m4679b(C13193p.m4437a(FavoriteListRealmObject.AUTOCATE, "_parentid"), C13193p.m4438a(0, "0"), C13193p.m4439a(C13193p.EnumC13194a.GREATHER_THAN, C13193p.EnumC13194a.EQUAL_TO), null, null)) == null || b.isEmpty()) {
            return null;
        }
        ConcurrentHashMap<String, Integer> concurrentHashMap = new ConcurrentHashMap<>();
        for (FavoriteListRealmObject favoriteListRealmObject : b) {
            concurrentHashMap.put(favoriteListRealmObject.get_e164(), favoriteListRealmObject.get_auto_cate());
        }
        return concurrentHashMap;
    }

    /* renamed from: a */
    public static /* synthetic */ C14989s m2402a(C11507b.C11508a aVar) {
        aVar.m9447a("auto_categorize_intro", true);
        aVar.m9450a("prefs_total_for_Favorite_global", C13915b3.m3066a("prefs_total_for_Favorite_global", 0) + 1);
        return null;
    }

    /* renamed from: b */
    public static boolean m2400b() {
        return true;
    }

    @WorkerThread
    /* renamed from: b */
    public static boolean m2399b(@NonNull String str) {
        return !TextUtils.isEmpty(m2401a(str));
    }

    /* renamed from: c */
    public static boolean m2398c() {
        return System.currentTimeMillis() - C13915b3.m3065a("auto_categorize_dialog_ask_time", 0L) >= 1209600000;
    }

    @WorkerThread
    /* renamed from: c */
    public static boolean m2397c(@NonNull String str) {
        String l = C14108o4.m2474l(str);
        return !TextUtils.isEmpty(l) && m2399b(l);
    }

    /* renamed from: d */
    public static void m2396d() {
        if (!C13891a.m3158e()) {
            return;
        }
        if (C13915b3.m3066a("auto_categorize_status", 0) == 0 || m2398c()) {
            C13057d.m4684b();
        }
    }

    /* renamed from: d */
    public static boolean m2395d(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return !C13057d.m4674d(str);
    }

    /* renamed from: e */
    public static void m2394e() {
        C13978e.f31386a.m9457a(C13911b.f31278a);
    }

    /* renamed from: e */
    public static boolean m2393e(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return C13057d.m4692a(str);
    }
}
