package p459j.p460a.p474c0.p475c.p478y;

import android.database.Cursor;
import android.net.Uri;
import android.provider.ContactsContract;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import androidx.media2.session.MediaSessionImplBase;
import gogolook.callgogolook2.gson.UserProfile;
import gogolook.callgogolook2.messaging.datamodel.data.MessageData;
import gogolook.callgogolook2.messaging.datamodel.data.MessagePartData;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import p081h.p203i.p316b.p317a.AbstractC9302l;
import p459j.p460a.p474c0.p499h.AbstractC12170i;
import p459j.p460a.p474c0.p499h.C12151d;
import p459j.p460a.p474c0.p499h.C12153d0;
import p459j.p460a.p474c0.p499h.C12205r;
import p459j.p460a.p474c0.p499h.C12217u;
import p459j.p460a.p521j0.p529x.C12810o;
/* renamed from: j.a.c0.c.y.g */
/* loaded from: classes2-dex2jar.jar:j/a/c0/c/y/g.class */
public class C11610g {

    /* renamed from: I */
    public static final String f25969I;

    /* renamed from: J */
    public static int f25970J;

    /* renamed from: K */
    public static final int f25971K;

    /* renamed from: L */
    public static final int f25972L;

    /* renamed from: M */
    public static final int f25973M;

    /* renamed from: N */
    public static final int f25974N;

    /* renamed from: O */
    public static final int f25975O;

    /* renamed from: P */
    public static final int f25976P;

    /* renamed from: Q */
    public static final int f25977Q;

    /* renamed from: R */
    public static final int f25978R;

    /* renamed from: S */
    public static final int f25979S;

    /* renamed from: T */
    public static final int f25980T;

    /* renamed from: U */
    public static final int f25981U;

    /* renamed from: V */
    public static final int f25982V;

    /* renamed from: W */
    public static final int f25983W;

    /* renamed from: X */
    public static final int f25984X;

    /* renamed from: Y */
    public static final int f25985Y;

    /* renamed from: Z */
    public static final int f25986Z;

    /* renamed from: a0 */
    public static final int f25987a0;

    /* renamed from: b0 */
    public static final int f25988b0;

    /* renamed from: c0 */
    public static final int f25989c0;

    /* renamed from: d0 */
    public static final int f25990d0;

    /* renamed from: e0 */
    public static final int f25991e0;

    /* renamed from: f0 */
    public static final int f25992f0;

    /* renamed from: g0 */
    public static final int f25993g0;

    /* renamed from: h0 */
    public static final int f25994h0;

    /* renamed from: i0 */
    public static final int f25995i0;

    /* renamed from: j0 */
    public static final int f25996j0;

    /* renamed from: k0 */
    public static final int f25997k0;

    /* renamed from: l0 */
    public static final int f25998l0;

    /* renamed from: m0 */
    public static final int f25999m0;

    /* renamed from: n0 */
    public static final int f26000n0;

    /* renamed from: A */
    public boolean f26002A;

    /* renamed from: B */
    public boolean f26003B;

    /* renamed from: C */
    public boolean f26004C;

    /* renamed from: a */
    public String f26005a;

    /* renamed from: b */
    public String f26006b;

    /* renamed from: c */
    public String f26007c;

    /* renamed from: d */
    public int f26008d;

    /* renamed from: e */
    public List<MessagePartData> f26009e;

    /* renamed from: f */
    public long f26010f;

    /* renamed from: g */
    public long f26011g;

    /* renamed from: h */
    public boolean f26012h;

    /* renamed from: i */
    public int f26013i;

    /* renamed from: j */
    public int f26014j;

    /* renamed from: k */
    public String f26015k;

    /* renamed from: l */
    public int f26016l;

    /* renamed from: m */
    public int f26017m;

    /* renamed from: n */
    public String f26018n;

    /* renamed from: o */
    public long f26019o;

    /* renamed from: p */
    public int f26020p;

    /* renamed from: q */
    public String f26021q;

    /* renamed from: r */
    public String f26022r;

    /* renamed from: s */
    public String f26023s;

    /* renamed from: t */
    public String f26024t;

    /* renamed from: u */
    public String f26025u;

    /* renamed from: v */
    public long f26026v;

    /* renamed from: w */
    public String f26027w;

