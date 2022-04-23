package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzdwd;
import com.google.android.gms.internal.ads.zzdwk;
import com.google.android.gms.internal.ads.zzdwm;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.util.Arrays;
import java.util.Collection;
/* renamed from: c.d.b.d.g.a.e10 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/e10.class */
public class e10<E> extends zzdwm<E> {

    /* renamed from: a */
    public Object[] f12793a;

    /* renamed from: b */
    public int f12794b = 0;

    /* renamed from: c */
    public boolean f12795c;

    public e10(int i) {
        c10.m27106a(i, "initialCapacity");
        this.f12793a = new Object[i];
    }

    @Override // com.google.android.gms.internal.ads.zzdwm
    /* renamed from: a */
    public zzdwm<E> mo13078a(Iterable<? extends E> iterable) {
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            m27059a(this.f12794b + collection.size());
            if (collection instanceof zzdwk) {
                this.f12794b = ((zzdwk) collection).zza(this.f12793a, this.f12794b);
                return this;
            }
        }
        super.mo13078a((Iterable) iterable);
        return this;
    }

    /* renamed from: a */
    public final void m27059a(int i) {
        Object[] objArr = this.f12793a;
        if (objArr.length < i) {
            int length = objArr.length;
            if (i >= 0) {
                int i2 = length + (length >> 1) + 1;
                int i3 = i2;
                if (i2 < i) {
                    i3 = Integer.highestOneBit(i - 1) << 1;
                }
                int i4 = i3;
                if (i3 < 0) {
                    i4 = MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT;
                }
                this.f12793a = Arrays.copyOf(objArr, i4);
                this.f12795c = false;
                return;
            }
            throw new AssertionError("cannot store more than MAX_VALUE elements");
        } else if (this.f12795c) {
            this.f12793a = (Object[]) objArr.clone();
            this.f12795c = false;
        }
    }

    /* renamed from: b */
    public e10<E> m27058b(E e) {
        zzdwd.m13096a(e);
        m27059a(this.f12794b + 1);
        Object[] objArr = this.f12793a;
        int i = this.f12794b;
        this.f12794b = i + 1;
        objArr[i] = e;
        return this;
    }
}
