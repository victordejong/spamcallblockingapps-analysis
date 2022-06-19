package org.mistergroup.shouldianswer.components.p099a;

import android.text.Spanned;
import kotlin.p081e.p083b.C1691e;
import kotlin.p081e.p083b.C1694h;
import org.mistergroup.shouldianswer.model.C2385ac;
/* renamed from: org.mistergroup.shouldianswer.components.a.a */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/components/a/a.class */
public final class C2302a {

    /* renamed from: a */
    private Spanned f6507a;

    /* renamed from: b */
    private Spanned f6508b;

    /* renamed from: c */
    private String f6509c;

    /* renamed from: d */
    private int f6510d;

    /* renamed from: e */
    private final EnumC2303a f6511e;

    /* renamed from: f */
    private final C2385ac f6512f;

    /* renamed from: org.mistergroup.shouldianswer.components.a.a$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/components/a/a$a.class */
    public enum EnumC2303a {
        CONTACT,
        INFO,
        NEW_CONTACT;
        

        /* renamed from: d */
        public static final C2304a f6516d = new C2304a(null);

        /* renamed from: org.mistergroup.shouldianswer.components.a.a$a$a */
        /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/components/a/a$a$a.class */
        public static final class C2304a {
            private C2304a() {
            }

            public /* synthetic */ C2304a(C1691e c1691e) {
                this();
            }

            /* renamed from: a */
            public final EnumC2303a m1657a(int i) {
                return EnumC2303a.values()[i];
            }
        }
    }

    public C2302a(EnumC2303a enumC2303a, C2385ac c2385ac) {
        C1694h.m3117b(enumC2303a, "itemType");
        this.f6511e = enumC2303a;
        this.f6512f = c2385ac;
    }

    /* renamed from: a */
    public final Spanned m1667a() {
        return this.f6507a;
    }

    /* renamed from: a */
    public final void m1666a(int i) {
        this.f6510d = i;
    }

    /* renamed from: a */
    public final void m1665a(Spanned spanned) {
        this.f6507a = spanned;
    }

    /* renamed from: a */
    public final void m1664a(String str) {
        this.f6509c = str;
    }

    /* renamed from: b */
    public final Spanned m1663b() {
        return this.f6508b;
    }

    /* renamed from: b */
    public final void m1662b(Spanned spanned) {
        this.f6508b = spanned;
    }

    /* renamed from: c */
    public final String m1661c() {
        return this.f6509c;
    }

    /* renamed from: d */
    public final int m1660d() {
        return this.f6510d;
    }

    /* renamed from: e */
    public final EnumC2303a m1659e() {
        return this.f6511e;
    }

    /* renamed from: f */
    public final C2385ac m1658f() {
        return this.f6512f;
    }
}
