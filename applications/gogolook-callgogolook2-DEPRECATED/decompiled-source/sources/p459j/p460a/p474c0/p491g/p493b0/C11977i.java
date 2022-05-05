package p459j.p460a.p474c0.p491g.p493b0;

import android.app.AlertDialog;
import android.content.Context;
import android.content.res.Resources;
import android.net.Uri;
import android.text.TextUtils;
import android.text.format.Formatter;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.gson.UserProfile;
import gogolook.callgogolook2.messaging.datamodel.data.ParticipantData;
import gogolook.callgogolook2.messaging.sms.DatabaseMessages;
import java.util.Iterator;
import java.util.List;
import p459j.p460a.p474c0.AbstractC11516a;
import p459j.p460a.p474c0.p475c.AbstractC11528g;
import p459j.p460a.p474c0.p475c.C11521c;
import p459j.p460a.p474c0.p475c.p478y.C11610g;
import p459j.p460a.p474c0.p475c.p478y.C11611h;
import p459j.p460a.p474c0.p488f.C11834j;
import p459j.p460a.p474c0.p499h.AbstractAsyncTaskC12189n0;
import p459j.p460a.p474c0.p499h.AbstractC12181l0;
import p459j.p460a.p474c0.p499h.C12151d;
import p459j.p460a.p474c0.p499h.C12217u;
import p459j.p460a.p474c0.p499h.C12219v;
import p459j.p460a.p582w0.C14017g4;
/* renamed from: j.a.c0.g.b0.i */
/* loaded from: classes3-dex2jar.jar:j/a/c0/g/b0/i.class */
public class C11977i {

    /* renamed from: j.a.c0.g.b0.i$a */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/b0/i$a.class */
    public static final class AsyncTaskC11978a extends AbstractAsyncTaskC12189n0<Void, Void, String> {

        /* renamed from: e */
        public final /* synthetic */ Context f26854e;

        /* renamed from: f */
        public final /* synthetic */ C11610g f26855f;

        /* renamed from: g */
        public final /* synthetic */ C11611h f26856g;

        /* renamed from: h */
        public final /* synthetic */ ParticipantData f26857h;

        public AsyncTaskC11978a(Context context, C11610g gVar, C11611h hVar, ParticipantData participantData) {
            this.f26854e = context;
            this.f26855f = gVar;
            this.f26856g = hVar;
            this.f26857h = participantData;
        }

        /* renamed from: a  reason: avoid collision after fix types in other method */
        public String mo6854a(Void... voidArr) {
            return C11977i.m7677b(this.f26854e, this.f26855f, this.f26856g, this.f26857h);
        }

        /* renamed from: a */
        public void onPostExecute(String str) {
            C11977i.m7676b(this.f26854e, str);
        }
    }

    /* renamed from: a */
    public static String m7683a(Resources resources, int i) {
        return i != 128 ? i != 130 ? resources.getString(R$string.priority_normal) : resources.getString(R$string.priority_high) : resources.getString(R$string.priority_low);
    }

    /* renamed from: a */
    public static String m7680a(C11610g gVar, C11611h hVar, ParticipantData participantData) {
        Resources resources = AbstractC11516a.m9413n().mo9412a().getResources();
        StringBuilder sb = new StringBuilder();
        sb.append(resources.getString(R$string.message_type_label));
        sb.append(resources.getString(R$string.text_message));
        String F = gVar.m8938F();
        if (!TextUtils.isEmpty(F)) {
            sb.append('\n');
            sb.append(resources.getString(R$string.from_label));
            sb.append(F);
        }
        String a = m7679a(hVar, gVar.m8884t(), gVar.m8893k(), gVar.m8880x());
        if (!TextUtils.isEmpty(a)) {
            sb.append('\n');
            sb.append(resources.getString(R$string.to_address_label));
            sb.append(a);
        }
        if (gVar.m8893k() && gVar.m8936H() != 0) {
            sb.append('\n');
            sb.append(resources.getString(R$string.sent_label));
            sb.append(C12217u.m6748a(gVar.m8936H()).toString());
        }
        m7681a(resources, sb, gVar);
        m7682a(resources, participantData, sb);
        if (C12219v.m6735a()) {
            m7678a(sb, gVar);
        }
        return sb.toString();
    }

    /* renamed from: a */
    public static String m7679a(C11611h hVar, String str, boolean z, String str2) {
        StringBuilder sb = new StringBuilder();
        Iterator<ParticipantData> it = hVar.iterator();
        while (it.hasNext()) {
            ParticipantData next = it.next();
            if (!TextUtils.equals(next.m27523t(), str) && (!next.m27551G() || (next.m27523t().equals(str2) && z))) {
                String v = next.m27521v();
                if (!TextUtils.isEmpty(v)) {
                    if (sb.length() > 0) {
                        sb.append(UserProfile.CARD_CATE_SEPARATOR);
                    }
                    sb.append(v);
                }
            }
        }
        return sb.toString();
    }

