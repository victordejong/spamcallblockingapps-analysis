package kotlin.jvm.internal;

import java.util.Collections;
import kotlin.reflect.AbstractC18551c;
import kotlin.reflect.AbstractC18555f;
import kotlin.reflect.AbstractC18564g;
import kotlin.reflect.AbstractC20107m;
import kotlin.reflect.KDeclarationContainer;
import kotlin.reflect.KFunction;
import kotlin.reflect.KType;
/* renamed from: kotlin.jvm.internal.ac */
/* loaded from: classes5-dex2jar.jar:kotlin/jvm/internal/ac.class */
public final class C18496ac {

    /* renamed from: a */
    private static final C18497ad f63590a;

    /* renamed from: b */
    private static final AbstractC18551c[] f63591b;

    static {
        C18497ad c18497ad = null;
        try {
            c18497ad = (C18497ad) Class.forName("kotlin.reflect.jvm.internal.ae").newInstance();
        } catch (ClassCastException | ClassNotFoundException | IllegalAccessException | InstantiationException e) {
        }
        if (c18497ad == null) {
            c18497ad = new C18497ad();
        }
        f63590a = c18497ad;
        f63591b = new AbstractC18551c[0];
    }

    /* renamed from: a */
    public static String m3888a(AbstractC18520l abstractC18520l) {
        return f63590a.mo3789a(abstractC18520l);
    }

    /* renamed from: a */
    public static String m3886a(AbstractC18526r abstractC18526r) {
        return f63590a.mo3787a(abstractC18526r);
    }

    /* renamed from: a */
    public static KDeclarationContainer m3890a(Class cls) {
        return f63590a.mo3791a(cls, "");
    }

    /* renamed from: a */
    public static KDeclarationContainer m3889a(Class cls, String str) {
        return f63590a.mo3791a(cls, str);
    }

    /* renamed from: a */
    public static KFunction m3887a(C18521m c18521m) {
        return f63590a.mo3788a(c18521m);
    }

    /* renamed from: a */
    public static AbstractC18555f m3885a(AbstractC18528t abstractC18528t) {
        return f63590a.mo3786a(abstractC18528t);
    }

    /* renamed from: a */
    public static AbstractC18564g m3884a(AbstractC18530v abstractC18530v) {
        return f63590a.mo3785a(abstractC18530v);
    }

    /* renamed from: a */
    public static AbstractC20107m m3883a(AbstractC18534z abstractC18534z) {
        return f63590a.mo3784a(abstractC18534z);
    }

    /* renamed from: b */
    public static AbstractC18551c m3882b(Class cls) {
        return f63590a.mo3792a(cls);
    }

    /* renamed from: c */
    public static KType m3881c(Class cls) {
        C18497ad c18497ad = f63590a;
        return c18497ad.mo3783a(c18497ad.mo3792a(cls), Collections.emptyList());
    }
}