    /* renamed from: x */
    public String f26028x;

    /* renamed from: y */
    public boolean f26029y;

    /* renamed from: z */
    public boolean f26030z;

    /* renamed from: D */
    public static final Character f25964D = '\'';

    /* renamed from: E */
    public static final StringBuilder f25965E = new StringBuilder();

    /* renamed from: F */
    public static final ArrayList<String> f25966F = new ArrayList<>();

    /* renamed from: G */
    public static final Object f25967G = new Object();

    /* renamed from: H */
    public static final String f25968H = "messages._id as _id, messages.conversation_id as conversation_id, messages.sender_id as sender_id, " + m8913a("_id", false, "parts_ids") + UserProfile.CARD_CATE_SEPARATOR + m8913a("content_type", true, "parts_content_types") + UserProfile.CARD_CATE_SEPARATOR + m8913a("uri", true, "parts_content_uris") + UserProfile.CARD_CATE_SEPARATOR + m8913a("width", false, "parts_widths") + UserProfile.CARD_CATE_SEPARATOR + m8913a("height", false, "parts_heights") + UserProfile.CARD_CATE_SEPARATOR + m8913a("text", true, "parts_texts") + UserProfile.CARD_CATE_SEPARATOR + "count(parts._id) as parts_count" + UserProfile.CARD_CATE_SEPARATOR + NotificationCompat.CarExtender.KEY_MESSAGES + ".sent_timestamp as sent_timestamp" + UserProfile.CARD_CATE_SEPARATOR + NotificationCompat.CarExtender.KEY_MESSAGES + ".received_timestamp as received_timestamp" + UserProfile.CARD_CATE_SEPARATOR + NotificationCompat.CarExtender.KEY_MESSAGES + ".seen as seen" + UserProfile.CARD_CATE_SEPARATOR + NotificationCompat.CarExtender.KEY_MESSAGES + ".read as read" + UserProfile.CARD_CATE_SEPARATOR + NotificationCompat.CarExtender.KEY_MESSAGES + ".message_protocol as message_protocol" + UserProfile.CARD_CATE_SEPARATOR + NotificationCompat.CarExtender.KEY_MESSAGES + ".message_status as message_status" + UserProfile.CARD_CATE_SEPARATOR + NotificationCompat.CarExtender.KEY_MESSAGES + ".sms_message_uri as sms_message_uri" + UserProfile.CARD_CATE_SEPARATOR + NotificationCompat.CarExtender.KEY_MESSAGES + ".sms_priority as sms_priority" + UserProfile.CARD_CATE_SEPARATOR + NotificationCompat.CarExtender.KEY_MESSAGES + ".sms_message_size as sms_message_size" + UserProfile.CARD_CATE_SEPARATOR + NotificationCompat.CarExtender.KEY_MESSAGES + ".mms_subject as mms_subject" + UserProfile.CARD_CATE_SEPARATOR + NotificationCompat.CarExtender.KEY_MESSAGES + ".mms_expiry as mms_expiry" + UserProfile.CARD_CATE_SEPARATOR + NotificationCompat.CarExtender.KEY_MESSAGES + ".raw_status as raw_status" + UserProfile.CARD_CATE_SEPARATOR + NotificationCompat.CarExtender.KEY_MESSAGES + ".self_id as self_id" + UserProfile.CARD_CATE_SEPARATOR + NotificationCompat.CarExtender.KEY_PARTICIPANTS + ".full_name as full_name" + UserProfile.CARD_CATE_SEPARATOR + NotificationCompat.CarExtender.KEY_PARTICIPANTS + ".first_name as first_name" + UserProfile.CARD_CATE_SEPARATOR + NotificationCompat.CarExtender.KEY_PARTICIPANTS + ".display_destination as display_destination" + UserProfile.CARD_CATE_SEPARATOR + NotificationCompat.CarExtender.KEY_PARTICIPANTS + ".normalized_destination as normalized_destination" + UserProfile.CARD_CATE_SEPARATOR + NotificationCompat.CarExtender.KEY_PARTICIPANTS + ".profile_photo_uri as profile_photo_uri" + UserProfile.CARD_CATE_SEPARATOR + NotificationCompat.CarExtender.KEY_PARTICIPANTS + ".contact_id as contact_id" + UserProfile.CARD_CATE_SEPARATOR + NotificationCompat.CarExtender.KEY_PARTICIPANTS + ".lookup_key as lookup_key ";

