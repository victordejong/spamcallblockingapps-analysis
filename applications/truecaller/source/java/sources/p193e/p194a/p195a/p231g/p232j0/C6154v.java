package p193e.p194a.p195a.p231g.p232j0;

import android.database.Cursor;
import android.database.SQLException;
import android.net.Uri;
import com.huawei.updatesdk.service.otaupdate.UpdateKey;
import com.truecaller.blocking.ActionSource;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.messaging.data.types.BackupTransportInfo;
import com.truecaller.messaging.data.types.Message;
import com.truecaller.messaging.data.types.QuickAction;
import com.truecaller.messaging.data.types.Reaction;
import com.truecaller.messaging.data.types.ReplySnippet;
import com.truecaller.messaging.data.types.TransportInfo;
import com.truecaller.messaging.transport.NullTransportInfo;
import com.truecaller.messaging.transport.history.HistoryTransportInfo;
import com.truecaller.messaging.transport.mms.MmsTransportInfo;
import com.truecaller.messaging.transport.p170im.ImTransportInfo;
import com.truecaller.messaging.transport.sms.SmsTransportInfo;
import com.truecaller.messaging.transport.status.StatusTransportInfo;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p195a.p231g.C6111e;
import s1.f0.v;
import s1.z.c.l;
/* renamed from: e.a.a.g.j0.v */
/* loaded from: classes7-dex2jar.jar:e/a/a/g/j0/v.class */
public class C6154v extends C6111e implements AbstractC6149q {

    /* renamed from: A */
    public final int f20587A;

    /* renamed from: A0 */
    public final int f20588A0;

    /* renamed from: B */
    public final int f20589B;

    /* renamed from: B0 */
    public final int f20590B0;

    /* renamed from: C */
    public final int f20591C;

    /* renamed from: C0 */
    public final int f20592C0;

    /* renamed from: D */
    public final int f20593D;

    /* renamed from: D0 */
    public final int f20594D0;

    /* renamed from: E */
    public final int f20595E;

    /* renamed from: E0 */
    public final int f20596E0;

    /* renamed from: F0 */
    public final int f20597F0;

    /* renamed from: G0 */
    public final int f20598G0;

    /* renamed from: H0 */
    public final int f20599H0;

    /* renamed from: I0 */
    public final int f20600I0;

    /* renamed from: J */
    public final int f20601J;

    /* renamed from: J0 */
    public final int f20602J0;

    /* renamed from: K */
    public final int f20603K;

    /* renamed from: K0 */
    public final int f20604K0;

    /* renamed from: L */
    public final int f20605L;

    /* renamed from: L0 */
    public final int f20606L0;

    /* renamed from: M */
    public final int f20607M;

    /* renamed from: M0 */
    public final int f20608M0;

    /* renamed from: N */
    public final int f20609N;

    /* renamed from: N0 */
    public final int f20610N0;

    /* renamed from: O */
    public final int f20611O;

    /* renamed from: O0 */
    public final int f20612O0;

    /* renamed from: P */
    public final int f20613P;

    /* renamed from: P0 */
    public final int f20614P0;

    /* renamed from: Q */
    public final int f20615Q;

    /* renamed from: Q0 */
    public final int f20616Q0;

    /* renamed from: R */
    public final int f20617R;

    /* renamed from: R0 */
    public final int f20618R0;

    /* renamed from: S */
    public final int f20619S;

    /* renamed from: S0 */
    public final int f20620S0;

    /* renamed from: T */
    public final int f20621T;

    /* renamed from: T0 */
    public final int f20622T0;

    /* renamed from: U */
    public final int f20623U;

    /* renamed from: U0 */
    public final int f20624U0;

    /* renamed from: V */
    public final int f20625V;

    /* renamed from: V0 */
    public final int f20626V0;

    /* renamed from: W */
    public final int f20627W;

    /* renamed from: W0 */
    public Message f20628W0;

    /* renamed from: X */
    public final int f20629X;

    /* renamed from: X0 */
    public int f20630X0 = -1;

    /* renamed from: Y */
    public final int f20631Y;

    /* renamed from: Z */
    public final int f20632Z;

