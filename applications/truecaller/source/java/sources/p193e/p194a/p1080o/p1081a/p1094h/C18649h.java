package p193e.p194a.p1080o.p1081a.p1094h;

import android.os.Bundle;
import androidx.fragment.app.FragmentManager;
import com.truecaller.contextcall.utils.ContextCallAnalyticsContext;
import java.util.Objects;
import javax.inject.Inject;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1080o.p1097b.AbstractC18746o;
import s1.z.c.l;
/* renamed from: e.a.o.a.h.h */
/* loaded from: classes8-dex2jar.jar:e/a/o/a/h/h.class */
public final class C18649h implements AbstractC18638a {

    /* renamed from: a */
    public final AbstractC18746o f52466a;

    @Inject
    public C18649h(AbstractC18746o abstractC18746o) {
        l.e(abstractC18746o, "settings");
        this.f52466a = abstractC18746o;
    }

    @Override // p193e.p194a.p1080o.p1081a.p1094h.AbstractC18638a
    /* renamed from: a */
    public void mo14672a() {
        this.f52466a.remove("guidelineIsAgreed");
    }

    @Override // p193e.p194a.p1080o.p1081a.p1094h.AbstractC18638a
    /* renamed from: b */
    public boolean mo14671b(FragmentManager fragmentManager, ContextCallAnalyticsContext contextCallAnalyticsContext) {
        l.e(fragmentManager, "fragmentManager");
        String str = null;
        if (C17891a1.C17902k.m15681F(this.f52466a, "guidelineIsAgreed", false, 2, null)) {
            return false;
        }
        Objects.requireNonNull(C18639b.f52457i);
        l.e(fragmentManager, "fragmentManager");
        C18639b c18639b = new C18639b();
        Bundle bundle = new Bundle();
        if (contextCallAnalyticsContext != null) {
            str = contextCallAnalyticsContext.name();
        }
        bundle.putString("manage_call_reason_source", str);
        c18639b.setArguments(bundle);
        c18639b.show(fragmentManager, C18639b.class.getSimpleName());
        return true;
    }
}