    /* renamed from: o0 */
    public static String[] f26001o0 = {"_id", "conversation_id", "sender_id", "parts_ids", "parts_content_types", "parts_content_uris", "parts_widths", "parts_heights", "parts_texts", "parts_count", "sent_timestamp", "received_timestamp", "seen", "read", "message_protocol", "message_status", "sms_message_uri", "sms_priority", "sms_message_size", "mms_subject", "mms_expiry", "raw_status", "self_id", "full_name", "first_name", "display_destination", "normalized_destination", "profile_photo_uri", "contact_id", "lookup_key"};

    static {
        StringBuilder sb = new StringBuilder();
        sb.append("SELECT ");
        sb.append(f25968H);
        sb.append(" FROM messages LEFT JOIN parts ON (messages._id=parts.message_id)  LEFT JOIN participants ON (messages.sender_id=participants._id) WHERE (messages.message_status <> 3");
        f25969I = sb.toString();
        f25970J = 0;
        int i = f25970J;
        f25970J = i + 1;
        f25971K = i;
        int i2 = f25970J;
        f25970J = i2 + 1;
        f25972L = i2;
        int i3 = f25970J;
        f25970J = i3 + 1;
        f25973M = i3;
        int i4 = f25970J;
        f25970J = i4 + 1;
        f25974N = i4;
        int i5 = f25970J;
        f25970J = i5 + 1;
        f25975O = i5;
        int i6 = f25970J;
        f25970J = i6 + 1;
        f25976P = i6;
        int i7 = f25970J;
        f25970J = i7 + 1;
        f25977Q = i7;
        int i8 = f25970J;
        f25970J = i8 + 1;
        f25978R = i8;
        int i9 = f25970J;
        f25970J = i9 + 1;
        f25979S = i9;
        int i10 = f25970J;
        f25970J = i10 + 1;
        f25980T = i10;
        int i11 = f25970J;
        f25970J = i11 + 1;
        f25981U = i11;
        int i12 = f25970J;
        f25970J = i12 + 1;
        f25982V = i12;
        int i13 = f25970J;
        f25970J = i13 + 1;
        f25983W = i13;
        int i14 = f25970J;
        f25970J = i14 + 1;
        f25984X = i14;
        int i15 = f25970J;
        f25970J = i15 + 1;
        f25985Y = i15;
        int i16 = f25970J;
        f25970J = i16 + 1;
        f25986Z = i16;
        int i17 = f25970J;
        f25970J = i17 + 1;
        f25987a0 = i17;
        int i18 = f25970J;
        f25970J = i18 + 1;
        f25988b0 = i18;
        int i19 = f25970J;
        f25970J = i19 + 1;
        f25989c0 = i19;
        int i20 = f25970J;
        f25970J = i20 + 1;
        f25990d0 = i20;
        int i21 = f25970J;
        f25970J = i21 + 1;
        f25991e0 = i21;
        int i22 = f25970J;
        f25970J = i22 + 1;
        f25992f0 = i22;
        int i23 = f25970J;
        f25970J = i23 + 1;
        f25993g0 = i23;
        int i24 = f25970J;
        f25970J = i24 + 1;
        f25994h0 = i24;
        int i25 = f25970J;
        f25970J = i25 + 1;
        f25995i0 = i25;
        int i26 = f25970J;
        f25970J = i26 + 1;
        f25996j0 = i26;
        int i27 = f25970J;
        f25970J = i27 + 1;
        f25997k0 = i27;
        int i28 = f25970J;
        f25970J = i28 + 1;
        f25998l0 = i28;
        int i29 = f25970J;
        f25970J = i29 + 1;
        f25999m0 = i29;
        int i30 = f25970J;
        f25970J = i30 + 1;
        f26000n0 = i30;
    }

    /* renamed from: S */
    public static final String m8925S() {
        return f25969I + " AND " + NotificationCompat.CarExtender.KEY_MESSAGES + MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM + "conversation_id=? AND " + NotificationCompat.CarExtender.KEY_MESSAGES + MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM + "message_status IN (8,106) AND " + NotificationCompat.CarExtender.KEY_MESSAGES + MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM + "seen = 0) GROUP BY parts.message_id ORDER BY messages.received_timestamp DESC";
    }

