package p124i4;

import android.content.Context;
import java.util.Objects;
import p189o4.AbstractC3882s;
/* renamed from: i4.l */
/* loaded from: classes-dex2jar.jar:i4/l.class */
public final class C3110l implements AbstractC3882s {

    /* renamed from: a */
    public final C3108j f10532a;

    public C3110l(C3108j c3108j) {
        this.f10532a = c3108j;
    }

    /* renamed from: a */
    public final Context m2605a() {
        Context context = this.f10532a.f10529a;
        Objects.requireNonNull(context, "Cannot return null from a non-@Nullable @Provides method");
        return context;
    }

    @Override // p189o4.AbstractC3882s
    public final Object zza() {
        Context context = this.f10532a.f10529a;
        Objects.requireNonNull(context, "Cannot return null from a non-@Nullable @Provides method");
        return context;
    }
}
