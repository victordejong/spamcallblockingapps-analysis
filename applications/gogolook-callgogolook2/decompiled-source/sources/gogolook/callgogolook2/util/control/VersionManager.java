package gogolook.callgogolook2.util.control;

import android.app.Dialog;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import androidx.core.app.NotificationCompat;
import androidx.core.app.NotificationManagerCompat;
import androidx.media2.exoplayer.external.text.ttml.TtmlNode;
import com.facebook.ads.AdError;
import com.mopub.common.Constants;
import gogolook.callgogolook2.ForceUpgradeActivity;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.gson.UpgradeVersionHelper;
import gogolook.callgogolook2.receiver.DeepLinkActivity;
import java.util.Arrays;
import kotlin.Metadata;
import org.json.JSONObject;
import p459j.p460a.p538m0.C13020c;
import p459j.p460a.p582w0.C13992e4;
import p459j.p460a.p582w0.C13999f1;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.C14037j3;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.C14173t4;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.C14315y;
import p459j.p460a.p582w0.p587d5.C13978e;
import p459j.p460a.p582w0.p590x4.C14312y;
import p459j.p460a.p613z0.DialogC14631j;
import p626l.p641z.p643d.C15136c0;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��<\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\r\bÆ\u0002\u0018��2\u00020\u0001:\u0001%B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0007\u001a\u00020\bH\u0007J\b\u0010\t\u001a\u00020\nH\u0002J\b\u0010\u000b\u001a\u00020\u0004H\u0007J\u0010\u0010\f\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000eH\u0007J\b\u0010\u000f\u001a\u00020\u0004H\u0007J\u0010\u0010\u0010\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000eH\u0007J\u0010\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u000eH\u0002J\u0018\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u000eH\u0002J\b\u0010\u0014\u001a\u00020\nH\u0002J\b\u0010\u0015\u001a\u00020\nH\u0007J\"\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u0004H\u0002J*\u0010\u001c\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u00042\b\b\u0001\u0010\u001d\u001a\u00020\u000eH\u0002J\u0010\u0010\u001e\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\u000eH\u0007J\u0010\u0010\u001f\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\u000eH\u0007J\u0010\u0010 \u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\u0019H\u0007J\u0010\u0010!\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\u0019H\u0007J\b\u0010\"\u001a\u00020\nH\u0002J\b\u0010#\u001a\u00020\nH\u0002J\u0010\u0010$\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000eH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n��¨\u0006&"}, m815d2 = {"Lgogolook/callgogolook2/util/control/VersionManager;", "", "()V", "PLAY_STORE_URL", "", "upgradeVersionHelper", "Lgogolook/callgogolook2/gson/UpgradeVersionHelper;", "checkAndSendNotification", "", "executeDailyCheck", "", "getForceUpgradeContent", "getForceUpgradeTitle", "viewType", "", "getSuggestUpgradeContent", "getSuggestUpgradeTitle", "getUpgradeContent", "upgradeType", "getUpgradeTitle", "init", "reset", "saveNotificationToNewsCenter", "Landroid/net/Uri;", "context", "Landroid/content/Context;", "title", "content", "sendNotification", "source", "shouldForceUpgrade", "shouldSuggestUpgrade", "showForceUpgradeDialog", "showSuggestUpgradeDialog", "updateConfigOnRemoteVersionChange", "updateForceUpgradeViewCondition", "updateSuggestUpgradeViewCondition", "NotificationDelReceiver", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/util/control/VersionManager.class */
public final class VersionManager {

    /* renamed from: a */
    public static UpgradeVersionHelper f12978a;

    /* renamed from: b */
    public static final VersionManager f12979b = new VersionManager();

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001c\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0016¨\u0006\t"}, m815d2 = {"Lgogolook/callgogolook2/util/control/VersionManager$NotificationDelReceiver;", "Landroid/content/BroadcastReceiver;", "()V", "onReceive", "", "context", "Landroid/content/Context;", Constants.INTENT_SCHEME, "Landroid/content/Intent;", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/util/control/VersionManager$NotificationDelReceiver.class */
    public static final class NotificationDelReceiver extends BroadcastReceiver {
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent != null) {
                C14312y.m1616a(intent.getIntExtra("source", -1), intent.getIntExtra("action", -1));
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.util.control.VersionManager$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/util/control/VersionManager$a.class */
    public static final class DialogInterface$OnShowListenerC5257a implements DialogInterface.OnShowListener {

        /* renamed from: a */
        public static final DialogInterface$OnShowListenerC5257a f12980a = new DialogInterface$OnShowListenerC5257a();

        @Override // android.content.DialogInterface.OnShowListener
        public final void onShow(DialogInterface dialogInterface) {
            VersionManager.f12979b.m25998b(2);
            C14312y.m1616a(1, 0);
        }
    }

    /* renamed from: gogolook.callgogolook2.util.control.VersionManager$b */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/util/control/VersionManager$b.class */
    public static final class C5258b implements DialogC14631j.AbstractC14634c {
        @Override // p459j.p460a.p613z0.DialogC14631j.AbstractC14634c
        /* renamed from: a */
        public void mo956a() {
            C14312y.m1616a(1, 1);
        }

        @Override // p459j.p460a.p613z0.DialogC14631j.AbstractC14634c
        /* renamed from: b */
        public void mo955b() {
            C14312y.m1616a(1, 4);
        }
    }

    /* renamed from: a */
    public static final void m26003a(Context context) {
        C15149k.m377b(context, "context");
        Intent intent = new Intent(context, ForceUpgradeActivity.class);
        intent.setFlags(32768);
        context.startActivity(intent);
    }

    /* renamed from: b */
    public static final void m25997b(Context context) {
        C15149k.m377b(context, "context");
        C5258b bVar = new C5258b();
        DialogC14631j.C14635d dVar = new DialogC14631j.C14635d(context);
        dVar.m953a(R$drawable.flexible_dialog_s_image_img_suggest_upgrade);
        dVar.m948b(m25993d(2));
        dVar.m951a(m25988g());
        dVar.m949b();
        dVar.m947c();
        dVar.m952a(bVar);
        Dialog a = dVar.m954a();
        a.setOnShowListener(DialogInterface$OnShowListenerC5257a.f12980a);
        C14315y.m1603b(a);
    }

    /* renamed from: c */
    public static final String m25995c(int i) {
        return f12979b.m26004a(10001, i);
    }

    /* renamed from: d */
    public static final String m25993d(int i) {
        return f12979b.m26004a(10002, i);
    }

    /* renamed from: e */
    public static final boolean m25992e() {
        f12979b.m26006a();
        boolean z = true;
        if (m25991e(3)) {
            VersionManager versionManager = f12979b;
            Context o = MyApplication.m29013o();
            C15149k.m383a((Object) o, "MyApplication.getGlobalContext()");
            versionManager.m26001a(o, m25995c(3), m25990f(), 4);
            f12979b.m25994d();
            C14312y.m1616a(4, 0);
        } else if (m25989f(1)) {
            VersionManager versionManager2 = f12979b;
            Context o2 = MyApplication.m29013o();
            C15149k.m383a((Object) o2, "MyApplication.getGlobalContext()");
            versionManager2.m26001a(o2, m25993d(1), m25988g(), 2);
            f12979b.m25998b(1);
            C14312y.m1616a(2, 0);
        } else {
            z = false;
        }
        return z;
    }

    /* renamed from: e */
    public static final boolean m25991e(int i) {
        f12979b.m25999b();
        UpgradeVersionHelper upgradeVersionHelper = f12978a;
        boolean z = false;
        if (upgradeVersionHelper != null) {
            z = false;
            if (upgradeVersionHelper.m28152d()) {
                z = false;
                if (upgradeVersionHelper.m28163a(i)) {
                    z = true;
                }
            }
        }
        return z;
    }

    /* renamed from: f */
    public static final String m25990f() {
        return f12979b.m26005a(10001);
    }

    /* renamed from: f */
    public static final boolean m25989f(int i) {
        f12979b.m25999b();
        UpgradeVersionHelper upgradeVersionHelper = f12978a;
        boolean z = false;
        if (upgradeVersionHelper != null) {
            z = false;
            if (upgradeVersionHelper.m28150e()) {
                z = false;
                if (upgradeVersionHelper.m28156b(i)) {
                    z = true;
                }
            }
        }
        return z;
    }

    /* renamed from: g */
    public static final String m25988g() {
        return f12979b.m26005a(10002);
    }

    /* renamed from: h */
    public static final void m25987h() {
        f12978a = null;
    }

    /* renamed from: a */
    public final Uri m26002a(Context context, String str, String str2) {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("t", str);
        jSONObject.put("c", str2);
        C15136c0 c0Var = C15136c0.f33133a;
        Object[] objArr = {context.getPackageName()};
        String format = String.format("https://play.google.com/store/apps/details?id=%s", Arrays.copyOf(objArr, objArr.length));
        C15149k.m383a((Object) format, "java.lang.String.format(format, *args)");
        jSONObject.put("g", format);
        jSONObject.put("n_t", "1");
        jSONObject.put(TtmlNode.TAG_IMAGE, "");
        jSONObject.put("button_text", "");
        jSONObject.put("button_link", "");
        String valueOf = String.valueOf(System.currentTimeMillis());
        ContentValues contentValues = new ContentValues();
        contentValues.put("_json", jSONObject.toString());
        contentValues.put("_read", (Integer) 0);
        contentValues.put("_version", "1");
        contentValues.put("_read", (Integer) 0);
        contentValues.put("_createtime", valueOf);
        contentValues.put("_updatetime", valueOf);
        contentValues.put("_status", (Integer) 1);
        contentValues.put("_pushid", "0");
        Uri insert = context.getContentResolver().insert(C13020c.f29447a, contentValues);
        try {
            C14037j3.m2731a().mo2704a(new C13999f1());
        } catch (Exception e) {
            C14080m2.m2612a((Throwable) e);
        }
        try {
            context.sendBroadcast(new Intent().setAction("newscenter.listview.refresh"));
        } catch (Exception e2) {
            C14080m2.m2612a((Throwable) e2);
        }
        return insert;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x003b, code lost:
        if (r8 != null) goto L_0x0076;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m26005a(int r6) {
        /*
            r5 = this;
            r0 = r5
            r0.m25999b()
            java.util.Locale r0 = java.util.Locale.getDefault()
            r7 = r0
            gogolook.callgogolook2.gson.UpgradeVersionHelper r0 = gogolook.callgogolook2.util.control.VersionManager.f12978a
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0041
            r0 = r7
            java.lang.String r1 = "locale"
            p626l.p641z.p643d.C15149k.m383a(r0, r1)
            r0 = r7
            java.lang.String r0 = r0.getLanguage()
            r9 = r0
            r0 = r9
            java.lang.String r1 = "locale.language"
            p626l.p641z.p643d.C15149k.m383a(r0, r1)
            r0 = r7
            java.lang.String r0 = r0.getCountry()
            r7 = r0
            r0 = r7
            java.lang.String r1 = "locale.country"
            p626l.p641z.p643d.C15149k.m383a(r0, r1)
            r0 = r8
            r1 = r9
            r2 = r7
            r3 = r6
            java.lang.String r0 = r0.m28160a(r1, r2, r3)
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0041
            goto L_0x0076
        L_0x0041:
            android.content.Context r0 = gogolook.callgogolook2.MyApplication.m29013o()
            r8 = r0
            r0 = 2131888535(0x7f120997, float:1.9411708E38)
            r10 = r0
            r0 = r10
            r11 = r0
            r0 = r6
            r1 = 10001(0x2711, float:1.4014E-41)
            if (r0 == r1) goto L_0x0068
            r0 = r6
            r1 = 10002(0x2712, float:1.4016E-41)
            if (r0 == r1) goto L_0x0063
            r0 = r10
            r11 = r0
            goto L_0x0068
        L_0x0063:
            r0 = 2131888539(0x7f12099b, float:1.9411716E38)
            r11 = r0
        L_0x0068:
            r0 = r8
            r1 = r11
            java.lang.String r0 = r0.getString(r1)
            r8 = r0
            r0 = r8
            java.lang.String r1 = "MyApplication.getGlobalC…tent }\n                })"
            p626l.p641z.p643d.C15149k.m383a(r0, r1)
        L_0x0076:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: gogolook.callgogolook2.util.control.VersionManager.m26005a(int):java.lang.String");
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0040, code lost:
        if (r9 != null) goto L_0x0083;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m26004a(int r6, int r7) {
        /*
            r5 = this;
            r0 = r5
            r0.m25999b()
            java.util.Locale r0 = java.util.Locale.getDefault()
            r8 = r0
            gogolook.callgogolook2.gson.UpgradeVersionHelper r0 = gogolook.callgogolook2.util.control.VersionManager.f12978a
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L_0x0046
            r0 = r8
            java.lang.String r1 = "locale"
            p626l.p641z.p643d.C15149k.m383a(r0, r1)
            r0 = r8
            java.lang.String r0 = r0.getLanguage()
            r10 = r0
            r0 = r10
            java.lang.String r1 = "locale.language"
            p626l.p641z.p643d.C15149k.m383a(r0, r1)
            r0 = r8
            java.lang.String r0 = r0.getCountry()
            r8 = r0
            r0 = r8
            java.lang.String r1 = "locale.country"
            p626l.p641z.p643d.C15149k.m383a(r0, r1)
            r0 = r9
            r1 = r10
            r2 = r8
            r3 = r6
            java.lang.String r0 = r0.m28155b(r1, r2, r3)
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L_0x0046
            goto L_0x0083
        L_0x0046:
            android.content.Context r0 = gogolook.callgogolook2.MyApplication.m29013o()
            r9 = r0
            r0 = 2131888536(0x7f120998, float:1.941171E38)
            r6 = r0
            r0 = r7
            r1 = 1
            if (r0 == r1) goto L_0x006f
            r0 = r7
            r1 = 2
            if (r0 == r1) goto L_0x0068
            r0 = r7
            r1 = 3
            if (r0 == r1) goto L_0x0061
            goto L_0x0073
        L_0x0061:
            r0 = 2131888537(0x7f120999, float:1.9411712E38)
            r6 = r0
            goto L_0x0073
        L_0x0068:
            r0 = 2131888541(0x7f12099d, float:1.941172E38)
            r6 = r0
            goto L_0x0073
        L_0x006f:
            r0 = 2131888540(0x7f12099c, float:1.9411718E38)
            r6 = r0
        L_0x0073:
            r0 = r9
            r1 = r6
            java.lang.String r0 = r0.getString(r1)
            r9 = r0
            r0 = r9
            java.lang.String r1 = "MyApplication.getGlobalC…_title\n                })"
            p626l.p641z.p643d.C15149k.m383a(r0, r1)
        L_0x0083:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: gogolook.callgogolook2.util.control.VersionManager.m26004a(int, int):java.lang.String");
    }

    /* renamed from: a */
    public final void m26006a() {
        m25987h();
        m25996c();
    }

    /* renamed from: a */
    public final void m26001a(Context context, String str, String str2, int i) {
        Uri a = m26002a(context, str, str2);
        Intent intent = new Intent(context, DeepLinkActivity.class);
        C15136c0 c0Var = C15136c0.f33133a;
        Object[] objArr = {context.getPackageName()};
        String format = String.format("https://play.google.com/store/apps/details?id=%s", Arrays.copyOf(objArr, objArr.length));
        C15149k.m383a((Object) format, "java.lang.String.format(format, *args)");
        intent.setData(Uri.parse(format));
        if (a != null) {
            intent.putExtra("id", ContentUris.parseId(a));
            intent.putExtra("pushid", C13992e4.m2924a(str));
            intent.putExtra("source", i);
            intent.putExtra("action", 2);
        }
        PendingIntent a2 = C14217x3.m2188a(context, intent, (int) AdError.CACHE_ERROR_CODE);
        C15149k.m383a((Object) a2, "Utils.cancelAndGetPendin…NotifyID.UPGRADE_VERSION)");
        intent.putExtra("action", 1);
        PendingIntent a3 = C14217x3.m2188a(context, intent, (int) AdError.INTERNAL_ERROR_2003);
        C15149k.m383a((Object) a3, "Utils.cancelAndGetPendin…D.UPGRADE_VERSION_ACTION)");
        Intent intent2 = new Intent(context, NotificationDelReceiver.class);
        intent2.putExtra("source", i);
        intent2.putExtra("action", 4);
        PendingIntent broadcast = PendingIntent.getBroadcast(context, 0, intent2, 134217728);
        C15149k.m383a((Object) broadcast, "PendingIntent.getBroadca…     FLAG_UPDATE_CURRENT)");
        NotificationManagerCompat.from(context).notify(AdError.CACHE_ERROR_CODE, C14173t4.m2305a(C14173t4.m2307a(context).setContentTitle(str).setContentText(str2).setTicker(str).setContentIntent(a2).setStyle(new NotificationCompat.BigTextStyle().bigText(str2)).setPriority(1).addAction(0, context.getString(R$string.update_force_other_button), a3).setDeleteIntent(broadcast)));
    }

    /* renamed from: b */
    public final void m25999b() {
        if (f12978a == null) {
            String n = C14017g4.m2810n();
            C15149k.m383a((Object) n, "UtilsInfo.getRegionCode()");
            f12978a = new UpgradeVersionHelper(n, C14017g4.m2807q());
        }
    }

    /* renamed from: b */
    public final void m25998b(int i) {
        m25999b();
        UpgradeVersionHelper upgradeVersionHelper = f12978a;
        if (upgradeVersionHelper != null) {
            upgradeVersionHelper.m28151d(i | upgradeVersionHelper.m28154c());
        }
    }

    /* renamed from: c */
    public final void m25996c() {
        m25999b();
        UpgradeVersionHelper upgradeVersionHelper = f12978a;
        if (upgradeVersionHelper != null) {
            if (!upgradeVersionHelper.m28152d()) {
                C13978e.f31386a.m9456a("force_upgrade_view_count", "force_upgrade_last_view_time");
            }
            if (!upgradeVersionHelper.m28150e()) {
                C13978e.f31386a.m9456a("suggest_upgrade_view_condition");
            }
        }
    }

    /* renamed from: d */
    public final void m25994d() {
        m25999b();
        UpgradeVersionHelper upgradeVersionHelper = f12978a;
        if (upgradeVersionHelper != null) {
            upgradeVersionHelper.m28153c(upgradeVersionHelper.m28157b() + 1);
            upgradeVersionHelper.m28162a(System.currentTimeMillis());
        }
    }
}
