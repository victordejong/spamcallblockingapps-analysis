package p459j.p460a.p582w0;

import android.app.NotificationManager;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.core.app.NotificationCompat;
import androidx.media2.exoplayer.external.text.ttml.TtmlNode;
import com.criteo.publisher.model.C2041o;
import com.google.firebase.messaging.RemoteMessage;
import com.mopub.common.AdType;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.gson.UserProfile;
import gogolook.callgogolook2.realm.obj.block.BlockListRealmObject;
import gogolook.callgogolook2.realm.obj.block.BlockLogRealmObject;
import gogolook.callgogolook2.receiver.DeepLinkActivity;
import gogolook.callgogolook2.view.SizedTextView;
import io.realm.Sort;
import java.util.HashMap;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
import p081h.p119d.p120a.C5765c;
import p081h.p119d.p120a.C5776l;
import p081h.p119d.p120a.p145w.p146i.AbstractC6063c;
import p081h.p119d.p120a.p145w.p147j.AbstractC6078h;
import p081h.p160h.p179e.p180a.C6334a;
import p081h.p160h.p179e.p180a.p183i.C6362e;
import p081h.p160h.p179e.p180a.p185l.C6373a;
import p459j.p460a.p521j0.p522u.p523d.C12629k0;
import p459j.p460a.p533l.p535o.C12998a;
import p459j.p460a.p538m0.C13020c;
import p459j.p460a.p541n0.C13032a;
import p459j.p460a.p541n0.C13041b;
import p459j.p460a.p541n0.C13193p;
import p459j.p460a.p541n0.C13217t;
import p459j.p460a.p549o0.C13297a;
import p459j.p460a.p564s.C13565v;
import p459j.p460a.p582w0.p583a5.p584e.C13909c;
import p459j.p460a.p582w0.p590x4.C14261f;
import p459j.p460a.p582w0.p590x4.C14289m;
import p459j.p460a.p582w0.p590x4.C14296p;
import p660rx.Observable;
import p660rx.Subscriber;
import p660rx.functions.Actions;
import p660rx.schedulers.Schedulers;
/* renamed from: j.a.w0.e3 */
/* loaded from: classes3-dex2jar.jar:j/a/w0/e3.class */
public class C13987e3 {

    /* renamed from: j.a.w0.e3$a */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/e3$a.class */
    public static final class C13988a implements Observable.OnSubscribe<Object> {
        /* renamed from: a */
        public void call(Subscriber<? super Object> subscriber) {
            try {
                C6362e a = C13987e3.m2936a();
                if (!C13915b3.m3056b("settings_hash", "").equals(C13992e4.m2924a(a.mo23001a().getJSONObject("data").toString()))) {
                    C14296p.m1832a(MyApplication.m29013o(), a);
                    C13915b3.m3044e("settings_hash", C13992e4.m2924a(a.mo23001a().getJSONObject("data").toString()));
                }
            } catch (Exception e) {
                C14080m2.m2612a((Throwable) e);
            }
        }
    }

