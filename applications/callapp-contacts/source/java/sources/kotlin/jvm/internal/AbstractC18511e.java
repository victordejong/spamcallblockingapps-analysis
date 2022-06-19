package kotlin.jvm.internal;

import java.io.ObjectStreamException;
import java.io.Serializable;
import java.lang.annotation.Annotation;
import java.util.List;
import java.util.Map;
import kotlin.jvm.C18459b;
import kotlin.reflect.AbstractC20103k;
import kotlin.reflect.AbstractC20111p;
import kotlin.reflect.KCallable;
import kotlin.reflect.KDeclarationContainer;
import kotlin.reflect.KType;
import kotlin.reflect.KVisibility;
/* renamed from: kotlin.jvm.internal.e */
/* loaded from: classes5-dex2jar.jar:kotlin/jvm/internal/e.class */
public abstract class AbstractC18511e implements Serializable, KCallable {
    public static final Object NO_RECEIVER = C18512a.f63609a;
    private final boolean isTopLevel;
    private final String name;
    private final Class owner;
    protected final Object receiver;
    private transient KCallable reflected;
    private final String signature;

    /* renamed from: kotlin.jvm.internal.e$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/jvm/internal/e$a.class */
    static final class C18512a implements Serializable {

        /* renamed from: a */
        private static final C18512a f63609a = new C18512a();

        private C18512a() {
        }

        private Object readResolve() throws ObjectStreamException {
            return f63609a;
        }
    }

    public AbstractC18511e() {
        this(NO_RECEIVER);
    }

    public AbstractC18511e(Object obj) {
        this(obj, null, null, null, false);
    }

    public AbstractC18511e(Object obj, Class cls, String str, String str2, boolean z) {
        this.receiver = obj;
        this.owner = cls;
        this.name = str;
        this.signature = str2;
        this.isTopLevel = z;
    }

    @Override // kotlin.reflect.KCallable
    public Object call(Object... objArr) {
        return getReflected().call(objArr);
    }

    @Override // kotlin.reflect.KCallable
    public Object callBy(Map map) {
        return getReflected().callBy(map);
    }

    public KCallable compute() {
        KCallable kCallable = this.reflected;
        KCallable kCallable2 = kCallable;
        if (kCallable == null) {
            kCallable2 = computeReflected();
            this.reflected = kCallable2;
        }
        return kCallable2;
    }

    protected abstract KCallable computeReflected();

    @Override // kotlin.reflect.AbstractC18550b
    public List<Annotation> getAnnotations() {
        return getReflected().getAnnotations();
    }

    public Object getBoundReceiver() {
        return this.receiver;
    }

    public String getName() {
        return this.name;
    }

    public KDeclarationContainer getOwner() {
        Class cls = this.owner;
        if (cls == null) {
            return null;
        }
        return this.isTopLevel ? C18496ac.m3890a(cls) : C18496ac.m3882b(cls);
    }

    @Override // kotlin.reflect.KCallable
    public List<AbstractC20103k> getParameters() {
        return getReflected().getParameters();
    }

    public KCallable getReflected() {
        KCallable compute = compute();
        if (compute != this) {
            return compute;
        }
        throw new C18459b();
    }

    @Override // kotlin.reflect.KCallable
    public KType getReturnType() {
        return getReflected().getReturnType();
    }

    public String getSignature() {
        return this.signature;
    }

    @Override // kotlin.reflect.KCallable
    public List<AbstractC20111p> getTypeParameters() {
        return getReflected().getTypeParameters();
    }

    @Override // kotlin.reflect.KCallable
    public KVisibility getVisibility() {
        return getReflected().getVisibility();
    }

    @Override // kotlin.reflect.KCallable
    public boolean isAbstract() {
        return getReflected().isAbstract();
    }

    @Override // kotlin.reflect.KCallable
    public boolean isFinal() {
        return getReflected().isFinal();
    }

    @Override // kotlin.reflect.KCallable
    public boolean isOpen() {
        return getReflected().isOpen();
    }

    @Override // kotlin.reflect.KCallable
    public boolean isSuspend() {
        return getReflected().isSuspend();
    }
}
