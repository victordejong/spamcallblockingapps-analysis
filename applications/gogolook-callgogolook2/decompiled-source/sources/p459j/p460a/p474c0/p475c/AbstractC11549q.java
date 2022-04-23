package p459j.p460a.p474c0.p475c;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.database.Cursor;
import android.net.Uri;
import android.text.Html;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.URLSpan;
import androidx.core.app.NotificationCompat;
import androidx.core.app.NotificationManagerCompat;
import com.google.common.collect.Lists;
import gogolook.callgogolook2.R$color;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$plurals;
import gogolook.callgogolook2.R$raw;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.main.MainActivity;
import gogolook.callgogolook2.messaging.datamodel.MessagingContentProvider;
import gogolook.callgogolook2.messaging.datamodel.data.MessageData;
import gogolook.callgogolook2.messaging.datamodel.data.MessagePartData;
import gogolook.callgogolook2.messaging.datamodel.data.ParticipantData;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import p459j.p460a.p474c0.AbstractC11516a;
import p459j.p460a.p474c0.p475c.p478y.C11610g;
import p459j.p460a.p474c0.p475c.p478y.C11611h;
import p459j.p460a.p474c0.p475c.p479z.C11658g0;
import p459j.p460a.p474c0.p491g.AbstractC12126w;
import p459j.p460a.p474c0.p499h.AbstractC12170i;
import p459j.p460a.p474c0.p499h.C12205r;
import p459j.p460a.p474c0.p499h.C12211s;
import p459j.p460a.p474c0.p499h.C12216t0;
import p459j.p460a.p521j0.p529x.C12810o;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.C14173t4;
import p459j.p460a.p582w0.C14188u2;
import p459j.p460a.p582w0.C14217x3;
/* renamed from: j.a.c0.c.q */
/* loaded from: classes2-dex2jar.jar:j/a/c0/c/q.class */
public abstract class AbstractC11549q extends AbstractC11559t {

    /* renamed from: k */
    public String f25792k = null;

    /* renamed from: l */
    public CharSequence f25793l = null;

    /* renamed from: m */
    public String f25794m = null;

    /* renamed from: n */
    public Uri f25795n = null;

    /* renamed from: o */
    public String f25796o = null;

    /* renamed from: p */
    public boolean f25797p;

    /* renamed from: q */
    public final C11551b f25798q;

    /* renamed from: r */
    public long f25799r;

    /* renamed from: j.a.c0.c.q$a */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/c/q$a.class */
    public static class C11550a extends C11555f {

        /* renamed from: u */
        public int f25800u;
    }

    /* renamed from: j.a.c0.c.q$b */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/c/q$b.class */
    public static class C11551b {

        /* renamed from: a */
        public final List<C11552c> f25801a;

        public C11551b(int i, List<C11552c> list) {
            this.f25801a = list;
        }
    }

    /* renamed from: j.a.c0.c.q$c */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/c/q$c.class */
    public static class C11552c {

        /* renamed from: a */
        public final String f25802a;

        /* renamed from: b */
        public final boolean f25803b;

        /* renamed from: c */
        public final String f25804c;

        /* renamed from: d */
        public final boolean f25805d;

        /* renamed from: e */
        public final long f25806e;

        /* renamed from: f */
        public final String f25807f;

        /* renamed from: g */
        public final List<C11556g> f25808g = new ArrayList();

        /* renamed from: h */
        public int f25809h = 0;

        /* renamed from: i */
        public final String f25810i;

        /* renamed from: j */
        public final boolean f25811j;

        /* renamed from: k */
        public final Uri f25812k;

        /* renamed from: l */
        public final Uri f25813l;

        /* renamed from: m */
        public final int f25814m;

        /* renamed from: n */
        public final int f25815n;

        public C11552c(String str, boolean z, String str2, boolean z2, long j, String str3, String str4, boolean z3, boolean z4, Uri uri, Uri uri2, int i, int i2) {
            this.f25802a = str;
            this.f25803b = z;
            this.f25804c = str2;
            this.f25805d = z2;
            this.f25806e = j;
            this.f25807f = str3;
            this.f25810i = str4;
            this.f25812k = uri;
            this.f25813l = uri2;
            this.f25811j = z4;
            this.f25814m = i;
            this.f25815n = i2;
        }

