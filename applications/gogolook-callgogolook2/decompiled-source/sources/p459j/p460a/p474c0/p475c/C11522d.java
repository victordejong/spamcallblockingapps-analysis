package p459j.p460a.p474c0.p475c;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.media.AudioManager;
import android.net.Uri;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.StyleSpan;
import android.text.style.TextAppearanceSpan;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.collection.SimpleArrayMap;
import androidx.core.app.NotificationCompat;
import androidx.core.app.NotificationManagerCompat;
import androidx.core.app.RemoteInput;
import androidx.media2.exoplayer.external.util.MimeTypes;
import com.flurry.sdk.C3496r;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.R$array;
import gogolook.callgogolook2.R$bool;
import gogolook.callgogolook2.R$dimen;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$raw;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.R$style;
import gogolook.callgogolook2.gson.NumberInfo;
import gogolook.callgogolook2.gson.RowInfo;
import gogolook.callgogolook2.messaging.datamodel.action.MarkAsReadAction;
import gogolook.callgogolook2.messaging.datamodel.action.RedownloadMmsAction;
import gogolook.callgogolook2.messaging.datamodel.data.MessageData;
import gogolook.callgogolook2.messaging.receiver.SmsActionsEntrypointReceiver;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import p081h.p119d.p120a.p145w.p146i.AbstractC6063c;
import p081h.p119d.p120a.p145w.p147j.AbstractC6078h;
import p459j.p460a.p474c0.AbstractC11516a;
import p459j.p460a.p474c0.p475c.AbstractC11549q;
import p459j.p460a.p474c0.p475c.p478y.C11608e;
import p459j.p460a.p474c0.p475c.p479z.AbstractC11669o;
import p459j.p460a.p474c0.p475c.p479z.C11641b0;
import p459j.p460a.p474c0.p475c.p479z.C11675t;
import p459j.p460a.p474c0.p488f.C11832i;
import p459j.p460a.p474c0.p488f.C11834j;
import p459j.p460a.p474c0.p491g.AbstractC12126w;
import p459j.p460a.p474c0.p499h.AbstractC12178k;
import p459j.p460a.p474c0.p499h.C12151d;
import p459j.p460a.p474c0.p499h.C12153d0;
import p459j.p460a.p474c0.p499h.C12155e;
import p459j.p460a.p474c0.p499h.C12171i0;
import p459j.p460a.p474c0.p499h.C12187m0;
import p459j.p460a.p474c0.p499h.C12204q0;
import p459j.p460a.p474c0.p499h.C12205r;
import p459j.p460a.p474c0.p499h.C12211s;
import p459j.p460a.p474c0.p499h.C12216t0;
import p459j.p460a.p521j0.p529x.AbstractC12756c;
import p459j.p460a.p521j0.p529x.C12774j;
import p459j.p460a.p521j0.p529x.C12810o;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.C14118p2;
import p459j.p460a.p582w0.C14131q4;
import p459j.p460a.p582w0.C14173t4;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p589f5.C14005a;
import p459j.p460a.p582w0.p590x4.C14308w;
/* renamed from: j.a.c0.c.d */
/* loaded from: classes2-dex2jar.jar:j/a/c0/c/d.class */
public class C11522d {

    /* renamed from: a */
    public static final String f25733a = null;

    /* renamed from: c */
    public static int f25735c;

    /* renamed from: d */
    public static int f25736d;

    /* renamed from: e */
    public static int f25737e;

    /* renamed from: f */
    public static int f25738f;

    /* renamed from: j */
    public static int f25742j;

    /* renamed from: b */
    public static final Set<AbstractC11559t> f25734b = new HashSet();

    /* renamed from: g */
    public static boolean f25739g = false;

    /* renamed from: h */
    public static final Object f25740h = new Object();

    /* renamed from: i */
    public static final SimpleArrayMap<String, Long> f25741i = new SimpleArrayMap<>();

    /* renamed from: j.a.c0.c.d$a */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/c/d$a.class */
    public static final class C11523a extends AbstractC6078h<Bitmap> {

        /* renamed from: d */
        public final /* synthetic */ boolean f25743d;

        /* renamed from: e */
        public final /* synthetic */ C12774j f25744e;

        /* renamed from: f */
        public final /* synthetic */ AbstractC11559t f25745f;

        public C11523a(boolean z, C12774j jVar, AbstractC11559t tVar) {
            this.f25743d = z;
            this.f25744e = jVar;
            this.f25745f = tVar;
        }

        /* renamed from: a */
        public void m9270a(Bitmap bitmap, AbstractC6063c<? super Bitmap> cVar) {
            Bitmap bitmap2 = bitmap;
            if (this.f25743d) {
                bitmap2 = C14118p2.m2465a(bitmap);
            }
            C11522d.m9280b(this.f25744e, this.f25745f, bitmap2, bitmap2);
        }