    /* renamed from: j.a.w0.e3$b */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/e3$b.class */
    public static final class C13989b implements Observable.OnSubscribe<C6362e> {
        /* renamed from: a */
        public void call(Subscriber<? super C6362e> subscriber) {
            MyApplication.m29013o();
            C6362e a = C13987e3.m2936a();
            a.m23000a("os_version", Build.VERSION.SDK_INT);
            a.m22998a("language", C14017g4.m2816h());
            a.m22998a("region", C14017g4.m2810n());
            a.m22998a("model", C14017g4.m2818f());
            a.m22998a("manufacturer", C14017g4.m2819e());
            a.m22999a("app_install_time", C14217x3.m2138h());
            a.m22996a("num_verified", C14137r4.m2370h());
            String e = C13915b3.m3045e("install_referrer");
            if (!TextUtils.isEmpty(e)) {
                HashMap<String, String> c = C14217x3.m2153c(e);
                C13987e3.m2929b(a, c, "utm_medium", "acq_medium");
                C13987e3.m2929b(a, c, "utm_source", "acq_source");
                C13987e3.m2929b(a, c, "utm_campaign", "acq_campaign");
            }
            a.m23000a("showcard_version", UserProfile.m28128n().m28140c());
            a.m23000a("showcard_status", UserProfile.m28128n().m28138d() == 0 ? 3.0d : UserProfile.m28128n().m28135g() == 0 ? 2.0d : 1.0d);
            if (C14217x3.m2206B()) {
                a.m22999a("app_upgrade_time", C14217x3.m2115r());
            }
            if (C13565v.m3921g().m23335b()) {
                SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(MyApplication.m29013o());
                if (defaultSharedPreferences.getString("develop_push_mode_preference", "").equals("testing")) {
                    a.m23000a("testing", 1.0d);
                } else {
                    a.m23000a("testing", 0.0d);
                }
                a.m23000a("app_version", defaultSharedPreferences.getInt("develop_push_versioncode_preference", C14017g4.m2807q()));
            } else {
                a.m23000a("app_version", C14017g4.m2807q());
                a.m23000a("testing", 0.0d);
            }
            String a2 = C14017g4.m2826a();
            if (!TextUtils.isEmpty(a2)) {
                a.m22998a("account", a2);
            }
            a.m22998a("did", C13992e4.m2924a(C14017g4.m2821c()));
            a.m22998a("iid", C6334a.m23211s().m23219k());
            C6373a.m22922a(a);
            subscriber.onCompleted();
        }
    }

    /* renamed from: j.a.w0.e3$c */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/e3$c.class */
    public static final class RunnableC13990c implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ Context f31398a;

        /* renamed from: b */
        public final /* synthetic */ String f31399b;

        /* renamed from: c */
        public final /* synthetic */ NotificationCompat.Builder f31400c;

        /* renamed from: d */
        public final /* synthetic */ String f31401d;

        /* renamed from: e */
        public final /* synthetic */ String f31402e;

        /* renamed from: f */
        public final /* synthetic */ NotificationManager f31403f;

        /* renamed from: g */
        public final /* synthetic */ int f31404g;

        /* renamed from: j.a.w0.e3$c$a */
        /* loaded from: classes3-dex2jar.jar:j/a/w0/e3$c$a.class */
        public class C13991a extends AbstractC6078h<Bitmap> {
            public C13991a() {
            }

            /* renamed from: a */
            public void m2925a(Bitmap bitmap, AbstractC6063c<? super Bitmap> cVar) {
                if (bitmap != null) {
                    RunnableC13990c.this.f31400c.setStyle(new NotificationCompat.BigPictureStyle().bigPicture(bitmap).setBigContentTitle(RunnableC13990c.this.f31401d).setSummaryText(RunnableC13990c.this.f31402e));
                }
                RunnableC13990c cVar2 = RunnableC13990c.this;
                cVar2.f31403f.notify(cVar2.f31404g, cVar2.f31400c.build());
            }

            @Override // p081h.p119d.p120a.p145w.p147j.AbstractC6082k
            /* renamed from: a */
            public /* bridge */ /* synthetic */ void mo2507a(Object obj, AbstractC6063c cVar) {
                m2925a((Bitmap) obj, (AbstractC6063c<? super Bitmap>) cVar);
            }
        }

