package p131c.p161d.p170b.p224d.p252g.p253a;

import android.view.MotionEvent;
import android.view.ViewGroup;
import com.google.android.gms.internal.ads.zzads;
import com.google.android.gms.internal.ads.zzcfc;
import com.google.android.gms.internal.ads.zzcfe;
import com.google.android.gms.internal.ads.zzcgc;
import org.json.JSONObject;
/* renamed from: c.d.b.d.g.a.th */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/th.class */
public final class C4067th implements zzads {

    /* renamed from: a */
    public final /* synthetic */ zzcgc f15405a;

    /* renamed from: b */
    public final /* synthetic */ ViewGroup f15406b;

    /* renamed from: c */
    public final /* synthetic */ zzcfe f15407c;

    public C4067th(zzcfe zzcfeVar, zzcgc zzcgcVar, ViewGroup viewGroup) {
        this.f15407c = zzcfeVar;
        this.f15405a = zzcgcVar;
        this.f15406b = viewGroup;
    }

    @Override // com.google.android.gms.internal.ads.zzads
    /* renamed from: W */
    public final JSONObject mo16845W() {
        return this.f15405a.mo14324W();
    }

    @Override // com.google.android.gms.internal.ads.zzads
    /* renamed from: X */
    public final void mo16844X() {
        boolean a;
        zzcfe zzcfeVar = this.f15407c;
        a = zzcfe.m14351a(this.f15405a, zzcfc.f25903n);
        if (a) {
            this.f15405a.onClick(this.f15406b);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzads
    /* renamed from: a */
    public final void mo16843a(MotionEvent motionEvent) {
        this.f15405a.onTouch(null, motionEvent);
    }
}
