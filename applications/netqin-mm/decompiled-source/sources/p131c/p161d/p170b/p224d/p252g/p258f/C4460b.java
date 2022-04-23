package p131c.p161d.p170b.p224d.p252g.p258f;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.measurement.zzae;
import com.google.android.gms.internal.measurement.zzag;
import com.google.android.gms.internal.measurement.zzv;
/* renamed from: c.d.b.d.g.f.b */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/f/b.class */
public final class C4460b extends zzag.AbstractRunnableC7272a {

    /* renamed from: e */
    public final /* synthetic */ String f16684e;

    /* renamed from: f */
    public final /* synthetic */ String f16685f;

    /* renamed from: g */
    public final /* synthetic */ Context f16686g;

    /* renamed from: h */
    public final /* synthetic */ Bundle f16687h;

    /* renamed from: i */
    public final /* synthetic */ zzag f16688i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C4460b(zzag zzagVar, String str, String str2, Context context, Bundle bundle) {
        super(zzagVar);
        this.f16688i = zzagVar;
        this.f16684e = str;
        this.f16685f = str2;
        this.f16686g = context;
        this.f16687h = bundle;
    }

    @Override // com.google.android.gms.internal.measurement.zzag.AbstractRunnableC7272a
    /* renamed from: a */
    public final void mo10433a() {
        boolean b;
        String str;
        String str2;
        String str3;
        Boolean bool;
        zzv zzvVar;
        int g;
        int f;
        boolean z;
        zzv zzvVar2;
        String str4;
        try {
            zzag zzagVar = this.f16688i;
            b = zzag.m10450b(this.f16684e, this.f16685f);
            if (b) {
                str = this.f16685f;
                str3 = this.f16684e;
                str2 = this.f16688i.f29413a;
            } else {
                str2 = null;
                str = null;
                str3 = null;
            }
            zzag.m10435h(this.f16686g);
            bool = zzag.f29410k;
            boolean z2 = bool.booleanValue() || str3 != null;
            this.f16688i.f29421i = this.f16688i.m10472a(this.f16686g, z2);
            zzvVar = this.f16688i.f29421i;
            if (zzvVar == null) {
                str4 = this.f16688i.f29413a;
                Log.w(str4, "Failed to connect to measurement client.");
                return;
            }
            g = zzag.m10437g(this.f16686g);
            f = zzag.m10439f(this.f16686g);
            if (z2) {
                f = Math.max(g, f);
                z = f < g;
            } else {
                if (g > 0) {
                    f = g;
                }
                z = g > 0;
            }
            zzae zzaeVar = new zzae(33025L, f, z, str2, str3, str, this.f16687h);
            zzvVar2 = this.f16688i.f29421i;
            zzvVar2.initialize(ObjectWrapper.m17020a(this.f16686g), zzaeVar, this.f29422a);
        } catch (Exception e) {
            this.f16688i.m10462a(e, true, false);
        }
    }
}
