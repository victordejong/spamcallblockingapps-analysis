package com.google.firebase.abt.component;

import android.content.Context;
import androidx.annotation.Keep;
import java.util.Arrays;
import java.util.List;
import p007a6.C0028d;
import p201p6.C4021f;
import p263v4.C4642a;
import p285x4.AbstractC4857a;
import p305z4.AbstractC5080d;
import p305z4.AbstractC5083g;
import p305z4.C5077c;
import p305z4.C5093m;
@Keep
/* loaded from: classes-dex2jar.jar:com/google/firebase/abt/component/AbtRegistrar.class */
public class AbtRegistrar implements AbstractC5083g {
    public static /* synthetic */ C4642a lambda$getComponents$0(AbstractC5080d abstractC5080d) {
        return new C4642a((Context) abstractC5080d.mo40a(Context.class), abstractC5080d.mo38c(AbstractC4857a.class));
    }

    @Override // p305z4.AbstractC5083g
    public List<C5077c<?>> getComponents() {
        C5077c.C5079b m56a = C5077c.m56a(C4642a.class);
        m56a.m53a(new C5093m(Context.class, 1, 0));
        m56a.m53a(new C5093m(AbstractC4857a.class, 0, 1));
        m56a.m50d(C0028d.f43a);
        return Arrays.asList(m56a.m52b(), C4021f.m1502a("fire-abt", "21.0.0"));
    }
}
