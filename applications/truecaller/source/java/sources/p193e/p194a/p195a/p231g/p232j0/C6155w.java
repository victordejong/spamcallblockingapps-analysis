package p193e.p194a.p195a.p231g.p232j0;

import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteException;
import com.google.android.libraries.places.api.model.PlaceLikelihood;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.messaging.data.types.Entity;
import com.truecaller.messaging.data.types.Message;
import com.truecaller.messaging.data.types.ReplySnippet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p437c.p578p.C10480a;
import s1.d0.i;
import s1.f0.q;
import s1.f0.v;
import s1.u.s;
import s1.u.z;
import s1.z.c.l;
/* renamed from: e.a.a.g.j0.w */
/* loaded from: classes7-dex2jar.jar:e/a/a/g/j0/w.class */
public class C6155w extends C6154v {

    /* renamed from: A1 */
    public final int f20679A1;

    /* renamed from: B1 */
    public final int f20680B1;

    /* renamed from: C1 */
    public final int f20681C1;

    /* renamed from: D1 */
    public final int f20682D1;

    /* renamed from: E1 */
    public final int f20683E1;

    /* renamed from: F1 */
    public final int f20684F1;

    /* renamed from: G1 */
    public final int f20685G1;

    /* renamed from: H1 */
    public final int f20686H1;

    /* renamed from: I1 */
    public final int f20687I1;

    /* renamed from: J1 */
    public final int f20688J1;

    /* renamed from: K1 */
    public final int f20689K1;

    /* renamed from: L1 */
    public final int f20690L1;

    /* renamed from: M1 */
    public final int f20691M1;

    /* renamed from: N1 */
    public final int f20692N1;

    /* renamed from: O1 */
    public final int f20693O1;

    /* renamed from: P1 */
    public final int f20694P1;

    /* renamed from: Q1 */
    public final int f20695Q1;

    /* renamed from: R1 */
    public final int f20696R1;

    /* renamed from: S1 */
    public final int f20697S1;

    /* renamed from: T1 */
    public final int f20698T1;

    /* renamed from: U1 */
    public final int f20699U1;

    /* renamed from: V1 */
    public final int f20700V1;

    /* renamed from: W1 */
    public final int f20701W1;

    /* renamed from: X1 */
    public final int f20702X1;

    /* renamed from: Y0 */
    public final int f20703Y0;

    /* renamed from: Y1 */
    public final int f20704Y1;

    /* renamed from: Z0 */
    public final int f20705Z0;

    /* renamed from: Z1 */
    public final int f20706Z1;

    /* renamed from: a1 */
    public final int f20707a1;

    /* renamed from: a2 */
    public final int f20708a2;

    /* renamed from: b1 */
    public final int f20709b1;

    /* renamed from: b2 */
    public final int f20710b2;

    /* renamed from: c1 */
    public final int f20711c1;

    /* renamed from: c2 */
    public final int f20712c2;

    /* renamed from: d1 */
    public final int f20713d1;

    /* renamed from: d2 */
    public final int f20714d2;

    /* renamed from: e1 */
    public final int f20715e1;

    /* renamed from: e2 */
    public final int f20716e2;

    /* renamed from: f1 */
    public final int f20717f1;

    /* renamed from: f2 */
    public final int f20718f2;

    /* renamed from: g1 */
    public final int f20719g1;

    /* renamed from: g2 */
    public final int f20720g2;

    /* renamed from: h1 */
    public final int f20721h1;

    /* renamed from: h2 */
    public final int f20722h2;

    /* renamed from: i1 */
    public final int f20723i1;

    /* renamed from: i2 */
    public final Cursor f20724i2;

    /* renamed from: j1 */
    public final int f20725j1;

    /* renamed from: k1 */
    public final int f20726k1;

    /* renamed from: l1 */
    public final int f20727l1;

    /* renamed from: m1 */
    public final int f20728m1;

    /* renamed from: n1 */
    public final int f20729n1;

    /* renamed from: o1 */
    public final int f20730o1;

