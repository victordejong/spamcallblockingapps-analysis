package org.mistergroup.shouldianswer.p101ui.settings.allowed_numbers;

import kotlin.p081e.p083b.C1694h;
import org.mistergroup.shouldianswer.model.C2418d;
/* renamed from: org.mistergroup.shouldianswer.ui.settings.allowed_numbers.b */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/allowed_numbers/b.class */
public final class C2918b {

    /* renamed from: a */
    private final C2418d f8654a;

    /* renamed from: b */
    private final EnumC2919a f8655b;

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.allowed_numbers.b$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/allowed_numbers/b$a.class */
    public enum EnumC2919a {
        EXCEPTION
    }

    public C2918b(C2418d c2418d, EnumC2919a enumC2919a) {
        C1694h.m3117b(c2418d, "blockException");
        C1694h.m3117b(enumC2919a, "itemType");
        this.f8654a = c2418d;
        this.f8655b = enumC2919a;
    }

    /* renamed from: a */
    public final C2418d m338a() {
        return this.f8654a;
    }

    /* renamed from: b */
    public final EnumC2919a m337b() {
        return this.f8655b;
    }
}