        /* renamed from: a */
        public boolean m9180a() {
            C11553d c = m9178c();
            if (c == null) {
                return false;
            }
            return c.f25821f;
        }

        /* renamed from: b */
        public String m9179b() {
            C11553d c = m9178c();
            if (c == null) {
                return null;
            }
            return c.f25822g;
        }

        /* renamed from: c */
        public final C11553d m9178c() {
            if (this.f25808g.size() <= 0 || !(this.f25808g.get(0) instanceof C11553d)) {
                return null;
            }
            return (C11553d) this.f25808g.get(0);
        }
    }

    /* renamed from: j.a.c0.c.q$d */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/c/q$d.class */
    public static class C11553d extends C11556g {

        /* renamed from: a */
        public final CharSequence f25816a;

        /* renamed from: b */
        public Uri f25817b;

        /* renamed from: c */
        public String f25818c;

        /* renamed from: d */
        public final String f25819d;

        /* renamed from: e */
        public final String f25820e;

        /* renamed from: f */
        public boolean f25821f;

        /* renamed from: g */
        public final String f25822g;

        public C11553d(boolean z, String str, String str2, CharSequence charSequence, Uri uri, String str3, boolean z2, String str4) {
            super(0);
            this.f25819d = str;
            this.f25820e = str2;
            this.f25816a = charSequence;
            this.f25817b = uri;
            this.f25818c = str3;
            this.f25821f = z2;
            this.f25822g = str4;
        }
    }

    /* renamed from: j.a.c0.c.q$e */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/c/q$e.class */
    public static class C11554e extends AbstractC11549q {

        /* renamed from: s */
        public final List<AbstractC11549q> f25823s;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v22, types: [long] */
        /* JADX WARN: Type inference failed for: r11v0 */
        /* JADX WARN: Type inference failed for: r11v1, types: [long] */
        /* JADX WARN: Type inference failed for: r11v3 */
        /* JADX WARN: Type inference failed for: r7v0, types: [androidx.core.app.NotificationCompat$Builder] */
        /* JADX WARN: Unknown variable types count: 2 */
        @Override // p459j.p460a.p474c0.p475c.AbstractC11559t
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public androidx.core.app.NotificationCompat.Style mo9167a(androidx.core.app.NotificationCompat.Builder r7) {
            /*
                Method dump skipped, instructions count: 284
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p474c0.p475c.AbstractC11549q.C11554e.mo9167a(androidx.core.app.NotificationCompat$Builder):androidx.core.app.NotificationCompat$Style");
        }

        @Override // p459j.p460a.p474c0.p475c.AbstractC11549q, p459j.p460a.p474c0.p475c.AbstractC11559t
        /* renamed from: e */
        public int mo9160e() {
            return R$drawable.ic_sms_multi_light;
        }
    }

    /* renamed from: j.a.c0.c.q$f */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/c/q$f.class */
    public static class C11555f extends AbstractC11549q {

        /* renamed from: s */
        public String f25824s = "";

        /* renamed from: t */
        public int f25825t = C12810o.m5238g();

        public C11555f(C11551b bVar) {
            super(bVar);
            C11552c cVar = bVar.f25801a.get(0);
            m9166a(cVar.f25802a);
            m9162c(cVar.f25802a);
            Context a = AbstractC11516a.m9413n().mo9412a();
            C11553d dVar = (C11553d) cVar.f25808g.get(0);
            this.f25795n = dVar.f25817b;
            this.f25796o = dVar.f25818c;
            if (!TextUtils.isEmpty(dVar.f25816a)) {
                m9164b(dVar.f25816a.toString());
            }
            if (this.f25795n != null) {
                int i = R$string.notification_picture;
                if (C12205r.m6811b(this.f25796o)) {
                    i = R$string.notification_audio;
                } else if (C12205r.m6804i(this.f25796o)) {
                    i = R$string.notification_video;
                } else if (C12205r.m6805h(this.f25796o)) {
                    i = R$string.notification_vcard;
                }
                String string = a.getString(i);
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                if (!TextUtils.isEmpty(m9163c())) {
                    spannableStringBuilder.append((CharSequence) m9163c()).append((CharSequence) System.getProperty("line.separator"));
                }
                int length = spannableStringBuilder.length();
                spannableStringBuilder.append((CharSequence) string);
                spannableStringBuilder.setSpan(new StyleSpan(2), length, spannableStringBuilder.length(), 33);
                m9164b(spannableStringBuilder.toString());
            }
            if (cVar.f25803b) {
                this.f25793l = m9163c();
                String str = dVar.f25819d;
                this.f25792k = str;
                m9164b(C11522d.m9277b(str, m9163c(), this.f25795n, this.f25796o).toString());
                this.f25794m = cVar.f25804c;
                return;
            }
            this.f25794m = ((C11553d) cVar.f25808g.get(0)).f25819d;
        }

