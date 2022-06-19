package com.google.android.gms.measurement.internal;

import java.util.BitSet;
import java.util.Map;
import java.util.Set;
/* renamed from: com.google.android.gms.measurement.internal.ja */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/ja.class */
public final class C7763ja extends AbstractC7702e9 {

    /* renamed from: d */
    private String f35367d;

    /* renamed from: e */
    private Set<Integer> f35368e;

    /* renamed from: f */
    private Map<Integer, C7703ea> f35369f;

    /* renamed from: g */
    private Long f35370g;

    /* renamed from: h */
    private Long f35371h;

    public C7763ja(C7819o9 c7819o9) {
        super(c7819o9);
    }

    /* renamed from: l */
    private final C7703ea m6330l(Integer num) {
        if (this.f35369f.containsKey(num)) {
            return this.f35369f.get(num);
        }
        C7703ea c7703ea = new C7703ea(this, this.f35367d, null);
        this.f35369f.put(num, c7703ea);
        return c7703ea;
    }

    /* renamed from: m */
    private final boolean m6329m(int i, int i2) {
        BitSet bitSet;
        C7703ea c7703ea = this.f35369f.get(Integer.valueOf(i));
        if (c7703ea == null) {
            return false;
        }
        bitSet = c7703ea.f35233d;
        return bitSet.get(i2);
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC7702e9
    /* renamed from: i */
    protected final boolean mo6003i() {
        return false;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(17:(2:17|(7:19|523|20|21|531|22|(22:(12:24|25|26|27|515|28|29|30|(1:32)(7:33|34|35|36|(6:38|39|40|41|42|43)|44|45)|49|50|51)|542|53|77|538|78|79|522|80|(4:82|83|84|85)(7:86|87|88|89|90|(13:91|92|93|94|95|497|96|97|98|106|107|108|(1:543)(1:111))|110)|129|(1:131)(4:133|(3:135|(11:137|519|138|139|530|140|(3:(12:142|143|144|145|146|147|(6:149|150|151|152|153|154)|155|156|157|158|159)|544|161)(3:163|164|165)|162|179|(4:182|(2:203|553)(3:549|186|(9:545|188|(4:191|(2:193|555)(1:556)|194|189)|554|195|(4:198|(2:200|558)(1:559)|201|196)|557|202|552)(1:551))|550|180)|547)|204)(1:210)|211|(2:212|(9:214|(3:218|(4:221|(5:567|223|(1:225)(1:226)|227|571)(1:570)|569|219)|568)|228|(2:230|(1:232)(2:233|(2:234|(3:236|(3:574|240|578)|575)(1:573))))(0)|241|(2:243|(2:244|(5:246|(2:248|(3:250|581|252))|251|580|252)(1:579)))(0)|253|(3:263|(8:266|(1:268)|269|(1:271)|272|(3:582|274|585)(1:584)|583|264)|565)|275)(1:560)))|132|276|(1:278)(2:279|(2:280|(3:282|(9:284|(1:286)(1:287)|288|(7:290|535|291|292|505|293|(5:295|(16:296|520|297|298|503|299|300|301|302|303|(7:305|513|306|307|308|309|310)|311|312|320|321|322)|589|324|347)(5:327|328|329|330|347))(1:355)|356|(4:359|(3:593|361|595)(5:590|362|(2:363|(2:365|(1:367)(2:599|368))(1:598))|369|(3:592|371|597)(1:596))|594|357)|591|372|587)(1:588)|373)(1:586)))|374|(1:376)(2:377|(2:378|(5:380|(7:382|533|383|384|517|385|(4:(16:387|388|389|390|528|391|392|393|394|395|(6:397|398|399|400|401|402)|403|404|410|411|412)|603|414|434)(5:415|416|417|418|434))(1:442)|443|(2:444|(2:446|(3:606|448|602)(8:449|(2:450|(4:452|(3:454|(1:456)(1:457)|458)|459|(1:1)(2:463|(1:465)(2:612|466)))(1:611))|467|(1:469)(1:470)|471|474|610|608))(0))|475)(1:600)))|476|(10:479|524|480|481|526|482|615|(3:613|484|618)(1:617)|616|477)|614|488|489)(4:54|55|56|57)))|522|80|(0)(0)|129|(0)(0)|132|276|(0)(0)|374|(0)(0)|476|(1:477)|614|488|489|(4:(1:502)|(0)|(1:500)|(1:510))) */
    /* JADX WARN: Can't wrap try/catch for region: R(27:2|(2:3|(2:5|(2:541|7))(2:540|8))|9|(3:11|507|12)|15|(2:17|(7:19|523|20|21|531|22|(22:(12:24|25|26|27|515|28|29|30|(1:32)(7:33|34|35|36|(6:38|39|40|41|42|43)|44|45)|49|50|51)|542|53|77|538|78|79|522|80|(4:82|83|84|85)(7:86|87|88|89|90|(13:91|92|93|94|95|497|96|97|98|106|107|108|(1:543)(1:111))|110)|129|(1:131)(4:133|(3:135|(11:137|519|138|139|530|140|(3:(12:142|143|144|145|146|147|(6:149|150|151|152|153|154)|155|156|157|158|159)|544|161)(3:163|164|165)|162|179|(4:182|(2:203|553)(3:549|186|(9:545|188|(4:191|(2:193|555)(1:556)|194|189)|554|195|(4:198|(2:200|558)(1:559)|201|196)|557|202|552)(1:551))|550|180)|547)|204)(1:210)|211|(2:212|(9:214|(3:218|(4:221|(5:567|223|(1:225)(1:226)|227|571)(1:570)|569|219)|568)|228|(2:230|(1:232)(2:233|(2:234|(3:236|(3:574|240|578)|575)(1:573))))(0)|241|(2:243|(2:244|(5:246|(2:248|(3:250|581|252))|251|580|252)(1:579)))(0)|253|(3:263|(8:266|(1:268)|269|(1:271)|272|(3:582|274|585)(1:584)|583|264)|565)|275)(1:560)))|132|276|(1:278)(2:279|(2:280|(3:282|(9:284|(1:286)(1:287)|288|(7:290|535|291|292|505|293|(5:295|(16:296|520|297|298|503|299|300|301|302|303|(7:305|513|306|307|308|309|310)|311|312|320|321|322)|589|324|347)(5:327|328|329|330|347))(1:355)|356|(4:359|(3:593|361|595)(5:590|362|(2:363|(2:365|(1:367)(2:599|368))(1:598))|369|(3:592|371|597)(1:596))|594|357)|591|372|587)(1:588)|373)(1:586)))|374|(1:376)(2:377|(2:378|(5:380|(7:382|533|383|384|517|385|(4:(16:387|388|389|390|528|391|392|393|394|395|(6:397|398|399|400|401|402)|403|404|410|411|412)|603|414|434)(5:415|416|417|418|434))(1:442)|443|(2:444|(2:446|(3:606|448|602)(8:449|(2:450|(4:452|(3:454|(1:456)(1:457)|458)|459|(1:1)(2:463|(1:465)(2:612|466)))(1:611))|467|(1:469)(1:470)|471|474|610|608))(0))|475)(1:600)))|476|(10:479|524|480|481|526|482|615|(3:613|484|618)(1:617)|616|477)|614|488|489)(4:54|55|56|57)))|76|77|538|78|79|522|80|(0)(0)|129|(0)(0)|132|276|(0)(0)|374|(0)(0)|476|(1:477)|614|488|489|(4:(1:502)|(0)|(1:500)|(1:510))) */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x0435, code lost:
        r23 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x0437, code lost:
        r20 = "data";
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x044b, code lost:
        r20 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x044c, code lost:
        r21 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x0451, code lost:
        r23 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x0453, code lost:
        r24 = "audience_id";
        r34 = "data";
        r20 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:473:0x126d, code lost:
        if (r27 != false) goto L609;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0484  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0496  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x04a4  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x0627  */
    /* JADX WARN: Removed duplicated region for block: B:207:0x075a  */
    /* JADX WARN: Removed duplicated region for block: B:214:0x078e  */
    /* JADX WARN: Removed duplicated region for block: B:278:0x0a30  */
    /* JADX WARN: Removed duplicated region for block: B:279:0x0a3f  */
    /* JADX WARN: Removed duplicated region for block: B:346:0x0d7d  */
    /* JADX WARN: Removed duplicated region for block: B:359:0x0dbf  */
    /* JADX WARN: Removed duplicated region for block: B:376:0x0ed1  */
    /* JADX WARN: Removed duplicated region for block: B:377:0x0ed7  */
    /* JADX WARN: Removed duplicated region for block: B:446:0x10f4  */
    /* JADX WARN: Removed duplicated region for block: B:479:0x12b7  */
    /* JADX WARN: Removed duplicated region for block: B:560:0x049a A[EDGE_INSN: B:560:0x049a->B:132:0x049a ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0292  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x02ff  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0321  */
    /* JADX WARN: Type inference failed for: r0v114, types: [long] */
    /* JADX WARN: Type inference failed for: r0v130, types: [long] */
    /* JADX WARN: Type inference failed for: r0v278, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r0v291, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r0v911, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r1v160, types: [android.database.sqlite.SQLiteException] */
    /* renamed from: k */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.google.android.gms.internal.measurement.C7472n1> m6331k(java.lang.String r20, java.util.List<com.google.android.gms.internal.measurement.C7540s1> r21, java.util.List<com.google.android.gms.internal.measurement.C7431k2> r22, java.lang.Long r23, java.lang.Long r24) {
        /*
            Method dump skipped, instructions count: 5039
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C7763ja.m6331k(java.lang.String, java.util.List, java.util.List, java.lang.Long, java.lang.Long):java.util.List");
    }
}
