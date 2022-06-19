package com.google.android.gms.measurement.internal;

import java.util.Map;
import java.util.Set;
/* renamed from: com.google.android.gms.measurement.internal.kj */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/kj.class */
public final class C14132kj extends AbstractC14100je {

    /* renamed from: a */
    private String f52041a;

    /* renamed from: b */
    private Set<Integer> f52042b;

    /* renamed from: c */
    private Map<Integer, C14127ke> f52043c;

    /* renamed from: d */
    private Long f52044d;

    /* renamed from: e */
    private Long f52045e;

    public C14132kj(C14110jo c14110jo) {
        super(c14110jo);
    }

    /* renamed from: a */
    private final C14127ke m11529a(Integer num) {
        if (this.f52043c.containsKey(num)) {
            return this.f52043c.get(num);
        }
        C14127ke c14127ke = new C14127ke(this, this.f52041a, null);
        this.f52043c.put(num, c14127ke);
        return c14127ke;
    }

    /* renamed from: a */
    private final boolean m11530a(int i, int i2) {
        C14127ke c14127ke = this.f52043c.get(Integer.valueOf(i));
        if (c14127ke == null) {
            return false;
        }
        return c14127ke.f52019a.get(i2);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(27:2|(2:3|(2:5|(2:564|7))(2:563|8))|9|(3:11|530|12)|15|(2:17|(7:19|554|20|21|520|22|(23:(12:24|25|26|27|534|28|29|30|(1:32)(7:33|34|35|36|(6:38|39|40|41|42|43)|44|45)|49|50|51)|565|53|(1:55)|81|555|82|83|549|84|(5:86|87|88|(1:90)|91)(9:92|93|94|95|96|(13:97|98|99|100|101|528|102|103|104|112|113|114|(1:566)(1:120))|116|(1:118)|119)|138|(1:140)(4:142|(3:144|(7:146|525|147|148|538|149|(7:(12:151|152|153|154|155|156|(6:158|159|160|161|162|163)|164|165|166|167|168)|567|170|(2:172|173)|192|(4:195|(2:216|576)(3:572|199|(9:569|201|(4:204|(2:206|578)(1:579)|207|202)|577|208|(4:211|(2:213|581)(1:582)|214|209)|580|215|575)(1:574))|573|193)|571)(7:174|175|176|(2:178|173)|192|(1:193)|571))|217)(1:223)|224|(2:225|(9:227|(3:231|(4:234|(5:591|236|(1:238)(1:239)|240|594)(1:593)|592|232)|590)|241|(2:243|(1:245)(2:246|(2:247|(3:249|(3:597|253|601)|598)(1:595))))(0)|254|(2:256|(2:257|(5:259|(2:261|(3:263|604|265))|264|603|265)(1:602)))(0)|266|(3:276|(8:279|(1:281)|282|(1:284)|285|(3:605|287|608)(1:607)|606|277)|588)|288)(1:583)))|141|289|(1:291)(2:292|(2:293|(3:295|(9:297|(1:299)(1:300)|301|(8:303|561|304|305|521|306|(6:308|(16:309|543|310|311|526|312|313|314|315|316|(7:318|545|319|320|321|322|323)|324|325|333|334|335)|612|337|(1:339)|340)(4:343|344|345|(2:347|348))|365)(1:373)|374|(4:377|(3:616|379|618)(5:614|380|(2:381|(2:383|(1:385)(2:622|386))(1:621))|387|(3:615|389|620)(1:619))|617|375)|613|390|610)(1:611)|391)(1:609)))|392|(1:394)(2:395|(2:396|(5:398|(8:400|558|401|402|532|403|(5:(16:405|406|407|408|550|409|410|411|412|413|(6:415|416|417|418|419|420)|421|422|428|429|430)|626|432|(1:434)|435)(4:436|437|438|(2:440|441))|457)(1:465)|466|(2:467|(2:469|(3:627|471|625)(8:472|(2:473|(4:475|(3:477|(1:479)(1:480)|481)|482|(1:1)(2:486|(1:488)(2:635|489)))(1:634))|490|(1:492)(1:493)|494|497|633|631))(0))|498)(1:623)))|499|(10:502|536|503|504|539|505|638|(3:636|507|641)(1:640)|639|500)|637|511|512)(4:56|57|58|(2:60|61))))|80|81|555|82|83|549|84|(0)(0)|138|(0)(0)|141|289|(0)(0)|392|(0)(0)|499|(1:500)|637|511|512|(4:(0)|(1:548)|(1:542)|(1:524))) */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x044e, code lost:
        r23 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x0450, code lost:
        r20 = "data";
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x0464, code lost:
        r20 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x0465, code lost:
        r21 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x046a, code lost:
        r23 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x046c, code lost:
        r24 = "audience_id";
        r34 = "data";
        r20 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:496:0x12dd, code lost:
        if (r28 != false) goto L632;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:136:0x049d  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x04af  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x04bd  */
    /* JADX WARN: Removed duplicated region for block: B:195:0x064e  */
    /* JADX WARN: Removed duplicated region for block: B:220:0x0791  */
    /* JADX WARN: Removed duplicated region for block: B:227:0x07c5  */
    /* JADX WARN: Removed duplicated region for block: B:291:0x0a74  */
    /* JADX WARN: Removed duplicated region for block: B:292:0x0a7f  */
    /* JADX WARN: Removed duplicated region for block: B:364:0x0dd1  */
    /* JADX WARN: Removed duplicated region for block: B:377:0x0e13  */
    /* JADX WARN: Removed duplicated region for block: B:394:0x0f25  */
    /* JADX WARN: Removed duplicated region for block: B:395:0x0f2b  */
    /* JADX WARN: Removed duplicated region for block: B:469:0x1161  */
    /* JADX WARN: Removed duplicated region for block: B:502:0x1326  */
    /* JADX WARN: Removed duplicated region for block: B:583:0x04b3 A[EDGE_INSN: B:583:0x04b3->B:141:0x04b3 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x02a3  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x030e  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0335  */
    /* JADX WARN: Type inference failed for: r0v114, types: [long] */
    /* JADX WARN: Type inference failed for: r0v130, types: [long] */
    /* JADX WARN: Type inference failed for: r0v217, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r0v281, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r0v294, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r0v886, types: [com.google.android.gms.measurement.internal.dm] */
    /* JADX WARN: Type inference failed for: r0v928, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r1v163, types: [android.database.sqlite.SQLiteException] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.google.android.gms.internal.measurement.C13397br> m11528a(java.lang.String r20, java.util.List<com.google.android.gms.internal.measurement.C13402bw> r21, java.util.List<com.google.android.gms.internal.measurement.C13422cp> r22, java.lang.Long r23, java.lang.Long r24) {
        /*
            Method dump skipped, instructions count: 5150
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C14132kj.m11528a(java.lang.String, java.util.List, java.util.List, java.lang.Long, java.lang.Long):java.util.List");
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC14100je
    /* renamed from: a */
    protected final boolean mo11531a() {
        return false;
    }
}
