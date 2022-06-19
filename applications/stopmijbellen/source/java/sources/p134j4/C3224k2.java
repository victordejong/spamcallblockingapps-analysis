package p134j4;

import android.content.Context;
import java.util.Objects;
import p189o4.AbstractC3882s;
/* renamed from: j4.k2 */
/* loaded from: classes-dex2jar.jar:j4/k2.class */
public final class C3224k2 implements AbstractC3882s {

    /* renamed from: a */
    public final C3220j2 f10867a;

    public C3224k2(C3220j2 c3220j2) {
        this.f10867a = c3220j2;
    }

    /* renamed from: a */
    public final Context m2534a() {
        Context context = this.f10867a.f10856a;
        Objects.requireNonNull(context, "Cannot return null from a non-@Nullable @Provides method");
        return context;
    }

    @Override // p189o4.AbstractC3882s
    public final Object zza() {
        Context context = this.f10867a.f10856a;
        Objects.requireNonNull(context, "Cannot return null from a non-@Nullable @Provides method");
        return context;
    }
}
