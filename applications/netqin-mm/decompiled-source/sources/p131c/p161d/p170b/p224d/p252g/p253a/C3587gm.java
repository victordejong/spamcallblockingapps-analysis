package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzabb;
import com.google.android.gms.internal.ads.zzcpf;
import com.google.android.gms.internal.ads.zzcsc;
import com.google.android.gms.internal.ads.zzdog;
import com.google.android.gms.internal.ads.zzdyr;
import com.google.android.gms.internal.ads.zzwm;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: c.d.b.d.g.a.gm */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/gm.class */
public final class C3587gm implements zzdyr<zzdog> {

    /* renamed from: a */
    public final /* synthetic */ zzcpf f13215a;

    public C3587gm(zzcpf zzcpfVar) {
        this.f13215a = zzcpfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdyr
    /* renamed from: a */
    public final void mo12980a(Throwable th) {
        Pattern pattern;
        zzcsc zzcscVar;
        if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23830i3)).booleanValue()) {
            pattern = zzcpf.f26369g;
            Matcher matcher = pattern.matcher(th.getMessage());
            if (matcher.matches()) {
                String group = matcher.group(1);
                zzcscVar = this.f13215a.f26374f;
                zzcscVar.m13897a(Integer.parseInt(group));
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdyr
    public final /* synthetic */ void onSuccess(zzdog zzdogVar) {
        zzcsc zzcscVar;
        zzcsc zzcscVar2;
        zzdog zzdogVar2 = zzdogVar;
        if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23830i3)).booleanValue()) {
            zzcscVar = this.f13215a.f26374f;
            zzcscVar.m13897a(zzdogVar2.f27634b.f27630b.f27615e);
            zzcscVar2 = this.f13215a.f26374f;
            zzcscVar2.m13896a(zzdogVar2.f27634b.f27630b.f27616f);
        }
    }
}
