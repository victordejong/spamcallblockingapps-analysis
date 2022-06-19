package p193e.p1681q.p1701f.p1702a.p1705e;

import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import e.q.f.a.c.b;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.TreeSet;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.C25223b;
import p193e.p1681q.p1701f.p1702a.p1705e.p1706b.C25229a;
import p193e.p1681q.p1701f.p1702a.p1705e.p1706b.C25230b;
import p193e.p1681q.p1701f.p1702a.p1705e.p1706b.C25232c;
import p193e.p1681q.p1701f.p1702a.p1705e.p1707c.C25233a;
import p193e.p1681q.p1701f.p1702a.p1705e.p1708d.C25234a;
import p193e.p1681q.p1701f.p1702a.p1705e.p1708d.C25235b;
import p193e.p1681q.p1701f.p1702a.p1705e.p1708d.C25236c;
import p193e.p1681q.p1701f.p1702a.p1705e.p1709e.C25238a;
import p193e.p1681q.p1701f.p1702a.p1705e.p1709e.C25239b;
import p193e.p1681q.p1701f.p1702a.p1705e.p1711g.C25244b;
import p193e.p1681q.p1701f.p1702a.p1713g.C25260d;
/* renamed from: e.q.f.a.e.a */
/* loaded from: classes16-dex2jar.jar:e/q/f/a/e/a.class */
public class C25228a {

    /* renamed from: a */
    public C25230b f70538a;

    /* renamed from: b */
    public C25233a f70539b;

    /* renamed from: c */
    public C25244b f70540c;

    /* renamed from: d */
    public C25239b f70541d;

    /* renamed from: e */
    public C25234a f70542e;

    /* renamed from: f */
    public C25236c f70543f = new C25236c();

