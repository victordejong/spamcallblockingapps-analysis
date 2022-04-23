package com.google.common.base;

import java.io.Serializable;
import java.util.Iterator;
import p131c.p161d.p266c.p267a.AbstractC4920g;
import p131c.p161d.p266c.p267a.C4933n;
/* loaded from: classes2-dex2jar.jar:com/google/common/base/Converter.class */
public abstract class Converter<A, B> implements AbstractC4920g<A, B> {
    public final boolean handleNullAutomatically;
    public transient Converter<B, A> reverse;

    /* loaded from: classes2-dex2jar.jar:com/google/common/base/Converter$ConverterComposition.class */
    public static final class ConverterComposition<A, B, C> extends Converter<A, C> implements Serializable {
        public static final long serialVersionUID = 0;
        public final Converter<A, B> first;
        public final Converter<B, C> second;

        public ConverterComposition(Converter<A, B> converter, Converter<B, C> converter2) {
            this.first = converter;
            this.second = converter2;
        }

        @Override // com.google.common.base.Converter
        public A correctedDoBackward(C c) {
            return this.first.correctedDoBackward(this.second.correctedDoBackward(c));
        }

        @Override // com.google.common.base.Converter
        public C correctedDoForward(A a) {
            return this.second.correctedDoForward(this.first.correctedDoForward(a));
        }

        @Override // com.google.common.base.Converter
        public A doBackward(C c) {
            throw new AssertionError();
        }

        @Override // com.google.common.base.Converter
        public C doForward(A a) {
            throw new AssertionError();
        }

        @Override // com.google.common.base.Converter, p131c.p161d.p266c.p267a.AbstractC4920g
        public boolean equals(Object obj) {
            boolean z = false;
            if (obj instanceof ConverterComposition) {
                ConverterComposition converterComposition = (ConverterComposition) obj;
                z = false;
                if (this.first.equals(converterComposition.first)) {
                    z = false;
                    if (this.second.equals(converterComposition.second)) {
                        z = true;
                    }
                }
            }
            return z;
        }

        public int hashCode() {
            return (this.first.hashCode() * 31) + this.second.hashCode();
        }

