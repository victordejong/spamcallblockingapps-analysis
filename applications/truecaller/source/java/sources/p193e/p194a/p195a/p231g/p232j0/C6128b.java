package p193e.p194a.p195a.p231g.p232j0;

import android.database.Cursor;
import android.database.SQLException;
import com.razorpay.AnalyticsConstants;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.SpamData;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.messaging.data.types.Conversation;
import com.truecaller.messaging.data.types.ImGroupInfo;
import com.truecaller.messaging.data.types.ImGroupPermissions;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p193e.p194a.p195a.p231g.C6111e;
import p193e.p194a.p437c.p578p.C10480a;
import s1.f0.q;
import s1.z.c.l;
import w3.b.a.b;
import w3.c.a.a.a.h;
/* renamed from: e.a.a.g.j0.b */
/* loaded from: classes7-dex2jar.jar:e/a/a/g/j0/b.class */
public final class C6128b extends C6111e implements AbstractC6126a {

    /* renamed from: A */
    public final int f20373A;

    /* renamed from: A0 */
    public final int f20374A0;

    /* renamed from: B */
    public final int f20375B;

    /* renamed from: B0 */
    public final int f20376B0;

    /* renamed from: C */
    public final int f20377C;

    /* renamed from: D */
    public final int f20379D;

    /* renamed from: E */
    public final int f20381E;

    /* renamed from: J */
    public final int f20387J;

    /* renamed from: K */
    public final int f20389K;

    /* renamed from: K0 */
    public final int f20390K0;

    /* renamed from: L */
    public final int f20391L;

    /* renamed from: M */
    public final int f20392M;

    /* renamed from: N */
    public final int f20393N;

    /* renamed from: O */
    public final int f20394O;

    /* renamed from: P */
    public final int f20395P;

    /* renamed from: Q */
    public final int f20396Q;

    /* renamed from: R */
    public final int f20397R;

    /* renamed from: S */
    public final int f20398S;

    /* renamed from: T */
    public final int f20399T;

    /* renamed from: U */
    public final int f20400U;

    /* renamed from: V */
    public final int f20401V;

    /* renamed from: W */
    public final int f20402W;

    /* renamed from: X */
    public final int f20403X;

    /* renamed from: Y */
    public final int f20404Y;

    /* renamed from: Z */
    public final int f20405Z;

    /* renamed from: a */
    public final int f20406a;

    /* renamed from: b */
    public final int f20407b;

    /* renamed from: c */
    public final int f20408c;

    /* renamed from: d */
    public final int f20409d;

    /* renamed from: e */
    public final int f20410e;

    /* renamed from: f */
    public final int f20411f;

    /* renamed from: g */
    public final int f20412g;

    /* renamed from: g0 */
    public final int f20413g0;

    /* renamed from: h */
    public final int f20414h;

    /* renamed from: h0 */
    public final int f20415h0;

    /* renamed from: i */
    public final int f20416i;

    /* renamed from: i0 */
    public final int f20417i0;

    /* renamed from: j */
    public final int f20418j;

    /* renamed from: j0 */
    public final int f20419j0;

    /* renamed from: k */
    public final int f20420k;

    /* renamed from: k0 */
    public final int f20421k0;

    /* renamed from: l */
    public final int f20422l;

    /* renamed from: l0 */
    public final int f20423l0;

    /* renamed from: m */
    public final int f20424m;

    /* renamed from: m0 */
    public final int f20425m0;

    /* renamed from: n */
    public final int f20426n;

    /* renamed from: n0 */
    public final int f20427n0;

    /* renamed from: o */
    public final int f20428o;

    /* renamed from: o0 */
    public final int f20429o0;

    /* renamed from: p */
    public final int f20430p;

    /* renamed from: p0 */
    public final int f20431p0;

    /* renamed from: q */
    public final int f20432q;

    /* renamed from: q0 */
    public final int f20433q0;

    /* renamed from: r */
    public final int f20434r;

    /* renamed from: r0 */
    public final int f20435r0;

    /* renamed from: s */
    public final int f20436s;

