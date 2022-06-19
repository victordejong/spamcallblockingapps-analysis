package com.google.firebase.p162b;

import android.content.Context;
import com.google.firebase.components.AbstractC4884e;
import com.google.firebase.components.C4879b;
import com.google.firebase.components.C4899n;
import com.google.firebase.p162b.AbstractC4873c;
/* renamed from: com.google.firebase.b.a */
/* loaded from: classes-dex2jar.jar:com/google/firebase/b/a.class */
public class C4871a implements AbstractC4873c {

    /* renamed from: a */
    private C4875d f20953a;

    private C4871a(Context context) {
        this.f20953a = C4875d.m2129a(context);
    }

    /* renamed from: a */
    public static /* synthetic */ AbstractC4873c m2139a(AbstractC4884e abstractC4884e) {
        return new C4871a((Context) abstractC4884e.mo2054a(Context.class));
    }

    /* renamed from: a */
    public static C4879b<AbstractC4873c> m2140a() {
        return C4879b.m2123a(AbstractC4873c.class).m2106a(C4899n.m2070b(Context.class)).m2107a(C4872b.m2137a()).m2103c();
    }

    @Override // com.google.firebase.p162b.AbstractC4873c
    /* renamed from: a */
    public AbstractC4873c.EnumC4874a mo2133a(String str) {
        long currentTimeMillis = System.currentTimeMillis();
        boolean m2127a = this.f20953a.m2127a(str, currentTimeMillis);
        boolean m2130a = this.f20953a.m2130a(currentTimeMillis);
        return (!m2127a || !m2130a) ? m2130a ? AbstractC4873c.EnumC4874a.GLOBAL : m2127a ? AbstractC4873c.EnumC4874a.SDK : AbstractC4873c.EnumC4874a.NONE : AbstractC4873c.EnumC4874a.COMBINED;
    }
}