        public String toString() {
            return this.first + ".andThen(" + this.second + ")";
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/base/Converter$FunctionBasedConverter.class */
    public static final class FunctionBasedConverter<A, B> extends Converter<A, B> implements Serializable {
        public final AbstractC4920g<? super B, ? extends A> backwardFunction;
        public final AbstractC4920g<? super A, ? extends B> forwardFunction;

        public FunctionBasedConverter(AbstractC4920g<? super A, ? extends B> gVar, AbstractC4920g<? super B, ? extends A> gVar2) {
            C4933n.m24795a(gVar);
            this.forwardFunction = gVar;
            C4933n.m24795a(gVar2);
            this.backwardFunction = gVar2;
        }

        public /* synthetic */ FunctionBasedConverter(AbstractC4920g gVar, AbstractC4920g gVar2, C7319a aVar) {
            this(gVar, gVar2);
        }

        @Override // com.google.common.base.Converter
        public A doBackward(B b) {
            return (A) this.backwardFunction.apply(b);
        }

        @Override // com.google.common.base.Converter
        public B doForward(A a) {
            return (B) this.forwardFunction.apply(a);
        }

        @Override // com.google.common.base.Converter, p131c.p161d.p266c.p267a.AbstractC4920g
        public boolean equals(Object obj) {
            boolean z = false;
            if (obj instanceof FunctionBasedConverter) {
                FunctionBasedConverter functionBasedConverter = (FunctionBasedConverter) obj;
                z = false;
                if (this.forwardFunction.equals(functionBasedConverter.forwardFunction)) {
                    z = false;
                    if (this.backwardFunction.equals(functionBasedConverter.backwardFunction)) {
                        z = true;
                    }
                }
            }
            return z;
        }

        public int hashCode() {
            return (this.forwardFunction.hashCode() * 31) + this.backwardFunction.hashCode();
        }

        public String toString() {
            return "Converter.from(" + this.forwardFunction + ", " + this.backwardFunction + ")";
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/base/Converter$IdentityConverter.class */
    public static final class IdentityConverter<T> extends Converter<T, T> implements Serializable {
        public static final IdentityConverter INSTANCE = new IdentityConverter();
        public static final long serialVersionUID = 0;

        private Object readResolve() {
            return INSTANCE;
        }

        @Override // com.google.common.base.Converter
        public <S> Converter<T, S> doAndThen(Converter<T, S> converter) {
            C4933n.m24794a(converter, "otherConverter");
            return converter;
        }

        @Override // com.google.common.base.Converter
        public T doBackward(T t) {
            return t;
        }

        @Override // com.google.common.base.Converter
        public T doForward(T t) {
            return t;
        }

        @Override // com.google.common.base.Converter
        public IdentityConverter<T> reverse() {
            return this;
        }

        public String toString() {
            return "Converter.identity()";
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/base/Converter$ReverseConverter.class */
    public static final class ReverseConverter<A, B> extends Converter<B, A> implements Serializable {
        public static final long serialVersionUID = 0;
        public final Converter<A, B> original;

        public ReverseConverter(Converter<A, B> converter) {
            this.original = converter;
        }

        @Override // com.google.common.base.Converter
        public B correctedDoBackward(A a) {
            return this.original.correctedDoForward(a);
        }

        @Override // com.google.common.base.Converter
        public A correctedDoForward(B b) {
            return this.original.correctedDoBackward(b);
        }

        @Override // com.google.common.base.Converter
        public B doBackward(A a) {
            throw new AssertionError();
        }

        @Override // com.google.common.base.Converter
        public A doForward(B b) {
            throw new AssertionError();
        }

        @Override // com.google.common.base.Converter, p131c.p161d.p266c.p267a.AbstractC4920g
        public boolean equals(Object obj) {
            if (obj instanceof ReverseConverter) {
                return this.original.equals(((ReverseConverter) obj).original);
            }
            return false;
        }

        public int hashCode() {
            return this.original.hashCode() ^ (-1);
        }

        @Override // com.google.common.base.Converter
        public Converter<A, B> reverse() {
            return this.original;
        }

        public String toString() {
            return this.original + ".reverse()";
        }
    }

    /* renamed from: com.google.common.base.Converter$a */
    /* loaded from: classes2-dex2jar.jar:com/google/common/base/Converter$a.class */
    public class C7319a implements Iterable<B> {

        /* renamed from: a */
        public final /* synthetic */ Iterable f30271a;

        /* renamed from: com.google.common.base.Converter$a$a */
        /* loaded from: classes2-dex2jar.jar:com/google/common/base/Converter$a$a.class */
        public class C7320a implements Iterator<B> {

            /* renamed from: a */
            public final Iterator<? extends A> f30273a;

            public C7320a() {
                this.f30273a = C7319a.this.f30271a.iterator();
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f30273a.hasNext();
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Iterator
            public B next() {
                return (B) Converter.this.convert(this.f30273a.next());
            }

            @Override // java.util.Iterator
            public void remove() {
                this.f30273a.remove();
            }
        }

        public C7319a(Iterable iterable) {
            this.f30271a = iterable;
        }

        @Override // java.lang.Iterable
        public Iterator<B> iterator() {
            return new C7320a();
        }
    }

    public Converter() {
        this(true);
    }

    public Converter(boolean z) {
        this.handleNullAutomatically = z;
    }

    public static <A, B> Converter<A, B> from(AbstractC4920g<? super A, ? extends B> gVar, AbstractC4920g<? super B, ? extends A> gVar2) {
        return new FunctionBasedConverter(gVar, gVar2, null);
    }

    public static <T> Converter<T, T> identity() {
        return IdentityConverter.INSTANCE;
    }

    public final <C> Converter<A, C> andThen(Converter<B, C> converter) {
        return doAndThen(converter);
    }

    @Override // p131c.p161d.p266c.p267a.AbstractC4920g
    @Deprecated
    public final B apply(A a) {
        return convert(a);
    }

    public final B convert(A a) {
        return correctedDoForward(a);
    }

    public Iterable<B> convertAll(Iterable<? extends A> iterable) {
        C4933n.m24794a(iterable, "fromIterable");
        return new C7319a(iterable);
    }

    public A correctedDoBackward(B b) {
        A a;
        if (!this.handleNullAutomatically) {
            return doBackward(b);
        }
        if (b == null) {
            a = null;
        } else {
            a = doBackward(b);
            C4933n.m24795a(a);
        }
        return a;
    }

    public B correctedDoForward(A a) {
        B b;
        if (!this.handleNullAutomatically) {
            return doForward(a);
        }
        if (a == null) {
            b = null;
        } else {
            b = doForward(a);
            C4933n.m24795a(b);
        }
        return b;
    }

    public <C> Converter<A, C> doAndThen(Converter<B, C> converter) {
        C4933n.m24795a(converter);
        return new ConverterComposition(this, converter);
    }

    public abstract A doBackward(B b);

    public abstract B doForward(A a);

    @Override // p131c.p161d.p266c.p267a.AbstractC4920g
    public boolean equals(Object obj) {
        return super.equals(obj);
    }

    public Converter<B, A> reverse() {
        Converter<B, A> converter = this.reverse;
        Converter<B, A> converter2 = converter;
        if (converter == null) {
            converter2 = new ReverseConverter<>(this);
            this.reverse = converter2;
        }
        return converter2;
    }
}
