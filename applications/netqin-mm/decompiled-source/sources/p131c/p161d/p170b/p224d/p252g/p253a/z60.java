package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzeip;
import com.google.android.gms.internal.ads.zzeiu;
import java.util.Comparator;
/* renamed from: c.d.b.d.g.a.z60 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/z60.class */
public final class z60 implements Comparator<zzeip> {
    @Override // java.util.Comparator
    public final /* synthetic */ int compare(zzeip zzeipVar, zzeip zzeipVar2) {
        int zzb;
        int zzb2;
        zzeip zzeipVar3 = zzeipVar;
        zzeip zzeipVar4 = zzeipVar2;
        zzeiu zzeiuVar = (zzeiu) zzeipVar3.iterator();
        zzeiu zzeiuVar2 = (zzeiu) zzeipVar4.iterator();
        while (zzeiuVar.hasNext() && zzeiuVar2.hasNext()) {
            zzb = zzeip.zzb(zzeiuVar.nextByte());
            zzb2 = zzeip.zzb(zzeiuVar2.nextByte());
            int compare = Integer.compare(zzb, zzb2);
            if (compare != 0) {
                return compare;
            }
        }
        return Integer.compare(zzeipVar3.size(), zzeipVar4.size());
    }
}