        @Override // p459j.p460a.p474c0.p475c.AbstractC11559t
        /* renamed from: a */
        public NotificationCompat.Style mo9167a(NotificationCompat.Builder builder) {
            NotificationCompat.Style style;
            CharSequence charSequence;
            builder.setContentTitle(this.f25794m).setTicker(m9183j());
            C11552c cVar = this.f25798q.f25801a.get(0);
            List<C11556g> list = cVar.f25808g;
            int size = list.size();
            builder.setContentText(m9163c());
            if (size == 1) {
                boolean z = true;
                if (!C12205r.m6809d(this.f25796o)) {
                    z = C12205r.m6804i(this.f25796o) && C11658g0.m8693k();
                }
                if (this.f25795n == null || !z) {
                    style = new NotificationCompat.BigTextStyle(builder).bigText(m9163c());
                } else {
                    String str = ((C11553d) list.get(0)).f25820e;
                    CharSequence b = C11522d.m9276b(str, this.f25796o);
                    if (!cVar.f25803b) {
                        charSequence = C11522d.m9276b(null, this.f25796o);
                        str = null;
                    } else {
                        charSequence = b;
                    }
                    builder.setContentText(charSequence);
                    builder.setTicker(b);
                    style = new NotificationCompat.BigPictureStyle(builder).setSummaryText(C11522d.m9272c(str, null, null, null));
                }
            } else {
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                if (!TextUtils.isEmpty(this.f25824s)) {
                    spannableStringBuilder.append((CharSequence) this.f25824s).append((CharSequence) "\n");
                }
                boolean q = C12810o.m5228q();
                for (int size2 = list.size() - 1; size2 >= 0; size2--) {
                    C11553d dVar = (C11553d) list.get(size2);
                    this.f25795n = dVar.f25817b;
                    this.f25796o = dVar.f25818c;
                    CharSequence d = q ? dVar.f25816a : m9161d();
                    if (!TextUtils.isEmpty(d) || this.f25795n != null) {
                        spannableStringBuilder.append(cVar.f25803b ? C11522d.m9277b(dVar.f25819d, d, this.f25795n, this.f25796o) : C11522d.m9277b((String) null, d, this.f25795n, this.f25796o));
                        if (size2 > 0) {
                            spannableStringBuilder.append('\n');
                        }
                    }
                }
                style = new NotificationCompat.BigTextStyle(builder).bigText(spannableStringBuilder);
            }
            builder.setWhen(cVar.f25806e);
            return style;
        }

        /* renamed from: a */
        public void m9177a(int i) {
            this.f25825t = i;
        }

        /* renamed from: a */
        public void m9176a(String str, boolean z) {
            if (C14217x3.m2160b(str)) {
                return;
            }
            if (z || (!C14217x3.m2173a(this.f25798q.f25801a) && !this.f25798q.f25801a.get(0).f25803b)) {
                this.f25794m = str;
            }
        }

        /* renamed from: k */
        public void m9175k(String str) {
            if (!C12810o.m5239f() && !TextUtils.isEmpty(str)) {
                this.f25824s = str;
                m9164b(str + "\n" + m9163c());
            }
        }
    }

    /* renamed from: j.a.c0.c.q$g */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/c/q$g.class */
    public static class C11556g {
        public C11556g(int i) {
        }
    }

    public AbstractC11549q(C11551b bVar) {
        super(m9193a(bVar));
        this.f25798q = bVar;
        this.f25834f = 0;
        this.f25799r = Long.MIN_VALUE;
        if (bVar != null) {
            for (C11552c cVar : bVar.f25801a) {
                this.f25799r = Math.max(this.f25799r, cVar.f25806e);
            }
        }
    }