    /* renamed from: a */
    public final int f20633a;

    /* renamed from: b */
    public final int f20634b;

    /* renamed from: c */
    public final int f20635c;

    /* renamed from: d */
    public final int f20636d;

    /* renamed from: e */
    public final int f20637e;

    /* renamed from: f */
    public final int f20638f;

    /* renamed from: g */
    public final int f20639g;

    /* renamed from: g0 */
    public final int f20640g0;

    /* renamed from: h */
    public final int f20641h;

    /* renamed from: h0 */
    public final int f20642h0;

    /* renamed from: i */
    public final int f20643i;

    /* renamed from: i0 */
    public final int f20644i0;

    /* renamed from: j */
    public final int f20645j;

    /* renamed from: j0 */
    public final int f20646j0;

    /* renamed from: k */
    public final int f20647k;

    /* renamed from: k0 */
    public final int f20648k0;

    /* renamed from: l */
    public final int f20649l;

    /* renamed from: l0 */
    public final int f20650l0;

    /* renamed from: m */
    public final int f20651m;

    /* renamed from: m0 */
    public final int f20652m0;

    /* renamed from: n */
    public final int f20653n;

    /* renamed from: n0 */
    public final int f20654n0;

    /* renamed from: o */
    public final int f20655o;

    /* renamed from: o0 */
    public final int f20656o0;

    /* renamed from: p */
    public final int f20657p;

    /* renamed from: p0 */
    public final int f20658p0;

    /* renamed from: q */
    public final int f20659q;

    /* renamed from: q0 */
    public final int f20660q0;

    /* renamed from: r */
    public final int f20661r;

    /* renamed from: r0 */
    public final int f20662r0;

    /* renamed from: s */
    public final int f20663s;

    /* renamed from: s0 */
    public final int f20664s0;

    /* renamed from: t */
    public final int f20665t;

    /* renamed from: t0 */
    public final int f20666t0;

    /* renamed from: u */
    public final int f20667u;

    /* renamed from: u0 */
    public final int f20668u0;

    /* renamed from: v */
    public final int f20669v;

    /* renamed from: v0 */
    public final int f20670v0;

    /* renamed from: w */
    public final int f20671w;

    /* renamed from: w0 */
    public final int f20672w0;

    /* renamed from: x */
    public final int f20673x;

    /* renamed from: x0 */
    public final int f20674x0;

    /* renamed from: y */
    public final int f20675y;

    /* renamed from: y0 */
    public final int f20676y0;

    /* renamed from: z */
    public final int f20677z;

