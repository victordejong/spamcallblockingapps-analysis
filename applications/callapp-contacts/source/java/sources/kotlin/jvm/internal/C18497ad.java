package kotlin.jvm.internal;

import java.util.List;
import kotlin.reflect.AbstractC18551c;
import kotlin.reflect.AbstractC18552d;
import kotlin.reflect.AbstractC18555f;
import kotlin.reflect.AbstractC18564g;
import kotlin.reflect.AbstractC20107m;
import kotlin.reflect.C20112q;
import kotlin.reflect.KDeclarationContainer;
import kotlin.reflect.KFunction;
import kotlin.reflect.KType;
/* renamed from: kotlin.jvm.internal.ad */
/* loaded from: classes5-dex2jar.jar:kotlin/jvm/internal/ad.class */
public class C18497ad {
    /* renamed from: a */
    public String mo3789a(AbstractC18520l abstractC18520l) {
        String obj = abstractC18520l.getClass().getGenericInterfaces()[0].toString();
        String str = obj;
        if (obj.startsWith("kotlin.jvm.functions.")) {
            str = obj.substring(21);
        }
        return str;
    }

    /* renamed from: a */
    public String mo3787a(AbstractC18526r abstractC18526r) {
        return mo3789a((AbstractC18520l) abstractC18526r);
    }

    /* renamed from: a */
    public KDeclarationContainer mo3791a(Class cls, String str) {
        return new C18532x(cls, str);
    }

    /* renamed from: a */
    public KFunction mo3788a(C18521m c18521m) {
        return c18521m;
    }

    /* renamed from: a */
    public KType mo3783a(AbstractC18552d abstractC18552d, List<C20112q> list) {
        return new C18505ak(abstractC18552d, list, true);
    }

    /* renamed from: a */
    public AbstractC18551c mo3792a(Class cls) {
        return new C18515h(cls);
    }

    /* renamed from: a */
    public AbstractC18555f mo3786a(AbstractC18528t abstractC18528t) {
        return abstractC18528t;
    }

    /* renamed from: a */
    public AbstractC18564g mo3785a(AbstractC18530v abstractC18530v) {
        return abstractC18530v;
    }

    /* renamed from: a */
    public AbstractC20107m mo3784a(AbstractC18534z abstractC18534z) {
        return abstractC18534z;
    }
}