    /* renamed from: a */
    public static void m7682a(Resources resources, ParticipantData participantData, StringBuilder sb) {
        if (C14017g4.m2804t() && participantData != null && AbstractC12181l0.m6886t().mo6877c() >= 2) {
            C12151d.m6999b(participantData.m27551G());
            sb.append('\n');
            sb.append(resources.getString(R$string.sim_label));
            if (participantData.m27555C() && !participantData.m27553E()) {
                String B = participantData.m27556B();
                if (TextUtils.isEmpty(B)) {
                    sb.append(resources.getString(R$string.sim_slot_identifier, Integer.valueOf(participantData.m27526q())));
                } else {
                    sb.append(B);
                }
            }
        }
    }

    /* renamed from: a */
    public static void m7681a(Resources resources, StringBuilder sb, C11610g gVar) {
        int i = gVar.m8893k() ? R$string.received_label : gVar.m8889o() ? R$string.sent_label : -1;
        if (i >= 0) {
            sb.append('\n');
            sb.append(resources.getString(i));
            sb.append(C12217u.m6748a(gVar.m8881w()).toString());
        }
    }

    /* renamed from: a */
    public static void m7678a(StringBuilder sb, C11610g gVar) {
        C12151d.m7002b();
        sb.append("\n\n");
        sb.append("DEBUG");
        sb.append('\n');
        sb.append("Message id: ");
        sb.append(gVar.m8887q());
        String L = gVar.m8932L();
        sb.append('\n');
        sb.append("Telephony uri: ");
        sb.append(L);
        String h = gVar.m8896h();
        if (h != null) {
            sb.append('\n');
            sb.append("Conversation id: ");
            sb.append(h);
            long o = C11521c.m9325o(AbstractC11528g.m9259k().mo9244f(), h);
            sb.append('\n');
            sb.append("Conversation telephony thread id: ");
            sb.append(o);
            DatabaseMessages.MmsMessage mmsMessage = null;
            if (gVar.m8892l()) {
                if (L != null) {
                    mmsMessage = C11834j.m8077e(Uri.parse(L));
                    if (mmsMessage != null) {
                        long j = mmsMessage.f11312i;
                        sb.append('\n');
                        sb.append("Telephony thread id: ");
                        sb.append(j);
                        String str = mmsMessage.f11317n;
                        sb.append('\n');
                        sb.append("Content location URL: ");
                        sb.append(str);
                    } else {
                        return;
                    }
                } else {
                    return;
                }
            }
            String b = C11834j.m8098b(o);
            if (b != null) {
                sb.append('\n');
                sb.append("Thread recipient ids: ");
                sb.append(b);
            }
            List<String> c = C11834j.m8087c(o);
            if (c != null) {
                sb.append('\n');
                sb.append("Thread recipients: ");
                sb.append(c.toString());
                if (mmsMessage != null) {
                    String a = C11834j.m8108a(c, mmsMessage.mo27454c());
                    sb.append('\n');
                    sb.append("Sender: ");
                    sb.append(a);
                }
            }
        }
    }

    /* renamed from: b */
    public static String m7677b(Context context, C11610g gVar, C11611h hVar, ParticipantData participantData) {
        return gVar.m8888p() ? m7680a(gVar, hVar, participantData) : m7675c(context, gVar, hVar, participantData);
    }

    /* renamed from: b */
    public static void m7676b(Context context, String str) {
        if (!TextUtils.isEmpty(str)) {
            new AlertDialog.Builder(context).setTitle(R$string.message_details_title).setMessage(str).setCancelable(true).show();
        }
    }

    /* renamed from: c */
    public static String m7675c(Context context, C11610g gVar, C11611h hVar, ParticipantData participantData) {
        Resources resources = AbstractC11516a.m9413n().mo9412a().getResources();
        StringBuilder sb = new StringBuilder();
        sb.append(resources.getString(R$string.message_type_label));
        sb.append(resources.getString(R$string.multimedia_message));
        String F = gVar.m8938F();
        sb.append('\n');
        sb.append(resources.getString(R$string.from_label));
        if (TextUtils.isEmpty(F)) {
            F = resources.getString(R$string.hidden_sender_address);
        }
        sb.append(F);
        String a = m7679a(hVar, gVar.m8884t(), gVar.m8893k(), gVar.m8880x());
        if (!TextUtils.isEmpty(a)) {
            sb.append('\n');
            sb.append(resources.getString(R$string.to_address_label));
            sb.append(a);
        }
        m7681a(resources, sb, gVar);
        sb.append('\n');
        sb.append(resources.getString(R$string.subject_label));
        if (!TextUtils.isEmpty(C11834j.m8121a(resources, gVar.m8885s()))) {
            sb.append(gVar.m8885s());
        }
        sb.append('\n');
        sb.append(resources.getString(R$string.priority_label));
        sb.append(m7683a(resources, gVar.m8931M()));
        if (gVar.m8933K() > 0) {
            sb.append('\n');
            sb.append(resources.getString(R$string.message_size_label));
            sb.append(Formatter.formatFileSize(context, gVar.m8933K()));
        }
        m7682a(resources, participantData, sb);
        if (C12219v.m6735a()) {
            m7678a(sb, gVar);
        }
        return sb.toString();
    }

    /* renamed from: d */
    public static void m7674d(Context context, C11610g gVar, C11611h hVar, ParticipantData participantData) {
        if (C12219v.m6735a()) {
            new AsyncTaskC11978a(context, gVar, hVar, participantData).m6852b(null, null, null);
        } else {
            m7676b(context, m7677b(context, gVar, hVar, participantData));
        }
    }
}
