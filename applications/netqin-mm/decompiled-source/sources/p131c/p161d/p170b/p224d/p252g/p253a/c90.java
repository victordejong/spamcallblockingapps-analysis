package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzeiu;
import com.google.android.gms.internal.ads.zzeiw;
import com.google.android.gms.internal.ads.zzemc;
import java.util.NoSuchElementException;
/* renamed from: c.d.b.d.g.a.c90 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/c90.class */
public final class c90 extends y60 {

    /* renamed from: a */
    public final d90 f12532a;

    /* renamed from: b */
    public zzeiu f12533b = m27100a();

    /* renamed from: c */
    public final /* synthetic */ zzemc f12534c;

    public c90(zzemc zzemcVar) {
        this.f12534c = zzemcVar;
        this.f12532a = new d90(this.f12534c, null);
    }

    /* renamed from: a */
    public final zzeiu m27100a() {
        if (this.f12532a.hasNext()) {
            return (zzeiu) ((zzeiw) this.f12532a.next()).iterator();
        }
        return null;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f12533b != null;
    }

    @Override // com.google.android.gms.internal.ads.zzeiu
    public final byte nextByte() {
        zzeiu zzeiuVar = this.f12533b;
        if (zzeiuVar != null) {
            byte nextByte = zzeiuVar.nextByte();
            if (!this.f12533b.hasNext()) {
                this.f12533b = m27100a();
            }
            return nextByte;
        }
        throw new NoSuchElementException();
    }
}
