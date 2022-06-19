package com.truecaller.content;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.ContentObserver;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import com.huawei.hms.push.constant.RemoteMessageConst;
import java.util.HashSet;
import java.util.Set;
import p1727n3.p1872x.p1873a.C27062a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1041l0.AbstractC17356k;
import p193e.p194a.p1053m0.C17888a;
import p193e.p194a.p1053m0.C17890a0;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1053m0.C17907b0;
import p193e.p194a.p1053m0.C18021c0;
import p193e.p194a.p1053m0.C18090d0;
import p193e.p194a.p1053m0.C18093e0;
import p193e.p194a.p1053m0.C18095f0;
import p193e.p194a.p1053m0.C18097g0;
import p193e.p194a.p1053m0.C18098h;
import p193e.p194a.p1053m0.C18099h0;
import p193e.p194a.p1053m0.C18100i;
import p193e.p194a.p1053m0.C18101i0;
import p193e.p194a.p1053m0.C18102j;
import p193e.p194a.p1053m0.C18106k;
import p193e.p194a.p1053m0.C18108k0;
import p193e.p194a.p1053m0.C18109l;
import p193e.p194a.p1053m0.C18111m;
import p193e.p194a.p1053m0.C18112m0;
import p193e.p194a.p1053m0.C18113n;
import p193e.p194a.p1053m0.C18114n0;
import p193e.p194a.p1053m0.C18115o;
import p193e.p194a.p1053m0.C18116o0;
import p193e.p194a.p1053m0.C18117p;
import p193e.p194a.p1053m0.C18118p0;
import p193e.p194a.p1053m0.C18120q;
import p193e.p194a.p1053m0.C18122r;
import p193e.p194a.p1053m0.C18123r0;
import p193e.p194a.p1053m0.C18125s;
import p193e.p194a.p1053m0.C18126s0;
import p193e.p194a.p1053m0.C18127t;
import p193e.p194a.p1053m0.C18128t0;
import p193e.p194a.p1053m0.C18129u;
import p193e.p194a.p1053m0.C18130u0;
import p193e.p194a.p1053m0.C18131v;
import p193e.p194a.p1053m0.C18132v0;
import p193e.p194a.p1053m0.C18133w;
import p193e.p194a.p1053m0.C18134w0;
import p193e.p194a.p1053m0.C18135x;
import p193e.p194a.p1053m0.C18136x0;
import p193e.p194a.p1053m0.C18137y;
import p193e.p194a.p1053m0.C18139z;
import p193e.p194a.p1053m0.p1057c1.C18065i0;
import p193e.p194a.p1053m0.p1057c1.C18071l0;
import p193e.p194a.p1053m0.p1057c1.C18077p;
import p193e.p194a.p1053m0.p1057c1.C18078q;
import p193e.p194a.p1053m0.p1057c1.C18080s;
import p193e.p194a.p1053m0.p1057c1.C18081t;
import p193e.p194a.p1053m0.p1057c1.C18082u;
import p193e.p194a.p1053m0.p1057c1.C18083v;
import p193e.p194a.p1053m0.p1057c1.C18084w;
import p193e.p194a.p1053m0.p1057c1.C18085x;
import p193e.p194a.p1053m0.p1057c1.C18086y;
import p193e.p194a.p1053m0.p1058d1.AbstractC18091a;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p372b0.p406e.p409r.AbstractC8438a;
import p193e.p194a.p372b0.p411g.AbstractApplicationC8442a;
import p193e.p194a.p372b0.p413i.AbstractC8448a;
import p193e.p194a.p372b0.p413i.p414e.AbstractC8468e;
import p193e.p194a.p372b0.p413i.p414e.C8465b;
import p193e.p194a.p372b0.p413i.p414e.C8466c;
import p193e.p194a.p372b0.p413i.p414e.C8467d;
import p193e.p194a.p372b0.p413i.p415f.C8472b;
import p193e.p194a.p372b0.p430q.C8582g0;
/* loaded from: classes8-dex2jar.jar:com/truecaller/content/TruecallerContentProvider.class */
public class TruecallerContentProvider extends AbstractC8448a implements AbstractC8468e {

    /* renamed from: k */
    public static final /* synthetic */ int f11393k = 0;

    /* renamed from: h */
    public final ThreadLocal<AggregationState> f11394h = new ThreadLocal<>();