        @Override // p081h.p119d.p120a.p145w.p147j.AbstractC6071a, p081h.p119d.p120a.p145w.p147j.AbstractC6082k
        /* renamed from: a */
        public void mo2453a(Exception exc, Drawable drawable) {
            Bitmap bitmap = drawable instanceof BitmapDrawable ? ((BitmapDrawable) drawable).getBitmap() : null;
            Bitmap bitmap2 = bitmap;
            if (bitmap != null) {
                bitmap2 = C14118p2.m2465a(bitmap);
            }
            C11522d.m9280b(this.f25744e, this.f25745f, bitmap2, bitmap2);
        }

        @Override // p081h.p119d.p120a.p145w.p147j.AbstractC6082k
        /* renamed from: a */
        public /* bridge */ /* synthetic */ void mo2507a(Object obj, AbstractC6063c cVar) {
            m9270a((Bitmap) obj, (AbstractC6063c<? super Bitmap>) cVar);
        }
    }

    /* renamed from: j.a.c0.c.d$b */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/c/d$b.class */
    public static final class RunnableC11524b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ C12171i0 f25746a;

        public RunnableC11524b(C12171i0 i0Var) {
            this.f25746a = i0Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f25746a.m6926c();
        }
    }

    /* renamed from: a */
    public static Uri m9312a(Uri uri) {
        Uri b = m9283b(uri);
        if (b == null) {
            return null;
        }
        List<String> pathSegments = b.getPathSegments();
        int size = pathSegments.size();
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < size; i++) {
            sb.append('/');
            if (i == 2) {
                sb.append("display_photo");
            } else {
                sb.append(pathSegments.get(i));
            }
        }
        return b.buildUpon().path(sb.toString()).build();
    }

    /* renamed from: a */
    public static Uri m9292a(String str) {
        C11608e a = C11608e.m8959a(AbstractC11528g.m9259k().mo9244f(), str);
        return C12187m0.m6860a(a != null ? a.m8951h() : null);
    }

    @VisibleForTesting
    /* renamed from: a */
    public static NotificationCompat.Action m9308a(AbstractC11549q.C11555f fVar) {
        String b;
        AbstractC11549q.C11552c cVar = fVar.f25798q.f25801a.get(0);
        if (!cVar.m9180a() || (b = cVar.m9179b()) == null) {
            return null;
        }
        Context a = AbstractC11516a.m9413n().mo9412a();
        return new NotificationCompat.Action.Builder(0, a.getString(R$string.notification_download_mms), RedownloadMmsAction.m27671a(a, b, fVar.f25829a.first())).build();
    }

    /* renamed from: a */
    public static NotificationCompat.Action m9307a(AbstractC11549q.C11555f fVar, String str) {
        Context o = MyApplication.m29013o();
        String first = fVar.f25829a.first();
        Intent intent = new Intent(o, SmsActionsEntrypointReceiver.class);
        intent.setAction("action.block");
        intent.putExtra("extra.conversation.id", first);
        intent.putExtra("extra.sender.number", str);
        intent.setPackage(o.getPackageName());
        return new NotificationCompat.Action.Builder(0, C14206w4.m2225a((int) R$string.smsnotification_block), PendingIntent.getBroadcast(o, m9278b(first), intent, 134217728)).build();
    }

    /* renamed from: a */
    public static NotificationCompat.Action m9306a(@Nullable AbstractC11549q.C11555f fVar, String str, String str2) {
        String str3;
        if (C14217x3.m2160b(str2)) {
            return null;
        }
        Context o = MyApplication.m29013o();
        Intent intent = new Intent(o, SmsActionsEntrypointReceiver.class);
        if (fVar != null) {
            str3 = fVar.f25829a.first();
            intent.putExtra("extra.conversation.id", str3);
        } else {
            str3 = null;
        }
        intent.setAction("action.copy.otp");
        intent.putExtra("extra.sender.number", str);
        intent.putExtra("extra.otp", str2);
        intent.setPackage(o.getPackageName());
        String str4 = str3;
        if (TextUtils.isEmpty(str3)) {
            str4 = str;
        }
        return new NotificationCompat.Action.Builder(0, C14206w4.m2225a((int) R$string.smsnotification_copy), PendingIntent.getBroadcast(o, m9278b(str4), intent, 134217728)).build();
    }

    /* renamed from: a */
    public static NotificationCompat.Action m9305a(@Nullable AbstractC11549q.C11555f fVar, String str, boolean z) {
        String str2;
        Context o = MyApplication.m29013o();
        Intent intent = new Intent(o, SmsActionsEntrypointReceiver.class);
        if (fVar != null) {
            String first = fVar.f25829a.first();
            intent.putExtra("extra.content", fVar.m9163c());
            intent.putExtra("extra.conversation.id", first);
            str2 = first;
        } else {
            str2 = null;
        }
        intent.setAction("action.report");
        intent.putExtra("extra.sender.number", str);
        intent.putExtra("extra.has.url", z);
        intent.setPackage(o.getPackageName());
        String str3 = str2;
        if (TextUtils.isEmpty(str2)) {
            str3 = str;
        }
        return new NotificationCompat.Action.Builder(0, C14206w4.m2225a((int) R$string.smsnotification_report), PendingIntent.getBroadcast(o, m9278b(str3), intent, 134217728)).build();
    }

    /* renamed from: a */
    public static NotificationCompat.Action m9304a(AbstractC11559t tVar) {
        RemoteInput build = new RemoteInput.Builder("android.intent.extra.TEXT").setLabel(C14206w4.m2225a((int) R$string.notification_reply_prompt)).build();
        if (!(tVar instanceof AbstractC11549q.C11555f)) {
            return null;
        }
        String first = tVar.f25829a.first();
        AbstractC11549q.C11552c cVar = ((AbstractC11549q.C11555f) tVar).f25798q.f25801a.get(0);
        String str = cVar.f25807f;
        boolean z = C11832i.m8159a(cVar.f25805d, cVar.f25814m) || (cVar.f25803b && C11834j.m8082d(cVar.f25814m));
        Context o = MyApplication.m29013o();
        return new NotificationCompat.Action.Builder(0, C14206w4.m2225a((int) R$string.smsnotification_reply), C14017g4.m2802v() ? AbstractC12126w.m7095a().mo7072a(o, first, str, z, m9278b(first), C12810o.m5238g()) : AbstractC12126w.m7095a().mo7067b(o, 11, first, (MessageData) null, C12810o.m5238g())).addRemoteInput(build).build();
    }

    /* renamed from: a */
    public static NotificationCompat.Action m9294a(@NonNull C12774j jVar, String str) {
        return new NotificationCompat.Action.Builder(0, C14206w4.m2225a((int) R$string.smsnotification_scan), C12810o.m5263a(MyApplication.m29013o(), jVar, str)).build();
    }

    /* renamed from: a */
    public static AbstractC11669o m9314a(Context context, Uri uri) {
        if (uri == null) {
            return null;
        }
        C11641b0.C11642a aVar = new C11641b0.C11642a(uri);
        aVar.m8680b(f25735c);
        C11641b0.C11642a aVar2 = aVar;
        aVar2.m8681a(f25736d);
        C11641b0.C11642a aVar3 = aVar2;
        aVar3.m8682a();
        return (AbstractC11669o) C11675t.m8650b().m8647d(aVar3.m8726c().mo8642a(context));
    }

    /* renamed from: a */
    public static C12211s m9315a(Context context) {
        String a = AbstractC12178k.m6912b().mo6907a(context.getString(R$string.notifications_group_children_key), "");
        if (!TextUtils.isEmpty(a)) {
            return C12211s.m6799a(a);
        }
        return null;
    }

    /* renamed from: a */
    public static CharSequence m9289a(String str, CharSequence charSequence, Uri uri, String str2) {
        return m9288a(str, charSequence, uri, str2, (int) R$string.notification_ticker_separator);
    }

    /* renamed from: a */
    public static CharSequence m9288a(String str, CharSequence charSequence, Uri uri, String str2, int i) {
        Context a = AbstractC11516a.m9413n().mo9412a();
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        if (!TextUtils.isEmpty(str)) {
            spannableStringBuilder.append((CharSequence) str);
            spannableStringBuilder.setSpan(new StyleSpan(1), 0, str.length(), 33);
        }
        if (!TextUtils.isEmpty(charSequence)) {
            if (spannableStringBuilder.length() > 0) {
                spannableStringBuilder.append((CharSequence) a.getString(i));
            }
            spannableStringBuilder.append(charSequence);
        }
        if (uri != null) {
            if (spannableStringBuilder.length() > 0) {
                spannableStringBuilder.append((CharSequence) a.getString(R$string.notification_separator));
            }
            spannableStringBuilder.append(m9276b(null, str2));
        }
        return spannableStringBuilder;
    }

    @Nullable
    /* renamed from: a */
    public static String m9317a(int i, String str, boolean z) {
        C14080m2.m2615a("BugleNotifications", "buildNotificationTag, type=" + i + ", tagKey=" + str + ", bundledNotification=" + z);
        String str2 = null;
        if (i == 0) {
            if (!z) {
                str = null;
            }
            str2 = m9287a(":sms:", str);
        } else if (i == 2) {
            if (!z) {
                str = null;
            }
            str2 = m9287a(":error:", str);
        }
        return str2;
    }

    /* renamed from: a */
    public static String m9293a(Integer num, Integer num2) {
        Context a = AbstractC11516a.m9413n().mo9412a();
        if (num != null && num2 != null) {
            return a.getString(C14131q4.m2412a(C14131q4.m2413a(num.intValue()), num2.intValue()));
        }
        if (num != null) {
            return C14005a.m2893a(num.intValue());
        }
        return 2 == num2.intValue() ? a.getString(R$string.sms_alert_spam) : "";
    }

    /* renamed from: a */
    public static String m9290a(String str, RowInfo rowInfo) {
        if (rowInfo != null) {
            str = rowInfo.m28224h().name;
        }
        return str;
    }

    /* renamed from: a */
    public static String m9287a(String str, @Nullable String str2) {
        Context a = AbstractC11516a.m9413n().mo9412a();
        if (str2 != null) {
            return a.getPackageName() + str + ":" + str2;
        }
        return a.getPackageName() + str;
    }

    @VisibleForTesting
    /* renamed from: a */
    public static List<Integer> m9299a(@NonNull C12774j jVar, AbstractC11549q.C11555f fVar, AbstractC11549q.C11552c cVar) {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        int i2 = 0;
        if (jVar.m5360h() == null) {
            arrayList.add(0);
        } else if (C12810o.m5245b(jVar.m5357k())) {
            arrayList.add(6);
            if (!jVar.m5354n()) {
                arrayList.add(2);
            }
        } else {
            NumberInfo g = jVar.m5360h().m28226g();
            NotificationCompat.Action a = m9308a(fVar);
            if (jVar.m5360h().m28224h().type == RowInfo.Primary.Type.SPOOF) {
                if (jVar.m5355m()) {
                    arrayList.add(5);
                } else {
                    arrayList.add(4);
                }
                arrayList.add(1);
                arrayList.add(2);
            } else if (jVar.m5354n()) {
                if (jVar.m5355m()) {
                    arrayList.add(5);
                } else if (a != null) {
                    if (cVar.m9180a()) {
                        i2 = 3;
                    }
                    arrayList.add(Integer.valueOf(i2));
                } else {
                    arrayList.add(0);
                }
                arrayList.add(1);
            } else if (g.m28329f0() || g.m28370Z()) {
                if (jVar.m5355m()) {
                    arrayList.add(5);
                } else {
                    arrayList.add(4);
                }
                arrayList.add(1);
                arrayList.add(2);
            } else {
                if (jVar.m5355m()) {
                    arrayList.add(5);
                } else if (a != null) {
                    if (cVar.m9180a()) {
                        i = 3;
                    }
                    arrayList.add(Integer.valueOf(i));
                } else {
                    arrayList.add(0);
                }
                arrayList.add(1);
                arrayList.add(2);
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public static void m9319a() {
        if (!f25739g) {
            Resources resources = AbstractC11516a.m9413n().mo9412a().getResources();
            f25735c = resources.getDimensionPixelSize(R$dimen.notification_wearable_image_width);
            f25736d = resources.getDimensionPixelSize(R$dimen.notification_wearable_image_height);
            f25738f = (int) resources.getDimension(17104902);
            f25737e = (int) resources.getDimension(17104901);
            f25739g = true;
        }
    }

    /* renamed from: a */
    public static void m9318a(int i) {
        synchronized (C11522d.class) {
            try {
                m9284b(i, (String) null, false);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public static void m9316a(Notification notification, AbstractC11559t tVar) {
        synchronized (C11522d.class) {
            if (notification != null) {
                try {
                    int i = tVar.f25834f;
                    C12211s sVar = tVar.f25829a;
                    boolean z = tVar instanceof AbstractC11549q.C11550a;
                    tVar.f25833e = true;
                    NotificationManagerCompat from = NotificationManagerCompat.from(AbstractC11516a.m9413n().mo9412a());
                    String str = null;
                    if (sVar != null) {
                        str = sVar.first();
                    }
                    String a = m9317a(i, str, true);
                    notification.flags |= 16;
                    notification.defaults |= 4;
                    from.notify(a, i, notification);
                    C14080m2.m2615a("BugleNotifications", "Notifying for conversation " + str + ", tag = " + a + ", type = " + i);
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    /* renamed from: a */
    public static void m9313a(Context context, C12211s sVar) {
        if (!sVar.equals(m9315a(context))) {
            AbstractC12178k.m6912b().mo6903b(context.getString(R$string.notifications_group_children_key), sVar.m6798q());
        }
    }

    /* renamed from: a */
    public static void m9311a(NotificationCompat.Builder builder, AbstractC11559t tVar) {
        if (C12153d0.m6992a("BugleNotifications", 2)) {
            C12153d0.m6983d("BugleNotifications", "Group key (for wearables)=groupkey");
        }
        if (tVar instanceof AbstractC11549q.C11554e) {
            builder.setGroup("groupkey").setGroupSummary(true);
        } else if (tVar instanceof AbstractC11549q.C11550a) {
            builder.setGroup("groupkey").setSortKey(String.format(Locale.US, "%02d", Integer.valueOf(((AbstractC11549q.C11550a) tVar).f25800u)));
        }
    }

    /* renamed from: a */
    public static void m9310a(NotificationCompat.WearableExtender wearableExtender, AbstractC11549q.C11555f fVar) {
        Notification a;
        if (m9285b() && (a = AbstractC11549q.m9191a(fVar.f25829a.first(), fVar.f25798q.f25801a.get(0).f25815n)) != null) {
            wearableExtender.addPage(a);
        }
    }

    /* renamed from: a */
    public static void m9309a(NotificationCompat.WearableExtender wearableExtender, AbstractC11559t tVar) {
        if (tVar instanceof AbstractC11549q.C11555f) {
            AbstractC11549q.C11555f fVar = (AbstractC11549q.C11555f) tVar;
            Context a = AbstractC11516a.m9413n().mo9412a();
            String first = tVar.f25829a.first();
            AbstractC11549q.C11552c cVar = fVar.f25798q.f25801a.get(0);
            String str = cVar.f25807f;
            boolean z = C11832i.m8159a(cVar.f25805d, cVar.f25814m) || (cVar.f25803b && C11834j.m8082d(cVar.f25814m));
            NotificationCompat.Action.Builder builder = new NotificationCompat.Action.Builder((int) R$drawable.ic_wear_reply, a.getString(z ? R$string.notification_reply_via_mms : R$string.notification_reply_via_sms), AbstractC12126w.m7095a().mo7072a(a, first, str, z, Integer.parseInt(first), fVar.f25825t));
            builder.addRemoteInput(new RemoteInput.Builder("android.intent.extra.TEXT").setLabel(a.getString(R$string.notification_reply_prompt)).setChoices(a.getResources().getStringArray(R$array.notification_reply_choices)).build());
            wearableExtender.addAction(builder.build());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0085, code lost:
        if ((android.os.SystemClock.elapsedRealtime() - r0.longValue()) > p459j.p460a.p474c0.p475c.C11522d.f25742j) goto L_0x0088;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m9303a(p459j.p460a.p474c0.p475c.AbstractC11559t r7, androidx.core.app.NotificationCompat.Builder r8, boolean r9, android.net.Uri r10, java.lang.String r11) {
        /*
            r0 = 4
            r12 = r0
            r0 = r12
            r13 = r0
            r0 = r9
            if (r0 != 0) goto L_0x00b8
            j.a.c0.a r0 = p459j.p460a.p474c0.AbstractC11516a.m9413n()
            j.a.c0.h.k r0 = r0.mo9408b()
            r14 = r0
            r0 = r14
            java.lang.String r1 = "latest_notification_message_timestamp"
            r2 = -9223372036854775808
            long r0 = r0.mo6908a(r1, r2)
            r15 = r0
            r0 = r7
            long r0 = r0.mo9159f()
            r17 = r0
            r0 = r14
            java.lang.String r1 = "latest_notification_message_timestamp"
            r2 = r15
            r3 = r17
            long r2 = java.lang.Math.max(r2, r3)
            r0.mo6904b(r1, r2)
            r0 = r12
            r13 = r0
            r0 = r17
            r1 = r15
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x00b8
            java.lang.Object r0 = p459j.p460a.p474c0.p475c.C11522d.f25740h
            r14 = r0
            r0 = r14
            monitor-enter(r0)
            androidx.collection.SimpleArrayMap<java.lang.String, java.lang.Long> r0 = p459j.p460a.p474c0.p475c.C11522d.f25741i     // Catch: all -> 0x00b2
            r1 = r11
            java.lang.Object r0 = r0.get(r1)     // Catch: all -> 0x00b2
            java.lang.Long r0 = (java.lang.Long) r0     // Catch: all -> 0x00b2
            r19 = r0
            int r0 = p459j.p460a.p474c0.p475c.C11522d.f25742j     // Catch: all -> 0x00b2
            if (r0 != 0) goto L_0x006e
            j.a.c0.h.i r0 = p459j.p460a.p474c0.p499h.AbstractC12170i.m6941a()     // Catch: all -> 0x00b2
            java.lang.String r1 = "bugle_notification_time_between_rings_seconds"
            r2 = 10
            int r0 = r0.mo6919a(r1, r2)     // Catch: all -> 0x00b2
            r0 = 10000(0x2710, float:1.4013E-41)
            p459j.p460a.p474c0.p475c.C11522d.f25742j = r0     // Catch: all -> 0x00b2
        L_0x006e:
            r0 = r19
            if (r0 == 0) goto L_0x0088
            r0 = r12
            r13 = r0
            long r0 = android.os.SystemClock.elapsedRealtime()     // Catch: all -> 0x00b2
            r1 = r19
            long r1 = r1.longValue()     // Catch: all -> 0x00b2
            long r0 = r0 - r1
            int r1 = p459j.p460a.p474c0.p475c.C11522d.f25742j     // Catch: all -> 0x00b2
            long r1 = (long) r1     // Catch: all -> 0x00b2
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x00ac
        L_0x0088:
            androidx.collection.SimpleArrayMap<java.lang.String, java.lang.Long> r0 = p459j.p460a.p474c0.p475c.C11522d.f25741i     // Catch: all -> 0x00b2, all -> 0x00b2
            r1 = r11
            long r2 = android.os.SystemClock.elapsedRealtime()     // Catch: all -> 0x00b2
            java.lang.Long r2 = java.lang.Long.valueOf(r2)     // Catch: all -> 0x00b2
            java.lang.Object r0 = r0.put(r1, r2)     // Catch: all -> 0x00b2
            r0 = r8
            r1 = r10
            androidx.core.app.NotificationCompat$Builder r0 = r0.setSound(r1)     // Catch: all -> 0x00b2
            r0 = r12
            r13 = r0
            r0 = r7
            boolean r0 = m9281b(r0)     // Catch: all -> 0x00b2
            if (r0 == 0) goto L_0x00ac
            r0 = 6
            r13 = r0
        L_0x00ac:
            r0 = r14
            monitor-exit(r0)     // Catch: all -> 0x00b2
            goto L_0x00b8
        L_0x00b2:
            r7 = move-exception
            r0 = r14
            monitor-exit(r0)     // Catch: all -> 0x00b2
            r0 = r7
            throw r0
        L_0x00b8:
            r0 = r8
            r1 = r13
            androidx.core.app.NotificationCompat$Builder r0 = r0.setDefaults(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p474c0.p475c.C11522d.m9303a(j.a.c0.c.t, androidx.core.app.NotificationCompat$Builder, boolean, android.net.Uri, java.lang.String):void");
    }

    /* renamed from: a */
    public static void m9302a(C12211s sVar, AbstractC11559t tVar) {
        C12211s sVar2 = new C12211s();
        if (tVar instanceof AbstractC11549q.C11554e) {
            for (AbstractC11549q qVar : ((AbstractC11549q.C11554e) tVar).f25823s) {
                C12211s sVar3 = qVar.f25829a;
                if (sVar3 != null) {
                    sVar2.add(sVar3.first());
                }
            }
        }
        Iterator<String> it = sVar.iterator();
        while (it.hasNext()) {
            String next = it.next();
            if (!sVar2.contains(next)) {
                m9284b(0, next, true);
            }
        }
    }

    /* renamed from: a */
    public static void m9301a(@NonNull C12774j jVar) {
        AbstractC11559t h = AbstractC11549q.m9185h(jVar.m5371a());
        boolean c = AbstractC11528g.m9259k().m9262c(jVar.m5371a());
        if (h == null) {
            m9284b(0, jVar.m5371a(), true);
            if (c && jVar.m5356l()) {
                m9274c(m9292a(jVar.m5371a()));
            }
        } else if (C14217x3.m2160b(jVar.m5363e())) {
            m9295a(jVar, h, jVar.m5353o(), c);
            m9279b(jVar, h, c);
        } else {
            m9297a(jVar, h, c);
        }
    }

    /* renamed from: a */
    public static void m9300a(@NonNull C12774j jVar, NotificationCompat.Builder builder, AbstractC11549q.C11555f fVar, List<Integer> list) {
        for (Integer num : list) {
            switch (num.intValue()) {
                case 0:
                    builder.addAction(m9304a((AbstractC11559t) fVar));
                    break;
                case 1:
                    builder.addAction(m9282b(fVar));
                    break;
                case 2:
                    if (jVar.m5360h() != null) {
                        builder.addAction(m9305a(fVar, jVar.m5360h().m28228f(), jVar.m5357k()));
                        break;
                    } else {
                        break;
                    }
                case 3:
                    builder.addAction(m9308a(fVar));
                    break;
                case 4:
                    if (jVar.m5360h() != null) {
                        builder.addAction(m9307a(fVar, jVar.m5360h().m28228f()));
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (jVar.m5355m() && jVar.m5360h() != null) {
                        builder.addAction(m9306a(fVar, jVar.m5360h().m28228f(), jVar.m5361g()));
                        break;
                    }
                    break;
                case 6:
                    builder.addAction(m9294a(jVar, "action.default.sms.scan.url.by.cta"));
                    break;
            }
        }
    }

    /* renamed from: a */
    public static void m9297a(@NonNull final C12774j jVar, final AbstractC11559t tVar, final boolean z) {
        if (jVar.m5356l()) {
            C14308w.f32062d.m1623b(C14308w.m1622c(jVar.m5371a()));
        }
        if (tVar instanceof AbstractC11549q.C11555f) {
            AbstractC11549q.C11555f fVar = (AbstractC11549q.C11555f) tVar;
            fVar.m9176a(jVar.m5359i(), false);
            fVar.m9175k(m9293a(jVar.m5358j(), Integer.valueOf(jVar.m5366b())));
            fVar.m9177a(jVar.m5366b());
        }
        jVar.m5369a(new AbstractC12756c() { // from class: j.a.c0.c.a
            @Override // p459j.p460a.p521j0.p529x.AbstractC12756c
            /* renamed from: a */
            public final void mo5416a(RowInfo rowInfo) {
                C11522d.m9296a(C12774j.this, tVar, z, rowInfo);
            }
        });
    }

    /* renamed from: a */
    public static /* synthetic */ void m9296a(C12774j jVar, AbstractC11559t tVar, boolean z, RowInfo rowInfo) {
        m9295a(jVar, tVar, jVar.m5353o(), z);
        m9279b(jVar, tVar, z);
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x020c  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m9295a(@androidx.annotation.NonNull p459j.p460a.p521j0.p529x.C12774j r9, p459j.p460a.p474c0.p475c.AbstractC11559t r10, boolean r11, boolean r12) {
        /*
            Method dump skipped, instructions count: 544
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p474c0.p475c.C11522d.m9295a(j.a.j0.x.j, j.a.c0.c.t, boolean, boolean):void");
    }

    /* renamed from: a */
    public static void m9291a(String str, int i) {
        MarkAsReadAction.m27699a(str, i);
        m9273c(str);
    }

    /* renamed from: a */
    public static void m9286a(boolean z, String str, String str2, int i, int i2) {
        C14080m2.m2615a("BugleNotifications", "Update: silent = " + z + " conversationId = " + str2 + " coverage = " + i);
        C12151d.m7002b();
        m9319a();
        if (!m9275c()) {
            m9318a(0);
            return;
        }
        if ((i & 1) != 0) {
            C12774j.C12775a aVar = new C12774j.C12775a();
            aVar.m5343d(str);
            aVar.m5347a(str2);
            aVar.m5351a(i2);
            aVar.m5346a(z);
            m9301a(aVar.m5352a());
        }
        if ((i & 2) != 0) {
            AbstractC11549q.m9188e(str2);
        }
    }

    /* renamed from: b */
    public static int m9278b(@Nullable String str) {
        if (str == null) {
            return 0;
        }
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException e) {
            e.printStackTrace();
            return 0;
        }
    }

    /* renamed from: b */
    public static Uri m9283b(Uri uri) {
        if (TextUtils.equals(C12155e.m6978a(uri), C3496r.f6031a)) {
            uri = C12155e.m6965d(uri);
        } else if (!C12216t0.m6756g(uri)) {
            uri = null;
        }
        if (uri == null || !uri.getAuthority().equals("com.android.contacts")) {
            return null;
        }
        List<String> pathSegments = uri.getPathSegments();
        if (pathSegments.size() != 3 || !pathSegments.get(2).equals("photo")) {
            return null;
        }
        return uri;
    }

    /* renamed from: b */
    public static NotificationCompat.Action m9282b(AbstractC11549q.C11555f fVar) {
        Context o = MyApplication.m29013o();
        String first = fVar.f25829a.first();
        Intent intent = new Intent(o, SmsActionsEntrypointReceiver.class);
        intent.setAction("action.mark.as.read");
        intent.putExtra("extra.conversation.id", first);
        intent.putExtra("extra.filter.type", fVar.f25825t);
        intent.setPackage(o.getPackageName());
        return new NotificationCompat.Action.Builder(0, C14206w4.m2225a((int) R$string.smsnotification_mark_as_read), PendingIntent.getBroadcast(o, m9278b(first), intent, 134217728)).build();
    }

    /* renamed from: b */
    public static CharSequence m9277b(String str, CharSequence charSequence, Uri uri, String str2) {
        return m9288a(str, charSequence, uri, str2, (int) R$string.notification_space_separator);
    }

    /* renamed from: b */
    public static CharSequence m9276b(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        Context a = AbstractC11516a.m9413n().mo9412a();
        if (!TextUtils.isEmpty(str)) {
            sb.append(str);
            sb.append(a.getString(R$string.notification_separator));
        }
        int i = R$string.notification_picture;
        if (C12205r.m6811b(str2)) {
            i = R$string.notification_audio;
        } else if (C12205r.m6804i(str2)) {
            i = R$string.notification_video;
        } else if (C12205r.m6805h(str2)) {
            i = R$string.notification_vcard;
        }
        sb.append(a.getText(i));
        return sb;
    }

    /* renamed from: b */
    public static void m9284b(int i, String str, boolean z) {
        Context a;
        C12211s a2;
        synchronized (C11522d.class) {
            try {
                String a3 = m9317a(i, str, z);
                NotificationManagerCompat from = NotificationManagerCompat.from(AbstractC11516a.m9413n().mo9412a());
                synchronized (f25734b) {
                    Iterator<AbstractC11559t> it = f25734b.iterator();
                    while (it.hasNext()) {
                        AbstractC11559t next = it.next();
                        if (next.f25834f == i) {
                            next.f25833e = true;
                            if (C12153d0.m6992a("BugleNotifications", 2)) {
                                C12153d0.m6983d("BugleNotifications", "Canceling pending notification");
                            }
                            it.remove();
                        }
                    }
                }
                from.cancel(a3, i);
                if (C12153d0.m6992a("BugleNotifications", 3)) {
                    C12153d0.m6991a("BugleNotifications", "Canceled notifications of type " + i);
                }
                if (i == 0 && (a2 = m9315a((a = AbstractC11516a.m9413n().mo9412a()))) != null && a2.size() > 0) {
                    if (str != null) {
                        a2.remove(str);
                        m9313a(a, a2);
                    } else {
                        m9302a(a2, (AbstractC11559t) null);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x00db, code lost:
        if (p459j.p460a.p474c0.p499h.C12205r.m6804i(r0) != false) goto L_0x00de;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m9280b(@androidx.annotation.NonNull p459j.p460a.p521j0.p529x.C12774j r8, p459j.p460a.p474c0.p475c.AbstractC11559t r9, android.graphics.Bitmap r10, android.graphics.Bitmap r11) {
        /*
            Method dump skipped, instructions count: 715
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p474c0.p475c.C11522d.m9280b(j.a.j0.x.j, j.a.c0.c.t, android.graphics.Bitmap, android.graphics.Bitmap):void");
    }

    /* renamed from: b */
    public static void m9279b(@NonNull C12774j jVar, AbstractC11559t tVar, boolean z) {
        Context a = AbstractC11516a.m9413n().mo9412a();
        C12211s a2 = m9315a(a);
        if (a2 != null && a2.size() > 0) {
            m9302a(a2, tVar);
        }
        C12211s sVar = new C12211s();
        if (tVar instanceof AbstractC11549q.C11554e) {
            for (AbstractC11549q qVar : ((AbstractC11549q.C11554e) tVar).f25823s) {
                m9295a(jVar, (AbstractC11559t) qVar, true, z);
                C12211s sVar2 = qVar.f25829a;
                if (sVar2 != null) {
                    sVar.add(sVar2.first());
                }
            }
        }
        m9313a(a, sVar);
    }

    /* renamed from: b */
    public static boolean m9285b() {
        boolean z = false;
        try {
            AbstractC11516a.m9413n().mo9412a().getPackageManager().getPackageInfo("com.google.android.wearable.app", 0);
            z = true;
        } catch (PackageManager.NameNotFoundException e) {
        }
        return z;
    }

    /* renamed from: b */
    public static boolean m9281b(AbstractC11559t tVar) {
        if (!tVar.mo9158g()) {
            return false;
        }
        AbstractC12178k b = AbstractC12178k.m6912b();
        Context a = AbstractC11516a.m9413n().mo9412a();
        return b.mo6906a(a.getString(R$string.notification_vibration_pref_key), a.getResources().getBoolean(R$bool.notification_vibration_pref_default));
    }

    /* renamed from: c */
    public static CharSequence m9272c(String str, CharSequence charSequence, Uri uri, String str2) {
        Context a = AbstractC11516a.m9413n().mo9412a();
        TextAppearanceSpan textAppearanceSpan = new TextAppearanceSpan(a, R$style.NotificationSenderText);
        TextAppearanceSpan textAppearanceSpan2 = new TextAppearanceSpan(a, R$style.NotificationTertiaryText);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        if (!TextUtils.isEmpty(str)) {
            spannableStringBuilder.append((CharSequence) str);
            spannableStringBuilder.setSpan(textAppearanceSpan, 0, str.length(), 0);
        }
        String string = a.getString(R$string.notification_separator);
        if (!TextUtils.isEmpty(charSequence)) {
            if (spannableStringBuilder.length() > 0) {
                spannableStringBuilder.append((CharSequence) string);
            }
            int length = spannableStringBuilder.length();
            spannableStringBuilder.append(charSequence);
            spannableStringBuilder.setSpan(textAppearanceSpan2, length, charSequence.length() + length, 0);
        }
        if (uri != null) {
            if (spannableStringBuilder.length() > 0) {
                spannableStringBuilder.append((CharSequence) string);
            }
            spannableStringBuilder.append(m9276b(null, str2));
        }
        return spannableStringBuilder;
    }

    /* renamed from: c */
    public static void m9274c(Uri uri) {
        if (!(((AudioManager) AbstractC11516a.m9413n().mo9412a().getSystemService(MimeTypes.BASE_TYPE_AUDIO)).getRingerMode() != 2)) {
            C12171i0 i0Var = new C12171i0("MessagingApp");
            i0Var.m6939a(uri, false, 5, 0.25f);
            C12204q0.m6814a().postDelayed(new RunnableC11524b(i0Var), 5000L);
        }
    }

    /* renamed from: c */
    public static void m9273c(String str) {
        synchronized (f25740h) {
            if (TextUtils.isEmpty(str)) {
                f25741i.clear();
            } else {
                f25741i.remove(str);
            }
        }
    }

    /* renamed from: c */
    public static void m9271c(String str, String str2) {
        Context a = AbstractC11516a.m9413n().mo9412a();
        CharSequence a2 = AbstractC11549q.m9195a(a, a.getString(R$string.notification_emergency_send_failure_line1, str));
        String string = a.getString(R$string.notification_emergency_send_failure_line2, str);
        PendingIntent b = AbstractC12126w.m7095a().mo7067b(a, -1, str2, (MessageData) null, C12810o.m5238g());
        NotificationCompat.Builder a3 = C14173t4.m2307a(a);
        a3.setTicker(a2).setContentTitle(a2).setContentText(string).setStyle(new NotificationCompat.BigTextStyle(a3).bigText(string)).setSmallIcon(R$drawable.ic_failed_light).setContentIntent(b).setSound(C12216t0.m6777a(a, (int) R$raw.message_failure));
        NotificationManagerCompat.from(a).notify(a.getPackageName() + ":emergency_sms_error", 2, a3.build());
    }

    /* renamed from: c */
    public static boolean m9275c() {
        if (!C12810o.m5236i()) {
            return false;
        }
        AbstractC12178k b = AbstractC12178k.m6912b();
        Context a = AbstractC11516a.m9413n().mo9412a();
        return b.mo6906a(a.getString(R$string.notifications_enabled_pref_key), a.getResources().getBoolean(R$bool.notifications_enabled_pref_default));
    }
}