    /* renamed from: T */
    public static final String m8924T() {
        return f25969I + " AND " + NotificationCompat.CarExtender.KEY_MESSAGES + MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM + "conversation_id=? AND " + NotificationCompat.CarExtender.KEY_MESSAGES + MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM + "message_status != -1) GROUP BY parts.message_id ORDER BY messages.received_timestamp DESC";
    }

    /* renamed from: U */
    public static final String m8923U() {
        return f25969I + " AND " + NotificationCompat.CarExtender.KEY_MESSAGES + MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM + "conversation_id=? AND " + NotificationCompat.CarExtender.KEY_MESSAGES + MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM + "message_status != -1 AND (" + NotificationCompat.CarExtender.KEY_MESSAGES + MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM + "message_filter_type=0 OR " + NotificationCompat.CarExtender.KEY_MESSAGES + MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM + "message_filter_type=1)) GROUP BY parts.message_id ORDER BY messages.received_timestamp DESC";
    }

    /* renamed from: V */
    public static final String m8922V() {
        return f25969I + " AND " + NotificationCompat.CarExtender.KEY_MESSAGES + MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM + "conversation_id=? AND " + NotificationCompat.CarExtender.KEY_MESSAGES + MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM + "message_status != -1 AND " + NotificationCompat.CarExtender.KEY_MESSAGES + MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM + "message_filter_type=2) GROUP BY parts.message_id ORDER BY messages.received_timestamp DESC";
    }

    /* renamed from: W */
    public static String[] m8921W() {
        return f26001o0;
    }

    /* renamed from: X */
    public static final String m8920X() {
        return f25969I + " AND " + NotificationCompat.CarExtender.KEY_MESSAGES + MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM + "conversation_id=? AND message_status IN (2" + UserProfile.CARD_CATE_SEPARATOR + 1 + UserProfile.CARD_CATE_SEPARATOR + 4 + UserProfile.CARD_CATE_SEPARATOR + 5 + UserProfile.CARD_CATE_SEPARATOR + 6 + UserProfile.CARD_CATE_SEPARATOR + 7 + UserProfile.CARD_CATE_SEPARATOR + 100 + UserProfile.CARD_CATE_SEPARATOR + "101)) GROUP BY parts.message_id ORDER BY messages.received_timestamp DESC";
    }

    /* renamed from: a */
    public static MessagePartData m8914a(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        if (C12205r.m6806g(str2)) {
            MessagePartData c = MessagePartData.m27568c(str6);
            c.m27571b(str);
            c.m27577a(str7);
            return c;
        }
        MessagePartData a = MessagePartData.m27576a(str2, Uri.parse(str3), Integer.parseInt(str4), Integer.parseInt(str5));
        a.m27571b(str);
        a.m27577a(str7);
        return a;
    }

    /* renamed from: a */
    public static final String m8916a(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(f25969I);
        sb.append(TextUtils.isEmpty(str) ? "" : " AND messages.conversation_id=?");
        sb.append(" AND (");
        sb.append("message_status");
        sb.append(" in (");
        sb.append(100);
        sb.append(UserProfile.CARD_CATE_SEPARATOR);
        sb.append(101);
        sb.append(") AND ");
        sb.append("seen");
        sb.append(" = 0))");
        sb.append(" GROUP BY parts.message_id ORDER BY messages.received_timestamp DESC");
        return sb.toString();
    }

    /* renamed from: a */
    public static String m8913a(String str, boolean z, String str2) {
        String c = m8905c(m8903d(str));
        String b = z ? m8908b(m8901e(c)) : m8908b(c);
        return "CASE WHEN (count(parts._id)>1) THEN " + b + " ELSE " + m8903d(str) + " END AS " + str2;
    }

    /* renamed from: a */
    public static List<MessagePartData> m8915a(String str, String str2, String str3, String str4, String str5, String str6, int i, String str7) {
        LinkedList linkedList = new LinkedList();
        if (i == 1) {
            linkedList.add(m8914a(str, str2, str3, str4, str5, str6, str7));
        } else {
            m8911a(linkedList, m8897g(str), m8899f(str2), m8899f(str3), m8897g(str4), m8897g(str5), m8899f(str6), i, str7);
        }
        return linkedList;
    }

