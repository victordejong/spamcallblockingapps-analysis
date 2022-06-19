package com.google.android.gms.measurement.internal;

import java.util.BitSet;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzy.class */
public final class zzy extends zzke {
    private String zza;
    private Set<Integer> zzb;
    private Map<Integer, zzt> zzc;
    private Long zzd;
    private Long zze;

    public zzy(zzkn zzknVar) {
        super(zzknVar);
    }

    private final zzt zzc(Integer num) {
        if (this.zzc.containsKey(num)) {
            return this.zzc.get(num);
        }
        zzt zztVar = new zzt(this, this.zza, null);
        this.zzc.put(num, zztVar);
        return zztVar;
    }

    private final boolean zzd(int i, int i2) {
        BitSet bitSet;
        zzt zztVar = this.zzc.get(Integer.valueOf(i));
        if (zztVar == null) {
            return false;
        }
        bitSet = zztVar.zze;
        return bitSet.get(i2);
    }

    @Override // com.google.android.gms.measurement.internal.zzke
    public final boolean zzaA() {
        return false;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(27:2|(2:3|(2:5|(2:542|7))(2:541|8))|9|(3:11|518|12)|15|(2:17|(7:19|526|20|21|528|22|(22:(12:24|25|26|27|504|28|29|30|(1:32)(7:33|34|35|36|(6:38|39|40|41|42|43)|44|45)|49|50|51)|543|53|77|533|78|79|520|80|(4:82|83|84|85)(7:86|87|88|89|90|(13:91|92|93|94|95|512|96|97|98|106|107|108|(1:544)(1:111))|110)|130|(1:132)(4:134|(3:136|(11:138|525|139|140|527|141|(3:(12:143|144|145|146|147|148|(6:150|151|152|153|154|155)|156|157|158|159|160)|545|162)(3:164|165|166)|163|180|(4:183|(2:204|554)(3:550|187|(9:546|189|(4:192|(2:194|556)(1:557)|195|190)|555|196|(4:199|(2:201|559)(1:560)|202|197)|558|203|553)(1:552))|551|181)|548)|205)(1:211)|212|(2:213|(9:215|(3:219|(4:222|(5:569|224|(1:226)(1:227)|228|572)(1:571)|570|220)|568)|229|(2:231|(1:233)(2:234|(2:235|(3:237|(3:575|241|579)|576)(1:573))))(0)|242|(2:244|(2:245|(5:247|(2:249|(3:251|582|253))|252|581|253)(1:580)))(0)|254|(3:264|(8:267|(1:269)|270|(1:272)|273|(3:583|275|586)(1:585)|584|265)|566)|276)(1:561)))|133|277|(1:279)(2:280|(2:281|(3:283|(9:285|(1:287)(1:288)|289|(7:291|537|292|293|521|294|(5:296|(16:297|510|298|299|506|300|301|302|303|304|(7:306|500|307|308|309|310|311)|312|313|321|322|323)|590|325|348)(5:328|329|330|331|348))(1:356)|357|(4:360|(3:594|362|596)(5:592|363|(2:364|(2:366|(1:368)(2:599|369))(1:600))|370|(3:593|372|598)(1:597))|595|358)|591|373|588)(1:589)|374)(1:587)))|375|(1:377)(2:378|(2:379|(5:381|(7:383|539|384|385|498|386|(4:(16:388|389|390|391|516|392|393|394|395|396|(6:398|399|400|401|402|403)|404|405|411|412|413)|604|415|435)(5:416|417|418|419|435))(1:443)|444|(2:445|(2:447|(3:607|449|603)(8:450|(2:451|(4:453|(3:455|(1:457)(1:458)|459)|460|(1:1)(2:464|(1:466)(2:613|467)))(1:612))|468|(1:470)(1:471)|472|475|611|609))(0))|476)(1:601)))|477|(10:480|514|481|482|502|483|616|(3:615|485|619)(1:618)|617|478)|614|489|490)(4:54|55|56|57)))|76|77|533|78|79|520|80|(0)(0)|130|(0)(0)|133|277|(0)(0)|375|(0)(0)|477|(1:478)|614|489|490|(4:(0)|(1:530)|(1:509)|(1:532))) */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x0437, code lost:
        r23 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x0439, code lost:
        r32 = "audience_id";
        r20 = "data";
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x0451, code lost:
        r20 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x0452, code lost:
        r21 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x0457, code lost:
        r23 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x0459, code lost:
        r24 = "audience_id";
        r32 = "data";
        r20 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:474:0x124b, code lost:
        if (r27 != false) goto L610;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:128:0x048a  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x049c  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x04aa  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x0629  */
    /* JADX WARN: Removed duplicated region for block: B:208:0x0758  */
    /* JADX WARN: Removed duplicated region for block: B:215:0x078a  */
    /* JADX WARN: Removed duplicated region for block: B:279:0x0a1e  */
    /* JADX WARN: Removed duplicated region for block: B:280:0x0a2d  */
    /* JADX WARN: Removed duplicated region for block: B:347:0x0d65  */
    /* JADX WARN: Removed duplicated region for block: B:360:0x0da5  */
    /* JADX WARN: Removed duplicated region for block: B:377:0x0eb7  */
    /* JADX WARN: Removed duplicated region for block: B:378:0x0ebd  */
    /* JADX WARN: Removed duplicated region for block: B:447:0x10d2  */
    /* JADX WARN: Removed duplicated region for block: B:480:0x1295  */
    /* JADX WARN: Removed duplicated region for block: B:561:0x04a0 A[EDGE_INSN: B:561:0x04a0->B:133:0x04a0 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x028e  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x02fb  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x031d  */
    /* JADX WARN: Type inference failed for: r0v114, types: [long] */
    /* JADX WARN: Type inference failed for: r0v130, types: [long] */
    /* JADX WARN: Type inference failed for: r0v278, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r0v291, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r0v914, types: [android.database.Cursor] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.google.android.gms.internal.measurement.zzfk> zzb(java.lang.String r20, java.util.List<com.google.android.gms.internal.measurement.zzfo> r21, java.util.List<com.google.android.gms.internal.measurement.zzgh> r22, java.lang.Long r23, java.lang.Long r24) {
        /*
            Method dump skipped, instructions count: 5003
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzy.zzb(java.lang.String, java.util.List, java.util.List, java.lang.Long, java.lang.Long):java.util.List");
    }
}