        public RunnableC13990c(Context context, String str, NotificationCompat.Builder builder, String str2, String str3, NotificationManager notificationManager, int i) {
            this.f31398a = context;
            this.f31399b = str;
            this.f31400c = builder;
            this.f31401d = str2;
            this.f31402e = str3;
            this.f31403f = notificationManager;
            this.f31404g = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            C5765c<String> l = C5776l.m24470c(this.f31398a).m24450a(this.f31399b).m24524l();
            C13991a aVar = new C13991a();
            l.m24512b((C5765c<String>) aVar);
            aVar.mo2453a((Exception) null, (Drawable) null);
        }
    }

    /* renamed from: a */
    public static Uri m2933a(Context context, String str, JSONObject jSONObject) {
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put("t", jSONObject.optString("title"));
            jSONObject2.put("c", jSONObject.optString("message"));
            jSONObject2.put("g", jSONObject.optString("link"));
            jSONObject2.put(C2041o.f2249c, jSONObject.optBoolean("ext_browser", false) ? 1 : 0);
            jSONObject2.put("pin", jSONObject.optString("pin"));
            jSONObject2.put(TtmlNode.TAG_IMAGE, jSONObject.optString(TtmlNode.TAG_IMAGE));
            jSONObject2.put("button_text", jSONObject.optString("button_text"));
            jSONObject2.put("button_link", jSONObject.optString("button_link"));
        } catch (JSONException e) {
            e.printStackTrace();
        }
        if (C13297a.f29903a.equals(jSONObject.optString("link"))) {
            ContentResolver contentResolver = context.getContentResolver();
            Uri uri = C13020c.f29447a;
            contentResolver.delete(uri, "_json LIKE ? OR _json LIKE ?", new String[]{"%\"g\": \"6\"%", "%\"g\": \"" + C13297a.f29903a + "\"%"});
        }
        String valueOf = String.valueOf(System.currentTimeMillis());
        ContentValues contentValues = new ContentValues();
        contentValues.put("_json", jSONObject2.toString());
        contentValues.put("_read", (Integer) 0);
        contentValues.put("_version", "1");
        contentValues.put("_read", (Integer) 0);
        contentValues.put("_createtime", valueOf);
        contentValues.put("_updatetime", valueOf);
        contentValues.put("_status", (Integer) 1);
        if (!TextUtils.isEmpty(str)) {
            contentValues.put("_pushid", str);
        } else {
            contentValues.put("_pushid", "0");
        }
        Uri insert = context.getContentResolver().insert(C13020c.f29447a, contentValues);
        try {
            C14037j3.m2731a().mo2704a(new C13999f1());
        } catch (Exception e2) {
            C14080m2.m2612a((Throwable) e2);
        }
        try {
            context.sendBroadcast(new Intent().setAction("newscenter.listview.refresh"));
        } catch (Exception e3) {
            C14080m2.m2612a((Throwable) e3);
        }
        return insert;
    }

    /* renamed from: a */
    public static C6362e m2936a() {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        C6362e eVar = new C6362e();
        eVar.m22996a("isCallBlockNotification", C13915b3.m3059b("isCallBlockNotification"));
        eVar.m22996a("is_stranger_call_popup", C13915b3.m3059b("is_stranger_call_popup"));
        eVar.m22996a("is_contact_call_popup", C13915b3.m3059b("is_contact_call_popup"));
        eVar.m23000a("calldialog_portrait_y", C12629k0.m5710e());
        eVar.m23000a("calldialog_landscape_y", C12629k0.m5711d());
        eVar.m22996a("enable_missing_call_badge", C13915b3.m3062a("enable_missing_call_badge", false));
        eVar.m22996a("isStrangerSmsPopup", C13915b3.m3059b("isStrangerSmsPopup"));
        eVar.m22996a("isContactSmsPopup", C13915b3.m3059b("isContactSmsPopup"));
        eVar.m22996a("smsDialogDirectly", C13915b3.m3059b("smsDialogDirectly"));
        eVar.m22996a("sms_checker_warning", C13915b3.m3059b("sms_checker_warning"));
        eVar.m22996a("isNewsCenterNotification", C13915b3.m3059b("isNewsCenterNotification"));
        eVar.m22996a("isBlockCallWaiting", C13915b3.m3059b("isBlockCallWaiting"));
        eVar.m22998a("syncSettings", C13915b3.m3045e("syncSettings"));
        eVar.m22998a("icon_theme", C13909c.m3072a());
        eVar.m23000a(TtmlNode.ATTR_TTS_FONT_SIZE, SizedTextView.m25853a(MyApplication.m29013o()));
        eVar.m22998a("RoamingSettng", C13915b3.m3045e("RoamingSettng"));
        eVar.m23000a("es_segment_category_block_bank", C12998a.m4832k().m4840f());
        eVar.m23000a("es_segment_category_block_telecom", C12998a.m4832k().m4838g());
        List<BlockLogRealmObject> a = C13041b.m4723a(C13193p.m4437a(new String[0]), C13193p.m4438a(new Object[0]), C13193p.m4439a(new C13193p.EnumC13194a[0]), null, null);
        if (a != null) {
            eVar.m23000a("block_BlockedHistory", a.size());
        }
        eVar.m23000a("block_Whitelist", C13217t.m4393f());
        List<BlockListRealmObject> a2 = C13032a.m4748a(C13193p.m4437a("_status"), C13193p.m4438a(2), C13193p.m4439a(C13193p.EnumC13194a.NOT_EQUAL_TO), "_updatetime", Sort.DESCENDING);
        if (a2 == null || a2.isEmpty()) {
            z4 = false;
            z3 = false;
            z2 = false;
            z = false;
        } else {
            int i = 0;
            z4 = false;
            z3 = false;
            z2 = false;
            z = false;
            for (BlockListRealmObject blockListRealmObject : a2) {
                int intValue = blockListRealmObject.get_type().intValue();
                if (intValue == 8) {
                    z3 = true;
                } else if (intValue == 4) {
                    z2 = true;
                } else if (intValue == 7) {
                    z = true;
                } else if (intValue == 5) {
                    z4 = true;
                } else {
                    i++;
                }
            }
            eVar.m23000a("block_Blockcall", i);
        }
        eVar.m22996a("block_SpamHammer", z3);
        eVar.m22996a("block_BlockPrivateNumber", z2);
        eVar.m22996a("block_NotInContact", z);
        eVar.m22996a("block_BlockInternationalNumber", z4);
        eVar.m22998a("AdvertisingId", C14000f2.m2905a());
        eVar.m22996a("hasDialerShortCut", false);
        eVar.m22998a("mac_address", C14217x3.m2147e(MyApplication.m29013o()));
        return eVar;
    }

    /* renamed from: a */
    public static void m2935a(Context context, RemoteMessage remoteMessage) {
        RemoteMessage.C3679b I = remoteMessage.m31059I();
        if (I != null && I.m31054c() != null) {
            try {
                String c = I.m31054c();
                JSONObject jSONObject = new JSONObject();
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("title", c);
                Object obj = "";
                jSONObject2.put("message", I.m31057a() != null ? I.m31057a() : "");
                if (I.m31055b() != null) {
                    obj = I.m31055b();
                }
                jSONObject2.put(TtmlNode.TAG_IMAGE, obj);
                String str = remoteMessage.m31058c().get("n.link");
                String str2 = remoteMessage.m31058c().get("n.ext_browser");
                String str3 = str;
                if (TextUtils.isEmpty(str)) {
                    str3 = C14198w.m2238c("mainpage");
                }
                jSONObject2.put("link", str3);
                jSONObject2.put("ext_browser", Boolean.parseBoolean(str2));
                jSONObject2.put("type", "NAVIGATION");
                String a = C13992e4.m2924a(c);
                jSONObject.put("notification", jSONObject2);
                jSONObject.put("id", a);
                m2932a(context, jSONObject);
            } catch (Exception e) {
                C14080m2.m2612a((Throwable) e);
            }
        }
    }

    /* renamed from: a */
    public static void m2934a(Context context, String str, Uri uri, JSONObject jSONObject) {
        boolean z;
        Intent intent;
        NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
        String optString = jSONObject.optString("title");
        String optString2 = jSONObject.optString("message");
        String optString3 = jSONObject.optString("link");
        String optString4 = jSONObject.optString("button_text");
        String optString5 = jSONObject.optString("button_link");
        String optString6 = jSONObject.optString(TtmlNode.TAG_IMAGE);
        boolean optBoolean = jSONObject.optBoolean("ext_browser", false);
        String str2 = optString;
        if (TextUtils.isEmpty(optString)) {
            str2 = context.getString(R$string.newscenter_notification_title);
        }
        if (!C14217x3.m2160b(optString3)) {
            intent = new Intent(context, DeepLinkActivity.class);
            intent.setData(Uri.parse(optString3));
            intent.putExtra("title", str2);
            if (optBoolean) {
                intent.putExtra("outside_page", 1);
            } else {
                intent.putExtra("outside_page", 0);
            }
            if (uri != null) {
                intent.putExtra("id", ContentUris.parseId(uri));
            }
            if (!TextUtils.isEmpty(str)) {
                intent.putExtra("pushid", str);
            }
            z = true;
        } else {
            intent = new Intent(context, DeepLinkActivity.class);
            intent.setData(Uri.parse("whoscall://goto?page=newscenter"));
            if (!TextUtils.isEmpty(str)) {
                intent.putExtra("pushid", str);
            }
            z = false;
        }
        int i = (optString3 == null || !C13297a.f29903a.equals(optString3)) ? 1 : 1980;
        NotificationCompat.Builder priority = C14173t4.m2307a(context).setContentTitle(str2).setContentText(optString2).setTicker(str2).setStyle(new NotificationCompat.BigTextStyle().bigText(optString2)).setContentIntent(C14217x3.m2188a(context, intent, i)).setDefaults(0).setPriority(2);
        if (!C14217x3.m2160b(optString4) && !z) {
            Intent intent2 = new Intent(context, DeepLinkActivity.class);
            intent2.setData(Uri.parse(optString5));
            intent2.putExtra("title", str2);
            if (optBoolean) {
                intent2.putExtra("outside_page", 1);
            } else {
                intent2.putExtra("outside_page", 0);
            }
            if (uri != null) {
                intent2.putExtra("id", ContentUris.parseId(uri));
            }
            if (!TextUtils.isEmpty(str)) {
                intent2.putExtra("pushid", str);
            }
            intent2.putExtra("source", 0);
            priority.addAction(0, optString4, C14217x3.m2188a(context, intent2, 2));
        }
        C14289m.m1905a(1, str);
        if (TextUtils.isEmpty(optString6)) {
            notificationManager.notify(i, priority.build());
            return;
        }
        priority.setPriority(1);
        C14174u.m2293k().post(new RunnableC13990c(context, optString6, priority, str2, optString2, notificationManager, i));
    }

    /* renamed from: a */
    public static void m2932a(Context context, JSONObject jSONObject) {
        if (jSONObject != null) {
            try {
                String optString = jSONObject.optString("id");
                C14261f.m1969b(optString);
                String optString2 = jSONObject.optString("message");
                JSONObject jSONObject2 = TextUtils.isEmpty(optString2) ? null : new JSONObject(optString2);
                String optString3 = jSONObject.optString(AdType.CUSTOM);
                JSONObject jSONObject3 = TextUtils.isEmpty(optString3) ? null : new JSONObject(optString3);
                String optString4 = jSONObject.optString("notification");
                JSONObject jSONObject4 = TextUtils.isEmpty(optString4) ? null : new JSONObject(optString4);
                Uri uri = null;
                if (jSONObject2 != null) {
                    uri = null;
                    if ("NEWSFEED".equals(jSONObject2.optString("type"))) {
                        uri = null;
                        if (!C13297a.m4309a(Uri.parse(jSONObject2.optString("link")), "newscenter")) {
                            if (!(jSONObject3 == null || jSONObject3.isNull("use_notification_image") || jSONObject4 == null)) {
                                jSONObject2.put(TtmlNode.TAG_IMAGE, jSONObject4.optString(TtmlNode.TAG_IMAGE));
                                jSONObject2.put("button_text", jSONObject4.optString("button_text"));
                                jSONObject2.put("button_link", jSONObject4.optString("button_link"));
                            }
                            uri = m2933a(context, optString, jSONObject2);
                        }
                    }
                }
                if (jSONObject4 != null && C13915b3.m3062a("isNewsCenterNotification", true) && "NAVIGATION".equals(jSONObject4.optString("type"))) {
                    m2934a(context, optString, uri, jSONObject4);
                }
            } catch (JSONException e) {
            }
        }
    }

    /* renamed from: b */
    public static void m2930b() {
        if (C14217x3.m2107z()) {
            Observable.create(new C13989b()).subscribeOn(Schedulers.computation()).subscribe(Actions.empty(), C14081m3.m2611a());
        }
    }

    /* renamed from: b */
    public static void m2929b(@NonNull C6362e eVar, @NonNull HashMap<String, String> hashMap, @NonNull String str, @NonNull String str2) {
        String str3 = hashMap.get(str);
        if (TextUtils.isEmpty(str3)) {
            str3 = "";
        }
        eVar.m22998a(str2, str3);
    }

    /* renamed from: c */
    public static void m2928c() {
        if (C14217x3.m2107z()) {
            Observable.create(new C13988a()).observeOn(Schedulers.computation()).subscribe(Actions.empty(), C14081m3.m2611a());
        }
    }
}
