package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzbfl;
import java.util.HashMap;
/* renamed from: c.d.b.d.g.a.t8 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/t8.class */
public final class RunnableC4058t8 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ String f15352a;

    /* renamed from: b */
    public final /* synthetic */ String f15353b;

    /* renamed from: c */
    public final /* synthetic */ int f15354c;

    /* renamed from: d */
    public final /* synthetic */ int f15355d;

    /* renamed from: e */
    public final /* synthetic */ long f15356e;

    /* renamed from: f */
    public final /* synthetic */ long f15357f;

    /* renamed from: g */
    public final /* synthetic */ boolean f15358g;

    /* renamed from: h */
    public final /* synthetic */ int f15359h;

    /* renamed from: i */
    public final /* synthetic */ int f15360i;

    /* renamed from: j */
    public final /* synthetic */ zzbfl f15361j;

    public RunnableC4058t8(zzbfl zzbflVar, String str, String str2, int i, int i2, long j, long j2, boolean z, int i3, int i4) {
        this.f15361j = zzbflVar;
        this.f15352a = str;
        this.f15353b = str2;
        this.f15354c = i;
        this.f15355d = i2;
        this.f15356e = j;
        this.f15357f = j2;
        this.f15358g = z;
        this.f15359h = i3;
        this.f15360i = i4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap hashMap = new HashMap();
        hashMap.put("event", "precacheProgress");
        hashMap.put("src", this.f15352a);
        hashMap.put("cachedSrc", this.f15353b);
        hashMap.put("bytesLoaded", Integer.toString(this.f15354c));
        hashMap.put("totalBytes", Integer.toString(this.f15355d));
        hashMap.put("bufferedDuration", Long.toString(this.f15356e));
        hashMap.put("totalDuration", Long.toString(this.f15357f));
        hashMap.put("cacheReady", this.f15358g ? "1" : "0");
        hashMap.put("playerCount", Integer.toString(this.f15359h));
        hashMap.put("playerPreparedCount", Integer.toString(this.f15360i));
        this.f15361j.m15661a("onPrecacheEvent", hashMap);
    }
}