    /* renamed from: i */
    public final C18123r0 f11395i = new C18123r0();

    /* renamed from: j */
    public Handler f11396j;

    /* loaded from: classes8-dex2jar.jar:com/truecaller/content/TruecallerContentProvider$AggregationState.class */
    public enum AggregationState {
        NONE,
        DELAYED,
        IMMEDIATE
    }

    /* renamed from: com.truecaller.content.TruecallerContentProvider$a */
    /* loaded from: classes8-dex2jar.jar:com/truecaller/content/TruecallerContentProvider$a.class */
    public class C3769a extends BroadcastReceiver {
        public C3769a() {
            TruecallerContentProvider.this = r4;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            long longExtra = intent.getLongExtra("ARG_DELAY", 0L);
            TruecallerContentProvider truecallerContentProvider = TruecallerContentProvider.this;
            truecallerContentProvider.f11396j.sendEmptyMessageDelayed(1, longExtra);
            truecallerContentProvider.f11396j.sendEmptyMessageDelayed(2, longExtra);
        }
    }

    /* renamed from: com.truecaller.content.TruecallerContentProvider$b */
    /* loaded from: classes8-dex2jar.jar:com/truecaller/content/TruecallerContentProvider$b.class */
    public class C3770b implements Handler.Callback {
        public C3770b(C3769a c3769a) {
            TruecallerContentProvider.this = r4;
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            boolean z;
            SQLiteDatabase m28528m = TruecallerContentProvider.this.m28528m();
            m28528m.beginTransaction();
            try {
                int i = message.what;
                if (i == 1) {
                    TruecallerContentProvider truecallerContentProvider = TruecallerContentProvider.this;
                    if (truecallerContentProvider.f11395i.m15472j(truecallerContentProvider.m28528m())) {
                        m28528m.setTransactionSuccessful();
                        z = true;
                    }
                    z = false;
                } else {
                    if (i == 2) {
                        TruecallerContentProvider truecallerContentProvider2 = TruecallerContentProvider.this;
                        if (truecallerContentProvider2.f11395i.m15470l(truecallerContentProvider2.m28528m())) {
                            m28528m.setTransactionSuccessful();
                            z = true;
                        }
                    }
                    z = false;
                }
                m28528m.endTransaction();
                if (!z) {
                    return true;
                }
                TruecallerContentProvider.this.getContext().getContentResolver().notifyChange(C17891a1.f50888a, null);
                return true;
            } catch (Throwable th) {
                m28528m.endTransaction();
                return true;
            }
        }
    }

    /* renamed from: t */
    public static Uri m35596t(C8467d c8467d, String str, String str2) {
        C8465b m28506a = c8467d.m28506a(str);
        m28506a.f26190g = true;
        m28506a.f26188e = str2;
        C8465b m28506a2 = m28506a.m28512c().m28506a(str);
        m28506a2.f26190g = true;
        m28506a2.f26188e = str2;
        m28506a2.f26189f = true;
        C8465b m28506a3 = m28506a2.m28512c().m28506a(str);
        m28506a3.f26190g = true;
        m28506a3.f26188e = str2;
        m28506a3.f26191h = true;
        m28506a3.m28512c();
        return c8467d.m28506a(str).m28511d();
    }

    @Override // p193e.p194a.p372b0.p413i.p414e.AbstractC8468e
    /* renamed from: b */
    public SQLiteDatabase mo28505b(Context context) throws SQLiteException {
        try {
            return C18071l0.m15500j(context, C18071l0.m15501d(), AbstractApplicationC8442a.m28551L().m28552K().mo12776C4()).getWritableDatabase();
        } catch (C18071l0.C18072a e) {
            context.deleteDatabase("tc.db");
            AbstractApplicationC8442a.m28551L().mo28536a0(false);
            throw e.f51001a;
        }
    }

    @Override // p193e.p194a.p372b0.p413i.AbstractC8451c
    /* renamed from: o */
    public void mo28526o() {
        if (m35595u() == AggregationState.IMMEDIATE) {
            this.f11395i.m15472j(m28528m());
            this.f11394h.remove();
            m28532i(C17891a1.C17892a.m15709b());
        }
    }

    @Override // p193e.p194a.p372b0.p413i.AbstractC8451c, android.database.sqlite.SQLiteTransactionListener
    public void onBegin() {
        this.f11394h.remove();
        if (this.f11396j.hasMessages(1)) {
            this.f11396j.removeMessages(1);
            m35593w(AggregationState.DELAYED);
        }
    }