    /* renamed from: p1 */
    public final int f20731p1;

    /* renamed from: q1 */
    public final int f20732q1;

    /* renamed from: r1 */
    public final int f20733r1;

    /* renamed from: s1 */
    public final int f20734s1;

    /* renamed from: t1 */
    public final int f20735t1;

    /* renamed from: u1 */
    public final int f20736u1;

    /* renamed from: v1 */
    public final int f20737v1;

    /* renamed from: w1 */
    public final int f20738w1;

    /* renamed from: x1 */
    public final int f20739x1;

    /* renamed from: y1 */
    public final int f20740y1;

    /* renamed from: z1 */
    public final int f20741z1;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6155w(Cursor cursor) {
        super(cursor);
        l.e(cursor, "cursor");
        this.f20724i2 = cursor;
        this.f20703Y0 = cursor.getColumnIndexOrThrow("participant_id");
        this.f20705Z0 = cursor.getColumnIndexOrThrow("me_participant_type");
        this.f20707a1 = cursor.getColumnIndexOrThrow("me_participant_im_id");
        this.f20709b1 = cursor.getColumnIndexOrThrow("me_participant_raw_destination");
        this.f20711c1 = cursor.getColumnIndexOrThrow("me_participant_normalized_destination");
        this.f20713d1 = cursor.getColumnIndexOrThrow("me_participant_country_code");
        this.f20715e1 = cursor.getColumnIndexOrThrow("me_participant_tc_id");
        this.f20717f1 = cursor.getColumnIndexOrThrow("me_participant_aggregated_contact_id");
        this.f20719g1 = cursor.getColumnIndexOrThrow("me_participant_filter_action");
        this.f20721h1 = cursor.getColumnIndexOrThrow("me_participant_is_top_spammer");
        this.f20723i1 = cursor.getColumnIndexOrThrow("me_participant_top_spam_score");
        this.f20725j1 = cursor.getColumnIndexOrThrow("me_participant_name");
        this.f20726k1 = cursor.getColumnIndexOrThrow("me_participant_image_url");
        this.f20727l1 = cursor.getColumnIndexOrThrow("me_participant_source");
        this.f20728m1 = cursor.getColumnIndexOrThrow("me_participant_cache_control");
        this.f20729n1 = cursor.getColumnIndexOrThrow("me_participant_im_business_state");
        this.f20730o1 = cursor.getColumnIndexOrThrow("me_participant_badges");
        this.f20731p1 = cursor.getColumnIndexOrThrow("me_participant_company_name");
        this.f20732q1 = cursor.getColumnIndexOrThrow("me_participant_search_time");
        this.f20733r1 = cursor.getColumnIndexOrThrow("me_participant_phonebook_id");
        this.f20734s1 = cursor.getColumnIndexOrThrow("me_participant_spam_score");
        this.f20735t1 = cursor.getColumnIndexOrThrow("me_participant_spam_type");
        this.f20736u1 = cursor.getColumnIndexOrThrow("me_participant_premium_level");
        this.f20737v1 = cursor.getColumnIndexOrThrow("me_entities_id");
        this.f20738w1 = cursor.getColumnIndexOrThrow("me_entities_mime_type");
        this.f20739x1 = cursor.getColumnIndexOrThrow("me_entities_type");
        this.f20740y1 = cursor.getColumnIndexOrThrow("entity_info1");
        this.f20741z1 = cursor.getColumnIndexOrThrow("entity_info2");
        this.f20679A1 = cursor.getColumnIndexOrThrow("entity_info1");
        this.f20680B1 = cursor.getColumnIndexOrThrow("entity_info2");
        this.f20681C1 = cursor.getColumnIndexOrThrow("entity_info3");
        this.f20682D1 = cursor.getColumnIndexOrThrow("entity_info5");
        this.f20683E1 = cursor.getColumnIndexOrThrow("entity_info6");
        this.f20684F1 = cursor.getColumnIndexOrThrow("entity_info4");
        this.f20685G1 = cursor.getColumnIndexOrThrow("entity_info5");
        this.f20686H1 = cursor.getColumnIndexOrThrow("entity_info6");
        this.f20687I1 = cursor.getColumnIndexOrThrow("entity_info7");
        this.f20688J1 = cursor.getColumnIndexOrThrow("entity_info4");
        this.f20689K1 = cursor.getColumnIndexOrThrow("entity_info4");
        this.f20690L1 = cursor.getColumnIndexOrThrow("entity_info7");
        this.f20691M1 = cursor.getColumnIndexOrThrow("entity_info5");
        this.f20692N1 = cursor.getColumnIndexOrThrow("entity_info6");
        this.f20693O1 = cursor.getColumnIndexOrThrow("entity_info4");
        this.f20694P1 = cursor.getColumnIndexOrThrow("entity_info4");
        this.f20695Q1 = cursor.getColumnIndexOrThrow("entity_info1");
        this.f20696R1 = cursor.getColumnIndexOrThrow("entity_info2");
        this.f20697S1 = cursor.getColumnIndexOrThrow("entity_info3");
        this.f20698T1 = cursor.getColumnIndexOrThrow("entity_info5");
        this.f20699U1 = cursor.getColumnIndexOrThrow("entity_info4");
        this.f20700V1 = cursor.getColumnIndexOrThrow("entity_info7");
        this.f20701W1 = this.f20724i2.getColumnIndexOrThrow("entity_info6");
        this.f20702X1 = this.f20724i2.getColumnIndexOrThrow("entity_info4");
        this.f20704Y1 = this.f20724i2.getColumnIndexOrThrow("entity_info5");
        this.f20706Z1 = this.f20724i2.getColumnIndexOrThrow("entity_info6");
        this.f20708a2 = this.f20724i2.getColumnIndexOrThrow("re_message_status");
        this.f20710b2 = this.f20724i2.getColumnIndexOrThrow("re_participant_name");
        this.f20712c2 = this.f20724i2.getColumnIndexOrThrow("re_participant_normalized_address");
        this.f20714d2 = this.f20724i2.getColumnIndexOrThrow("re_participant_type");
        this.f20716e2 = this.f20724i2.getColumnIndexOrThrow("re_entities_id");
        this.f20718f2 = this.f20724i2.getColumnIndexOrThrow("re_entities_mime_type");
        this.f20720g2 = this.f20724i2.getColumnIndexOrThrow("re_entities_type");
        this.f20722h2 = this.f20724i2.getColumnIndexOrThrow("info11");
    }