    /* renamed from: a */
    public static void m8912a(ArrayList<String> arrayList, StringBuilder sb) {
        if (sb.length() > 0) {
            arrayList.add(sb.toString());
        } else {
            arrayList.add("");
        }
    }

    /* renamed from: a */
    public static void m8911a(List<MessagePartData> list, String[] strArr, String[] strArr2, String[] strArr3, String[] strArr4, String[] strArr5, String[] strArr6, int i, String str) {
        C12151d.m7012a(i, strArr.length);
        C12151d.m7012a(i, strArr2.length);
        C12151d.m7012a(i, strArr3.length);
        C12151d.m7012a(i, strArr4.length);
        C12151d.m7012a(i, strArr5.length);
        C12151d.m7012a(i, strArr6.length);
        for (int i2 = 0; i2 < i; i2++) {
            list.add(m8914a(strArr[i2], strArr2[i2], strArr3[i2], strArr4[i2], strArr5[i2], strArr6[i2], str));
        }
        if (list.size() != i) {
            C12153d0.m6979f("MessagingApp", "Only unpacked " + list.size() + " parts from message (id=" + str + "), expected " + i + " parts");
        }
    }

    /* renamed from: b */
    public static String m8908b(String str) {
        return "group_concat(" + str + ", '|')";
    }

    /* renamed from: c */
    public static String m8905c(String str) {
        return "ifnull(" + str + ",'')";
    }

    /* renamed from: d */
    public static String m8903d(String str) {
        return "parts." + str;
    }

    /* renamed from: e */
    public static String m8901e(String str) {
        return "quote(" + str + ")";
    }

    /* renamed from: f */
    public static String[] m8899f(String str) {
        String[] strArr;
        if (TextUtils.isEmpty(str)) {
            return new String[0];
        }
        synchronized (f25967G) {
            int length = str.length();
            ArrayList<String> arrayList = f25966F;
            arrayList.clear();
            int i = -1;
            while (true) {
                int i2 = i + 1;
                if (i2 < length) {
                    C12151d.m6999b(f25964D.charValue() == str.charAt(i2));
                    while (true) {
                        int i3 = i2 + 1;
                        i = i3;
                        if (i3 < length) {
                            char charAt = str.charAt(i3);
                            i2 = i3;
                            if (charAt == f25964D.charValue()) {
                                char charAt2 = i3 < length - 1 ? str.charAt(i3 + 1) : (char) 0;
                                if (charAt2 == f25964D.charValue()) {
                                    i2 = i3 + 1;
                                } else {
                                    m8912a(arrayList, f25965E);
                                    f25965E.setLength(0);
                                    boolean z = true;
                                    if (charAt2 != '|') {
                                        z = charAt2 == 0;
                                    }
                                    C12151d.m6999b(z);
                                    i = i3 + 1;
                                }
                            }
                            f25965E.append(charAt);
                        }
                    }
                } else {
                    strArr = (String[]) arrayList.toArray(new String[arrayList.size()]);
                }
            }
        }
        return strArr;
    }

    /* renamed from: g */
    public static String[] m8897g(String str) {
        return TextUtils.isEmpty(str) ? new String[0] : str.split("\\|");
    }

    /* renamed from: A */
    public Uri m8943A() {
        if (this.f26026v <= -1 || TextUtils.isEmpty(this.f26027w)) {
            return null;
        }
        return ContactsContract.Contacts.getLookupUri(this.f26026v, this.f26027w);
    }

    /* renamed from: B */
    public String m8942B() {
        return this.f26023s;
    }

    /* renamed from: C */
    public String m8941C() {
        return !TextUtils.isEmpty(this.f26021q) ? this.f26021q : !TextUtils.isEmpty(this.f26022r) ? this.f26022r : this.f26023s;
    }

    /* renamed from: D */
    public String m8940D() {
        return this.f26022r;
    }

    /* renamed from: E */
    public String m8939E() {
        return this.f26021q;
    }

    /* renamed from: F */
    public String m8938F() {
        return this.f26024t;
    }

    /* renamed from: G */
    public Uri m8937G() {
        String str = this.f26025u;
        return str == null ? null : Uri.parse(str);
    }

