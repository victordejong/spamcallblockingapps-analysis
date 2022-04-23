package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzbfl;
import java.util.HashMap;
/* renamed from: c.d.b.d.g.a.s8 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/s8.class */
public final class RunnableC4021s8 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ String f15080a;

    /* renamed from: b */
    public final /* synthetic */ String f15081b;

    /* renamed from: c */
    public final /* synthetic */ int f15082c;

    /* renamed from: d */
    public final /* synthetic */ int f15083d;

    /* renamed from: e */
    public final /* synthetic */ boolean f15084e = false;

    /* renamed from: f */
    public final /* synthetic */ zzbfl f15085f;

    public RunnableC4021s8(zzbfl zzbflVar, String str, String str2, int i, int i2, boolean z) {
        this.f15085f = zzbflVar;
        this.f15080a = str;
        this.f15081b = str2;
        this.f15082c = i;
        this.f15083d = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap hashMap = new HashMap();
        hashMap.put("event", "precacheProgress");
        hashMap.put("src", this.f15080a);
        hashMap.put("cachedSrc", this.f15081b);
        hashMap.put("bytesLoaded", Integer.toString(this.f15082c));
        hashMap.put("totalBytes", Integer.toString(this.f15083d));
        hashMap.put("cacheReady", this.f15084e ? "1" : "0");
        this.f15085f.m15661a("onPrecacheEvent", hashMap);
    }
}