    @Override // p193e.p194a.p372b0.p413i.AbstractC8448a, android.content.ContentProvider
    public boolean onCreate() {
        C27062a.m968b(getContext()).m967c(new C3769a(), new IntentFilter("ACTION_RESTORE_AGGREGATION"));
        HandlerThread handlerThread = new HandlerThread("Aggregation", 10);
        handlerThread.start();
        this.f11396j = new Handler(handlerThread.getLooper(), new C3770b(null));
        return true;
    }

    @Override // p193e.p194a.p372b0.p413i.AbstractC8451c
    /* renamed from: p */
    public void mo28525p(boolean z) {
        if (this.f26161d && z) {
            this.f26161d = false;
            Set<Uri> set = this.f26160c.get();
            if (set != null && !set.isEmpty()) {
                for (Uri uri : set) {
                    Context context = getContext();
                    if (context != null) {
                        context.getContentResolver().notifyChange(uri, (ContentObserver) null, false);
                    }
                }
            }
        }
        this.f26160c.remove();
        AggregationState m35595u = m35595u();
        if (m35595u == AggregationState.DELAYED || m35595u == AggregationState.IMMEDIATE) {
            this.f11394h.remove();
            this.f11396j.sendEmptyMessageDelayed(1, 100L);
        }
    }