    public C25228a(b bVar, b bVar2, C25238a c25238a, C25223b c25223b) {
        this.f70541d = new C25239b(c25238a);
        C25234a c25234a = new C25234a(null, null);
        this.f70542e = c25234a;
        this.f70539b = new C25233a(c25223b.f70524h, c25234a);
        this.f70540c = new C25244b(bVar2, this, c25223b);
        this.f70538a = new C25230b(bVar, this.f70542e, this);
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x032a, code lost:
        r0 = new java.util.HashMap();
        r0.put(com.razorpay.AnalyticsConstants.PAYMENT, 1);
        r0.put("pyt", 1);
        r0.put("pymt", 1);
        r0.put("pmnt", 1);
        r0.put("cash deposit", 2);
        r0.put("received", 2);
        r0.put("withdraw", 2);
        r0.put("debit", 2);
        r0.put("credit", 2);
        r0.put("deposit", 2);
        r0.put("debited", 2);
        r0.put("credited", 2);
        r0.put("deposited", 2);
        r0.put("charged", 2);
        r0.put("refunded", 2);
        r0.put("reversed", 2);
        r0.put("instalment", 2);
        r0.put("paid", 2);
        r0.put("dr", 2);
        r0.put("transaction", 1);
        r0.put("tranx", 1);
        r0.put("txn", 1);
        r0.put("trx", 1);
        r0.put("purchase", 1);
        r0 = r0.m3780b("TRANS").f70584f.toLowerCase();
        r0 = r0.f70584f.toLowerCase();
        r23 = (java.lang.String) r0.f70581c.b.get("type");
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x0477, code lost:
        if (r0.containsKey(r0) == false) goto L103;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x047a, code lost:
        r20 = ((java.lang.Integer) r0.get(r0)).intValue();
        r23 = (java.lang.String) r0.f70581c.b.get("trx_type");
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x04a1, code lost:
        r20 = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x04a4, code lost:
        r19 = r23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x04af, code lost:
        if (r0.containsKey(r0) == false) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x04b2, code lost:
        r19 = r23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x04c5, code lost:
        if (((java.lang.Integer) r0.get(r0)).intValue() <= r20) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x04c8, code lost:
        r19 = (java.lang.String) r0.f70581c.b.get("type");
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x04de, code lost:
        r0.m3781a(r0, r19);
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x04f1, code lost:
        if (r0.equals("trx_type") == false) goto L422;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x04fb, code lost:
        if (r0.m3780b("TRANSINTENT") == null) goto L423;
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x0506, code lost:
        if (r0.m3780b("TRANS") == null) goto L420;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x0509, code lost:
        r0 = r0.f70581c;
        java.util.Objects.requireNonNull(r0);
        r0 = (java.lang.String) r0.b.put("trx_subcategory", "bill");
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x0537, code lost:
        if (r0.equals("futtrx_type") == false) goto L430;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x053a, code lost:
        r0 = r0.m3780b("TRANSINTENT");
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x0545, code lost:
        if (r0 == null) goto L425;
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x0548, code lost:
        r0 = r0.m3780b("FUTAUXTRX");
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x0554, code lost:
        if (r0 == null) goto L427;
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x0557, code lost:
        r0 = r0.m3780b("TRX");
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x0562, code lost:
        if (r0 == null) goto L429;
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x0585, code lost:
        if (((java.lang.String) r0.m3780b("TRANS").f70581c.b.get("type")).equals("debit") == false) goto L424;
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x05a2, code lost:
        if (((java.lang.String) r0.f70581c.b.get("type")).equals("credit") == false) goto L428;
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x05a5, code lost:
        r0.m3781a(r0, "credit");
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x05b9, code lost:
        if (r0.equals("trx_type") == false) goto L137;
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x05c4, code lost:
        if (r0.m3780b("INTENT") == null) goto L137;
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x05cf, code lost:
        if (r0.m3780b("CSHDPST") == null) goto L137;
     */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x05d2, code lost:
        r0.m3781a("trx_subcategory", "deposit");
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x05e8, code lost:
        if (r0.equals("incrdlmt_amt") == false) goto L434;
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x05eb, code lost:
        r0 = r0.m3780b("CRDLIMT");
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x05f7, code lost:
        if (r0 == null) goto L435;
     */
    /* JADX WARN: Code restructure failed: missing block: B:142:0x0602, code lost:
        if (r0.m3780b("AMT") == null) goto L431;
     */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x0605, code lost:
        r0.m3781a("incrdlmt_amt_old", (java.lang.String) r0.m3780b("AMT").f70581c.b.get("amt"));
        r0.m3781a("incrdlmt_amt_new", r0);
        r0 = (java.lang.String) r0.f70581c.b.remove("incrdlmt_amt");
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x0652, code lost:
        if (r0.equals("billprcs_type") == false) goto L437;
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x065c, code lost:
        if (r0.m3780b("TRANSINTENT") == null) goto L438;
     */
    /* JADX WARN: Code restructure failed: missing block: B:148:0x065f, code lost:
        r0 = r0.m3780b("BILLPRCS");
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x066b, code lost:
        if (r0 == null) goto L439;
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x067e, code lost:
        if (r0.f70581c.b.containsKey(r0) == false) goto L440;
     */
    /* JADX WARN: Code restructure failed: missing block: B:152:0x0681, code lost:
        r0.m3781a(r0, (java.lang.String) r0.f70581c.b.get(r0));
     */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x069e, code lost:
        r0.m3781a(r0, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x06aa, code lost:
        r0 = r14.f70549f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x06b8, code lost:
        if (r0.equals("discount_pct") != false) goto L451;
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x06c3, code lost:
        if (r0.equals("discount_amt") != false) goto L454;
     */
    /* JADX WARN: Code restructure failed: missing block: B:159:0x06ce, code lost:
        if (r0.equals("cashback_amt") != false) goto L456;
     */
    /* JADX WARN: Code restructure failed: missing block: B:161:0x06d9, code lost:
        if (r0.equals("cashback_pct") != false) goto L458;
     */
    /* JADX WARN: Code restructure failed: missing block: B:163:0x06e4, code lost:
        if (r0.equals("save_amt") != false) goto L460;
     */
    /* JADX WARN: Code restructure failed: missing block: B:165:0x06ef, code lost:
        if (r0.equals("save_pct") == false) goto L166;
     */
    /* JADX WARN: Code restructure failed: missing block: B:167:0x06fd, code lost:
        if (r0.equals("trx_amt") == false) goto L185;
     */
    /* JADX WARN: Code restructure failed: missing block: B:168:0x0700, code lost:
        r0 = r0.m3780b("TRX");
     */
    /* JADX WARN: Code restructure failed: missing block: B:169:0x070b, code lost:
        if (r0 == null) goto L185;
     */
    /* JADX WARN: Code restructure failed: missing block: B:171:0x0719, code lost:
        if (r0.f70584f.equalsIgnoreCase("withdrawn") != false) goto L445;
     */
    /* JADX WARN: Code restructure failed: missing block: B:173:0x0726, code lost:
        if (r0.f70584f.equalsIgnoreCase("withdraw") != false) goto L447;
     */
    /* JADX WARN: Code restructure failed: missing block: B:175:0x0734, code lost:
        if (r0.f70584f.equalsIgnoreCase("withdrew") != false) goto L449;
     */
    /* JADX WARN: Code restructure failed: missing block: B:177:0x0742, code lost:
        if (r0.f70584f.equalsIgnoreCase("withdrawal") != false) goto L453;
     */
    /* JADX WARN: Code restructure failed: missing block: B:179:0x0750, code lost:
        if (r0.f70584f.equalsIgnoreCase("wdl") != false) goto L457;
     */
    /* JADX WARN: Code restructure failed: missing block: B:181:0x075e, code lost:
        if (r0.f70584f.equalsIgnoreCase("w/d") != false) goto L459;
     */
    /* JADX WARN: Code restructure failed: missing block: B:183:0x076c, code lost:
        if (r0.f70584f.equalsIgnoreCase("w/d@sbi") == false) goto L185;
     */
    /* JADX WARN: Code restructure failed: missing block: B:184:0x076f, code lost:
        r0.m3781a("trx_subcategory", "withdraw");
     */
    /* JADX WARN: Code restructure failed: missing block: B:186:0x0784, code lost:
        if (r0.equals("trx_amt") == false) goto L192;
     */
    /* JADX WARN: Code restructure failed: missing block: B:187:0x0787, code lost:
        r0 = r0.m3780b("DRAW");
     */
    /* JADX WARN: Code restructure failed: missing block: B:188:0x0793, code lost:
        if (r0 == null) goto L192;
     */
    /* JADX WARN: Code restructure failed: missing block: B:190:0x07a1, code lost:
        if (r0.f70584f.equalsIgnoreCase("draw") == false) goto L192;
     */
    /* JADX WARN: Code restructure failed: missing block: B:191:0x07a4, code lost:
        r0.m3781a("trx_subcategory", "withdraw");
     */
    /* JADX WARN: Code restructure failed: missing block: B:193:0x07b9, code lost:
        if (r0.equals("trx_amt") == false) goto L197;
     */
    /* JADX WARN: Code restructure failed: missing block: B:195:0x07c4, code lost:
        if (r0.m3780b("CSHWDL") == null) goto L197;
     */
    /* JADX WARN: Code restructure failed: missing block: B:196:0x07c7, code lost:
        r0.m3781a("trx_subcategory", "withdraw");
     */
    /* JADX WARN: Code restructure failed: missing block: B:198:0x07dc, code lost:
        if (r0.equals("trx_amt") == false) goto L208;
     */
    /* JADX WARN: Code restructure failed: missing block: B:199:0x07df, code lost:
        r0 = r0.m3780b("TRX");
     */
    /* JADX WARN: Code restructure failed: missing block: B:200:0x07ea, code lost:
        if (r0 == null) goto L208;
     */
    /* JADX WARN: Code restructure failed: missing block: B:202:0x07f8, code lost:
        if (r0.f70584f.equalsIgnoreCase("refund") != false) goto L463;
     */
    /* JADX WARN: Code restructure failed: missing block: B:204:0x0806, code lost:
        if (r0.f70584f.equalsIgnoreCase("refunded") != false) goto L443;
     */
    /* JADX WARN: Code restructure failed: missing block: B:206:0x0814, code lost:
        if (r0.f70584f.equalsIgnoreCase("reversed") == false) goto L208;
     */
    /* JADX WARN: Code restructure failed: missing block: B:207:0x0817, code lost:
        r0.m3781a("trx_subcategory", "refund");
     */
    /* JADX WARN: Code restructure failed: missing block: B:209:0x082d, code lost:
        if (r0.equals("rechrgsucc_num") == false) goto L448;
     */
    /* JADX WARN: Code restructure failed: missing block: B:211:0x0837, code lost:
        if (r0.m3780b("TRANSINTENT") == null) goto L450;
     */
    /* JADX WARN: Code restructure failed: missing block: B:213:0x0842, code lost:
        if (r0.m3780b("CONSUMERNUM") == null) goto L452;
     */
    /* JADX WARN: Code restructure failed: missing block: B:214:0x0845, code lost:
        r0.m3781a("consumer_num", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:216:0x085a, code lost:
        if (r0.equals("rechrgsucc_num") == false) goto L466;
     */
    /* JADX WARN: Code restructure failed: missing block: B:218:0x0865, code lost:
        if (r0.m3780b("RCHRGSUCC") == null) goto L467;
     */
    /* JADX WARN: Code restructure failed: missing block: B:220:0x0870, code lost:
        if (r0.m3780b("NUM") == null) goto L468;
     */
    /* JADX WARN: Code restructure failed: missing block: B:221:0x0873, code lost:
        r0.m3781a("mobile_num", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:223:0x0888, code lost:
        if (r0.contains("billvendor") == false) goto L469;
     */
    /* JADX WARN: Code restructure failed: missing block: B:224:0x088b, code lost:
        r0.m3781a("billvendor", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:226:0x08a0, code lost:
        if (r0.equals("from_loc") == false) goto L472;
     */
    /* JADX WARN: Code restructure failed: missing block: B:228:0x08ab, code lost:
        if (r0.equals("itinalert_loc") == false) goto L473;
     */
    /* JADX WARN: Code restructure failed: missing block: B:229:0x08ae, code lost:
        r0.m3781a("from_loc", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:231:0x08c3, code lost:
        if (r0.equals("to_loc") == false) goto L475;
     */
    /* JADX WARN: Code restructure failed: missing block: B:233:0x08ce, code lost:
        if (r0.equals("itinalert_loc") == false) goto L476;
     */
    /* JADX WARN: Code restructure failed: missing block: B:234:0x08d1, code lost:
        r0.m3781a("to_loc", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:236:0x08e6, code lost:
        if (r0.equals("tele_num") == false) goto L478;
     */
    /* JADX WARN: Code restructure failed: missing block: B:238:0x08f1, code lost:
        if (r0.equals("agentpin_num") == false) goto L479;
     */
    /* JADX WARN: Code restructure failed: missing block: B:239:0x08f4, code lost:
        r0.m3781a("tele_num", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:241:0x0909, code lost:
        if (r0.equals("bal_num") == false) goto L480;
     */
    /* JADX WARN: Code restructure failed: missing block: B:243:0x0914, code lost:
        if (r0.equals("enquiry_num") == false) goto L481;
     */
    /* JADX WARN: Code restructure failed: missing block: B:244:0x0917, code lost:
        r0.m3781a("enquiry_amt", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:246:0x092c, code lost:
        if (r0.equals("itinalert_due") == false) goto L484;
     */
    /* JADX WARN: Code restructure failed: missing block: B:247:0x092f, code lost:
        r0.m3781a("alert_type", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:249:0x0944, code lost:
        if (r0.equals("alert_status") == false) goto L486;
     */
    /* JADX WARN: Code restructure failed: missing block: B:251:0x094f, code lost:
        if (r0.equals("ordrcv") == false) goto L487;
     */
    /* JADX WARN: Code restructure failed: missing block: B:252:0x0952, code lost:
        r0.m3781a("alert_type", "confirmed");
     */
    /* JADX WARN: Code restructure failed: missing block: B:253:0x0960, code lost:
        r0.m3781a("offer_mode", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:254:0x096a, code lost:
        r0.m3781a(r0, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:255:0x0976, code lost:
        r0 = r14.f70549f;
        r0 = r0.f70581c;
        r0 = r14.f70547d.f;
        r0 = r0;
        r0 = r0.b.containsKey("trx_num");
        r0 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:256:0x09a3, code lost:
        if (r0 == false) goto L262;
     */
    /* JADX WARN: Code restructure failed: missing block: B:258:0x09b0, code lost:
        if (r0.b.containsKey("trx_type") == false) goto L262;
     */
    /* JADX WARN: Code restructure failed: missing block: B:259:0x09b3, code lost:
        r0.e("acc_num", (java.lang.String) r0.b.remove("trx_num"));
        r0.e("acc_type", (java.lang.String) r0.b.remove("trx_type"));
     */
    /* JADX WARN: Code restructure failed: missing block: B:260:0x09f4, code lost:
        if ("cheque".equals((java.lang.String) r0.b.get("acc_type")) != false) goto L276;
     */
    /* JADX WARN: Code restructure failed: missing block: B:261:0x09f7, code lost:
        r0 = (java.lang.String) r0.b.put("trx_type", "debit");
     */
    /* JADX WARN: Code restructure failed: missing block: B:263:0x0a16, code lost:
        if (r0.b.containsKey("ref_num") == false) goto L265;
     */
    /* JADX WARN: Code restructure failed: missing block: B:264:0x0a19, code lost:
        r0.e("ref_id", (java.lang.String) r0.b.remove("ref_num"));
     */
    /* JADX WARN: Code restructure failed: missing block: B:266:0x0a3e, code lost:
        if (r0.b.containsKey("bentrx_amt") == false) goto L268;
     */
    /* JADX WARN: Code restructure failed: missing block: B:267:0x0a41, code lost:
        r0 = (java.lang.String) r0.b.put("trx_subcategory", "benef");
        r0.e("trx_amt", (java.lang.String) r0.b.remove("bentrx_amt"));
        r0.e("aux_instr", (java.lang.String) r0.b.remove("bentrx_type"));
     */
    /* JADX WARN: Code restructure failed: missing block: B:269:0x0a8f, code lost:
        if (r0.b.containsKey("incrdlmt_amt_old") == false) goto L273;
     */
    /* JADX WARN: Code restructure failed: missing block: B:271:0x0a9d, code lost:
        if (r0.b.containsKey("incrdlmt_amt_new") == false) goto L273;
     */
    /* JADX WARN: Code restructure failed: missing block: B:272:0x0aa0, code lost:
        r0 = (java.lang.String) r0.b.put("trx_subcategory", "incrdlmt");
     */
    /* JADX WARN: Code restructure failed: missing block: B:274:0x0abd, code lost:
        if (r0.equals("GATCHNG") == false) goto L276;
     */
    /* JADX WARN: Code restructure failed: missing block: B:275:0x0ac0, code lost:
        r0 = (java.lang.String) r0.b.put("alert_type", "gate_change");
     */
    /* JADX WARN: Code restructure failed: missing block: B:277:0x0add, code lost:
        if (r0.b.containsKey("trxcatg_id") == false) goto L279;
     */
    /* JADX WARN: Code restructure failed: missing block: B:278:0x0ae0, code lost:
        r0.e("ref_id", (java.lang.String) r0.b.remove("trxcatg_id"));
     */
    /* JADX WARN: Code restructure failed: missing block: B:280:0x0b02, code lost:
        if (r0.b.containsKey("trxcatg_type") == false) goto L282;
     */
    /* JADX WARN: Code restructure failed: missing block: B:281:0x0b05, code lost:
        r0.e("trx_subcategory", (java.lang.String) r0.b.remove("trxcatg_type"));
     */
    /* JADX WARN: Code restructure failed: missing block: B:283:0x0b27, code lost:
        if (r0.b.containsKey("consumer_id") == false) goto L285;
     */
    /* JADX WARN: Code restructure failed: missing block: B:284:0x0b2a, code lost:
        r0.e("consumer_num", (java.lang.String) r0.b.remove("consumer_id"));
     */
    /* JADX WARN: Code restructure failed: missing block: B:285:0x0b41, code lost:
        r0.b.containsKey("amtrcv_id");
     */
    /* JADX WARN: Code restructure failed: missing block: B:286:0x0b58, code lost:
        if (r0.b.containsKey("acc_id") == false) goto L288;
     */
    /* JADX WARN: Code restructure failed: missing block: B:287:0x0b5b, code lost:
        r0.e("acc_num", (java.lang.String) r0.b.remove("acc_id"));
     */
    /* JADX WARN: Code restructure failed: missing block: B:288:0x0b72, code lost:
        r0.f70581c = r0;
        r14 = r0;
        r18 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:289:0x0b82, code lost:
        r18 = r14;
        r14 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:290:0x0b8c, code lost:
        r0 = r18;
        r0 = r0.f70549f.f70582d.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:292:0x0ba6, code lost:
        if (r0.hasNext() == false) goto L506;
     */
    /* JADX WARN: Code restructure failed: missing block: B:293:0x0ba9, code lost:
        r0.next().f70586h = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:294:0x0bba, code lost:
        r0 = r0.f70549f.f70583e.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:296:0x0bce, code lost:
        if (r0.hasNext() == false) goto L508;
     */
    /* JADX WARN: Code restructure failed: missing block: B:297:0x0bd1, code lost:
        r0 = r0.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:298:0x0be1, code lost:
        if (r0.m3776f() != false) goto L511;
     */
    /* JADX WARN: Code restructure failed: missing block: B:300:0x0bef, code lost:
        if (r0.f70581c.g() != 0) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:301:0x0bf2, code lost:
        r0.f70586h = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:302:0x0bfb, code lost:
        r0 = r0.f70549f;
        r0 = r0.f70547d.f;
        r0.f70579a = r0;
        r0.f70580b = r0;
        r0.f70587i = true;
        r0 = (p193e.p1681q.p1701f.p1702a.p1705e.p1706b.C25230b) r0.f70554k.a.get();
     */
    /* JADX WARN: Code restructure failed: missing block: B:303:0x0c30, code lost:
        if (r0 != null) goto L304;
     */
    /* JADX WARN: Code restructure failed: missing block: B:304:0x0c36, code lost:
        r0.f70561d.f70539b.m3783a(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:305:0x0c42, code lost:
        r0.f70557n = null;
        r0.f70550g = false;
        r0 = r0.f70546c;
        r0 = r0.f70549f;
        r0.f70578b = new p193e.p1681q.p1701f.p1702a.p1705e.p1708d.C25234a(r0, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:306:0x0c6e, code lost:
        if (r0.f70553j != false) goto L320;
     */
    /* JADX WARN: Code restructure failed: missing block: B:307:0x0c71, code lost:
        r0 = r14.f70561d.f70541d;
        r0 = r0.f70594a;
        r0 = r0.f70591a.get(r0.f70579a);
     */
    /* JADX WARN: Code restructure failed: missing block: B:308:0x0c99, code lost:
        if (r0 != null) goto L310;
     */
    /* JADX WARN: Code restructure failed: missing block: B:309:0x0c9c, code lost:
        r18 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:310:0x0ca2, code lost:
        r0 = new java.util.ArrayList(r0.size());
        r0 = r0.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:311:0x0cb6, code lost:
        r18 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:312:0x0cc0, code lost:
        if (r0.hasNext() == false) goto L514;
     */
    /* JADX WARN: Code restructure failed: missing block: B:313:0x0cc3, code lost:
        r0 = r0.next().f70624a.intValue();
        r0.add(new p193e.p1681q.p1701f.p1702a.p1712f.C25249f(java.lang.Integer.valueOf(r0 / r0.f70593c), java.lang.Double.valueOf(java.lang.Math.pow(2.0d, r0 % r0.f70593c) * r0.f70625b.intValue())));
     */
    /* JADX WARN: Code restructure failed: missing block: B:314:0x0d1a, code lost:
        r0 = r18.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:316:0x0d28, code lost:
        if (r0.hasNext() == false) goto L516;
     */
    /* JADX WARN: Code restructure failed: missing block: B:317:0x0d2b, code lost:
        r0 = (p193e.p1681q.p1701f.p1702a.p1712f.C25249f) r0.next();
        r0 = r0.f70594a.f70592b.get(((java.lang.Integer) r0.f70624a).intValue());
        r0 = ((java.lang.Integer) r0.f70624a).intValue();
        r0 = ((java.lang.Double) r0.f70625b).doubleValue();
        r0 = r0.f70595b.get(r0);
        r0.f70598a = java.lang.Double.valueOf(r0.f70598a.doubleValue() + r0);
        r0.f70595b.set(r0, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:318:0x0da3, code lost:
        if (r0.f70598a.doubleValue() <= r0.f70596c) goto L518;
     */
    /* JADX WARN: Code restructure failed: missing block: B:319:0x0da6, code lost:
        r0.f70597d = r0;
        r0.f70596c = r0.f70598a.doubleValue();
     */
    /* JADX WARN: Code restructure failed: missing block: B:320:0x0dbc, code lost:
        r13 = r14;
        r0 = r0.f70544a;
        r0 = r0.f70578b;
        r0 = r0.f70546c;
        r0.f70578b = r0.f70578b;
        r0.f70578b.f70578b = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:321:0x0df3, code lost:
        if (r13.f70558a.m3784c().f70545b != r0.f70544a) goto L325;
     */
    /* JADX WARN: Code restructure failed: missing block: B:323:0x0df8, code lost:
        if (r0 != null) goto L325;
     */
    /* JADX WARN: Code restructure failed: missing block: B:324:0x0dfb, code lost:
        r13.f70558a.m3784c().f70545b = r0.f70546c.f70578b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:325:0x0e0d, code lost:
        r18 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:326:0x0e10, code lost:
        r0 = r13.f70558a.m3785b();
     */
    /* JADX WARN: Code restructure failed: missing block: B:327:0x0e19, code lost:
        if (r0 == null) goto L520;
     */
    /* JADX WARN: Code restructure failed: missing block: B:328:0x0e1c, code lost:
        r0 = r0.iterator();
        r0.next();
        r14 = r18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:329:0x0e2d, code lost:
        r18 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:330:0x0e37, code lost:
        if (r0.hasNext() == false) goto L522;
     */
    /* JADX WARN: Code restructure failed: missing block: B:331:0x0e3a, code lost:
        r0 = r0.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:332:0x0e53, code lost:
        if (r0.f70547d.a(r0.f70549f) == false) goto L524;
     */
    /* JADX WARN: Code restructure failed: missing block: B:333:0x0e56, code lost:
        r14 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:334:0x0e5c, code lost:
        r14 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:335:0x0e61, code lost:
        if (r18 == null) goto L341;
     */
    /* JADX WARN: Code restructure failed: missing block: B:336:0x0e64, code lost:
        r14 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:337:0x0e71, code lost:
        if (r18.m3789a(r0.f70549f) == false) goto L341;
     */
    /* JADX WARN: Code restructure failed: missing block: B:338:0x0e74, code lost:
        r14 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:339:0x0e7c, code lost:
        if (r18.f70550g == false) goto L341;
     */
    /* JADX WARN: Code restructure failed: missing block: B:340:0x0e7f, code lost:
        r14 = r18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:342:0x0e86, code lost:
        if (r14.f70550g != false) goto L366;
     */
    /* JADX WARN: Code restructure failed: missing block: B:343:0x0e89, code lost:
        r0 = r13.f70558a;
        java.util.Objects.requireNonNull(r0);
        r0 = new java.util.ArrayList();
        r0 = r0.f70565a.iterator();
        r0.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:345:0x0eb7, code lost:
        if (r0.hasNext() == false) goto L527;
     */
    /* JADX WARN: Code restructure failed: missing block: B:346:0x0eba, code lost:
        r0 = r0.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:347:0x0ecb, code lost:
        if (r0.f70550g != false) goto L528;
     */
    /* JADX WARN: Code restructure failed: missing block: B:348:0x0ece, code lost:
        r0 = r0.f70549f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:349:0x0ed7, code lost:
        if (r0 == null) goto L532;
     */
    /* JADX WARN: Code restructure failed: missing block: B:351:0x0edf, code lost:
        if (r0.f70588j != false) goto L533;
     */
    /* JADX WARN: Code restructure failed: missing block: B:352:0x0ee2, code lost:
        r0 = r0.f70582d.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:354:0x0ef5, code lost:
        if (r0.hasNext() == false) goto L537;
     */
    /* JADX WARN: Code restructure failed: missing block: B:356:0x0f05, code lost:
        if (r0.next().f70586h == false) goto L353;
     */
    /* JADX WARN: Code restructure failed: missing block: B:357:0x0f08, code lost:
        r20 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:358:0x0f0e, code lost:
        r20 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:360:0x0f13, code lost:
        if (r20 == false) goto L534;
     */
    /* JADX WARN: Code restructure failed: missing block: B:361:0x0f16, code lost:
        r0.add(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:362:0x0f21, code lost:
        r0.f70565a.removeAll(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:363:0x0f37, code lost:
        if (r13.f70559b.a(r14.f70549f) == false) goto L365;
     */
    /* JADX WARN: Code restructure failed: missing block: B:364:0x0f3a, code lost:
        r0 = r13.f70559b;
        r0 = r13.f70558a.m3784c().f70545b;
        r0 = r13.f70558a.m3784c().f70545b;
        r0 = new p193e.p1681q.p1701f.p1702a.p1705e.p1708d.C25234a(r0.f70577a, r0.f70578b);
        r0 = new p193e.p1681q.p1701f.p1702a.p1705e.p1706b.C25230b.a(r13);
        r0 = r13.f70562e + 1;
        r13.f70562e = r0;
        r0 = new p193e.p1681q.p1701f.p1702a.p1705e.p1706b.C25229a(r0, r0, r0, r0, r0);
        r13.f70558a.m3786a(r0);
        r0.m3789a(r14.f70549f);
     */
    /* JADX WARN: Code restructure failed: missing block: B:365:0x0fa9, code lost:
        r13.m3787a();
     */
    /* JADX WARN: Code restructure failed: missing block: B:367:0x0fb6, code lost:
        r0 = new p193e.p1681q.p1701f.p1702a.p1705e.p1708d.C25235b();
        r0.f70579a = r12.f70579a;
        r0.f70584f = r12.f70584f;
        r0.f70581c = r12.f70581c;
        r0.f70585g = r12.f70585g;
     */
    /* JADX WARN: Code restructure failed: missing block: B:369:0x0fdf, code lost:
        m3799b(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:371:0x0fe7, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x018b, code lost:
        if (r14 != null) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:538:?, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:539:?, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x018e, code lost:
        r0 = r13.f70558a.m3785b();
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0199, code lost:
        if (r0 == null) goto L401;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x019c, code lost:
        r0 = r0.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x01aa, code lost:
        if (r0.hasNext() == false) goto L402;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x01ad, code lost:
        r0 = r0.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x01be, code lost:
        if (r0.f70551h != 0) goto L403;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x01c9, code lost:
        if (r0.f70550g == false) goto L408;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x01cf, code lost:
        if (r0 == r14) goto L409;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x01d2, code lost:
        r0.f70557n = null;
        r0.f70550g = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x01e2, code lost:
        if (r14 == null) goto L375;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x01e8, code lost:
        r0 = r13;
        r14.m3788b(r14.f70557n);
        r0 = r14.f70549f;
        r0 = r14.f70547d.f;
        r0 = r0.f70582d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0204, code lost:
        if (r0 == null) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0207, code lost:
        r0 = r0.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0214, code lost:
        if (r0.hasNext() == false) goto L412;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0228, code lost:
        if (r0.next().f70579a.equals(r0) == false) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x022b, code lost:
        r20 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0231, code lost:
        r20 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0236, code lost:
        if (r20 == false) goto L79;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0239, code lost:
        r14.f70553j = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x023e, code lost:
        r0 = r14.f70547d.g;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0249, code lost:
        if (r0 == null) goto L289;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0253, code lost:
        if (r0.equals("") != false) goto L289;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0256, code lost:
        r0 = new java.util.HashSet(r14.f70549f.f70581c.d()).iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0274, code lost:
        if (r0.hasNext() == false) goto L418;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x0277, code lost:
        r0 = (java.lang.String) r0.next();
        r0 = new java.lang.StringBuilder();
        r0.append(r14.f70547d.g);
        r0.append(com.razorpay.AnalyticsConstants.DELIMITER_MAIN);
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x02a7, code lost:
        if (r0.contains(com.razorpay.AnalyticsConstants.DELIMITER_MAIN) == false) goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x02aa, code lost:
        r19 = r0.split(com.razorpay.AnalyticsConstants.DELIMITER_MAIN)[1];
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x02b8, code lost:
        r19 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x02bc, code lost:
        r0.append(r19);
        r0 = r0.toString();
        r0 = (java.lang.String) r14.f70549f.f70581c.b.remove(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x02e9, code lost:
        if (r0.equals(r0) != false) goto L417;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x02fb, code lost:
        if (r14.f70549f.f70581c.a(r0) == false) goto L419;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x02fe, code lost:
        r0 = r14.f70549f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x030b, code lost:
        if (r0.equals("trx_type") == false) goto L414;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x030e, code lost:
        r0 = r0.m3780b("TRANSINTENT");
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0319, code lost:
        if (r0 == null) goto L415;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x031c, code lost:
        r0 = r0.m3780b("TRX");
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x0327, code lost:
        if (r0 == null) goto L416;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m3800a(p193e.p1681q.p1701f.p1702a.p1705e.p1708d.C25235b r12) {
        /*
            Method dump skipped, instructions count: 4076
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1681q.p1701f.p1702a.p1705e.C25228a.m3800a(e.q.f.a.e.d.b):void");
    }

    /* renamed from: b */
    public final void m3799b(C25235b c25235b) {
        ArrayList<C25235b> arrayList = this.f70543f.f70589a;
        if (arrayList.size() > 0 && c25235b.f70579a.equals("GDO_NONDET")) {
            C25235b c25235b2 = arrayList.get(arrayList.size() - 1);
            if (c25235b2.f70579a.equals("GDO_NONDET")) {
                c25235b2.f70584f += StringConstant.SPACE + c25235b.f70584f;
                return;
            } else if (arrayList.size() > 2 && C25260d.f70679b.contains(c25235b2.f70579a) && !c25235b2.f70584f.equals(RemoteMessageConst.f7718TO)) {
                C25235b c25235b3 = arrayList.get(arrayList.size() - 2);
                if (c25235b3.f70579a.equals("GDO_NONDET")) {
                    arrayList.remove(arrayList.size() - 1);
                    c25235b3.f70584f = C22128a.m8610j(new StringBuilder(), c25235b3.f70584f, StringConstant.SPACE, c25235b2.f70584f + StringConstant.SPACE + c25235b.f70584f);
                    return;
                }
            }
        } else if (c25235b.f70579a.equals("ORDERID") || c25235b.f70579a.equals("TRACKINGID")) {
            c25235b.f70579a = "ORDER";
        } else if (c25235b.f70579a.equals("RESCHE")) {
            c25235b.f70579a = "ORDSTATUS";
        }
        this.f70543f.f70589a.add(c25235b);
    }

    /* renamed from: c */
    public void m3798c(int i) {
        C25233a c25233a = this.f70539b;
        Objects.requireNonNull(c25233a);
        if (i > 0) {
            c25233a.f70574f.add(Integer.valueOf(i));
        }
        c25233a.f70571c = new C25236c();
        C25232c c25232c = this.f70538a.f70558a;
        Objects.requireNonNull(c25232c);
        ArrayList arrayList = new ArrayList();
        Iterator<C25229a> it = c25232c.f70565a.iterator();
        it.next();
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        c25232c.f70565a.removeAll(arrayList);
    }

    /* renamed from: d */
    public boolean m3797d(ArrayList<C25235b> arrayList) {
        boolean z;
        C25230b c25230b = this.f70538a;
        Objects.requireNonNull(c25230b);
        boolean z2 = false;
        if (arrayList.size() > 0) {
            C25235b remove = arrayList.remove(0);
            C25229a c25229a = null;
            while (true) {
                ArrayList<C25229a> m3785b = c25230b.f70558a.m3785b();
                if (m3785b == null) {
                    break;
                }
                Iterator<C25229a> it = m3785b.iterator();
                C25229a c25229a2 = c25229a;
                while (true) {
                    c25229a = c25229a2;
                    if (it.hasNext()) {
                        C25229a next = it.next();
                        b bVar = next.f70547d;
                        if (bVar.d) {
                            if (!bVar.f().contains(remove.f70579a) && !next.f70547d.f().contains(remove.f70580b)) {
                            }
                            c25229a2 = next;
                        } else {
                            if (!bVar.e.keySet().contains(remove.f70579a) && !next.f70547d.e.keySet().contains(remove.f70580b)) {
                            }
                            c25229a2 = next;
                        }
                    }
                }
            }
            if (c25229a == null) {
                z2 = false;
            } else {
                if (arrayList.size() != 0) {
                    b d = c25229a.f70547d.d(remove);
                    Iterator<C25235b> it2 = arrayList.iterator();
                    b bVar2 = d;
                    while (true) {
                        b bVar3 = bVar2;
                        if (!it2.hasNext()) {
                            break;
                        }
                        C25235b next2 = it2.next();
                        if (bVar3 != null) {
                            if (!bVar3.e.containsKey(next2.f70579a)) {
                                if (!bVar3.e.containsKey(next2.f70580b)) {
                                    z2 = false;
                                    if (!c25229a.f70547d.a(next2)) {
                                        break;
                                    }
                                    Set keySet = bVar3.e.keySet();
                                    Set c = c25229a.f70547d.d(next2).c();
                                    Iterator it3 = keySet.iterator();
                                    while (true) {
                                        if (!it3.hasNext()) {
                                            z = false;
                                            break;
                                        }
                                        if (((TreeSet) c).contains((String) it3.next())) {
                                            z = true;
                                            break;
                                        }
                                    }
                                    z2 = false;
                                    if (!z) {
                                        break;
                                    }
                                    bVar2 = c25229a.f70547d.d(next2);
                                } else {
                                    bVar2 = (b) bVar3.e.get(next2.f70580b);
                                }
                            } else {
                                bVar2 = (b) bVar3.e.get(next2.f70579a);
                            }
                        } else {
                            z2 = false;
                            break;
                        }
                    }
                }
                z2 = true;
            }
        }
        return z2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:204:0x078b, code lost:
        if ((r0.equalsIgnoreCase("uber") || r0.equalsIgnoreCase("transfer")) != false) goto L378;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0168, code lost:
        if (r0.f70622b.f70631b.equals("IPAYTM") != false) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x033c, code lost:
        if (r10.f70577a.f70581c.b.containsKey("dept_date") != false) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x03a8, code lost:
        if (((e.q.f.a.f.n) r0).b.containsKey("waladd_amt") != false) goto L86;
     */
    /* JADX WARN: Removed duplicated region for block: B:152:0x05ee  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x0641  */
    /* JADX WARN: Removed duplicated region for block: B:195:0x0758  */
    /* JADX WARN: Removed duplicated region for block: B:273:0x0969  */
    /* JADX WARN: Removed duplicated region for block: B:294:0x0a38  */
    /* JADX WARN: Removed duplicated region for block: B:318:0x0b57  */
    /* JADX WARN: Removed duplicated region for block: B:325:0x0bac A[LOOP:8: B:323:0x0b9f->B:325:0x0bac, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:380:0x0e03  */
    /* JADX WARN: Removed duplicated region for block: B:437:0x0fd5  */
    /* JADX WARN: Removed duplicated region for block: B:445:0x100a  */
    /* JADX WARN: Removed duplicated region for block: B:489:0x0bde A[EDGE_INSN: B:489:0x0bde->B:326:0x0bde ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v888, types: [double] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:450:0x1036 -> B:442:0x0ff6). Please submit an issue!!! */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p193e.p1681q.p1701f.p1702a.p1712f.C25253j m3796e(p193e.p1681q.p1701f.p1702a.p1712f.C25251h r6) {
        /*
            Method dump skipped, instructions count: 4154
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1681q.p1701f.p1702a.p1705e.C25228a.m3796e(e.q.f.a.f.h):e.q.f.a.f.j");
    }

    /* renamed from: f */
    public C25235b m3795f(int i) {
        return m3794g(i, false);
    }

    /* renamed from: g */
    public C25235b m3794g(int i, boolean z) {
        C25233a c25233a = this.f70539b;
        if (c25233a == null || c25233a.f70570b.f70589a.size() <= i) {
            return null;
        }
        ArrayList<C25235b> arrayList = this.f70539b.f70570b.f70589a;
        C25235b c25235b = arrayList.get((arrayList.size() - 1) - i);
        C25235b c25235b2 = c25235b;
        if (z) {
            c25235b2 = c25235b;
            if (c25235b.m3777e()) {
                c25235b2 = c25235b.m3778d();
            }
        }
        return c25235b2;
    }

    /* renamed from: h */
    public String m3793h(int i) {
        C25235b m3794g = m3794g(i, false);
        return m3794g != null ? m3794g.f70579a : AnalyticsConstants.NULL;
    }

    /* renamed from: i */
    public String m3792i(int i, boolean z) {
        C25235b m3794g = m3794g(i, z);
        return m3794g != null ? m3794g.f70579a : AnalyticsConstants.NULL;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x00b1, code lost:
        if (r18 == false) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00da, code lost:
        if ((!r0.contains(r0.toLowerCase())) != false) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00dd, code lost:
        r0 = r6.f70539b;
        r0 = r8 + 1;
        java.util.Objects.requireNonNull(r0);
        r0 = r0 + 3;
        r0 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00f8, code lost:
        if (r0 >= r7.length()) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00fb, code lost:
        r0 = r7.substring(r0, r0);
        r0 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0106, code lost:
        if (r0 == null) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0109, code lost:
        r0 = r0.equalsIgnoreCase("com");
        r0 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0111, code lost:
        if (r0 == 0) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0114, code lost:
        r7 = new p193e.p1681q.p1701f.p1702a.p1712f.C25249f<>(r0, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0120, code lost:
        r17 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0126, code lost:
        r0 = r7.charAt(r0 - 2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0132, code lost:
        if (r0 == '.') goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0135, code lost:
        r0 = r7.charAt(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x013c, code lost:
        if (r0 == ' ') goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x013f, code lost:
        r8 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0145, code lost:
        r8 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x014a, code lost:
        r8 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x014d, code lost:
        if (r8 != 0) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0150, code lost:
        r9 = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0155, code lost:
        r9 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0157, code lost:
        r0 = r9;
        r20 = r0;
        r9 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0161, code lost:
        r0 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0166, code lost:
        if (r0 >= r7.length()) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0170, code lost:
        if (r7.charAt(r9) != '.') goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0173, code lost:
        r20 = r20 + 1;
        r9 = r9 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x017c, code lost:
        r0 = r20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x017f, code lost:
        if (r0 < 2) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x018a, code lost:
        if (p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3839t1(r7.charAt(r9)) != false) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0195, code lost:
        if (p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m4026D1(r7.charAt(r9)) != false) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0198, code lost:
        r8 = r9;
        r0 = r7.charAt(r9);
        r0 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x01a1, code lost:
        if (r0 != '+') goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x01a4, code lost:
        r0 = r9 - 1;
        r8 = r0;
        r0 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x01a8, code lost:
        r7 = new p193e.p1681q.p1701f.p1702a.p1712f.C25249f<>(r0, java.lang.Integer.valueOf(r8));
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x01b9, code lost:
        r0 = r7.charAt(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x01c1, code lost:
        if (r0 == 46) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x01c4, code lost:
        r7 = new p193e.p1681q.p1701f.p1702a.p1712f.C25249f<>(r0, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x01d3, code lost:
        r0 = r7.charAt(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x01da, code lost:
        if (r0 != 32) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x01dd, code lost:
        java.lang.Integer.valueOf(r9);
        r0 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x01e9, code lost:
        if (r0 != 1) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x01ec, code lost:
        r7 = new p193e.p1681q.p1701f.p1702a.p1712f.C25249f<>(r0, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x01f7, code lost:
        r7 = new p193e.p1681q.p1701f.p1702a.p1712f.C25249f<>(r0, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0202, code lost:
        r7 = new p193e.p1681q.p1701f.p1702a.p1712f.C25249f<>(r0, java.lang.Integer.valueOf(r9 - 1));
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0215, code lost:
        r7 = new p193e.p1681q.p1701f.p1702a.p1712f.C25249f<>(r0, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0226, code lost:
        return r17;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v19, types: [char, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v20, types: [char, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v25, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v29, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v44, types: [boolean, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v47, types: [java.lang.String, e.q.f.a.e.c.a] */
    /* JADX WARN: Type inference failed for: r0v48, types: [java.util.List, java.lang.String, java.util.List<java.lang.String>] */
    /* JADX WARN: Type inference failed for: r0v52, types: [java.lang.String, e.q.f.a.e.c.a] */
    /* JADX WARN: Type inference failed for: r0v55, types: [int, e.q.f.a.e.d.c] */
    /* JADX WARN: Type inference failed for: r0v59, types: [java.lang.String, e.q.f.a.e.c.a] */
    /* JADX WARN: Type inference failed for: r0v67, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v70, types: [boolean, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v74 */
    /* JADX WARN: Type inference failed for: r0v75 */
    /* JADX WARN: Type inference failed for: r0v79 */
    /* JADX WARN: Type inference failed for: r0v8, types: [int, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v80 */
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p193e.p1681q.p1701f.p1702a.p1712f.C25249f<java.lang.Boolean, java.lang.Integer> m3791j(java.lang.String r7, int r8, int r9) {
        /*
            Method dump skipped, instructions count: 551
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1681q.p1701f.p1702a.p1705e.C25228a.m3791j(java.lang.String, int, int):e.q.f.a.f.f");
    }

    /* renamed from: k */
    public final void m3790k(C25236c c25236c) {
        int i;
        List<Integer> list = this.f70539b.f70574f;
        if (list == null || list.size() < 1) {
            return;
        }
        for (Integer num : list) {
            int intValue = num.intValue();
            int size = c25236c.f70589a.size() - 1;
            int i2 = 0;
            while (true) {
                if (i2 > size) {
                    i = size + 1;
                    break;
                }
                int i3 = (i2 + size) / 2;
                int i4 = c25236c.f70589a.get(i3).f70585g;
                if (i4 == intValue) {
                    i = i3;
                    break;
                } else if (i4 < intValue) {
                    i2 = i3 + 1;
                } else {
                    size = i3 - 1;
                }
            }
            int i5 = i;
            C25235b c25235b = new C25235b();
            c25235b.f70579a = "CONTEXTBREAK";
            c25235b.f70585g = intValue;
            c25236c.f70589a.add(i5, c25235b);
        }
    }
}