    @Override // p193e.p194a.p195a.p231g.p232j0.C6154v
    /* renamed from: E */
    public Participant mo31734E() throws SQLException {
        if (isNull(this.f20703Y0)) {
            Participant participant = Participant.f11566B;
            l.d(participant, "Participant.EMPTY");
            return participant;
        }
        Participant.C3848b c3848b = new Participant.C3848b(getInt(this.f20705Z0));
        c3848b.f11595b = getLong(this.f20703Y0);
        c3848b.f11597d = getString(this.f20709b1);
        c3848b.f11598e = getString(this.f20711c1);
        c3848b.f11599f = getString(this.f20713d1);
        c3848b.f11600g = getString(this.f20715e1);
        c3848b.f11601h = getLong(this.f20717f1);
        c3848b.f11596c = getString(this.f20707a1);
        c3848b.f11602i = getInt(this.f20719g1);
        c3848b.f11603j = getInt(this.f20721h1) != 0;
        c3848b.f11604k = getInt(this.f20723i1);
        c3848b.f11605l = getString(this.f20725j1);
        c3848b.f11606m = getString(this.f20726k1);
        c3848b.f11607n = getInt(this.f20727l1);
        c3848b.f11608o = getLong(this.f20733r1);
        c3848b.f11609p = getInt(this.f20734s1);
        c3848b.f11610q = getString(this.f20735t1);
        c3848b.f11615v = getInt(this.f20730o1);
        c3848b.f11611r = getString(this.f20731p1);
        c3848b.f11612s = getLong(this.f20732q1);
        c3848b.f11613t = Contact.PremiumLevel.fromRemote(getString(this.f20736u1));
        int i = this.f20728m1;
        c3848b.f11614u = isNull(i) ? null : Long.valueOf(getLong(i));
        c3848b.f11617x = getInt(this.f20729n1);
        Participant m35443a = c3848b.m35443a();
        l.d(m35443a, "Participant.Builder(getI…Im))\n            .build()");
        return m35443a;
    }