    /* renamed from: H */
    public final long m8936H() {
        return this.f26010f;
    }

    /* renamed from: I */
    public boolean m8935I() {
        return MessageData.m27607c(this.f26014j);
    }

    /* renamed from: J */
    public boolean m8934J() {
        return MessageData.m27604d(this.f26014j);
    }

    /* renamed from: K */
    public final int m8933K() {
        return this.f26017m;
    }

    /* renamed from: L */
    public final String m8932L() {
        return this.f26015k;
    }

    /* renamed from: M */
    public final int m8931M() {
        return this.f26016l;
    }

    /* renamed from: N */
    public final int m8930N() {
        return this.f26014j;
    }

    /* renamed from: O */
    public String m8929O() {
        StringBuilder sb = null;
        String str = null;
        String str2 = null;
        boolean z = false;
        for (MessagePartData messagePartData : this.f26009e) {
            if (messagePartData.m27558z()) {
                if (!z) {
                    str = messagePartData.m27563u();
                    z = true;
                } else {
                    StringBuilder sb2 = sb;
                    String str3 = str2;
                    if (sb == null) {
                        sb2 = new StringBuilder();
                        if (!TextUtils.isEmpty(str)) {
                            sb2.append(str);
                        }
                        AbstractC12170i.m6941a().mo6917a("bugle_mms_text_concat_separator", " ");
                        str3 = " ";
                    }
                    String u = messagePartData.m27563u();
                    sb = sb2;
                    str2 = str3;
                    if (!TextUtils.isEmpty(u)) {
                        if (!TextUtils.isEmpty(str3) && sb2.length() > 0) {
                            sb2.append(str3);
                        }
                        sb2.append(u);
                        sb = sb2;
                        str2 = str3;
                    }
                }
            }
        }
        return sb == null ? str : sb.toString();
    }

