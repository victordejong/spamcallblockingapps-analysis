package kotlin.reflect.jvm.internal.impl.descriptors.p547a;

import com.appsflyer.internal.referrer.Payload;
import java.util.Map;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19026at;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18977c;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.p553e.AbstractC19230c;
import kotlin.reflect.jvm.internal.impl.resolve.constants.AbstractC19781g;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.a.d */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/a/d.class */
public final class C18979d implements AbstractC18977c {

    /* renamed from: a */
    private final KotlinType f64708a;

    /* renamed from: b */
    private final Map<C18966e, AbstractC19781g<?>> f64709b;

    /* renamed from: c */
    private final AbstractC19026at f64710c;

    public C18979d(KotlinType kotlinType, Map<C18966e, AbstractC19781g<?>> map, AbstractC19026at abstractC19026at) {
        if (kotlinType == null) {
            m2707a(0);
        }
        if (map == null) {
            m2707a(1);
        }
        if (abstractC19026at == null) {
            m2707a(2);
        }
        this.f64708a = kotlinType;
        this.f64709b = map;
        this.f64710c = abstractC19026at;
    }

    /* renamed from: a */
    private static /* synthetic */ void m2707a(int i) {
        String str = (i == 3 || i == 4 || i == 5) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 3 || i == 4 || i == 5) ? 2 : 3];
        if (i == 1) {
            objArr[0] = "valueArguments";
        } else if (i == 2) {
            objArr[0] = Payload.SOURCE;
        } else if (i == 3 || i == 4 || i == 5) {
            objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptorImpl";
        } else {
            objArr[0] = "annotationType";
        }
        if (i == 3) {
            objArr[1] = "getType";
        } else if (i == 4) {
            objArr[1] = "getAllValueArguments";
        } else if (i != 5) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptorImpl";
        } else {
            objArr[1] = "getSource";
        }
        if (i != 3 && i != 4 && i != 5) {
            objArr[2] = "<init>";
        }
        String format = String.format(str, objArr);
        throw ((i == 3 || i == 4 || i == 5) ? new IllegalStateException(format) : new IllegalArgumentException(format));
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18977c
    /* renamed from: a */
    public final KotlinType mo2043a() {
        KotlinType kotlinType = this.f64708a;
        if (kotlinType == null) {
            m2707a(3);
        }
        return kotlinType;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18977c
    /* renamed from: b */
    public final C18961b mo2042b() {
        return AbstractC18977c.C18978a.m2708a(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18977c
    /* renamed from: c */
    public final Map<C18966e, AbstractC19781g<?>> mo2041c() {
        Map<C18966e, AbstractC19781g<?>> map = this.f64709b;
        if (map == null) {
            m2707a(4);
        }
        return map;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18977c
    /* renamed from: d */
    public final AbstractC19026at mo2040d() {
        AbstractC19026at abstractC19026at = this.f64710c;
        if (abstractC19026at == null) {
            m2707a(5);
        }
        return abstractC19026at;
    }

    public final String toString() {
        return AbstractC19230c.f65030g.mo2457a(this, (EnumC18980e) null);
    }
}
