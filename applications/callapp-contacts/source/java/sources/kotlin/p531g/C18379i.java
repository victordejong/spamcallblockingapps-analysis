package kotlin.p531g;

import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.C18539o;
import kotlin.C18542p;
import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.p534a.AbstractC18481a;
import kotlin.p521c.AbstractC18332d;
import kotlin.p521c.AbstractC18335f;
import kotlin.p521c.C18341g;
import kotlin.p521c.p522a.EnumC18307a;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��B\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010(\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\b\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0003\n��\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\b\u0002\u0018��*\u0004\b��\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u00022\b\u0012\u0004\u0012\u0002H\u00010\u00032\b\u0012\u0004\u0012\u00020\u00050\u0004B\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u0016\u001a\u00020\u0017H\u0002J\t\u0010\u0018\u001a\u00020\u0019H\u0096\u0002J\u000e\u0010\u001a\u001a\u00028��H\u0096\u0002¢\u0006\u0002\u0010\u001bJ\r\u0010\u001c\u001a\u00028��H\u0002¢\u0006\u0002\u0010\u001bJ\u001e\u0010\u001d\u001a\u00020\u00052\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00050\u001fH\u0016ø\u0001��¢\u0006\u0002\u0010 J\u0019\u0010!\u001a\u00020\u00052\u0006\u0010\"\u001a\u00028��H\u0096@ø\u0001��¢\u0006\u0002\u0010#J\u001f\u0010$\u001a\u00020\u00052\f\u0010%\u001a\b\u0012\u0004\u0012\u00028��0\u0003H\u0096@ø\u0001��¢\u0006\u0002\u0010&R\u0014\u0010\u0007\u001a\u00020\b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u0016\u0010\u000b\u001a\n\u0012\u0004\u0012\u00028��\u0018\u00010\u0003X\u0082\u000e¢\u0006\u0002\n��R\"\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u0012\u0010\u0011\u001a\u0004\u0018\u00018��X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0012R\u0012\u0010\u0013\u001a\u00060\u0014j\u0002`\u0015X\u0082\u000e¢\u0006\u0002\n��\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006'"}, m4298d2 = {"Lkotlin/sequences/SequenceBuilderIterator;", "T", "Lkotlin/sequences/SequenceScope;", "", "Lkotlin/coroutines/Continuation;", "", "()V", "context", "Lkotlin/coroutines/CoroutineContext;", "getContext", "()Lkotlin/coroutines/CoroutineContext;", "nextIterator", "nextStep", "getNextStep", "()Lkotlin/coroutines/Continuation;", "setNextStep", "(Lkotlin/coroutines/Continuation;)V", "nextValue", "Ljava/lang/Object;", VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY, "", "Lkotlin/sequences/State;", "exceptionalState", "", "hasNext", "", "next", "()Ljava/lang/Object;", "nextNotReady", "resumeWith", "result", "Lkotlin/Result;", "(Ljava/lang/Object;)V", "yield", "value", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "yieldAll", "iterator", "(Ljava/util/Iterator;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlin-stdlib"}, m4297k = 1, m4296mv = {1, 4, 1})
/* renamed from: kotlin.g.i */
/* loaded from: classes5-dex2jar.jar:kotlin/g/i.class */
public final class C18379i<T> extends AbstractC18380j<T> implements Iterator<T>, AbstractC18332d<C20128v>, AbstractC18481a {

    /* renamed from: a */
    public AbstractC18332d<? super C20128v> f63494a;

    /* renamed from: b */
    private int f63495b;

    /* renamed from: c */
    private T f63496c;

    /* renamed from: d */
    private Iterator<? extends T> f63497d;

    /* renamed from: a */
    private final Throwable m4033a() {
        int i = this.f63495b;
        if (i != 4) {
            if (i == 5) {
                return new IllegalStateException("Iterator has failed.");
            }
            return new IllegalStateException("Unexpected state of the iterator: " + this.f63495b);
        }
        return new NoSuchElementException();
    }

    @Override // kotlin.p531g.AbstractC18380j
    /* renamed from: a */
    public final Object mo4032a(T t, AbstractC18332d<? super C20128v> frame) {
        this.f63496c = t;
        this.f63495b = 3;
        this.f63494a = frame;
        EnumC18307a enumC18307a = EnumC18307a.COROUTINE_SUSPENDED;
        if (enumC18307a == EnumC18307a.COROUTINE_SUSPENDED) {
            C18524p.m3840d(frame, "frame");
        }
        return enumC18307a == EnumC18307a.COROUTINE_SUSPENDED ? enumC18307a : C20128v.f66529a;
    }

    @Override // kotlin.p521c.AbstractC18332d
    /* renamed from: b */
    public final AbstractC18335f mo787b() {
        return C18341g.f63443a;
    }

    @Override // kotlin.p521c.AbstractC18332d
    /* renamed from: b */
    public final void mo786b(Object obj) {
        C18542p.m3835a(obj);
        this.f63495b = 4;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        while (true) {
            int i = this.f63495b;
            if (i != 0) {
                if (i != 1) {
                    if (i == 2 || i == 3) {
                        return true;
                    }
                    if (i != 4) {
                        throw m4033a();
                    }
                    return false;
                }
                Iterator<? extends T> it2 = this.f63497d;
                C18524p.m3851a(it2);
                if (it2.hasNext()) {
                    this.f63495b = 2;
                    return true;
                }
                this.f63497d = null;
            }
            this.f63495b = 5;
            AbstractC18332d<? super C20128v> abstractC18332d = this.f63494a;
            C18524p.m3851a(abstractC18332d);
            this.f63494a = null;
            C20128v c20128v = C20128v.f66529a;
            C18539o.C18540a c18540a = C18539o.f63626a;
            abstractC18332d.mo786b(C18539o.m3836d(c20128v));
        }
    }

    @Override // java.util.Iterator
    public final T next() {
        do {
            int i = this.f63495b;
            if (i != 0 && i != 1) {
                if (i == 2) {
                    this.f63495b = 1;
                    Iterator<? extends T> it2 = this.f63497d;
                    C18524p.m3851a(it2);
                    return it2.next();
                } else if (i != 3) {
                    throw m4033a();
                } else {
                    this.f63495b = 0;
                    T t = this.f63496c;
                    this.f63496c = null;
                    return t;
                }
            }
        } while (hasNext());
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