    /* renamed from: P */
    public boolean m8928P() {
        for (MessagePartData messagePartData : this.f26009e) {
            if (messagePartData.m27562v()) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: Q */
    public boolean m8927Q() {
        int i = this.f26014j;
        return i == 107 || i == 106;
    }

    /* renamed from: R */
    public boolean m8926R() {
        for (MessagePartData messagePartData : this.f26009e) {
            if (messagePartData.m27558z()) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    public List<MessagePartData> m8917a(AbstractC9302l<MessagePartData> lVar) {
        if (this.f26009e.isEmpty()) {
            return Collections.emptyList();
        }
        LinkedList linkedList = new LinkedList();
        for (MessagePartData messagePartData : this.f26009e) {
            if (messagePartData.m27562v() && (lVar == null || lVar.apply(messagePartData))) {
                linkedList.add(messagePartData);
            }
        }
        return linkedList;
    }

    /* renamed from: a */
    public void m8918a(Cursor cursor) {
        this.f26005a = cursor.getString(f25971K);
        this.f26006b = cursor.getString(f25972L);
        this.f26007c = cursor.getString(f25973M);
        this.f26008d = cursor.getInt(f25980T);
        this.f26009e = m8915a(cursor.getString(f25974N), cursor.getString(f25975O), cursor.getString(f25976P), cursor.getString(f25977Q), cursor.getString(f25978R), cursor.getString(f25979S), this.f26008d, this.f26005a);
        this.f26010f = cursor.getLong(f25981U);
        this.f26011g = cursor.getLong(f25982V);
        boolean z = true;
        this.f26012h = cursor.getInt(f25983W) != 0;
        cursor.getInt(f25984X);
        this.f26013i = cursor.getInt(f25985Y);
        this.f26014j = cursor.getInt(f25986Z);
        this.f26015k = cursor.getString(f25987a0);
        this.f26016l = cursor.getInt(f25988b0);
        this.f26017m = cursor.getInt(f25989c0);
        this.f26018n = cursor.getString(f25990d0);
        this.f26019o = cursor.getLong(f25991e0);
        this.f26020p = cursor.getInt(f25992f0);
        this.f26021q = cursor.getString(f25994h0);
        this.f26022r = cursor.getString(f25995i0);
        this.f26023s = cursor.getString(f25996j0);
        this.f26024t = cursor.getString(f25997k0);
        this.f26025u = cursor.getString(f25998l0);
        this.f26026v = cursor.getLong(f25999m0);
        this.f26027w = cursor.getString(f26000n0);
        this.f26028x = cursor.getString(f25993g0);
        if (cursor.isFirst() || !cursor.moveToPrevious()) {
            this.f26002A = false;
        } else {
            this.f26002A = m8909b(cursor);
            this.f26004C = m8906c(cursor);
            cursor.moveToNext();
        }
        if (cursor.isLast() || !cursor.moveToNext()) {
            this.f26003B = false;
        } else {
            this.f26003B = m8909b(cursor);
            cursor.moveToPrevious();
        }
        if (m8892l() || !m8926R() || !m8893k() || !C12810o.m5235j()) {
            z = false;
        }
        this.f26030z = z;
    }

    /* renamed from: a */
    public boolean m8919a() {
        return this.f26030z;
    }

    /* renamed from: b */
    public List<MessagePartData> m8910b() {
        return m8917a((AbstractC9302l<MessagePartData>) null);
    }

    /* renamed from: b */
    public final boolean m8909b(Cursor cursor) {
        if (!TextUtils.equals(m8884t(), cursor.getString(f25973M))) {
            return false;
        }
        if (m8893k() != (cursor.getInt(f25986Z) >= 100)) {
            return false;
        }
        if (Math.abs(this.f26011g - cursor.getLong(f25982V)) > 60000) {
            return false;
        }
        if (!TextUtils.equals(m8880x(), cursor.getString(f25993g0))) {
        }
        return false;
    }

    /* renamed from: c */
    public boolean m8907c() {
        return this.f26003B;
    }

    /* renamed from: c */
    public final boolean m8906c(Cursor cursor) {
        cursor.getString(f25973M);
        boolean z = true;
        if (m8893k() != (cursor.getInt(f25986Z) >= 100)) {
            z = false;
        }
        return z;
    }

    /* renamed from: d */
    public boolean m8904d() {
        return this.f26002A;
    }

    /* renamed from: e */
    public boolean m8902e() {
        return this.f26004C;
    }

    /* renamed from: f */
    public boolean m8900f() {
        return m8926R() && (!m8893k() || this.f26014j == 100);
    }

    /* renamed from: g */
    public boolean m8898g() {
        int i = this.f26014j;
        boolean z = true;
        if (i != 1) {
            z = i == 100;
        }
        return z;
    }

    /* renamed from: h */
    public final String m8896h() {
        return this.f26006b;
    }

    /* renamed from: i */
    public final String m8895i() {
        return C12217u.m6740b(this.f26011g).toString();
    }

    /* renamed from: j */
    public boolean m8894j() {
        return this.f26029y;
    }

    /* renamed from: k */
    public boolean m8893k() {
        return this.f26014j >= 100;
    }

    /* renamed from: l */
    public final boolean m8892l() {
        int i = this.f26013i;
        boolean z = true;
        if (i != 1) {
            z = i == 2;
        }
        return z;
    }

    /* renamed from: m */
    public final boolean m8891m() {
        return this.f26013i == 2;
    }

    /* renamed from: n */
    public final boolean m8890n() {
        return this.f26012h;
    }

    /* renamed from: o */
    public boolean m8889o() {
        boolean z = true;
        if (this.f26014j != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: p */
    public final boolean m8888p() {
        return this.f26013i == 0;
    }

    /* renamed from: q */
    public final String m8887q() {
        return this.f26005a;
    }

    /* renamed from: r */
    public final long m8886r() {
        return this.f26019o;
    }

    /* renamed from: s */
    public final String m8885s() {
        return this.f26018n;
    }

    /* renamed from: t */
    public final String m8884t() {
        return this.f26007c;
    }

    public String toString() {
        return MessageData.m27614a(this.f26005a, this.f26009e);
    }

    /* renamed from: u */
    public List<MessagePartData> m8883u() {
        return this.f26009e;
    }

    /* renamed from: v */
    public final int m8882v() {
        return this.f26020p;
    }

    /* renamed from: w */
    public final long m8881w() {
        return this.f26011g;
    }

    /* renamed from: x */
    public final String m8880x() {
        return this.f26028x;
    }

    /* renamed from: y */
    public long m8879y() {
        return this.f26026v;
    }

    /* renamed from: z */
    public String m8878z() {
        return this.f26027w;
    }
}