    /* renamed from: s0 */
    public final int f20437s0;

    /* renamed from: t */
    public final int f20438t;

    /* renamed from: t0 */
    public final int f20439t0;

    /* renamed from: u */
    public final int f20440u;

    /* renamed from: u0 */
    public final int f20441u0;

    /* renamed from: v */
    public final int f20442v;

    /* renamed from: v0 */
    public final int f20443v0;

    /* renamed from: w */
    public final int f20444w;

    /* renamed from: w0 */
    public final int f20445w0;

    /* renamed from: x */
    public final int f20446x;

    /* renamed from: x0 */
    public final int f20447x0;

    /* renamed from: y */
    public final int f20448y;

    /* renamed from: y0 */
    public final int f20449y0;

    /* renamed from: z */
    public final int f20450z;

    /* renamed from: z0 */
    public final int f20451z0;

    /* renamed from: C0 */
    public final int f20378C0 = getColumnIndexOrThrow("im_group_history_status");

    /* renamed from: D0 */
    public final int f20380D0 = getColumnIndexOrThrow("im_group_history_sequence_num");

    /* renamed from: E0 */
    public final int f20382E0 = getColumnIndexOrThrow("im_group_history_message_count");

    /* renamed from: F0 */
    public final int f20383F0 = getColumnIndexOrThrow("im_group_are_participants_stale");

    /* renamed from: G0 */
    public final int f20384G0 = getColumnIndexOrThrow("im_group_current_sequence_number");

    /* renamed from: H0 */
    public final int f20385H0 = getColumnIndexOrThrow("im_group_invite_notification_date");

    /* renamed from: I0 */
    public final int f20386I0 = getColumnIndexOrThrow("im_group_invite_notification_count");

