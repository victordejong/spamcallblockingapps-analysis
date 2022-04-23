package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzabb;
import com.google.android.gms.internal.ads.zzcpm;
import com.google.android.gms.internal.ads.zzcsc;
import com.google.android.gms.internal.ads.zzdog;
import com.google.android.gms.internal.ads.zzdyr;
import com.google.android.gms.internal.ads.zzwm;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: c.d.b.d.g.a.im */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/im.class */
public final class C3662im implements zzdyr<zzdog> {

    /* renamed from: a */
    public final /* synthetic */ zzcpm f13551a;

    public C3662im(zzcpm zzcpmVar) {
        this.f13551a = zzcpmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdyr
    /* renamed from: a */
    public final void mo12980a(Throwable th) {
        Pattern pattern;
        zzcsc zzcscVar;
        if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23830i3)).booleanValue()) {
            pattern = zzcpm.f26375f;
            Matcher matcher = pattern.matcher(th.getMessage());
            if (matcher.matches()) {
                String group = matcher.group(1);
                zzcscVar = this.f13551a.f26380e;
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
            zzcscVar = this.f13551a.f26380e;
            zzcscVar.m13897a(zzdogVar2.f27634b.f27630b.f27615e);
            zzcscVar2 = this.f13551a.f26380e;
            zzcscVar2.m13896a(zzdogVar2.f27634b.f27630b.f27616f);
        }
    }
}
