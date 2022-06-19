package p134j4;

import p156l4.C3496b;
import p189o4.AbstractC3882s;
/* renamed from: j4.h0 */
/* loaded from: classes-dex2jar.jar:j4/h0.class */
public class C3210h0 implements AbstractC3882s {

    /* renamed from: a */
    public final /* synthetic */ int f10809a;

    /* renamed from: b */
    public Object f10810b;

    /* renamed from: c */
    public Object f10811c;

    /* renamed from: d */
    public Object f10812d;

    /* renamed from: e */
    public Object f10813e;

    public C3210h0(String str, String str2, String str3) {
        this.f10809a = 2;
        this.f10813e = "%s_%s_%s";
        this.f10810b = str;
        this.f10811c = str2;
        this.f10812d = str3;
    }

    public /* synthetic */ C3210h0(AbstractC3882s abstractC3882s, AbstractC3882s abstractC3882s2, AbstractC3882s abstractC3882s3, AbstractC3882s abstractC3882s4, int i) {
        this.f10809a = i;
        this.f10810b = abstractC3882s;
        this.f10811c = abstractC3882s2;
        this.f10812d = abstractC3882s3;
        this.f10813e = abstractC3882s4;
    }

    @Override // p189o4.AbstractC3882s
    public /* bridge */ /* synthetic */ Object zza() {
        switch (this.f10809a) {
            case 0:
                return new BinderC3247s(((C3224k2) ((AbstractC3882s) this.f10810b)).m2534a(), (C3259w) ((AbstractC3882s) this.f10811c).zza(), (C3204f2) ((AbstractC3882s) this.f10812d).zza(), (ServiceConnectionC3230m0) ((AbstractC3882s) this.f10813e).zza());
            default:
                Object zza = ((AbstractC3882s) this.f10810b).zza();
                Object zza2 = ((AbstractC3882s) this.f10811c).zza();
                return new C3195d1((C3187b1) zza, (C3259w) zza2, (C3194d0) ((AbstractC3882s) this.f10812d).zza(), (C3496b) ((AbstractC3882s) this.f10813e).zza());
        }
    }
}