    /* renamed from: J0 */
    public final int f20388J0 = getColumnIndexOrThrow("im_group_join_mode");

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6128b(Cursor cursor) {
        super(cursor);
        l.e(cursor, "cursor");
        this.f20406a = cursor.getColumnIndexOrThrow("_id");
        this.f20407b = cursor.getColumnIndexOrThrow("tc_group_id");
        this.f20408c = cursor.getColumnIndexOrThrow("type");
        this.f20409d = cursor.getColumnIndexOrThrow("latest_message_id");
        this.f20410e = cursor.getColumnIndexOrThrow("latest_message_status");
        this.f20411f = cursor.getColumnIndexOrThrow("latest_message_media_count");
        this.f20412g = cursor.getColumnIndexOrThrow("latest_message_media_type");
        this.f20414h = cursor.getColumnIndexOrThrow("message_mentions");
        this.f20416i = cursor.getColumnIndexOrThrow("latest_sim_token");
        this.f20418j = cursor.getColumnIndexOrThrow("date");
        this.f20420k = cursor.getColumnIndexOrThrow("snippet_text");
        this.f20422l = cursor.getColumnIndexOrThrow("is_rich_text_snippet");
        this.f20424m = cursor.getColumnIndexOrThrow("unread_messages_count");
        this.f20426n = cursor.getColumnIndexOrThrow("actions_dismissed");
        this.f20428o = cursor.getColumnIndexOrThrow("outgoing_message_count");
        this.f20430p = cursor.getColumnIndexOrThrow("phonebook_count");
        this.f20432q = cursor.getColumnIndexOrThrow("marked_unread");
        this.f20434r = cursor.getColumnIndexOrThrow("participants_id");
        this.f20436s = cursor.getColumnIndexOrThrow("participants_type");
        this.f20438t = cursor.getColumnIndexOrThrow("participants_im_id");
        this.f20440u = cursor.getColumnIndexOrThrow("participants_raw_destinantion");
        this.f20442v = cursor.getColumnIndexOrThrow("participants_normalized_destination");
        this.f20444w = cursor.getColumnIndexOrThrow("participants_country_codes");
        this.f20446x = cursor.getColumnIndexOrThrow("participants_tc_id");
        this.f20448y = cursor.getColumnIndexOrThrow("participants_aggregated_contact_id");
        this.f20450z = cursor.getColumnIndexOrThrow("participants_filter_action");
        this.f20373A = cursor.getColumnIndexOrThrow("participants_is_top_spammer");
        this.f20375B = cursor.getColumnIndexOrThrow("participants_im_business_state");
        this.f20377C = cursor.getColumnIndexOrThrow("participants_im_business_feature_flags");
        this.f20379D = cursor.getColumnIndexOrThrow("participants_top_spam_score");
        this.f20381E = cursor.getColumnIndexOrThrow("participants_name");
        this.f20387J = cursor.getColumnIndexOrThrow("participants_image_url");
        this.f20389K = cursor.getColumnIndexOrThrow("participants_source");
        this.f20391L = cursor.getColumnIndexOrThrow("participants_phonebook_id");
        this.f20392M = cursor.getColumnIndexOrThrow("participants_spam_score");
        this.f20393N = cursor.getColumnIndexOrThrow("participants_spam_types");
        this.f20394O = cursor.getColumnIndexOrThrow("participants_badges");
        this.f20395P = cursor.getColumnIndexOrThrow("participants_premium_levels");
        this.f20396Q = cursor.getColumnIndexOrThrow("participants_company");
        this.f20397R = cursor.getColumnIndexOrThrow("participants_search_time");
        this.f20398S = cursor.getColumnIndexOrThrow("participants_spam_categories");
        this.f20399T = cursor.getColumnIndexOrThrow("filter");
        this.f20400U = cursor.getColumnIndexOrThrow("split_criteria");
        this.f20401V = cursor.getColumnIndexOrThrow("preferred_transport");
        this.f20402W = cursor.getColumnIndexOrThrow("latest_message_delivery_status");
        this.f20403X = cursor.getColumnIndexOrThrow("latest_message_read_status");
        this.f20404Y = cursor.getColumnIndexOrThrow("latest_message_raw_status");
        this.f20405Z = cursor.getColumnIndexOrThrow("latest_message_transport");
        this.f20413g0 = cursor.getColumnIndexOrThrow("history_events_count");
        this.f20415h0 = cursor.getColumnIndexOrThrow("scheduled_messages_count");
        this.f20417i0 = cursor.getColumnIndexOrThrow("hidden_number");
        this.f20419j0 = cursor.getColumnIndexOrThrow("load_events_mode");
        this.f20421k0 = cursor.getColumnIndexOrThrow("hidden_number_prompt");
        this.f20423l0 = cursor.getColumnIndexOrThrow("participants_cache_control");
        this.f20425m0 = cursor.getColumnIndexOrThrow("pinned_date");
        this.f20427n0 = cursor.getColumnIndexOrThrow("archived_date");
        this.f20429o0 = cursor.getColumnIndexOrThrow("date_sent");
        this.f20431p0 = cursor.getColumnIndexOrThrow("muted");
        this.f20433q0 = cursor.getColumnIndexOrThrow("sound_uri");
        this.f20435r0 = cursor.getColumnIndexOrThrow("im_group_id");
        this.f20437s0 = cursor.getColumnIndexOrThrow("im_group_title");
        this.f20439t0 = cursor.getColumnIndexOrThrow("im_group_avatar");
        this.f20441u0 = cursor.getColumnIndexOrThrow("im_group_invited_date");
        this.f20443v0 = cursor.getColumnIndexOrThrow("im_group_invited_by");
        this.f20445w0 = cursor.getColumnIndexOrThrow("im_group_roles");
        this.f20447x0 = cursor.getColumnIndexOrThrow("im_group_actions");
        this.f20449y0 = cursor.getColumnIndexOrThrow("im_group_role_update_restriction_mask");
        this.f20451z0 = cursor.getColumnIndexOrThrow("im_group_role_update_mask");
        this.f20374A0 = cursor.getColumnIndexOrThrow("im_group_self_role_update_mask");
        this.f20376B0 = cursor.getColumnIndexOrThrow("im_group_notification_settings");
        this.f20390K0 = cursor.getColumnIndex("tab_filter");
    }