    @Override // p193e.p194a.p195a.p231g.p232j0.C6154v
    /* renamed from: I */
    public ReplySnippet mo31733I(long j) {
        Entity entity;
        Entity.C4195a c4195a = Entity.f13305h;
        if (j < 0) {
            return null;
        }
        List<Long> m31732J = m31732J(getString(this.f20716e2));
        String string = getString(this.f20720g2);
        List T = string != null ? v.T(string, new char[]{'|'}, false, 0, 6) : s.a;
        List<String> m31792b = m31792b(getString(this.f20718f2));
        l.d(m31792b, "readComposedStrings(getS…EntitiesGroupedMimeType))");
        if (m31732J.size() != T.size()) {
            throw new SQLiteException("Inconsistent entities data");
        }
        if (T.isEmpty()) {
            return null;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        i E = s1.u.i.E(m31792b);
        ArrayList arrayList = new ArrayList();
        z it = E.iterator();
        List list = T;
        while (it.hasNext()) {
            int a = it.a();
            if (!linkedHashSet.add(m31732J.get(a))) {
                entity = null;
            } else {
                int parseInt = Integer.parseInt((String) list.get(a));
                if (parseInt != 9) {
                    switch (parseInt) {
                        case 0:
                            boolean z = false;
                            List<String> m31792b2 = m31792b(C19291g.m13628F1(this, "re_entity_info1"));
                            l.d(m31792b2, "readComposedStrings(stri…X + TextColumns.CONTENT))");
                            List<String> m31792b3 = m31792b(C19291g.m13628F1(this, "re_entity_info2"));
                            l.d(m31792b3, "readComposedStrings(stri…extColumns.IS_RICH_TEXT))");
                            Object obj = ((ArrayList) m31792b).get(a);
                            l.d(obj, "mimeTypes[it]");
                            String str = (String) obj;
                            Object obj2 = ((ArrayList) m31792b2).get(a);
                            l.d(obj2, "textContent[it]");
                            String str2 = (String) obj2;
                            Object obj3 = ((ArrayList) m31792b3).get(a);
                            l.d(obj3, "isRichText[it]");
                            Integer h = q.h((String) obj3);
                            if ((h != null ? h.intValue() : 0) > 0) {
                                z = true;
                            }
                            entity = Entity.C4195a.m35042a(c4195a, 0L, str, 0, str2, z, 0, 0, 0, 0L, null, null, null, null, 0, null, null, PlaceLikelihood.LIKELIHOOD_MIN_VALUE, PlaceLikelihood.LIKELIHOOD_MIN_VALUE, 262117);
                            break;
                        case 1:
                        case 3:
                            List<String> m31792b4 = m31792b(C19291g.m13628F1(this, "re_entity_info1"));
                            l.d(m31792b4, "readComposedStrings(stri… + ImageColumns.CONTENT))");
                            List<String> m31792b5 = m31792b(C19291g.m13628F1(this, "re_entity_info4"));
                            l.d(m31792b5, "readComposedStrings(stri… ImageColumns.THUMBNAIL))");
                            Object obj4 = ((ArrayList) m31792b).get(a);
                            l.d(obj4, "mimeTypes[it]");
                            String str3 = (String) obj4;
                            Object obj5 = ((ArrayList) m31792b4).get(a);
                            l.d(obj5, "imageContent[it]");
                            String str4 = (String) obj5;
                            Object obj6 = ((ArrayList) m31792b5).get(a);
                            l.d(obj6, "imageThumbnails[it]");
                            entity = Entity.C4195a.m35042a(c4195a, 0L, str3, 0, str4, false, 0, 0, 0, 0L, (String) obj6, null, null, null, 0, null, null, PlaceLikelihood.LIKELIHOOD_MIN_VALUE, PlaceLikelihood.LIKELIHOOD_MIN_VALUE, 261621);
                            break;
                        case 2:
                            List<String> m31792b6 = m31792b(C19291g.m13628F1(this, "re_entity_info1"));
                            l.d(m31792b6, "readComposedStrings(stri… + VideoColumns.CONTENT))");
                            List<String> m31792b7 = m31792b(C19291g.m13628F1(this, "re_entity_info4"));
                            l.d(m31792b7, "readComposedStrings(stri… VideoColumns.THUMBNAIL))");
                            Object obj7 = ((ArrayList) m31792b).get(a);
                            l.d(obj7, "mimeTypes[it]");
                            String str5 = (String) obj7;
                            Object obj8 = ((ArrayList) m31792b6).get(a);
                            l.d(obj8, "videoContent[it]");
                            String str6 = (String) obj8;
                            Object obj9 = ((ArrayList) m31792b7).get(a);
                            l.d(obj9, "videoThumbnails[it]");
                            entity = Entity.C4195a.m35042a(c4195a, 0L, str5, 0, str6, false, 0, 0, 0, 0L, (String) obj9, null, null, null, 0, null, null, PlaceLikelihood.LIKELIHOOD_MIN_VALUE, PlaceLikelihood.LIKELIHOOD_MIN_VALUE, 261621);
                            break;
                        case 4:
                            List<String> m31792b8 = m31792b(C19291g.m13628F1(this, "re_entity_info1"));
                            l.d(m31792b8, "readComposedStrings(stri… + AudioColumns.CONTENT))");
                            Object obj10 = ((ArrayList) m31792b).get(a);
                            l.d(obj10, "mimeTypes[it]");
                            String str7 = (String) obj10;
                            Object obj11 = ((ArrayList) m31792b8).get(a);
                            l.d(obj11, "audioContent[it]");
                            entity = Entity.C4195a.m35042a(c4195a, 0L, str7, 0, (String) obj11, false, 0, 0, 0, 0L, null, null, null, null, 0, null, null, PlaceLikelihood.LIKELIHOOD_MIN_VALUE, PlaceLikelihood.LIKELIHOOD_MIN_VALUE, 262133);
                            break;
                        case 5:
                            List<String> m31792b9 = m31792b(C19291g.m13628F1(this, "re_entity_info1"));
                            l.d(m31792b9, "readComposedStrings(stri…DocumentColumns.CONTENT))");
                            List<String> m31792b10 = m31792b(C19291g.m13628F1(this, "re_entity_info4"));
                            l.d(m31792b10, "readComposedStrings(stri…ocumentColumns.FILENAME))");
                            Object obj12 = ((ArrayList) m31792b).get(a);
                            l.d(obj12, "mimeTypes[it]");
                            String str8 = (String) obj12;
                            Object obj13 = ((ArrayList) m31792b9).get(a);
                            l.d(obj13, "docContent[it]");
                            String str9 = (String) obj13;
                            Object obj14 = ((ArrayList) m31792b10).get(a);
                            l.d(obj14, "docFileNames[it]");
                            entity = Entity.C4195a.m35042a(c4195a, 0L, str8, 0, str9, false, 0, 0, 0, 0L, null, null, (String) obj14, null, 0, null, null, PlaceLikelihood.LIKELIHOOD_MIN_VALUE, PlaceLikelihood.LIKELIHOOD_MIN_VALUE, 260085);
                            break;
                        case 6:
                            List<String> m31792b11 = m31792b(C19291g.m13628F1(this, "re_entity_info4"));
                            l.d(m31792b11, "readComposedStrings(stri… VCardColumns.THUMBNAIL))");
                            List<String> m31792b12 = m31792b(C19291g.m13628F1(this, "re_entity_info5"));
                            l.d(m31792b12, "readComposedStrings(stri…VCardColumns.VCARD_NAME))");
                            List<String> m31792b13 = m31792b(C19291g.m13628F1(this, "re_entity_info1"));
                            l.d(m31792b13, "readComposedStrings(stri… + VCardColumns.CONTENT))");
                            List<String> m31792b14 = m31792b(C19291g.m13628F1(this, "re_entity_info6"));
                            l.d(m31792b14, "readComposedStrings(stri…ns.VCARD_CONTACTS_COUNT))");
                            Object obj15 = ((ArrayList) m31792b14).get(a);
                            l.d(obj15, "vCardCounts[it]");
                            Integer h2 = q.h((String) obj15);
                            int intValue = h2 != null ? h2.intValue() : -1;
                            Object obj16 = ((ArrayList) m31792b).get(a);
                            l.d(obj16, "mimeTypes[it]");
                            String str10 = (String) obj16;
                            Object obj17 = ((ArrayList) m31792b13).get(a);
                            l.d(obj17, "vCardContent[it]");
                            String str11 = (String) obj17;
                            Object obj18 = ((ArrayList) m31792b11).get(a);
                            l.d(obj18, "vCardThumbnails[it]");
                            String str12 = (String) obj18;
                            Object obj19 = ((ArrayList) m31792b12).get(a);
                            l.d(obj19, "vCardNames[it]");
                            entity = Entity.C4195a.m35042a(c4195a, 0L, str10, 0, str11, false, 0, 0, 0, 0L, str12, null, null, (String) obj19, intValue, null, null, PlaceLikelihood.LIKELIHOOD_MIN_VALUE, PlaceLikelihood.LIKELIHOOD_MIN_VALUE, 249333);
                            break;
                        default:
                            long longValue = m31732J.get(a).longValue();
                            Object obj20 = ((ArrayList) m31792b).get(a);
                            l.d(obj20, "mimeTypes[it]");
                            entity = Entity.C4195a.m35042a(c4195a, longValue, (String) obj20, 0, "", false, 0, 0, 0, 0L, null, null, null, null, 0, null, null, PlaceLikelihood.LIKELIHOOD_MIN_VALUE, PlaceLikelihood.LIKELIHOOD_MIN_VALUE, 262132);
                            break;
                    }
                } else {
                    List<String> m31792b15 = m31792b(C19291g.m13628F1(this, "re_entity_info1"));
                    l.d(m31792b15, "readComposedStrings(stri…LocationColumns.CONTENT))");
                    List<String> m31792b16 = m31792b(C19291g.m13628F1(this, "re_entity_info4"));
                    l.d(m31792b16, "readComposedStrings(stri…LocationColumns.ADDRESS))");
                    Object obj21 = ((ArrayList) m31792b).get(a);
                    l.d(obj21, "mimeTypes[it]");
                    String str13 = (String) obj21;
                    Object obj22 = ((ArrayList) m31792b15).get(a);
                    l.d(obj22, "previewUris[it]");
                    entity = Entity.C4195a.m35042a(c4195a, 0L, str13, 0, (String) obj22, false, 0, 0, 0, 0L, null, null, null, null, 0, null, (String) ((ArrayList) m31792b16).get(a), PlaceLikelihood.LIKELIHOOD_MIN_VALUE, PlaceLikelihood.LIKELIHOOD_MIN_VALUE, 229365);
                }
            }
            if (entity != null) {
                arrayList.add(entity);
            }
        }
        return new ReplySnippet(j, getInt(this.f20708a2), arrayList, getString(this.f20710b2), getString(this.f20712c2), Integer.valueOf(getInt(this.f20714d2)));
    }

    /* renamed from: J */
    public final List<Long> m31732J(String str) {
        if (str == null) {
            return s.a;
        }
        try {
            List<String> T = v.T(str, new char[]{'|'}, false, 0, 6);
            ArrayList arrayList = new ArrayList(C25225a.m4004J(T, 10));
            for (String str2 : T) {
                arrayList.add(Long.valueOf(Long.parseLong(str2)));
            }
            return arrayList;
        } catch (NumberFormatException e) {
            StringBuilder m8728C = C22128a.m8728C("Can not parse longs: ");
            m8728C.append(e.getMessage());
            throw new SQLiteException(m8728C.toString());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:165:0x0b42, code lost:
        if (r29 != null) goto L167;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v147, types: [long] */
    /* JADX WARN: Type inference failed for: r0v243, types: [long] */
    /* JADX WARN: Type inference failed for: r0v314, types: [long] */
    /* JADX WARN: Type inference failed for: r0v363, types: [long] */
    /* JADX WARN: Type inference failed for: r0v436, types: [long] */
    /* JADX WARN: Type inference failed for: r0v575, types: [double] */
    /* JADX WARN: Type inference failed for: r0v581, types: [double] */
    /* JADX WARN: Type inference failed for: r0v587, types: [long] */
    /* JADX WARN: Type inference failed for: r0v632, types: [long] */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r10v7 */
    /* JADX WARN: Type inference failed for: r10v8 */
    /* JADX WARN: Type inference failed for: r18v7 */
    /* JADX WARN: Type inference failed for: r19v7 */
    /* JADX WARN: Type inference failed for: r40v1 */
    /* JADX WARN: Type inference failed for: r40v10 */
    /* JADX WARN: Type inference failed for: r40v11 */
    /* JADX WARN: Type inference failed for: r40v12 */
    /* JADX WARN: Type inference failed for: r40v2 */
    /* JADX WARN: Type inference failed for: r40v3 */
    /* JADX WARN: Type inference failed for: r40v4 */
    /* JADX WARN: Type inference failed for: r40v5 */
    /* JADX WARN: Type inference failed for: r40v6 */
    /* JADX WARN: Type inference failed for: r40v7 */
    /* JADX WARN: Type inference failed for: r40v8 */
    /* JADX WARN: Type inference failed for: r40v9 */
    /* JADX WARN: Type inference failed for: r49v0 */
    /* JADX WARN: Type inference failed for: r49v1 */
    /* JADX WARN: Type inference failed for: r49v10 */
    /* JADX WARN: Type inference failed for: r49v11 */
    /* JADX WARN: Type inference failed for: r49v2 */
    /* JADX WARN: Type inference failed for: r49v3 */
    /* JADX WARN: Type inference failed for: r49v4 */
    /* JADX WARN: Type inference failed for: r49v5 */
    /* JADX WARN: Type inference failed for: r49v6 */
    /* JADX WARN: Type inference failed for: r49v7 */
    /* JADX WARN: Type inference failed for: r49v8 */
    /* JADX WARN: Type inference failed for: r49v9 */
    /* JADX WARN: Type inference failed for: r53v0 */
    /* JADX WARN: Type inference failed for: r53v1 */
    /* JADX WARN: Type inference failed for: r53v2 */
    /* JADX WARN: Type inference failed for: r55v0 */
    /* JADX WARN: Type inference failed for: r55v1 */
    /* JADX WARN: Type inference failed for: r55v2 */
    /* JADX WARN: Type inference failed for: r55v3 */
    /* JADX WARN: Type inference failed for: r9v2 */
    @Override // p193e.p194a.p195a.p231g.p232j0.C6154v
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo31731d(com.truecaller.messaging.data.types.Message.C4209b r27) {
        /*
            Method dump skipped, instructions count: 3356
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p231g.p232j0.C6155w.mo31731d(com.truecaller.messaging.data.types.Message$b):void");
    }

    @Override // p193e.p194a.p195a.p231g.p232j0.C6154v
    /* renamed from: s */
    public void mo31730s(Message.C4209b c4209b) {
        l.e(c4209b, "builder");
        Collections.addAll(c4209b.f13436p, C10480a.m26021S1(getString(this.f20722h2)));
    }
}
