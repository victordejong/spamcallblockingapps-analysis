package com.google.android.gms.measurement.internal;

import java.util.BitSet;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzy.class */
public final class zzy extends zzjv {
    private String zzb;
    private Set<Integer> zzc;
    private Map<Integer, zzt> zzd;
    private Long zze;
    private Long zzf;

    public zzy(zzkd zzkdVar) {
        super(zzkdVar);
    }

    private final zzt zzc(Integer num) {
        if (this.zzd.containsKey(num)) {
            return this.zzd.get(num);
        }
        zzt zztVar = new zzt(this, this.zzb, null);
        this.zzd.put(num, zztVar);
        return zztVar;
    }

    private final boolean zzd(int i, int i2) {
        BitSet bitSet;
        zzt zztVar = this.zzd.get(Integer.valueOf(i));
        if (zztVar == null) {
            return false;
        }
        bitSet = zztVar.zze;
        return bitSet.get(i2);
    }

    @Override // com.google.android.gms.measurement.internal.zzjv
    protected final boolean zzaz() {
        return false;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(17:(2:17|(7:19|555|20|21|528|22|(23:(12:24|25|26|27|544|28|29|30|(1:32)(7:33|34|35|36|(6:38|39|40|41|42|43)|44|45)|49|50|51)|568|53|(1:55)|81|559|82|83|525|84|(5:86|87|88|(1:90)|91)(9:92|93|94|95|96|(13:97|98|99|100|101|531|102|103|104|112|113|114|(1:569)(1:120))|116|(1:118)|119)|139|(1:141)(4:143|(3:145|(7:147|537|148|149|548|150|(7:(12:152|153|154|155|156|157|(6:159|160|161|162|163|164)|165|166|167|168|169)|570|171|(2:173|174)|193|(4:196|(2:217|579)(3:575|200|(9:571|202|(4:205|(2:207|581)(1:582)|208|203)|580|209|(4:212|(2:214|584)(1:585)|215|210)|583|216|578)(1:577))|576|194)|573)(7:175|176|177|(2:179|174)|193|(1:194)|573))|218)(1:224)|225|(2:226|(9:228|(3:232|(4:235|(5:594|237|(1:239)(1:240)|241|597)(1:596)|595|233)|593)|242|(2:244|(1:246)(2:247|(2:248|(3:250|(3:600|254|604)|601)(1:598))))(0)|255|(2:257|(2:258|(5:260|(2:262|(3:264|607|266))|265|606|266)(1:605)))(0)|267|(3:277|(8:280|(1:282)|283|(1:285)|286|(3:608|288|611)(1:610)|609|278)|591)|289)(1:586)))|142|290|(1:292)(2:293|(2:294|(3:296|(9:298|(1:300)(1:301)|302|(8:304|564|305|306|529|307|(6:309|(16:310|546|311|312|523|313|314|315|316|317|(7:319|535|320|321|322|323|324)|325|326|334|335|336)|615|338|(1:340)|341)(4:345|346|347|(2:349|350))|368)(1:376)|377|(4:380|(3:619|382|621)(5:617|383|(2:384|(2:386|(1:388)(2:624|389))(1:625))|390|(3:618|392|623)(1:622))|620|378)|616|393|613)(1:614)|394)(1:612)))|395|(1:397)(2:398|(2:399|(5:401|(8:403|561|404|405|538|406|(5:(16:408|409|410|411|553|412|413|414|415|416|(6:418|419|420|421|422|423)|424|425|431|432|433)|629|435|(1:437)|438)(4:439|440|441|(2:443|444))|460)(1:468)|469|(2:470|(2:472|(3:631|474|628)(8:475|(2:476|(4:478|(3:480|(1:482)(1:483)|484)|485|(1:1)(2:489|(1:491)(2:638|492)))(1:637))|493|(1:495)(1:496)|497|500|636|634))(0))|501)(1:626)))|502|(10:505|549|506|507|542|508|641|(3:639|510|644)(1:643)|642|503)|640|514|515)(4:56|57|58|(2:60|61))))|525|84|(0)(0)|139|(0)(0)|142|290|(0)(0)|395|(0)(0)|502|(1:503)|640|514|515|(4:(1:541)|(0)|(1:552)|(1:527))) */
    /* JADX WARN: Can't wrap try/catch for region: R(27:2|(2:3|(2:5|(2:567|7))(2:566|8))|9|(3:11|533|12)|15|(2:17|(7:19|555|20|21|528|22|(23:(12:24|25|26|27|544|28|29|30|(1:32)(7:33|34|35|36|(6:38|39|40|41|42|43)|44|45)|49|50|51)|568|53|(1:55)|81|559|82|83|525|84|(5:86|87|88|(1:90)|91)(9:92|93|94|95|96|(13:97|98|99|100|101|531|102|103|104|112|113|114|(1:569)(1:120))|116|(1:118)|119)|139|(1:141)(4:143|(3:145|(7:147|537|148|149|548|150|(7:(12:152|153|154|155|156|157|(6:159|160|161|162|163|164)|165|166|167|168|169)|570|171|(2:173|174)|193|(4:196|(2:217|579)(3:575|200|(9:571|202|(4:205|(2:207|581)(1:582)|208|203)|580|209|(4:212|(2:214|584)(1:585)|215|210)|583|216|578)(1:577))|576|194)|573)(7:175|176|177|(2:179|174)|193|(1:194)|573))|218)(1:224)|225|(2:226|(9:228|(3:232|(4:235|(5:594|237|(1:239)(1:240)|241|597)(1:596)|595|233)|593)|242|(2:244|(1:246)(2:247|(2:248|(3:250|(3:600|254|604)|601)(1:598))))(0)|255|(2:257|(2:258|(5:260|(2:262|(3:264|607|266))|265|606|266)(1:605)))(0)|267|(3:277|(8:280|(1:282)|283|(1:285)|286|(3:608|288|611)(1:610)|609|278)|591)|289)(1:586)))|142|290|(1:292)(2:293|(2:294|(3:296|(9:298|(1:300)(1:301)|302|(8:304|564|305|306|529|307|(6:309|(16:310|546|311|312|523|313|314|315|316|317|(7:319|535|320|321|322|323|324)|325|326|334|335|336)|615|338|(1:340)|341)(4:345|346|347|(2:349|350))|368)(1:376)|377|(4:380|(3:619|382|621)(5:617|383|(2:384|(2:386|(1:388)(2:624|389))(1:625))|390|(3:618|392|623)(1:622))|620|378)|616|393|613)(1:614)|394)(1:612)))|395|(1:397)(2:398|(2:399|(5:401|(8:403|561|404|405|538|406|(5:(16:408|409|410|411|553|412|413|414|415|416|(6:418|419|420|421|422|423)|424|425|431|432|433)|629|435|(1:437)|438)(4:439|440|441|(2:443|444))|460)(1:468)|469|(2:470|(2:472|(3:631|474|628)(8:475|(2:476|(4:478|(3:480|(1:482)(1:483)|484)|485|(1:1)(2:489|(1:491)(2:638|492)))(1:637))|493|(1:495)(1:496)|497|500|636|634))(0))|501)(1:626)))|502|(10:505|549|506|507|542|508|641|(3:639|510|644)(1:643)|642|503)|640|514|515)(4:56|57|58|(2:60|61))))|80|81|559|82|83|525|84|(0)(0)|139|(0)(0)|142|290|(0)(0)|395|(0)(0)|502|(1:503)|640|514|515|(4:(1:541)|(0)|(1:552)|(1:527))) */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x0456, code lost:
        r23 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x0458, code lost:
        r32 = "audience_id";
        r20 = "data";
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x0468, code lost:
        r20 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x0469, code lost:
        r21 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x046e, code lost:
        r23 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x0470, code lost:
        r32 = "audience_id";
        r24 = "data";
        r20 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:499:0x12e0, code lost:
        if (r27 != false) goto L635;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:137:0x04a1  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x04b3  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x04c5  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x0656  */
    /* JADX WARN: Removed duplicated region for block: B:221:0x0789  */
    /* JADX WARN: Removed duplicated region for block: B:228:0x07bd  */
    /* JADX WARN: Removed duplicated region for block: B:292:0x0a5f  */
    /* JADX WARN: Removed duplicated region for block: B:293:0x0a6e  */
    /* JADX WARN: Removed duplicated region for block: B:367:0x0dcf  */
    /* JADX WARN: Removed duplicated region for block: B:380:0x0e16  */
    /* JADX WARN: Removed duplicated region for block: B:397:0x0f28  */
    /* JADX WARN: Removed duplicated region for block: B:398:0x0f2e  */
    /* JADX WARN: Removed duplicated region for block: B:472:0x1164  */
    /* JADX WARN: Removed duplicated region for block: B:505:0x1329  */
    /* JADX WARN: Removed duplicated region for block: B:586:0x04b7 A[EDGE_INSN: B:586:0x04b7->B:142:0x04b7 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x02a3  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x030e  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0335  */
    /* JADX WARN: Type inference failed for: r0v114, types: [long] */
    /* JADX WARN: Type inference failed for: r0v130, types: [long] */
    /* JADX WARN: Type inference failed for: r0v213, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r0v277, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r0v290, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r0v935, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r1v160, types: [android.database.sqlite.SQLiteException] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.google.android.gms.internal.measurement.zzcx> zzb(java.lang.String r20, java.util.List<com.google.android.gms.internal.measurement.zzdb> r21, java.util.List<com.google.android.gms.internal.measurement.zzdu> r22, java.lang.Long r23, java.lang.Long r24) {
        /*
            Method dump skipped, instructions count: 5153
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzy.zzb(java.lang.String, java.util.List, java.util.List, java.lang.Long, java.lang.Long):java.util.List");
    }
}