    @Override // p193e.p194a.p195a.p231g.p232j0.AbstractC6126a
    /* renamed from: b0 */
    public int mo31754b0() {
        return getInt(this.f20424m);
    }

    @Override // p193e.p194a.p195a.p231g.p232j0.AbstractC6126a
    public long getId() {
        return getLong(this.f20406a);
    }

    @Override // p193e.p194a.p195a.p231g.p232j0.AbstractC6126a
    /* renamed from: o */
    public List<Participant> mo31753o() {
        String string = getString(this.f20434r);
        String string2 = getString(this.f20436s);
        String string3 = getString(this.f20438t);
        String string4 = getString(this.f20440u);
        String string5 = getString(this.f20442v);
        String string6 = getString(this.f20444w);
        String string7 = getString(this.f20446x);
        String string8 = getString(this.f20448y);
        String string9 = getString(this.f20450z);
        String string10 = getString(this.f20373A);
        String string11 = getString(this.f20379D);
        String string12 = getString(this.f20381E);
        String string13 = getString(this.f20387J);
        String string14 = getString(this.f20389K);
        String string15 = getString(this.f20391L);
        String string16 = getString(this.f20392M);
        String string17 = getString(this.f20393N);
        String string18 = getString(this.f20394O);
        String string19 = getString(this.f20396Q);
        String string20 = getString(this.f20397R);
        String string21 = getString(this.f20395P);
        String string22 = getString(this.f20423l0);
        String string23 = getString(this.f20398S);
        String string24 = getString(this.f20375B);
        String string25 = getString(this.f20377C);
        l.d(string25, "getString(participantsImBusinessFeatureFlagsIndex)");
        l.e(string25, "imBusinessFeatureFlags");
        List<String> m25873x2 = C10480a.m25873x2(string);
        List<String> m25873x22 = C10480a.m25873x2(string2);
        List<String> m31792b = m31792b(string3);
        l.d(m31792b, "readComposedStrings(imIds)");
        List<String> m31792b2 = m31792b(string4);
        l.d(m31792b2, "readComposedStrings(rawDestinations)");
        List<String> m31792b3 = m31792b(string5);
        l.d(m31792b3, "readComposedStrings(normalizedDestinations)");
        List<String> m31792b4 = m31792b(string6);
        l.d(m31792b4, "readComposedStrings(countryCodes)");
        List<String> m31792b5 = m31792b(string7);
        l.d(m31792b5, "readComposedStrings(tcIds)");
        List<String> m25873x23 = C10480a.m25873x2(string8);
        List<String> m25873x24 = C10480a.m25873x2(string9);
        List<String> m25873x25 = C10480a.m25873x2(string10);
        List<String> m25873x26 = C10480a.m25873x2(string11);
        List<String> m31792b6 = m31792b(string12);
        l.d(m31792b6, "readComposedStrings(names)");
        List<String> m31792b7 = m31792b(string13);
        l.d(m31792b7, "readComposedStrings(imageUrls)");
        List<String> m25873x27 = C10480a.m25873x2(string14);
        List<String> m25873x28 = C10480a.m25873x2(string15);
        List<String> m25873x29 = C10480a.m25873x2(string16);
        List<String> m31792b8 = m31792b(string17);
        l.d(m31792b8, "readComposedStrings(spamTypes)");
        List<String> m25873x210 = C10480a.m25873x2(string18);
        List<String> m31792b9 = m31792b(string19);
        l.d(m31792b9, "readComposedStrings(companies)");
        List<String> m25873x211 = C10480a.m25873x2(string20);
        List<String> m25873x212 = C10480a.m25873x2(string21);
        int size = m25873x2.size();
        List<String> m25873x213 = C10480a.m25873x2(string22);
        List<String> m25873x214 = C10480a.m25873x2(string23);
        List<String> m25873x215 = C10480a.m25873x2(string24);
        List<String> m25873x216 = C10480a.m25873x2(string25);
        if (size == m25873x22.size()) {
            ArrayList arrayList = (ArrayList) m31792b;
            if (size == arrayList.size()) {
                ArrayList arrayList2 = (ArrayList) m31792b2;
                if (size == arrayList2.size()) {
                    ArrayList arrayList3 = (ArrayList) m31792b3;
                    if (size == arrayList3.size()) {
                        ArrayList arrayList4 = (ArrayList) m31792b4;
                        if (size == arrayList4.size()) {
                            ArrayList arrayList5 = (ArrayList) m31792b5;
                            if (size == arrayList5.size() && size == m25873x23.size() && size == m25873x24.size() && size == m25873x25.size() && size == m25873x26.size()) {
                                ArrayList arrayList6 = (ArrayList) m31792b6;
                                if (size == arrayList6.size()) {
                                    ArrayList arrayList7 = (ArrayList) m31792b7;
                                    if (size == arrayList7.size() && size == m25873x27.size() && size == m25873x28.size() && size == m25873x29.size() && size == m25873x210.size()) {
                                        ArrayList arrayList8 = (ArrayList) m31792b9;
                                        if (size == arrayList8.size() && size == m25873x211.size() && size == m25873x212.size() && size == m25873x213.size() && size == m25873x214.size() && size == m25873x215.size() && size == m25873x216.size()) {
                                            ArrayList arrayList9 = new ArrayList();
                                            for (int i = 0; i < size; i++) {
                                                Participant.C3848b c3848b = new Participant.C3848b(Integer.parseInt(m25873x22.get(i)));
                                                c3848b.f11595b = Long.parseLong(m25873x2.get(i));
                                                c3848b.f11597d = (String) arrayList2.get(i);
                                                c3848b.f11598e = (String) arrayList3.get(i);
                                                c3848b.f11599f = (String) arrayList4.get(i);
                                                c3848b.f11602i = Integer.parseInt(m25873x24.get(i));
                                                c3848b.f11603j = Integer.parseInt(m25873x25.get(i)) != 0;
                                                c3848b.f11604k = Integer.parseInt(m25873x26.get(i));
                                                c3848b.f11607n = Integer.parseInt(m25873x27.get(i));
                                                c3848b.f11608o = Long.parseLong(m25873x28.get(i));
                                                c3848b.f11609p = Integer.parseInt(m25873x29.get(i));
                                                c3848b.f11610q = (String) ((ArrayList) m31792b8).get(i);
                                                c3848b.f11615v = Integer.parseInt(m25873x210.get(i));
                                                c3848b.f11613t = Contact.PremiumLevel.fromRemote(m25873x212.get(i));
                                                String str = m25873x213.get(i);
                                                Long l = null;
                                                if (str != null) {
                                                    Long j = q.j(str);
                                                    l = null;
                                                    if (j != null) {
                                                        long longValue = j.longValue();
                                                        l = longValue < 0 ? null : Long.valueOf(longValue);
                                                    }
                                                }
                                                c3848b.f11614u = l;
                                                if (arrayList.get(i) != null) {
                                                    c3848b.f11596c = (String) arrayList.get(i);
                                                }
                                                if (arrayList5.get(i) != null) {
                                                    c3848b.f11600g = (String) arrayList5.get(i);
                                                }
                                                if (arrayList6.get(i) != null) {
                                                    c3848b.f11605l = (String) arrayList6.get(i);
                                                }
                                                if (arrayList7.get(i) != null) {
                                                    c3848b.f11606m = (String) arrayList7.get(i);
                                                }
                                                if (arrayList8.get(i) != null) {
                                                    c3848b.f11611r = (String) arrayList8.get(i);
                                                }
                                                if (m25873x211.get(i) != null) {
                                                    c3848b.f11612s = Long.parseLong(m25873x211.get(i));
                                                }
                                                if (m25873x215.get(i) != null) {
                                                    c3848b.f11617x = Integer.parseInt(m25873x215.get(i));
                                                }
                                                if (m25873x216.get(i) != null) {
                                                    c3848b.f11618y = Integer.parseInt(m25873x216.get(i));
                                                }
                                                c3848b.f11601h = Long.parseLong(m25873x23.get(i));
                                                if (!l.a(m25873x214.get(i), AnalyticsConstants.NULL)) {
                                                    c3848b.f11616w = SpamData.Companion.m35459a(m25873x214.get(i));
                                                }
                                                arrayList9.add(c3848b.m35443a());
                                            }
                                            return arrayList9;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new SQLException("Inconsistent lengths in grouped fields");
    }

    @Override // p193e.p194a.p195a.p231g.p232j0.AbstractC6126a
    /* renamed from: p */
    public Conversation mo31752p() {
        ImGroupInfo imGroupInfo;
        long j = getLong(this.f20409d);
        int i = getInt(this.f20405Z);
        Conversation.C4191b c4191b = new Conversation.C4191b();
        c4191b.f13237a = getLong(this.f20406a);
        c4191b.f13238b = getLong(this.f20407b);
        c4191b.f13239c = getInt(this.f20408c);
        c4191b.f13240d = j;
        c4191b.f13241e = getInt(this.f20410e);
        c4191b.f13242f = getInt(this.f20411f);
        c4191b.f13243g = getString(this.f20412g);
        c4191b.f13244h = (String) h.c(getString(this.f20416i), "-1");
        c4191b.f13245i = new b(getLong(this.f20418j));
        c4191b.f13246j = getString(this.f20420k);
        c4191b.f13247k = getInt(this.f20422l) == 1;
        c4191b.f13248l = getInt(this.f20424m);
        c4191b.f13250n = getInt(this.f20426n) == 1;
        c4191b.f13251o = getInt(this.f20428o);
        c4191b.f13252p = getInt(this.f20430p);
        c4191b.f13253q = getInt(this.f20432q) == 1;
        c4191b.f13254r = getInt(this.f20399T);
        c4191b.f13255s = getInt(this.f20400U);
        c4191b.f13256t = getInt(this.f20401V);
        c4191b.f13257u = getInt(this.f20402W);
        c4191b.f13258v = getInt(this.f20403X);
        c4191b.f13259w = getInt(this.f20404Y);
        c4191b.f13260x = i;
        String string = getString(this.f20435r0);
        if (string != null) {
            imGroupInfo = new ImGroupInfo(string, getString(this.f20437s0), getString(this.f20439t0), getLong(this.f20441u0), getString(this.f20443v0), getInt(this.f20445w0), new ImGroupPermissions(getInt(this.f20447x0), getInt(this.f20449y0), getInt(this.f20451z0), getInt(this.f20374A0)), getInt(this.f20376B0), getInt(this.f20378C0), getLong(this.f20380D0), getLong(this.f20382E0), getInt(this.f20383F0) != 0, getLong(this.f20384G0), getLong(this.f20385H0), getInt(this.f20386I0), getInt(this.f20388J0), null, 65536);
        } else {
            imGroupInfo = null;
        }
        c4191b.f13261y = imGroupInfo;
        c4191b.f13262z = getInt(this.f20413g0);
        c4191b.f13225A = getInt(this.f20415h0);
        c4191b.f13226B = getInt(this.f20417i0) == 1;
        c4191b.f13227C = getInt(this.f20419j0);
        c4191b.f13228D = getInt(this.f20421k0);
        c4191b.f13229E = getLong(this.f20425m0) > 0;
        c4191b.f13230F = new b(getLong(this.f20425m0));
        c4191b.f13231G = new b(getLong(this.f20427n0));
        c4191b.f13232H = new b(getLong(this.f20429o0));
        c4191b.f13233I = new b(getLong(this.f20431p0));
        c4191b.f13236L = getString(this.f20433q0);
        Collections.addAll(c4191b.f13234J, C10480a.m26021S1(getString(this.f20414h)));
        if (!isNull(this.f20390K0)) {
            c4191b.f13235K = getInt(this.f20390K0);
        }
        List<Participant> mo31753o = mo31753o();
        c4191b.f13249m.clear();
        c4191b.f13249m.addAll(mo31753o);
        Conversation m35063b = c4191b.m35063b();
        l.d(m35063b, "builder.build()");
        return m35063b;
    }
}