    /* renamed from: a */
    public static Notification m9191a(String str, int i) {
        Throwable th;
        Cursor cursor;
        Uri uri;
        String str2;
        Context a = AbstractC11516a.m9413n().mo9412a();
        ArrayList a2 = Lists.m31133a();
        try {
            Cursor a3 = AbstractC11528g.m9259k().mo9244f().m9217a(C11610g.m8920X() + " LIMIT 21", new String[]{str});
            if (a3 != null) {
                try {
                    if (a3.moveToFirst()) {
                        C11610g gVar = new C11610g();
                        HashMap<String, Integer> i2 = m9184i(str);
                        boolean z = false;
                        do {
                            gVar.m8918a(a3);
                            r15 = gVar.m8939E();
                            String D = gVar.m8940D();
                            String O = gVar.m8929O();
                            String str3 = O;
                            if (gVar.m8891m()) {
                                str3 = O;
                                if (O != null) {
                                    str3 = m9187f(O).toString();
                                }
                            }
                            if (!TextUtils.isEmpty(str3) || gVar.m8928P()) {
                                if (gVar.m8890n()) {
                                    z = true;
                                }
                                if (m9190a(i2, D)) {
                                }
                                String str4 = D;
                                if (TextUtils.isEmpty(D)) {
                                    if (gVar.m8893k()) {
                                        String B = gVar.m8942B();
                                        str4 = B;
                                        if (TextUtils.isEmpty(B)) {
                                            str4 = a.getString(R$string.unknown_sender);
                                        }
                                    } else {
                                        str4 = a.getString(R$string.unknown_self_participant);
                                    }
                                }
                                Iterator<MessagePartData> it = gVar.m8910b().iterator();
                                while (true) {
                                    if (!it.hasNext()) {
                                        uri = null;
                                        str2 = null;
                                        break;
                                    }
                                    MessagePartData next = it.next();
                                    if (!next.m27558z()) {
                                        uri = next.m27567q();
                                        str2 = next.m27569c();
                                        break;
                                    }
                                }
                                a2.add(C11522d.m9277b(str4, str3, uri, str2));
                            } else {
                                z = z;
                            }
                            z = z;
                        } while (a3.moveToNext());
                        if (a3 != null) {
                            a3.close();
                        }
                        int k = m9181k();
                        if (!z && a2.size() <= k) {
                            return null;
                        }
                        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                        if (a3.getCount() == 21) {
                            spannableStringBuilder.append((CharSequence) (a.getString(R$string.ellipsis) + "\n\n"));
                            if (a2.size() > 20) {
                                a2.remove(a2.size() - 1);
                            }
                        }
                        for (int size = a2.size() - 1; size >= 0; size--) {
                            spannableStringBuilder.append((CharSequence) a2.get(size));
                            if (size > 0) {
                                spannableStringBuilder.append((CharSequence) "\n\n");
                            }
                        }
                        int i3 = i + 1;
                        if (i3 > 2) {
                            SpannableString spannableString = new SpannableString(a.getResources().getQuantityString(R$plurals.wearable_participant_count, i3, Integer.valueOf(i3)));
                            spannableString.setSpan(new ForegroundColorSpan(a.getResources().getColor(R$color.wearable_notification_participants_count)), 0, spannableString.length(), 33);
                            spannableStringBuilder.append((CharSequence) "\n\n").append((CharSequence) spannableString);
                        }
                        NotificationCompat.Builder a4 = C14173t4.m2307a(a);
                        a4.setStyle(new NotificationCompat.BigTextStyle(a4).bigText(spannableStringBuilder));
                        NotificationCompat.WearableExtender wearableExtender = new NotificationCompat.WearableExtender();
                        wearableExtender.setStartScrollBottom(true);
                        a4.extend(wearableExtender);
                        return a4.build();
                    }
                } catch (Throwable th2) {
                    th = th2;
                    cursor = a3;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            if (a3 == null) {
                return null;
            }
            a3.close();
            return null;
        } catch (Throwable th3) {
            th = th3;
            cursor = null;
        }
    }

    /* renamed from: a */
    public static MessagePartData m9192a(C11610g gVar) {
        MessagePartData messagePartData = null;
        MessagePartData messagePartData2 = null;
        MessagePartData messagePartData3 = null;
        MessagePartData messagePartData4 = null;
        for (MessagePartData messagePartData5 : gVar.m8910b()) {
            MessagePartData messagePartData6 = messagePartData;
            if (messagePartData5.m27560x()) {
                messagePartData6 = messagePartData;
                if (messagePartData == null) {
                    messagePartData6 = messagePartData5;
                }
            }
            MessagePartData messagePartData7 = messagePartData4;
            if (messagePartData5.m27584B()) {
                messagePartData7 = messagePartData4;
                if (messagePartData4 == null) {
                    messagePartData7 = messagePartData5;
                }
            }
            MessagePartData messagePartData8 = messagePartData3;
            if (messagePartData5.m27585A()) {
                messagePartData8 = messagePartData3;
                if (messagePartData3 == null) {
                    messagePartData8 = messagePartData5;
                }
            }
            messagePartData = messagePartData6;
            messagePartData4 = messagePartData7;
            messagePartData3 = messagePartData8;
            if (messagePartData5.m27561w()) {
                messagePartData = messagePartData6;
                messagePartData4 = messagePartData7;
                messagePartData3 = messagePartData8;
                if (messagePartData2 == null) {
                    messagePartData = messagePartData6;
                    messagePartData4 = messagePartData7;
                    messagePartData2 = messagePartData5;
                    messagePartData3 = messagePartData8;
                }
            }
        }
        if (messagePartData != null) {
            return messagePartData;
        }
        if (messagePartData4 != null) {
            return messagePartData4;
        }
        if (messagePartData2 != null) {
            return messagePartData2;
        }
        if (messagePartData3 != null) {
            return messagePartData3;
        }
        return null;
    }

    /* renamed from: a */
    public static C12211s m9193a(C11551b bVar) {
        C12211s sVar;
        List<C11552c> list;
        if (bVar != null && (list = bVar.f25801a) != null && list.size() > 0) {
            C12211s sVar2 = new C12211s();
            Iterator<C11552c> it = bVar.f25801a.iterator();
            while (true) {
                sVar = sVar2;
                if (!it.hasNext()) {
                    break;
                }
                sVar2.add(it.next().f25802a);
            }
        } else {
            sVar = null;
        }
        return sVar;
    }

    /* renamed from: a */
    public static CharSequence m9195a(Context context, CharSequence charSequence) {
        if (charSequence == null) {
            return null;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        spannableStringBuilder.append(charSequence);
        spannableStringBuilder.setSpan(new ForegroundColorSpan(context.getResources().getColor(R$color.notification_warning_color)), 0, charSequence.length(), 33);
        return spannableStringBuilder;
    }

    /* renamed from: a */
    public static void m9194a(Spannable spannable) {
        for (URLSpan uRLSpan : (URLSpan[]) spannable.getSpans(0, spannable.length(), URLSpan.class)) {
            spannable.removeSpan(uRLSpan);
        }
    }

    /* renamed from: a */
    public static boolean m9190a(HashMap<String, Integer> hashMap, String str) {
        Integer num;
        if (hashMap == null || str == null || (num = hashMap.get(str)) == null) {
            return false;
        }
        boolean z = true;
        if (num.intValue() <= 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: e */
    public static void m9188e(String str) {
        int i;
        try {
            Cursor a = AbstractC11528g.m9259k().mo9244f().m9217a(C11610g.m8925S(), new String[]{str});
            Context a2 = AbstractC11516a.m9413n().mo9412a();
            Resources resources = a2.getResources();
            NotificationManagerCompat from = NotificationManagerCompat.from(a2);
            if (a != null) {
                if (a.getCount() == 0) {
                    from.cancel(C11522d.m9317a(2, str, true), 2);
                    if (a != null) {
                        a.close();
                        return;
                    }
                    return;
                }
                C11610g gVar = new C11610g();
                while (a.moveToNext()) {
                    gVar.m8918a(a);
                    if (str == null || str.equals(gVar.m8896h())) {
                        if (!AbstractC11528g.m9259k().m9262c(str)) {
                            String a3 = C11522d.m9317a(2, str, true);
                            if (C14188u2.m2275b(a2, 2, a3) == null) {
                                NotificationCompat.Builder a4 = C14173t4.m2307a(a2);
                                Intent a5 = AbstractC12126w.m7095a().mo7081a(a2, 11, str, (MessageData) null, C12810o.m5238g());
                                try {
                                    i = Integer.parseInt(str);
                                } catch (NumberFormatException e) {
                                    i = (int) System.currentTimeMillis();
                                }
                                PendingIntent a6 = C14217x3.m2187a(a2, MainActivity.m27866a(a2, "smslog", "others"), a5, i);
                                C12211s.m6799a(str);
                                int i2 = gVar.m8930N() == 106 ? R$string.notification_download_failures_line1_singular : R$string.notification_send_failures_line1_singular;
                                String O = gVar.m8929O();
                                CharSequence a7 = m9195a(a2, resources.getString(i2));
                                a4.setContentTitle(a7).setTicker(a7).setWhen(System.currentTimeMillis()).setSmallIcon(R$drawable.ic_failed_light).setDeleteIntent(C12810o.m5257a(a2, str, (String) null, (String) null, C12810o.m5241d(O), false)).setContentIntent(a6).setSound(C12216t0.m6777a(a2, (int) R$raw.message_failure)).setContentText(m9195a(a2, TextUtils.isEmpty(O) ? resources.getString(R$string.ra_mms_onlypic) : O));
                                from.notify(a3, 2, a4.build());
                            }
                        }
                    }
                }
            }
            if (a != null) {
                a.close();
            }
        } catch (Exception e2) {
            C14080m2.m2612a((Throwable) e2);
        }
    }

    /* renamed from: f */
    public static CharSequence m9187f(String str) {
        Spanned fromHtml = Html.fromHtml(str);
        if (fromHtml instanceof Spannable) {
            m9194a((Spannable) fromHtml);
        }
        return fromHtml;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0319 A[Catch: all -> 0x0393, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0393, blocks: (B:63:0x015d, B:66:0x01c0, B:68:0x01ca, B:75:0x0203, B:77:0x020c, B:82:0x0226, B:86:0x023d, B:97:0x0274, B:99:0x028a, B:101:0x02dd, B:104:0x030d, B:106:0x0319, B:108:0x0330, B:110:0x0364, B:113:0x0376), top: B:135:0x015d }] */
    /* JADX WARN: Removed duplicated region for block: B:107:0x032a  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0386 A[LOOP:0: B:22:0x0078->B:115:0x0386, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:122:0x03a9  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x03b8 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:126:0x03ba  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x03a5 A[EDGE_INSN: B:141:0x03a5->B:120:0x03a5 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x028a A[Catch: all -> 0x0393, TryCatch #0 {all -> 0x0393, blocks: (B:63:0x015d, B:66:0x01c0, B:68:0x01ca, B:75:0x0203, B:77:0x020c, B:82:0x0226, B:86:0x023d, B:97:0x0274, B:99:0x028a, B:101:0x02dd, B:104:0x030d, B:106:0x0319, B:108:0x0330, B:110:0x0364, B:113:0x0376), top: B:135:0x015d }] */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p459j.p460a.p474c0.p475c.AbstractC11549q.C11551b m9186g(java.lang.String r16) {
        /*
            Method dump skipped, instructions count: 991
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p474c0.p475c.AbstractC11549q.m9186g(java.lang.String):j.a.c0.c.q$b");
    }

    /* renamed from: h */
    public static AbstractC11559t m9185h(String str) {
        C11555f fVar;
        C11551b g = m9186g(str);
        if (g == null || g.f25801a.size() == 0) {
            fVar = null;
        } else {
            C11552c cVar = g.f25801a.get(0);
            C14080m2.m2615a("MessageNotificationState", "getNotificationState, convList size = " + g.f25801a.size() + ", first = " + cVar.f25802a);
            C11555f fVar2 = new C11555f(g);
            if (cVar.f25812k != null) {
                if (fVar2.f25836h == null) {
                    fVar2.f25836h = new ArrayList<>(1);
                }
                fVar2.f25836h.add(cVar.f25812k);
            }
            fVar = fVar2;
            if (cVar.f25813l != null) {
                if (fVar2.f25837i == null) {
                    fVar2.f25837i = new ArrayList<>(1);
                }
                fVar2.f25837i.add(cVar.f25813l);
                fVar = fVar2;
            }
        }
        if (fVar != null) {
            C14080m2.m2615a("MessageNotificationState", "MessageNotificationState: Notification state created, title = " + fVar.f25794m + ", content = " + fVar.m9163c());
        }
        return fVar;
    }

    /* renamed from: i */
    public static HashMap<String, Integer> m9184i(String str) {
        Context a = AbstractC11516a.m9413n().mo9412a();
        Uri c = MessagingContentProvider.m27772c(str);
        C11611h hVar = new C11611h();
        try {
            Cursor query = a.getContentResolver().query(c, ParticipantData.C4657b.f11256a, null, null, null);
            hVar.m8877a(query);
            if (query != null) {
                query.close();
            }
        } catch (Exception e) {
            C14080m2.m2612a((Throwable) e);
        }
        Iterator<ParticipantData> it = hVar.iterator();
        HashMap<String, Integer> hashMap = new HashMap<>();
        boolean z = false;
        while (it.hasNext()) {
            ParticipantData next = it.next();
            boolean z2 = z;
            if (next.m27551G()) {
                if (!z) {
                    z2 = true;
                }
            }
            String r = next.m27525r();
            if (r == null) {
                z = z2;
            } else {
                hashMap.put(r, Integer.valueOf((hashMap.containsKey(r) ? hashMap.get(r).intValue() : 0) + 1));
                z = z2;
            }
        }
        return hashMap;
    }

    /* renamed from: j */
    public static String m9182j(String str) {
        int i = 30;
        int i2 = 30;
        while (true) {
            if (i2 < 0) {
                break;
            } else if (str.charAt(i2) == ',') {
                i = i2;
                break;
            } else {
                i2--;
            }
        }
        return str.substring(0, i) + (char) 8230;
    }

    /* renamed from: k */
    public static int m9181k() {
        if (!C11522d.m9285b()) {
            AbstractC12170i.m6941a().mo6919a("bugle_max_messages_in_conversation_notification", 7);
            return 7;
        }
        AbstractC12170i.m6941a().mo6919a("bugle_max_messages_in_conversation_notification_with_wearable", 1);
        return 1;
    }

    @Override // p459j.p460a.p474c0.p475c.AbstractC11559t
    /* renamed from: a */
    public String mo9168a() {
        return this.f25796o;
    }

    @Override // p459j.p460a.p474c0.p475c.AbstractC11559t
    /* renamed from: b */
    public Uri mo9165b() {
        return this.f25795n;
    }

    @Override // p459j.p460a.p474c0.p475c.AbstractC11559t
    /* renamed from: e */
    public int mo9160e() {
        return R$drawable.notification_icon;
    }

    @Override // p459j.p460a.p474c0.p475c.AbstractC11559t
    /* renamed from: f */
    public long mo9159f() {
        return this.f25799r;
    }

    @Override // p459j.p460a.p474c0.p475c.AbstractC11559t
    /* renamed from: g */
    public boolean mo9158g() {
        if (this.f25798q.f25801a.size() > 0) {
            return this.f25798q.f25801a.get(0).f25811j;
        }
        return false;
    }

    @Override // p459j.p460a.p474c0.p475c.AbstractC11559t
    /* renamed from: h */
    public int mo9157h() {
        return 1;
    }

    @Override // p459j.p460a.p474c0.p475c.AbstractC11559t
    /* renamed from: i */
    public String mo9156i() {
        if (this.f25798q.f25801a.size() > 0) {
            return this.f25798q.f25801a.get(0).f25810i;
        }
        return null;
    }

    /* renamed from: j */
    public CharSequence m9183j() {
        String str = this.f25792k;
        if (str == null) {
            str = this.f25794m;
        }
        CharSequence charSequence = this.f25793l;
        if (charSequence == null) {
            charSequence = this.f25797p ? null : m9163c();
        }
        return C11522d.m9289a(str, charSequence, (Uri) null, (String) null);
    }
}
