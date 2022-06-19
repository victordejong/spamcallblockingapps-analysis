package com.google.firebase.remoteconfig;

import android.content.Context;
import androidx.annotation.Keep;
import java.util.Arrays;
import java.util.List;
import p201p6.C4021f;
import p211q6.C4164g;
import p241t4.C4392c;
import p252u4.C4485b;
import p263v4.C4642a;
import p285x4.AbstractC4857a;
import p286x5.AbstractC4871e;
import p286x5.C4872f;
import p305z4.AbstractC5080d;
import p305z4.AbstractC5083g;
import p305z4.C5077c;
import p305z4.C5093m;
@Keep
/* loaded from: classes-dex2jar.jar:com/google/firebase/remoteconfig/RemoteConfigRegistrar.class */
public class RemoteConfigRegistrar implements AbstractC5083g {
    public static C4164g lambda$getComponents$0(AbstractC5080d abstractC5080d) {
        C4485b c4485b;
        Context context = (Context) abstractC5080d.mo40a(Context.class);
        C4392c c4392c = (C4392c) abstractC5080d.mo40a(C4392c.class);
        AbstractC4871e abstractC4871e = (AbstractC4871e) abstractC5080d.mo40a(AbstractC4871e.class);
        C4642a c4642a = (C4642a) abstractC5080d.mo40a(C4642a.class);
        synchronized (c4642a) {
            if (!c4642a.f14334a.containsKey("frc")) {
                c4642a.f14334a.put("frc", new C4485b(c4642a.f14335b, "frc"));
            }
            c4485b = c4642a.f14334a.get("frc");
        }
        return new C4164g(context, c4392c, abstractC4871e, c4485b, abstractC5080d.mo38c(AbstractC4857a.class));
    }

    @Override // p305z4.AbstractC5083g
    public List<C5077c<?>> getComponents() {
        C5077c.C5079b m56a = C5077c.m56a(C4164g.class);
        m56a.m53a(new C5093m(Context.class, 1, 0));
        m56a.m53a(new C5093m(C4392c.class, 1, 0));
        m56a.m53a(new C5093m(AbstractC4871e.class, 1, 0));
        m56a.m53a(new C5093m(C4642a.class, 1, 0));
        m56a.m53a(new C5093m(AbstractC4857a.class, 0, 1));
        m56a.m50d(C4872f.f14932c);
        m56a.m51c();
        return Arrays.asList(m56a.m52b(), C4021f.m1502a("fire-rc", "21.0.0"));
    }
}
