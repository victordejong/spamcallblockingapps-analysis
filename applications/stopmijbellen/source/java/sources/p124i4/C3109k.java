package p124i4;

import android.content.Context;
import java.util.Objects;
import p189o4.AbstractC3882s;
import p209q4.C4154a;
/* renamed from: i4.k */
/* loaded from: classes-dex2jar.jar:i4/k.class */
public final class C3109k implements AbstractC3882s {

    /* renamed from: a */
    public final /* synthetic */ int f10530a;

    /* renamed from: b */
    public final AbstractC3882s f10531b;

    public /* synthetic */ C3109k(AbstractC3882s abstractC3882s, int i) {
        this.f10530a = i;
        this.f10531b = abstractC3882s;
    }

    @Override // p189o4.AbstractC3882s
    public final Object zza() {
        switch (this.f10530a) {
            case 0:
                C3106h c3106h = (C3106h) this.f10531b.zza();
                Objects.requireNonNull(c3106h, "Cannot return null from a non-@Nullable @Provides method");
                return c3106h;
            default:
                return new C4154a((Context) this.f10531b.zza());
        }
    }
}