    @Override // p193e.p194a.p372b0.p413i.AbstractC8448a
    /* renamed from: s */
    public C8466c mo28534s(Context context) {
        AbstractApplicationC8442a abstractApplicationC8442a = (AbstractApplicationC8442a) context.getApplicationContext();
        C20592g mo28545R = abstractApplicationC8442a.mo28545R();
        AbstractC18091a mo28544S = abstractApplicationC8442a.mo28544S();
        AbstractC17356k mo28546Q = abstractApplicationC8442a.mo28546Q();
        AbstractC8438a mo12484Y = abstractApplicationC8442a.m28549N().mo12484Y();
        String m28498f = C8472b.m28498f(context, getClass());
        C8467d c8467d = new C8467d();
        C18129u c18129u = new C18129u(abstractApplicationC8442a.m28549N().mo12129y4());
        boolean mo28538Y = abstractApplicationC8442a.mo28538Y();
        this.f11395i.f51043b = c18129u;
        if (mo28545R.m10953o().isEnabled()) {
            this.f11395i.f51044c = mo28546Q;
        }
        c8467d.f26210d = m28498f;
        if (m28498f != null && c8467d.f26211e == null) {
            c8467d.f26211e = Uri.parse("content://" + m28498f);
        }
        if (c8467d.f26209c == null) {
            c8467d.f26209c = this;
            HashSet hashSet = new HashSet();
            hashSet.add(m35596t(c8467d, "history_with_raw_contact", "history_with_raw_contact"));
            hashSet.add(m35596t(c8467d, "history_with_aggregated_contact", "history_with_aggregated_contact"));
            hashSet.add(m35596t(c8467d, "history_top_called_with_aggregated_contact", "history_top_called_with_aggregated_contact"));
            hashSet.add(m35596t(c8467d, "history_with_aggregated_contact_number", "history_with_aggregated_contact_number"));
            hashSet.add(m35596t(c8467d, "history_with_aggregated_contact_number_data", "history_with_aggregated_contact_number_data"));
            hashSet.add(m35596t(c8467d, "history_with_call_recording", "history_with_call_recording"));
            hashSet.add(m35596t(c8467d, "call_recordings_with_history_event", "call_recordings_with_history_event"));
            Uri m35596t = m35596t(c8467d, "sorted_contacts_with_data", "sorted_contacts_with_data");
            hashSet.add(m35596t);
            hashSet.add(m35596t(c8467d, "sorted_contacts_shallow", "sorted_contacts_shallow"));
            hashSet.add(m35596t(c8467d, "wvm_incoming_with_raw_contact_data", "wvm_incoming_with_raw_contact_data"));
            hashSet.add(C8582g0.m28336E());
            hashSet.add(C8582g0.m28294z());
            hashSet.add(m35596t(c8467d, "history_with_aggregated_contact_no_cr", "history_with_aggregated_contact_no_cr"));
            hashSet.add(m35596t(c8467d, "aggregated_contact_raw_contact", "aggregated_contact_raw_contact"));
            HashSet hashSet2 = new HashSet();
            hashSet2.add(Uri.withAppendedPath(C17891a1.f50888a, "history_with_raw_contact"));
            hashSet2.add(Uri.withAppendedPath(C17891a1.f50888a, "history_with_call_recording"));
            hashSet2.add(C17891a1.C17901j.m15698c());
            hashSet2.add(C17891a1.C17901j.m15697d());
            hashSet2.add(C17891a1.C17894c.m15705b());
            HashSet hashSet3 = new HashSet();
            hashSet3.add(C17891a1.C17902k.m15638W());
            C8465b m28506a = c8467d.m28506a("aggregated_contact");
            m28506a.f26192i = 5;
            m28506a.m28514a(hashSet);
            m28506a.m28512c();
            C8465b m28506a2 = c8467d.m28506a("aggregated_contact");
            m28506a2.m28514a(hashSet);
            m28506a2.f26189f = true;
            m28506a2.m28512c();
            C8465b m28506a3 = c8467d.m28506a("aggregated_contact");
            m28506a3.f26191h = true;
            C8465b m8572s1 = C22128a.m8572s1(m28506a3, c8467d, "aggregated_contact_t9", false, true);
            m8572s1.f26196m = new C18078q(true, mo28545R);
            C8465b m8572s12 = C22128a.m8572s1(m8572s1, c8467d, "aggregated_contact_plain_text", false, true);
            m8572s12.f26196m = new C18078q(false, mo28545R);
            C8465b m8572s13 = C22128a.m8572s1(m8572s12, c8467d, "aggregated_contact_filtered_on_raw", false, true);
            m8572s13.f26196m = new C18098h();
            m8572s13.m28512c();
            C8465b m28506a4 = c8467d.m28506a("raw_contact");
            m28506a4.f26192i = 5;
            C18123r0 c18123r0 = this.f11395i;
            m28506a4.f26197n = c18123r0;
            m28506a4.f26200q = c18123r0;
            m28506a4.f26199p = c18123r0;
            m28506a4.m28514a(hashSet);
            m28506a4.m28512c();
            C8465b m28506a5 = c8467d.m28506a("raw_contact");
            m28506a5.f26199p = this.f11395i;
            m28506a5.m28514a(hashSet);
            m28506a5.f26189f = true;
            m28506a5.m28512c();
            C8465b m28506a6 = c8467d.m28506a("raw_contact");
            m28506a6.f26191h = true;
            m28506a6.m28512c();
            C18120q c18120q = new C18120q(mo28544S);
            C18122r c18122r = new C18122r(mo28544S);
            C18117p c18117p = new C18117p(mo28544S);
            C8465b m28506a7 = c8467d.m28506a("history");
            m28506a7.f26200q = c18120q;
            m28506a7.f26201r = c18122r;
            m28506a7.f26202s = c18117p;
            m28506a7.m28514a(hashSet);
            m28506a7.m28512c();
            C8465b m28506a8 = c8467d.m28506a("history");
            m28506a8.m28514a(hashSet);
            m28506a8.f26189f = true;
            m28506a8.f26202s = c18117p;
            m28506a8.m28512c();
            C8465b m28506a9 = c8467d.m28506a("history");
            m28506a9.f26191h = true;
            m28506a9.m28512c();
            hashSet.add(c8467d.m28506a("raw_contact").m28511d());
            hashSet.add(m35596t(c8467d, "raw_contact_data", "raw_contact/data"));
            hashSet.add(m35596t(c8467d, "aggregated_contact_data", "aggregated_contact/data"));
            C18112m0 c18112m0 = new C18112m0();
            C8465b m28506a10 = c8467d.m28506a(RemoteMessageConst.DATA);
            m28506a10.f26197n = c18112m0;
            m28506a10.f26200q = c18112m0;
            m28506a10.m28514a(hashSet);
            m28506a10.m28512c();
            C8465b m28506a11 = c8467d.m28506a(RemoteMessageConst.DATA);
            m28506a11.f26197n = c18112m0;
            m28506a11.f26200q = c18112m0;
            m28506a11.m28514a(hashSet);
            m28506a11.f26189f = true;
            m28506a11.m28512c();
            C8465b m28506a12 = c8467d.m28506a(RemoteMessageConst.DATA);
            m28506a12.f26191h = true;
            m28506a12.m28512c();
            C18102j c18102j = new C18102j();
            C8465b m28506a13 = c8467d.m28506a("msg_conversations");
            m28506a13.f26188e = "msg/msg_conversations";
            m28506a13.m28509f(true);
            m28506a13.f26197n = c18102j;
            m28506a13.f26198o = c18102j;
            m28506a13.f26199p = c18102j;
            m28506a13.m28512c();
            C8465b m28506a14 = c8467d.m28506a("msg_thread_stats");
            m28506a14.f26188e = "msg/msg_thread_stats";
            m28506a14.m28513b(C8582g0.m28306n());
            m28506a14.m28512c();
            C8465b m28506a15 = c8467d.m28506a("msg/msg_thread_stats_specific_update");
            m28506a15.f26198o = new C18128t0();
            m28506a15.m28510e(false);
            m28506a15.m28509f(true);
            m28506a15.m28512c();
            C8465b m28506a16 = c8467d.m28506a("msg_conversations_list");
            m28506a16.f26188e = "msg/msg_conversations_list";
            m28506a16.f26189f = true;
            m28506a16.m28509f(false);
            m28506a16.f26196m = new C17888a(mo28545R);
            m28506a16.m28512c();
            C8465b m28506a17 = c8467d.m28506a("msg_conversations_list");
            m28506a17.f26188e = "msg/msg_conversations_list";
            m28506a17.m28509f(false);
            m28506a17.f26196m = new C17888a(mo28545R);
            m28506a17.m28512c();
            C8465b m28506a18 = c8467d.m28506a("msg_participants");
            m28506a18.f26188e = "msg/msg_participants";
            m28506a18.f26197n = new C18114n0(abstractApplicationC8442a.m28549N().mo12296m(), new C18065i0());
            m28506a18.f26198o = new C18116o0();
            m28506a18.m28510e(true);
            m28506a18.m28512c();
            C8465b m28506a19 = c8467d.m28506a("msg_conversation_participants");
            m28506a19.f26188e = "msg/msg_conversation_participants";
            m28506a19.m28509f(false);
            m28506a19.m28510e(true);
            m28506a19.m28512c();
            C8465b m28506a20 = c8467d.m28506a("msg_participants_with_contact_info");
            m28506a20.f26188e = "msg/msg_participants_with_contact_info";
            m28506a20.f26196m = new C18118p0(context);
            m28506a20.m28509f(false);
            m28506a20.m28512c();
            C18095f0 c18095f0 = new C18095f0();
            C18101i0 c18101i0 = new C18101i0();
            C18097g0 c18097g0 = new C18097g0();
            C8465b m28506a21 = c8467d.m28506a("msg_messages");
            m28506a21.f26188e = "msg/msg_messages";
            m28506a21.f26196m = c18097g0;
            m28506a21.f26198o = c18097g0;
            m28506a21.f26199p = c18097g0;
            m28506a21.f26197n = c18095f0;
            m28506a21.m28513b(C8582g0.m28306n());
            m28506a21.m28513b(C8582g0.m28294z());
            m28506a21.m28512c();
            C8465b m28506a22 = c8467d.m28506a("msg_messages");
            m28506a22.f26188e = "msg/msg_messages";
            m28506a22.f26189f = true;
            m28506a22.f26198o = c18101i0;
            m28506a22.f26199p = c18095f0;
            m28506a22.m28513b(C8582g0.m28306n());
            m28506a22.m28512c();
            C8465b m28506a23 = c8467d.m28506a("msg_entities");
            m28506a23.f26188e = "msg/msg_entities";
            m28506a23.f26197n = new C18021c0(abstractApplicationC8442a.m28549N().mo12413d7());
            m28506a23.m28513b(C8582g0.m28294z());
            m28506a23.m28513b(C8582g0.m28306n());
            m28506a23.m28512c();
            C8465b m28506a24 = c8467d.m28506a("msg_im_reactions");
            m28506a24.f26188e = "msg/msg_im_reactions";
            m28506a24.f26197n = new C18131v();
            m28506a24.m28513b(C8582g0.m28294z());
            m28506a24.m28513b(C8582g0.m28306n());
            C8465b m8572s14 = C22128a.m8572s1(m28506a24, c8467d, "reaction_with_participants", false, true);
            m8572s14.f26196m = new C18126s0();
            C8465b m8572s15 = C22128a.m8572s1(m8572s14, c8467d, "msg/msg_messages_with_entities", false, true);
            m8572s15.f26196m = new C18085x(context);
            m8572s15.f26189f = true;
            m8572s15.m28512c();
            C8465b m28506a25 = c8467d.m28506a("msg_im_mentions");
            m28506a25.f26188e = "msg/msg_im_mentions";
            m28506a25.f26197n = c18129u;
            m28506a25.m28513b(C8582g0.m28294z());
            m28506a25.m28512c();
            C8465b m28506a26 = c8467d.m28506a("msg_messages_with_entities");
            m28506a26.f26188e = "msg/msg_messages_with_entities";
            m28506a26.m28509f(false);
            m28506a26.m28510e(true);
            m28506a26.f26196m = new C18085x(context);
            C8465b m8572s16 = C22128a.m8572s1(m28506a26, c8467d, "messages_with_grouped_history_events", false, true);
            m8572s16.f26196m = new C18086y(context, mo28545R, mo28538Y);
            m8572s16.f26189f = true;
            C8465b m8572s17 = C22128a.m8572s1(m8572s16, c8467d, "messages_moved_to_spam_query", false, true);
            m8572s17.f26196m = new C18084w();
            m8572s17.m28512c();
            C8465b m28506a27 = c8467d.m28506a("msg_im_attachments");
            m28506a27.f26188e = "msg/msg_im_attachments";
            m28506a27.m28512c();
            C8465b m28506a28 = c8467d.m28506a("msg_im_attachments_entities");
            m28506a28.m28509f(false);
            m28506a28.m28510e(true);
            m28506a28.m28512c();
            C8465b m28506a29 = c8467d.m28506a("msg_im_report_message");
            m28506a29.f26188e = "msg/msg_im_report_message";
            m28506a29.m28509f(false);
            m28506a29.m28510e(true);
            m28506a29.f26189f = true;
            m28506a29.f26196m = new C18080s();
            m28506a29.m28512c();
            C18133w c18133w = new C18133w();
            C8465b m28506a30 = c8467d.m28506a("msg_im_users");
            m28506a30.f26188e = "msg/msg_im_users";
            m28506a30.m28509f(true);
            m28506a30.m28510e(true);
            m28506a30.f26197n = c18133w;
            m28506a30.f26198o = c18133w;
            m28506a30.f26199p = c18133w;
            m28506a30.f26192i = 5;
            m28506a30.m28512c();
            C8465b m28506a31 = c8467d.m28506a("msg_im_group_participants");
            m28506a31.f26188e = "msg/msg_im_group_participants";
            m28506a31.m28509f(true);
            m28506a31.m28510e(true);
            m28506a31.f26192i = 5;
            m28506a31.m28513b(C8582g0.m28336E());
            m28506a31.m28512c();
            C8465b m28506a32 = c8467d.m28506a("msg_im_group_info");
            m28506a32.f26188e = "msg/msg_im_group_info";
            m28506a32.m28509f(true);
            m28506a32.m28510e(true);
            m28506a32.f26192i = 5;
            m28506a32.m28513b(C8582g0.m28306n());
            m28506a32.m28512c();
            C8465b m28506a33 = c8467d.m28506a("msg_im_invite_group_info");
            m28506a33.f26188e = "msg/msg_im_invite_group_info";
            m28506a33.m28509f(true);
            m28506a33.m28510e(true);
            m28506a33.f26192i = 5;
            m28506a33.m28512c();
            C8465b m28506a34 = c8467d.m28506a("msg_im_group_participants_view");
            m28506a34.f26188e = "msg/msg_im_group_participants_view";
            m28506a34.m28509f(false);
            m28506a34.m28510e(true);
            m28506a34.f26196m = new C18125s();
            C8465b m8572s18 = C22128a.m8572s1(m28506a34, c8467d, "message_attachments", false, true);
            m8572s18.f26196m = new C17907b0(mo28545R, mo28538Y);
            C8465b m8572s19 = C22128a.m8572s1(m8572s18, c8467d, "inbox_cleaner_spam_messages_query", false, true);
            m8572s19.f26196m = new C18083v();
            C8465b m8572s110 = C22128a.m8572s1(m8572s19, c8467d, "inbox_cleaner_promotional_messages_query", false, true);
            m8572s110.f26196m = new C18082u();
            C8465b m8572s111 = C22128a.m8572s1(m8572s110, c8467d, "inbox_cleaner_otp_messages_query", false, true);
            m8572s111.f26196m = new C18081t();
            C8465b m8572s112 = C22128a.m8572s1(m8572s111, c8467d, "message_to_nudge", false, true);
            m8572s112.f26196m = new C18093e0(mo28545R);
            C8465b m8572s113 = C22128a.m8572s1(m8572s112, c8467d, "media_storage", false, true);
            m8572s113.f26196m = new C17890a0();
            C8465b m8572s114 = C22128a.m8572s1(m8572s113, c8467d, "media_size_by_conversation", false, true);
            m8572s114.f26196m = new C18139z();
            C8465b m8572s115 = C22128a.m8572s1(m8572s114, c8467d, "new_conversation_items", false, true);
            m8572s115.f26196m = new C18108k0(mo12484Y, mo28545R);
            C8465b m8572s116 = C22128a.m8572s1(m8572s115, c8467d, "conversation_messages", true, true);
            m8572s116.f26196m = new C18136x0();
            C8465b m8572s117 = C22128a.m8572s1(m8572s116, c8467d, "messages_brand_keywords", true, true);
            m8572s117.f26196m = new C18100i();
            C8465b m8572s118 = C22128a.m8572s1(m8572s117, c8467d, "messages_to_translate", false, true);
            m8572s118.f26196m = new C18099h0(mo28545R, mo28538Y);
            C8465b m8572s119 = C22128a.m8572s1(m8572s118, c8467d, "gif_stats", false, true);
            m8572s119.f26196m = new C18113n();
            m8572s119.m28512c();
            C8465b m28506a35 = c8467d.m28506a("msg_im_group_reports");
            m28506a35.f26188e = "msg/msg_im_group_reports";
            C8465b m8572s120 = C22128a.m8572s1(m28506a35, c8467d, "msg_im_group_reports_query", false, true);
            m8572s120.f26196m = new C18127t();
            m8572s120.m28512c();
            C8465b m28506a36 = c8467d.m28506a("msg_links");
            m28506a36.f26188e = "msg/msg_links";
            m28506a36.m28509f(true);
            m28506a36.m28510e(true);
            m28506a36.f26192i = 5;
            m28506a36.m28512c();
            C8465b m28506a37 = c8467d.m28506a("msg_im_quick_actions");
            m28506a37.f26188e = "msg/msg_im_quick_actions";
            m28506a37.m28509f(true);
            m28506a37.m28510e(true);
            m28506a37.f26192i = 5;
            m28506a37.m28512c();
            C8465b m28506a38 = c8467d.m28506a("business_im");
            m28506a38.m28510e(true);
            m28506a38.f26196m = new C18137y();
            C8465b m8572s121 = C22128a.m8572s1(m28506a38, c8467d, "insights_resync_directory", true, true);
            m8572s121.f26196m = new C18135x();
            m8572s121.m28512c();
            C8465b m28506a39 = c8467d.m28506a("filters");
            m28506a39.f26188e = "filters";
            m28506a39.f26197n = new C18109l();
            m28506a39.f26198o = new C18111m();
            m28506a39.f26199p = new C18106k();
            C8465b m28506a40 = m28506a39.m28512c().m28506a("filters");
            m28506a40.f26188e = "filters";
            m28506a40.f26189f = true;
            C8465b m28506a41 = m28506a40.m28512c().m28506a("filters");
            m28506a41.f26188e = "filters";
            m28506a41.f26191h = true;
            m28506a41.m28512c();
            C8465b m28506a42 = c8467d.m28506a("topspammers");
            m28506a42.f26188e = "topspammers";
            m28506a42.f26200q = new C18132v0();
            m28506a42.f26198o = new C18134w0();
            m28506a42.f26202s = new C18130u0();
            C8465b m28506a43 = m28506a42.m28512c().m28506a("topspammers");
            m28506a43.f26188e = "topspammers";
            m28506a43.f26189f = true;
            C8465b m28506a44 = m28506a43.m28512c().m28506a("topspammers");
            m28506a44.f26188e = "topspammers";
            m28506a44.f26191h = true;
            m28506a44.m28512c();
            C8465b m28506a45 = c8467d.m28506a("t9_mapping");
            m28506a45.m28509f(true);
            m28506a45.m28510e(true);
            m28506a45.m28512c();
            C8465b m28506a46 = c8467d.m28506a("contact_sorting_index");
            m28506a46.m28513b(m35596t);
            m28506a46.m28509f(true);
            m28506a46.m28510e(true);
            m28506a46.m28512c();
            C8465b m28506a47 = c8467d.m28506a("contact_sorting_index");
            m28506a47.f26188e = "contact_sorting_index/fast_scroll";
            m28506a47.m28509f(false);
            m28506a47.m28510e(true);
            m28506a47.f26196m = new C18077p();
            m28506a47.m28512c();
            C8465b m28506a48 = c8467d.m28506a("call_recordings");
            m28506a48.f26188e = "call_recordings";
            m28506a48.m28514a(hashSet2);
            m28506a48.m28509f(true);
            m28506a48.m28510e(true);
            m28506a48.m28512c();
            C8465b m28506a49 = c8467d.m28506a("profile_view_events");
            m28506a49.f26188e = "profile_view_events";
            m28506a49.m28514a(hashSet3);
            m28506a49.m28509f(true);
            m28506a49.m28510e(true);
            m28506a49.m28512c();
            C8465b m28506a50 = c8467d.m28506a("msg_im_unsupported_events");
            m28506a50.f26188e = "msg/msg_im_unsupported_events";
            m28506a50.m28509f(true);
            m28506a50.m28510e(true);
            m28506a50.m28512c();
            C8465b m28506a51 = c8467d.m28506a("msg_im_unprocessed_events");
            m28506a51.f26188e = "msg/msg_im_unprocessed_events";
            m28506a51.m28509f(true);
            m28506a51.m28510e(true);
            m28506a51.m28512c();
            C8465b m28506a52 = c8467d.m28506a("contact_settings");
            m28506a52.f26188e = "contact_settings";
            m28506a52.m28509f(true);
            m28506a52.m28510e(true);
            m28506a52.f26192i = 5;
            m28506a52.m28512c();
            C8465b m28506a53 = c8467d.m28506a("voip_history_peers");
            m28506a53.f26188e = "voip_history_peers";
            m28506a53.m28509f(true);
            m28506a53.m28510e(true);
            m28506a53.f26192i = 5;
            m28506a53.m28512c();
            C8465b m28506a54 = c8467d.m28506a("voip_history_with_aggregated_contacts_shallow");
            m28506a54.f26188e = "voip_history_with_aggregated_contacts_shallow";
            m28506a54.m28509f(false);
            m28506a54.m28510e(true);
            m28506a54.m28512c();
            C8465b m28506a55 = c8467d.m28506a("message_notifications_analytics");
            m28506a55.m28509f(false);
            m28506a55.m28510e(true);
            m28506a55.f26196m = new C18090d0();
            C8465b m8572s122 = C22128a.m8572s1(m28506a55, c8467d, "group_conversation_search", false, true);
            m8572s122.f26196m = new C18115o();
            m8572s122.m28512c();
            C8465b m28506a56 = c8467d.m28506a("screened_calls");
            m28506a56.f26188e = "screened_calls";
            m28506a56.m28509f(true);
            m28506a56.m28510e(true);
            m28506a56.f26192i = 5;
            m28506a56.m28512c();
            C8465b m28506a57 = c8467d.m28506a("screened_call_messages");
            m28506a57.f26188e = "screened_call_messages";
            m28506a57.m28509f(true);
            m28506a57.m28510e(true);
            m28506a57.f26192i = 5;
            m28506a57.m28512c();
            m35594v();
            return new C8466c(c8467d.f26211e, c8467d.f26207a, c8467d.f26208b, c8467d.f26209c);
        }
        throw new IllegalStateException("Database factory already set");
    }

    /* renamed from: u */
    public final AggregationState m35595u() {
        AggregationState aggregationState = this.f11394h.get();
        AggregationState aggregationState2 = aggregationState;
        if (aggregationState == null) {
            aggregationState2 = AggregationState.NONE;
        }
        return aggregationState2;
    }

    /* renamed from: v */
    public void m35594v() {
    }

    /* renamed from: w */
    public void m35593w(AggregationState aggregationState) {
        if (m35595u().ordinal() < aggregationState.ordinal()) {
            this.f11394h.set(aggregationState);
        }
    }
}
