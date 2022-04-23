package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzeip;
import java.util.NoSuchElementException;
/* renamed from: c.d.b.d.g.a.x60 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/x60.class */
public final class x60 extends y60 {

    /* renamed from: a */
    public int f15995a = 0;

    /* renamed from: b */
    public final int f15996b;

    /* renamed from: c */
    public final /* synthetic */ zzeip f15997c;

    public x60(zzeip zzeipVar) {
        this.f15997c = zzeipVar;
        this.f15996b = this.f15997c.size();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f15995a < this.f15996b;
    }

    @Override // com.google.android.gms.internal.ads.zzeiu
    public final byte nextByte() {
        int i = this.f15995a;
        if (i < this.f15996b) {
            this.f15995a = i + 1;
            return this.f15997c.zzfv(i);
        }
        throw new NoSuchElementException();
    }
}
