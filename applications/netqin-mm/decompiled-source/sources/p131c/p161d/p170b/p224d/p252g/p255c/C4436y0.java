package p131c.p161d.p170b.p224d.p252g.p255c;

import com.google.android.gms.internal.clearcut.zzdi;
import java.util.Iterator;
import java.util.Map;
/* renamed from: c.d.b.d.g.c.y0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/c/y0.class */
public final class C4436y0 implements AbstractC4432x0 {
    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4432x0
    /* renamed from: a */
    public final int mo25585a(int i, Object obj, Object obj2) {
        zzdi zzdiVar = (zzdi) obj;
        if (zzdiVar.isEmpty()) {
            return 0;
        }
        Iterator it = zzdiVar.entrySet().iterator();
        if (!it.hasNext()) {
            return 0;
        }
        Map.Entry entry = (Map.Entry) it.next();
        entry.getKey();
        entry.getValue();
        throw new NoSuchMethodError();
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4432x0
    /* renamed from: a */
    public final Map<?, ?> mo25584a(Object obj) {
        return (zzdi) obj;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4432x0
    /* renamed from: b */
    public final Object mo25583b(Object obj) {
        ((zzdi) obj).zzv();
        return obj;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4432x0
    /* renamed from: b */
    public final Object mo25582b(Object obj, Object obj2) {
        zzdi zzdiVar = (zzdi) obj;
        zzdi zzdiVar2 = (zzdi) obj2;
        zzdi zzdiVar3 = zzdiVar;
        if (!zzdiVar2.isEmpty()) {
            zzdiVar3 = zzdiVar;
            if (!zzdiVar.isMutable()) {
                zzdiVar3 = zzdiVar.zzca();
            }
            zzdiVar3.zza(zzdiVar2);
        }
        return zzdiVar3;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4432x0
    /* renamed from: c */
    public final boolean mo25581c(Object obj) {
        return !((zzdi) obj).isMutable();
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4432x0
    /* renamed from: d */
    public final C4428w0<?, ?> mo25580d(Object obj) {
        throw new NoSuchMethodError();
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4432x0
    /* renamed from: e */
    public final Object mo25579e(Object obj) {
        return zzdi.zzbz().zzca();
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4432x0
    /* renamed from: f */
    public final Map<?, ?> mo25578f(Object obj) {
        return (zzdi) obj;
    }
}
