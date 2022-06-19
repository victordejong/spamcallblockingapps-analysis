package org.mistergroup.shouldianswer.p101ui.settings.blocked_numbers;

import kotlin.p081e.p083b.C1694h;
import org.mistergroup.shouldianswer.model.C2418d;
/* renamed from: org.mistergroup.shouldianswer.ui.settings.blocked_numbers.b */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/blocked_numbers/b.class */
public final class C2937b {

    /* renamed from: a */
    private final C2418d f8720a;

    /* renamed from: b */
    private final EnumC2938a f8721b;

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.blocked_numbers.b$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/blocked_numbers/b$a.class */
    public enum EnumC2938a {
        EXCEPTION
    }

    public C2937b(C2418d c2418d, EnumC2938a enumC2938a) {
        C1694h.m3117b(c2418d, "blockException");
        C1694h.m3117b(enumC2938a, "itemType");
        this.f8720a = c2418d;
        this.f8721b = enumC2938a;
    }

    /* renamed from: a */
    public final C2418d m323a() {
        return this.f8720a;
    }

    /* renamed from: b */
    public final EnumC2938a m322b() {
        return this.f8721b;
    }
}