    /* renamed from: z0 */
    public final int f20678z0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6154v(Cursor cursor) {
        super(cursor);
        l.e(cursor, "cursor");
        this.f20633a = cursor.getColumnIndexOrThrow("_id");
        this.f20634b = cursor.getColumnIndexOrThrow("conversation_id");
        this.f20635c = cursor.getColumnIndexOrThrow("date");
        this.f20636d = cursor.getColumnIndexOrThrow("date_sent");
        this.f20637e = cursor.getColumnIndexOrThrow("send_schedule_date");
        this.f20638f = cursor.getColumnIndexOrThrow(UpdateKey.STATUS);
        this.f20639g = cursor.getColumnIndexOrThrow("seen");
        this.f20641h = cursor.getColumnIndexOrThrow("read");
        this.f20643i = cursor.getColumnIndexOrThrow("locked");
        this.f20645j = cursor.getColumnIndexOrThrow("transport");
        this.f20647k = cursor.getColumnIndexOrThrow("scheduled_transport");
        this.f20649l = cursor.getColumnIndexOrThrow("sim_token");
        this.f20651m = cursor.getColumnIndexOrThrow("raw_address");
        this.f20653n = cursor.getColumnIndexOrThrow("retry_count");
        this.f20655o = cursor.getColumnIndexOrThrow("retry_date");
        this.f20657p = cursor.getColumnIndexOrThrow("reply_to_msg_id");
        this.f20659q = cursor.getColumnIndexOrThrow("sequence_number");
        this.f20661r = cursor.getColumnIndexOrThrow("analytics_id");
        this.f20663s = cursor.getColumnIndexOrThrow("analytics_context");
        this.f20665t = cursor.getColumnIndexOrThrow("category");
        this.f20667u = cursor.getColumnIndexOrThrow("classification");
        this.f20669v = cursor.getColumnIndexOrThrow("raw_id");
        this.f20671w = cursor.getColumnIndexOrThrow("group_id_day");
        this.f20673x = cursor.getColumnIndexOrThrow("group_id_minute");
        this.f20675y = cursor.getColumnIndexOrThrow("important");
        this.f20677z = cursor.getColumnIndexOrThrow("important_date");
        this.f20587A = cursor.getColumnIndexOrThrow("hidden_number");
        this.f20589B = cursor.getColumnIndexOrThrow("language");
        this.f20591C = cursor.getColumnIndexOrThrow("edit_message_id");
        this.f20593D = cursor.getColumnIndexOrThrow("edit_message_date");
        this.f20595E = cursor.getColumnIndexOrThrow("info1");
        this.f20601J = cursor.getColumnIndexOrThrow("info2");
        this.f20603K = cursor.getColumnIndexOrThrow("info3");
        this.f20605L = cursor.getColumnIndexOrThrow("info4");
        this.f20607M = cursor.getColumnIndexOrThrow("info5");
        this.f20609N = cursor.getColumnIndexOrThrow("info6");
        this.f20611O = cursor.getColumnIndexOrThrow("info7");
        this.f20613P = cursor.getColumnIndexOrThrow("info8");
        this.f20615Q = cursor.getColumnIndexOrThrow("info9");
        this.f20617R = cursor.getColumnIndexOrThrow("info10");
        this.f20619S = cursor.getColumnIndexOrThrow("info1");
        this.f20621T = cursor.getColumnIndexOrThrow("info2");
        this.f20623U = cursor.getColumnIndexOrThrow("info3");
        this.f20625V = cursor.getColumnIndexOrThrow("info20");
        this.f20627W = cursor.getColumnIndexOrThrow("info13");
        this.f20629X = cursor.getColumnIndexOrThrow("info6");
        this.f20631Y = cursor.getColumnIndexOrThrow("info7");
        this.f20632Z = cursor.getColumnIndexOrThrow("info12");
        this.f20640g0 = cursor.getColumnIndexOrThrow("info14");
        this.f20642h0 = cursor.getColumnIndexOrThrow("info15");
        this.f20644i0 = cursor.getColumnIndexOrThrow("info22");
        this.f20646j0 = cursor.getColumnIndexOrThrow("info16");
        this.f20648k0 = cursor.getColumnIndexOrThrow("info17");
        this.f20650l0 = cursor.getColumnIndexOrThrow("info21");
        this.f20652m0 = cursor.getColumnIndexOrThrow("info5");
        this.f20654n0 = cursor.getColumnIndexOrThrow("info23");
        this.f20656o0 = cursor.getColumnIndexOrThrow("info24");
        this.f20658p0 = cursor.getColumnIndexOrThrow("info4");
        this.f20660q0 = cursor.getColumnIndexOrThrow("info8");
        this.f20662r0 = cursor.getColumnIndexOrThrow("info9");
        this.f20664s0 = cursor.getColumnIndexOrThrow("info10");
        this.f20666t0 = cursor.getColumnIndexOrThrow("info11");
        this.f20668u0 = cursor.getColumnIndexOrThrow("info18");
        this.f20670v0 = cursor.getColumnIndexOrThrow("info19");
        this.f20672w0 = cursor.getColumnIndexOrThrow("info25");
        this.f20674x0 = cursor.getColumnIndexOrThrow("info26");
        this.f20676y0 = cursor.getColumnIndexOrThrow("info27");
        this.f20678z0 = cursor.getColumnIndexOrThrow("info5");
        this.f20588A0 = cursor.getColumnIndexOrThrow("info1");
        this.f20590B0 = cursor.getColumnIndexOrThrow("info2");
        this.f20592C0 = cursor.getColumnIndexOrThrow("info4");
        this.f20594D0 = cursor.getColumnIndexOrThrow("info6");
        this.f20596E0 = cursor.getColumnIndexOrThrow("info7");
        this.f20597F0 = cursor.getColumnIndexOrThrow("info8");
        this.f20598G0 = cursor.getColumnIndexOrThrow("info9");
        this.f20599H0 = cursor.getColumnIndexOrThrow("info10");
        this.f20600I0 = cursor.getColumnIndexOrThrow("info12");
        this.f20602J0 = cursor.getColumnIndexOrThrow("info13");
        this.f20604K0 = cursor.getColumnIndexOrThrow("info14");
        this.f20606L0 = cursor.getColumnIndexOrThrow("info15");
        this.f20608M0 = cursor.getColumnIndexOrThrow("info16");
        this.f20610N0 = cursor.getColumnIndexOrThrow("info17");
        this.f20612O0 = cursor.getColumnIndexOrThrow("info18");
        this.f20614P0 = cursor.getColumnIndexOrThrow("info19");
        this.f20616Q0 = cursor.getColumnIndexOrThrow("info20");
        this.f20618R0 = cursor.getColumnIndexOrThrow("info21");
        this.f20620S0 = cursor.getColumnIndexOrThrow("info2");
        this.f20622T0 = cursor.getColumnIndexOrThrow("info3");
        this.f20624U0 = cursor.getColumnIndexOrThrow("info1");
        cursor.getColumnIndexOrThrow("info4");
        this.f20626V0 = cursor.getColumnIndexOrThrow("info5");
    }

