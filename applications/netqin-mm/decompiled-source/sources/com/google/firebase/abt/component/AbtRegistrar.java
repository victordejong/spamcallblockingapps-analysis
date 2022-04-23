package com.google.firebase.abt.component;

import android.content.Context;
import androidx.annotation.Keep;
import java.util.Arrays;
import java.util.List;
import p131c.p161d.p282e.p283i.p284c.C5141a;
import p131c.p161d.p282e.p283i.p284c.C5142b;
import p131c.p161d.p282e.p285j.p286a.AbstractC5143a;
import p131c.p161d.p282e.p288k.AbstractC5165e;
import p131c.p161d.p282e.p288k.AbstractC5171h;
import p131c.p161d.p282e.p288k.C5162d;
import p131c.p161d.p282e.p288k.C5180n;
import p131c.p161d.p282e.p351v.C6061h;
@Keep
/* loaded from: classes2-dex2jar.jar:com/google/firebase/abt/component/AbtRegistrar.class */
public class AbtRegistrar implements AbstractC5171h {
    public static /* synthetic */ C5141a lambda$getComponents$0(AbstractC5165e eVar) {
        return new C5141a((Context) eVar.mo24330a(Context.class), (AbstractC5143a) eVar.mo24330a(AbstractC5143a.class));
    }

    @Override // p131c.p161d.p282e.p288k.AbstractC5171h
    public List<C5162d<?>> getComponents() {
        C5162d.C5164b a = C5162d.m24395a(C5141a.class);
        a.m24378a(C5180n.m24343c(Context.class));
        a.m24378a(C5180n.m24347a(AbstractC5143a.class));
        a.m24379a(C5142b.m24419a());
        return Arrays.asList(a.m24382a(), C6061h.m22163a("fire-abt", "20.0.0"));
    }
}