    @Override // p193e.p194a.p195a.p231g.p232j0.AbstractC6149q
    /* renamed from: C1 */
    public long mo31739C1() {
        return getLong(this.f20635c);
    }

    /* renamed from: E */
    public Participant mo31734E() {
        Participant participant = Participant.f11566B;
        l.d(participant, "Participant.EMPTY");
        return participant;
    }

    /* renamed from: I */
    public ReplySnippet mo31733I(long j) {
        return null;
    }

    @Override // p193e.p194a.p195a.p231g.p232j0.AbstractC6149q
    /* renamed from: R0 */
    public int mo31738R0() {
        return getInt(this.f20645j);
    }

    /* renamed from: d */
    public void mo31731d(Message.C4209b c4209b) {
        l.e(c4209b, "builder");
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x023b, code lost:
        if (getInt(r8.f20647k) == 2) goto L37;
     */
    @Override // p193e.p194a.p195a.p231g.p232j0.AbstractC6149q
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.truecaller.messaging.data.types.Message getMessage() throws android.database.SQLException {
        /*
            Method dump skipped, instructions count: 726
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p231g.p232j0.C6154v.getMessage():com.truecaller.messaging.data.types.Message");
    }

    @Override // p193e.p194a.p195a.p231g.p232j0.AbstractC6149q
    public int getStatus() {
        return getInt(this.f20638f);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p195a.p231g.p232j0.AbstractC6149q
    /* renamed from: h0 */
    public TransportInfo mo31737h0() {
        BackupTransportInfo backupTransportInfo;
        Reaction[] reactionArr;
        int i;
        QuickAction[] quickActionArr;
        Reaction[] reactionArr2;
        QuickAction[] quickActionArr2;
        long j = getLong(this.f20633a);
        int i2 = getInt(this.f20645j);
        boolean z = true;
        String str = "";
        switch (i2) {
            case 0:
                String string = getString(this.f20603K);
                l.d(string, "getString(smsMessageUri)");
                if (string.length() == 0) {
                    throw new SQLException("Empty message uri");
                }
                SmsTransportInfo.C4266b c4266b = new SmsTransportInfo.C4266b();
                c4266b.f13876b = getLong(this.f20669v);
                c4266b.f13875a = j;
                c4266b.f13877c = getInt(this.f20601J);
                c4266b.f13878d = getLong(this.f20595E);
                c4266b.f13879e = Uri.parse(string);
                c4266b.f13880f = getInt(this.f20605L);
                c4266b.f13881g = getInt(this.f20607M);
                c4266b.f13882h = getString(this.f20609N);
                c4266b.f13885k = getString(this.f20611O);
                c4266b.f13883i = getInt(this.f20613P);
                c4266b.f13884j = getInt(this.f20615Q) != 0;
                c4266b.f13886l = getString(this.f20617R);
                SmsTransportInfo m34886a = c4266b.m34886a();
                l.d(m34886a, "SmsTransportInfo.Builder…ss))\n            .build()");
                backupTransportInfo = m34886a;
                break;
            case 1:
                String string2 = getString(this.f20623U);
                l.d(string2, "getString(mmsMessageUri)");
                if (string2.length() == 0) {
                    throw new SQLException("Empty message uri");
                }
                MmsTransportInfo.C4261b c4261b = new MmsTransportInfo.C4261b();
                c4261b.f13818b = getLong(this.f20669v);
                c4261b.f13817a = j;
                c4261b.f13819c = getInt(this.f20621T);
                c4261b.f13820d = getLong(this.f20619S);
                c4261b.f13821e = Uri.parse(string2);
                c4261b.f13837u = getString(this.f20625V);
                c4261b.f13832p = getString(this.f20627W);
                String string3 = getString(this.f20629X);
                int i3 = getInt(this.f20631Y);
                c4261b.f13823g = string3;
                c4261b.f13824h = i3;
                c4261b.m34898c(getLong(this.f20640g0));
                c4261b.f13834r = getInt(this.f20642h0);
                c4261b.f13840x = getInt(this.f20644i0);
                c4261b.f13835s = getInt(this.f20646j0);
                c4261b.f13836t = getInt(this.f20648k0);
                c4261b.f13838v = getInt(this.f20650l0);
                c4261b.f13839w = getInt(this.f20652m0);
                c4261b.f13841y = getInt(this.f20654n0);
                c4261b.f13842z = getLong(this.f20656o0);
                c4261b.f13822f = getInt(this.f20658p0);
                c4261b.f13828l = getString(this.f20664s0);
                c4261b.f13829m = getInt(this.f20666t0);
                c4261b.f13830n = getString(this.f20668u0);
                c4261b.f13831o = getString(this.f20670v0);
                c4261b.f13812A = getInt(this.f20672w0);
                c4261b.f13813B = getInt(this.f20674x0);
                if (getInt(this.f20676y0) == 0) {
                    z = false;
                }
                c4261b.f13814C = z;
                l.d(c4261b, "MmsTransportInfo.Builder…t(mmsReportAllowed) != 0)");
                if (!isNull(this.f20629X)) {
                    String string4 = getString(this.f20629X);
                    int i4 = getInt(this.f20631Y);
                    c4261b.f13823g = string4;
                    c4261b.f13824h = i4;
                }
                if (!isNull(this.f20660q0)) {
                    String string5 = getString(this.f20660q0);
                    int i5 = getInt(this.f20662r0);
                    c4261b.f13825i = string5;
                    c4261b.f13826j = i5;
                }
                if (!isNull(this.f20632Z)) {
                    c4261b.f13827k = Uri.parse(getString(this.f20632Z));
                }
                MmsTransportInfo m34899b = c4261b.m34899b();
                l.d(m34899b, "builder.build()");
                backupTransportInfo = m34899b;
                break;
            case 2:
                String string6 = getString(this.f20669v);
                if (string6 == null) {
                    string6 = "";
                }
                l.e(string6, "rawId");
                int i6 = getInt(this.f20678z0);
                int i7 = getInt(this.f20588A0);
                int i8 = getInt(this.f20590B0);
                int i9 = getInt(this.f20592C0);
                int i10 = getInt(this.f20594D0);
                int i11 = getInt(this.f20596E0);
                long j2 = getLong(this.f20597F0);
                String string7 = getString(this.f20598G0);
                String str2 = "null cannot be cast to non-null type kotlin.Array<T>";
                if (string7 != null) {
                    List<String> T = v.T(string7, new char[]{'|'}, false, 0, 6);
                    ArrayList arrayList = new ArrayList(C25225a.m4004J(T, 10));
                    for (String str3 : T) {
                        arrayList.add(new Reaction(-1L, j, "", str3, -1L, -1, 0L, null, 192));
                    }
                    Object[] array = arrayList.toArray(new Reaction[0]);
                    Objects.requireNonNull(array, str2);
                    reactionArr = (Reaction[]) array;
                    i = 0;
                } else {
                    str2 = "null cannot be cast to non-null type kotlin.Array<T>";
                    i = 0;
                    reactionArr = null;
                }
                List m3892i3 = reactionArr != null ? C25225a.m3892i3(reactionArr) : null;
                long j3 = getLong(this.f20599H0);
                int i12 = getInt(this.f20600I0);
                int i13 = getInt(this.f20608M0);
                String string8 = getString(this.f20610N0);
                String string9 = getString(this.f20616Q0);
                if (string9 != null) {
                    char[] cArr = new char[1];
                    cArr[i] = (char) 124;
                    List<String> T2 = v.T(string9, cArr, i, i, 6);
                    ArrayList arrayList2 = new ArrayList(C25225a.m4004J(T2, 10));
                    for (String str4 : T2) {
                        arrayList2.add(new QuickAction(-1L, j, 0, str4));
                    }
                    Object[] array2 = arrayList2.toArray(new QuickAction[i]);
                    Objects.requireNonNull(array2, str2);
                    quickActionArr = (QuickAction[]) array2;
                } else {
                    quickActionArr = null;
                }
                List m3892i32 = quickActionArr != null ? C25225a.m3892i3(quickActionArr) : null;
                int i14 = getInt(this.f20618R0);
                if (m3892i3 != null) {
                    Object[] array3 = m3892i3.toArray(new Reaction[i]);
                    Objects.requireNonNull(array3, str2);
                    reactionArr2 = (Reaction[]) array3;
                } else {
                    reactionArr2 = null;
                }
                if (m3892i32 != null) {
                    Object[] array4 = m3892i32.toArray(new QuickAction[i]);
                    Objects.requireNonNull(array4, str2);
                    quickActionArr2 = (QuickAction[]) array4;
                } else {
                    quickActionArr2 = null;
                }
                backupTransportInfo = new ImTransportInfo(j, string6, i6, i7, i8, 0, i9, i10, i11, j2, reactionArr2, j3, i12, i13, string8, quickActionArr2, i14, -1, null);
                break;
            case 3:
                NullTransportInfo.C4246b c4246b = new NullTransportInfo.C4246b();
                c4246b.f13679a = j;
                NullTransportInfo m34914a = c4246b.m34914a();
                l.d(m34914a, "NullTransportInfo.Builde…).setMesageId(id).build()");
                backupTransportInfo = m34914a;
                break;
            case 4:
                backupTransportInfo = new BackupTransportInfo(j);
                break;
            case 5:
                String string10 = getString(this.f20669v);
                l.d(string10, "getString(rawId)");
                backupTransportInfo = new HistoryTransportInfo(j, Long.parseLong(string10), getInt(this.f20624U0), getInt(this.f20620S0), getString(this.f20622T0), getInt(this.f20626V0), ActionSource.NONE.name());
                break;
            case 6:
                String string11 = getString(this.f20669v);
                if (string11 != null) {
                    str = string11;
                }
                backupTransportInfo = new StatusTransportInfo(j, str);
                break;
            case 7:
                backupTransportInfo = new BackupTransportInfo(j);
                break;
            default:
                throw new SQLException(C22128a.m8611i2("Unsupported transport type: ", i2));
        }
        return backupTransportInfo;
    }

    /* renamed from: j */
    public long mo31728j() {
        return 0L;
    }

    /* renamed from: k */
    public long mo31727k() {
        return 0L;
    }

    /* renamed from: l */
    public int mo31726l() {
        return 0;
    }

    /* renamed from: q */
    public int mo31725q() {
        return 0;
    }

    /* renamed from: s */
    public void mo31730s(Message.C4209b c4209b) {
        l.e(c4209b, "builder");
    }

    @Override // p193e.p194a.p195a.p231g.p232j0.AbstractC6149q
    /* renamed from: u */
    public long mo31736u() {
        return getLong(this.f20633a);
    }

    @Override // p193e.p194a.p195a.p231g.p232j0.AbstractC6149q
    /* renamed from: w1 */
    public long mo31735w1() {
        return getLong(this.f20634b);
    }
}
