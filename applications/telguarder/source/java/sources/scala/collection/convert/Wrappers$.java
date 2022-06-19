package scala.collection.convert;

import java.util.Collection;
import java.util.Dictionary;
import java.util.Enumeration;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ConcurrentMap;
import scala.None$;
import scala.Option;
import scala.Serializable;
import scala.Some;
import scala.collection.Iterable;
import scala.collection.Iterator;
import scala.collection.convert.Wrappers;
import scala.collection.mutable.Buffer;
import scala.collection.mutable.Map;
import scala.collection.mutable.Seq;
import scala.runtime.BoxedUnit;
/* loaded from: classes3-dex2jar.jar:scala/collection/convert/Wrappers$.class */
public final class Wrappers$ implements Wrappers, Serializable {
    public static final Wrappers$ MODULE$ = null;
    public static final long serialVersionUID = -5857859809262781311L;
    private volatile Wrappers$DictionaryWrapper$ DictionaryWrapper$module;
    private volatile Wrappers$IterableWrapper$ IterableWrapper$module;
    private volatile Wrappers$IteratorWrapper$ IteratorWrapper$module;
    private volatile Wrappers$JCollectionWrapper$ JCollectionWrapper$module;
    private volatile Wrappers$JConcurrentMapWrapper$ JConcurrentMapWrapper$module;
    private volatile Wrappers$JDictionaryWrapper$ JDictionaryWrapper$module;
    private volatile Wrappers$JEnumerationWrapper$ JEnumerationWrapper$module;
    private volatile Wrappers$JIterableWrapper$ JIterableWrapper$module;
    private volatile Wrappers$JIteratorWrapper$ JIteratorWrapper$module;
    private volatile Wrappers$JListWrapper$ JListWrapper$module;
    private volatile Wrappers$JMapWrapper$ JMapWrapper$module;
    private volatile Wrappers$JPropertiesWrapper$ JPropertiesWrapper$module;
    private volatile Wrappers$JSetWrapper$ JSetWrapper$module;
    private volatile Wrappers$MutableBufferWrapper$ MutableBufferWrapper$module;
    private volatile Wrappers$MutableMapWrapper$ MutableMapWrapper$module;
    private volatile Wrappers$MutableSeqWrapper$ MutableSeqWrapper$module;
    private volatile Wrappers$MutableSetWrapper$ MutableSetWrapper$module;
    private volatile Wrappers$SeqWrapper$ SeqWrapper$module;

    static {
        new Wrappers$();
    }

    private Wrappers$() {
        MODULE$ = this;
        Wrappers.Cclass.$init$(this);
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [scala.collection.convert.Wrappers$DictionaryWrapper$] */
    private Wrappers$DictionaryWrapper$ DictionaryWrapper$lzycompute() {
        synchronized (this) {
            if (this.DictionaryWrapper$module == null) {
                this.DictionaryWrapper$module = new Serializable(this) { // from class: scala.collection.convert.Wrappers$DictionaryWrapper$
                    private final /* synthetic */ Wrappers $outer;

                    {
                        Objects.requireNonNull(this);
                        this.$outer = this;
                    }

                    private Object readResolve() {
                        return this.$outer.DictionaryWrapper();
                    }

                    public <A, B> Wrappers.DictionaryWrapper<A, B> apply(Map<A, B> map) {
                        return new Wrappers.DictionaryWrapper<>(this.$outer, map);
                    }

                    public final String toString() {
                        return "DictionaryWrapper";
                    }

                    public <A, B> Option<Map<A, B>> unapply(Wrappers.DictionaryWrapper<A, B> dictionaryWrapper) {
                        return dictionaryWrapper == null ? None$.MODULE$ : new Some(dictionaryWrapper.underlying());
                    }
                };
            }
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        }
        return this.DictionaryWrapper$module;
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [scala.collection.convert.Wrappers$IterableWrapper$] */
    private Wrappers$IterableWrapper$ IterableWrapper$lzycompute() {
        synchronized (this) {
            if (this.IterableWrapper$module == null) {
                this.IterableWrapper$module = new Serializable(this) { // from class: scala.collection.convert.Wrappers$IterableWrapper$
                    private final /* synthetic */ Wrappers $outer;

                    {
                        Objects.requireNonNull(this);
                        this.$outer = this;
                    }

                    private Object readResolve() {
                        return this.$outer.IterableWrapper();
                    }

                    public <A> Wrappers.IterableWrapper<A> apply(Iterable<A> iterable) {
                        return new Wrappers.IterableWrapper<>(this.$outer, iterable);
                    }

                    public final String toString() {
                        return "IterableWrapper";
                    }

                    public <A> Option<Iterable<A>> unapply(Wrappers.IterableWrapper<A> iterableWrapper) {
                        return iterableWrapper == null ? None$.MODULE$ : new Some(iterableWrapper.underlying());
                    }
                };
            }
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        }
        return this.IterableWrapper$module;
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [scala.collection.convert.Wrappers$IteratorWrapper$] */
    private Wrappers$IteratorWrapper$ IteratorWrapper$lzycompute() {
        synchronized (this) {
            if (this.IteratorWrapper$module == null) {
                this.IteratorWrapper$module = new Serializable(this) { // from class: scala.collection.convert.Wrappers$IteratorWrapper$
                    private final /* synthetic */ Wrappers $outer;

                    {
                        Objects.requireNonNull(this);
                        this.$outer = this;
                    }

                    private Object readResolve() {
                        return this.$outer.IteratorWrapper();
                    }

                    public <A> Wrappers.IteratorWrapper<A> apply(Iterator<A> iterator) {
                        return new Wrappers.IteratorWrapper<>(this.$outer, iterator);
                    }

                    public final String toString() {
                        return "IteratorWrapper";
                    }

                    public <A> Option<Iterator<A>> unapply(Wrappers.IteratorWrapper<A> iteratorWrapper) {
                        return iteratorWrapper == null ? None$.MODULE$ : new Some(iteratorWrapper.underlying());
                    }
                };
            }
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        }
        return this.IteratorWrapper$module;
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [scala.collection.convert.Wrappers$JCollectionWrapper$] */
    private Wrappers$JCollectionWrapper$ JCollectionWrapper$lzycompute() {
        synchronized (this) {
            if (this.JCollectionWrapper$module == null) {
                this.JCollectionWrapper$module = new Serializable(this) { // from class: scala.collection.convert.Wrappers$JCollectionWrapper$
                    private final /* synthetic */ Wrappers $outer;

                    {
                        Objects.requireNonNull(this);
                        this.$outer = this;
                    }

                    private Object readResolve() {
                        return this.$outer.JCollectionWrapper();
                    }

                    public <A> Wrappers.JCollectionWrapper<A> apply(Collection<A> collection) {
                        return new Wrappers.JCollectionWrapper<>(this.$outer, collection);
                    }

                    public final String toString() {
                        return "JCollectionWrapper";
                    }

                    public <A> Option<Collection<A>> unapply(Wrappers.JCollectionWrapper<A> jCollectionWrapper) {
                        return jCollectionWrapper == null ? None$.MODULE$ : new Some(jCollectionWrapper.underlying());
                    }
                };
            }
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        }
        return this.JCollectionWrapper$module;
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [scala.collection.convert.Wrappers$JConcurrentMapWrapper$] */
    private Wrappers$JConcurrentMapWrapper$ JConcurrentMapWrapper$lzycompute() {
        synchronized (this) {
            if (this.JConcurrentMapWrapper$module == null) {
                this.JConcurrentMapWrapper$module = new Serializable(this) { // from class: scala.collection.convert.Wrappers$JConcurrentMapWrapper$
                    private final /* synthetic */ Wrappers $outer;

                    {
                        Objects.requireNonNull(this);
                        this.$outer = this;
                    }

                    private Object readResolve() {
                        return this.$outer.JConcurrentMapWrapper();
                    }

                    public <A, B> Wrappers.JConcurrentMapWrapper<A, B> apply(ConcurrentMap<A, B> concurrentMap) {
                        return new Wrappers.JConcurrentMapWrapper<>(this.$outer, concurrentMap);
                    }

                    public final String toString() {
                        return "JConcurrentMapWrapper";
                    }

                    public <A, B> Option<ConcurrentMap<A, B>> unapply(Wrappers.JConcurrentMapWrapper<A, B> jConcurrentMapWrapper) {
                        return jConcurrentMapWrapper == null ? None$.MODULE$ : new Some(jConcurrentMapWrapper.underlying());
                    }
                };
            }
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        }
        return this.JConcurrentMapWrapper$module;
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [scala.collection.convert.Wrappers$JDictionaryWrapper$] */
    private Wrappers$JDictionaryWrapper$ JDictionaryWrapper$lzycompute() {
        synchronized (this) {
            if (this.JDictionaryWrapper$module == null) {
                this.JDictionaryWrapper$module = new Serializable(this) { // from class: scala.collection.convert.Wrappers$JDictionaryWrapper$
                    private final /* synthetic */ Wrappers $outer;

                    {
                        Objects.requireNonNull(this);
                        this.$outer = this;
                    }

                    private Object readResolve() {
                        return this.$outer.JDictionaryWrapper();
                    }

                    public <A, B> Wrappers.JDictionaryWrapper<A, B> apply(Dictionary<A, B> dictionary) {
                        return new Wrappers.JDictionaryWrapper<>(this.$outer, dictionary);
                    }

                    public final String toString() {
                        return "JDictionaryWrapper";
                    }

                    public <A, B> Option<Dictionary<A, B>> unapply(Wrappers.JDictionaryWrapper<A, B> jDictionaryWrapper) {
                        return jDictionaryWrapper == null ? None$.MODULE$ : new Some(jDictionaryWrapper.underlying());
                    }
                };
            }
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        }
        return this.JDictionaryWrapper$module;
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [scala.collection.convert.Wrappers$JEnumerationWrapper$] */
    private Wrappers$JEnumerationWrapper$ JEnumerationWrapper$lzycompute() {
        synchronized (this) {
            if (this.JEnumerationWrapper$module == null) {
                this.JEnumerationWrapper$module = new Serializable(this) { // from class: scala.collection.convert.Wrappers$JEnumerationWrapper$
                    private final /* synthetic */ Wrappers $outer;

                    {
                        Objects.requireNonNull(this);
                        this.$outer = this;
                    }

                    private Object readResolve() {
                        return this.$outer.JEnumerationWrapper();
                    }

                    public <A> Wrappers.JEnumerationWrapper<A> apply(Enumeration<A> enumeration) {
                        return new Wrappers.JEnumerationWrapper<>(this.$outer, enumeration);
                    }

                    public final String toString() {
                        return "JEnumerationWrapper";
                    }

                    public <A> Option<Enumeration<A>> unapply(Wrappers.JEnumerationWrapper<A> jEnumerationWrapper) {
                        return jEnumerationWrapper == null ? None$.MODULE$ : new Some(jEnumerationWrapper.underlying());
                    }
                };
            }
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        }
        return this.JEnumerationWrapper$module;
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [scala.collection.convert.Wrappers$JIterableWrapper$] */
    private Wrappers$JIterableWrapper$ JIterableWrapper$lzycompute() {
        synchronized (this) {
            if (this.JIterableWrapper$module == null) {
                this.JIterableWrapper$module = new Serializable(this) { // from class: scala.collection.convert.Wrappers$JIterableWrapper$
                    private final /* synthetic */ Wrappers $outer;

                    {
                        Objects.requireNonNull(this);
                        this.$outer = this;
                    }

                    private Object readResolve() {
                        return this.$outer.JIterableWrapper();
                    }

                    public <A> Wrappers.JIterableWrapper<A> apply(Iterable<A> iterable) {
                        return new Wrappers.JIterableWrapper<>(this.$outer, iterable);
                    }

                    public final String toString() {
                        return "JIterableWrapper";
                    }

                    public <A> Option<Iterable<A>> unapply(Wrappers.JIterableWrapper<A> jIterableWrapper) {
                        return jIterableWrapper == null ? None$.MODULE$ : new Some(jIterableWrapper.underlying());
                    }
                };
            }
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        }
        return this.JIterableWrapper$module;
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [scala.collection.convert.Wrappers$JIteratorWrapper$] */
    private Wrappers$JIteratorWrapper$ JIteratorWrapper$lzycompute() {
        synchronized (this) {
            if (this.JIteratorWrapper$module == null) {
                this.JIteratorWrapper$module = new Serializable(this) { // from class: scala.collection.convert.Wrappers$JIteratorWrapper$
                    private final /* synthetic */ Wrappers $outer;

                    {
                        Objects.requireNonNull(this);
                        this.$outer = this;
                    }

                    private Object readResolve() {
                        return this.$outer.JIteratorWrapper();
                    }

                    public <A> Wrappers.JIteratorWrapper<A> apply(java.util.Iterator<A> it) {
                        return new Wrappers.JIteratorWrapper<>(this.$outer, it);
                    }

                    public final String toString() {
                        return "JIteratorWrapper";
                    }

                    public <A> Option<java.util.Iterator<A>> unapply(Wrappers.JIteratorWrapper<A> jIteratorWrapper) {
                        return jIteratorWrapper == null ? None$.MODULE$ : new Some(jIteratorWrapper.underlying());
                    }
                };
            }
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        }
        return this.JIteratorWrapper$module;
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [scala.collection.convert.Wrappers$JListWrapper$] */
    private Wrappers$JListWrapper$ JListWrapper$lzycompute() {
        synchronized (this) {
            if (this.JListWrapper$module == null) {
                this.JListWrapper$module = new Serializable(this) { // from class: scala.collection.convert.Wrappers$JListWrapper$
                    private final /* synthetic */ Wrappers $outer;

                    {
                        Objects.requireNonNull(this);
                        this.$outer = this;
                    }

                    private Object readResolve() {
                        return this.$outer.JListWrapper();
                    }

                    public <A> Wrappers.JListWrapper<A> apply(List<A> list) {
                        return new Wrappers.JListWrapper<>(this.$outer, list);
                    }

                    public final String toString() {
                        return "JListWrapper";
                    }

                    public <A> Option<List<A>> unapply(Wrappers.JListWrapper<A> jListWrapper) {
                        return jListWrapper == null ? None$.MODULE$ : new Some(jListWrapper.underlying());
                    }
                };
            }
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        }
        return this.JListWrapper$module;
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [scala.collection.convert.Wrappers$JMapWrapper$] */
    private Wrappers$JMapWrapper$ JMapWrapper$lzycompute() {
        synchronized (this) {
            if (this.JMapWrapper$module == null) {
                this.JMapWrapper$module = new Serializable(this) { // from class: scala.collection.convert.Wrappers$JMapWrapper$
                    private final /* synthetic */ Wrappers $outer;

                    {
                        Objects.requireNonNull(this);
                        this.$outer = this;
                    }

                    private Object readResolve() {
                        return this.$outer.JMapWrapper();
                    }

                    public <A, B> Wrappers.JMapWrapper<A, B> apply(java.util.Map<A, B> map) {
                        return new Wrappers.JMapWrapper<>(this.$outer, map);
                    }

                    public final String toString() {
                        return "JMapWrapper";
                    }

                    public <A, B> Option<java.util.Map<A, B>> unapply(Wrappers.JMapWrapper<A, B> jMapWrapper) {
                        return jMapWrapper == null ? None$.MODULE$ : new Some(jMapWrapper.underlying());
                    }
                };
            }
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        }
        return this.JMapWrapper$module;
    }

    private Wrappers$JPropertiesWrapper$ JPropertiesWrapper$lzycompute() {
        synchronized (this) {
            if (this.JPropertiesWrapper$module == null) {
                this.JPropertiesWrapper$module = new Wrappers$JPropertiesWrapper$(this);
            }
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        }
        return this.JPropertiesWrapper$module;
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [scala.collection.convert.Wrappers$JSetWrapper$] */
    private Wrappers$JSetWrapper$ JSetWrapper$lzycompute() {
        synchronized (this) {
            if (this.JSetWrapper$module == null) {
                this.JSetWrapper$module = new Serializable(this) { // from class: scala.collection.convert.Wrappers$JSetWrapper$
                    private final /* synthetic */ Wrappers $outer;

                    {
                        Objects.requireNonNull(this);
                        this.$outer = this;
                    }

                    private Object readResolve() {
                        return this.$outer.JSetWrapper();
                    }

                    public <A> Wrappers.JSetWrapper<A> apply(Set<A> set) {
                        return new Wrappers.JSetWrapper<>(this.$outer, set);
                    }

                    public final String toString() {
                        return "JSetWrapper";
                    }

                    public <A> Option<Set<A>> unapply(Wrappers.JSetWrapper<A> jSetWrapper) {
                        return jSetWrapper == null ? None$.MODULE$ : new Some(jSetWrapper.underlying());
                    }
                };
            }
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        }
        return this.JSetWrapper$module;
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [scala.collection.convert.Wrappers$MutableBufferWrapper$] */
    private Wrappers$MutableBufferWrapper$ MutableBufferWrapper$lzycompute() {
        synchronized (this) {
            if (this.MutableBufferWrapper$module == null) {
                this.MutableBufferWrapper$module = new Serializable(this) { // from class: scala.collection.convert.Wrappers$MutableBufferWrapper$
                    private final /* synthetic */ Wrappers $outer;

                    {
                        Objects.requireNonNull(this);
                        this.$outer = this;
                    }

                    private Object readResolve() {
                        return this.$outer.MutableBufferWrapper();
                    }

                    public <A> Wrappers.MutableBufferWrapper<A> apply(Buffer<A> buffer) {
                        return new Wrappers.MutableBufferWrapper<>(this.$outer, buffer);
                    }

                    public final String toString() {
                        return "MutableBufferWrapper";
                    }

                    public <A> Option<Buffer<A>> unapply(Wrappers.MutableBufferWrapper<A> mutableBufferWrapper) {
                        return mutableBufferWrapper == null ? None$.MODULE$ : new Some(mutableBufferWrapper.underlying());
                    }
                };
            }
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        }
        return this.MutableBufferWrapper$module;
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [scala.collection.convert.Wrappers$MutableMapWrapper$] */
    private Wrappers$MutableMapWrapper$ MutableMapWrapper$lzycompute() {
        synchronized (this) {
            if (this.MutableMapWrapper$module == null) {
                this.MutableMapWrapper$module = new Serializable(this) { // from class: scala.collection.convert.Wrappers$MutableMapWrapper$
                    private final /* synthetic */ Wrappers $outer;

                    {
                        Objects.requireNonNull(this);
                        this.$outer = this;
                    }

                    private Object readResolve() {
                        return this.$outer.MutableMapWrapper();
                    }

                    public <A, B> Wrappers.MutableMapWrapper<A, B> apply(Map<A, B> map) {
                        return new Wrappers.MutableMapWrapper<>(this.$outer, map);
                    }

                    public final String toString() {
                        return "MutableMapWrapper";
                    }

                    public <A, B> Option<Map<A, B>> unapply(Wrappers.MutableMapWrapper<A, B> mutableMapWrapper) {
                        return mutableMapWrapper == null ? None$.MODULE$ : new Some(mutableMapWrapper.underlying());
                    }
                };
            }
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        }
        return this.MutableMapWrapper$module;
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [scala.collection.convert.Wrappers$MutableSeqWrapper$] */
    private Wrappers$MutableSeqWrapper$ MutableSeqWrapper$lzycompute() {
        synchronized (this) {
            if (this.MutableSeqWrapper$module == null) {
                this.MutableSeqWrapper$module = new Serializable(this) { // from class: scala.collection.convert.Wrappers$MutableSeqWrapper$
                    private final /* synthetic */ Wrappers $outer;

                    {
                        Objects.requireNonNull(this);
                        this.$outer = this;
                    }

                    private Object readResolve() {
                        return this.$outer.MutableSeqWrapper();
                    }

                    public <A> Wrappers.MutableSeqWrapper<A> apply(Seq<A> seq) {
                        return new Wrappers.MutableSeqWrapper<>(this.$outer, seq);
                    }

                    public final String toString() {
                        return "MutableSeqWrapper";
                    }

                    public <A> Option<Seq<A>> unapply(Wrappers.MutableSeqWrapper<A> mutableSeqWrapper) {
                        return mutableSeqWrapper == null ? None$.MODULE$ : new Some(mutableSeqWrapper.underlying());
                    }
                };
            }
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        }
        return this.MutableSeqWrapper$module;
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [scala.collection.convert.Wrappers$MutableSetWrapper$] */
    private Wrappers$MutableSetWrapper$ MutableSetWrapper$lzycompute() {
        synchronized (this) {
            if (this.MutableSetWrapper$module == null) {
                this.MutableSetWrapper$module = new Serializable(this) { // from class: scala.collection.convert.Wrappers$MutableSetWrapper$
                    private final /* synthetic */ Wrappers $outer;

                    {
                        Objects.requireNonNull(this);
                        this.$outer = this;
                    }

                    private Object readResolve() {
                        return this.$outer.MutableSetWrapper();
                    }

                    public <A> Wrappers.MutableSetWrapper<A> apply(scala.collection.mutable.Set<A> set) {
                        return new Wrappers.MutableSetWrapper<>(this.$outer, set);
                    }

                    public final String toString() {
                        return "MutableSetWrapper";
                    }

                    public <A> Option<scala.collection.mutable.Set<A>> unapply(Wrappers.MutableSetWrapper<A> mutableSetWrapper) {
                        return mutableSetWrapper == null ? None$.MODULE$ : new Some(mutableSetWrapper.underlying());
                    }
                };
            }
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        }
        return this.MutableSetWrapper$module;
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [scala.collection.convert.Wrappers$SeqWrapper$] */
    private Wrappers$SeqWrapper$ SeqWrapper$lzycompute() {
        synchronized (this) {
            if (this.SeqWrapper$module == null) {
                this.SeqWrapper$module = new Serializable(this) { // from class: scala.collection.convert.Wrappers$SeqWrapper$
                    private final /* synthetic */ Wrappers $outer;

                    {
                        Objects.requireNonNull(this);
                        this.$outer = this;
                    }

                    private Object readResolve() {
                        return this.$outer.SeqWrapper();
                    }

                    public <A> Wrappers.SeqWrapper<A> apply(scala.collection.Seq<A> seq) {
                        return new Wrappers.SeqWrapper<>(this.$outer, seq);
                    }

                    public final String toString() {
                        return "SeqWrapper";
                    }

                    public <A> Option<scala.collection.Seq<A>> unapply(Wrappers.SeqWrapper<A> seqWrapper) {
                        return seqWrapper == null ? None$.MODULE$ : new Some(seqWrapper.underlying());
                    }
                };
            }
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        }
        return this.SeqWrapper$module;
    }

    private Object readResolve() {
        return MODULE$;
    }

    @Override // scala.collection.convert.Wrappers
    public Wrappers$DictionaryWrapper$ DictionaryWrapper() {
        return this.DictionaryWrapper$module == null ? DictionaryWrapper$lzycompute() : this.DictionaryWrapper$module;
    }

    @Override // scala.collection.convert.Wrappers
    public Wrappers$IterableWrapper$ IterableWrapper() {
        return this.IterableWrapper$module == null ? IterableWrapper$lzycompute() : this.IterableWrapper$module;
    }

    @Override // scala.collection.convert.Wrappers
    public Wrappers$IteratorWrapper$ IteratorWrapper() {
        return this.IteratorWrapper$module == null ? IteratorWrapper$lzycompute() : this.IteratorWrapper$module;
    }

    @Override // scala.collection.convert.Wrappers
    public Wrappers$JCollectionWrapper$ JCollectionWrapper() {
        return this.JCollectionWrapper$module == null ? JCollectionWrapper$lzycompute() : this.JCollectionWrapper$module;
    }

    @Override // scala.collection.convert.Wrappers
    public Wrappers$JConcurrentMapWrapper$ JConcurrentMapWrapper() {
        return this.JConcurrentMapWrapper$module == null ? JConcurrentMapWrapper$lzycompute() : this.JConcurrentMapWrapper$module;
    }

    @Override // scala.collection.convert.Wrappers
    public Wrappers$JDictionaryWrapper$ JDictionaryWrapper() {
        return this.JDictionaryWrapper$module == null ? JDictionaryWrapper$lzycompute() : this.JDictionaryWrapper$module;
    }

    @Override // scala.collection.convert.Wrappers
    public Wrappers$JEnumerationWrapper$ JEnumerationWrapper() {
        return this.JEnumerationWrapper$module == null ? JEnumerationWrapper$lzycompute() : this.JEnumerationWrapper$module;
    }

    @Override // scala.collection.convert.Wrappers
    public Wrappers$JIterableWrapper$ JIterableWrapper() {
        return this.JIterableWrapper$module == null ? JIterableWrapper$lzycompute() : this.JIterableWrapper$module;
    }

    @Override // scala.collection.convert.Wrappers
    public Wrappers$JIteratorWrapper$ JIteratorWrapper() {
        return this.JIteratorWrapper$module == null ? JIteratorWrapper$lzycompute() : this.JIteratorWrapper$module;
    }

    @Override // scala.collection.convert.Wrappers
    public Wrappers$JListWrapper$ JListWrapper() {
        return this.JListWrapper$module == null ? JListWrapper$lzycompute() : this.JListWrapper$module;
    }

    @Override // scala.collection.convert.Wrappers
    public Wrappers$JMapWrapper$ JMapWrapper() {
        return this.JMapWrapper$module == null ? JMapWrapper$lzycompute() : this.JMapWrapper$module;
    }

    @Override // scala.collection.convert.Wrappers
    public Wrappers$JPropertiesWrapper$ JPropertiesWrapper() {
        return this.JPropertiesWrapper$module == null ? JPropertiesWrapper$lzycompute() : this.JPropertiesWrapper$module;
    }

    @Override // scala.collection.convert.Wrappers
    public Wrappers$JSetWrapper$ JSetWrapper() {
        return this.JSetWrapper$module == null ? JSetWrapper$lzycompute() : this.JSetWrapper$module;
    }

    @Override // scala.collection.convert.Wrappers
    public Wrappers$MutableBufferWrapper$ MutableBufferWrapper() {
        return this.MutableBufferWrapper$module == null ? MutableBufferWrapper$lzycompute() : this.MutableBufferWrapper$module;
    }

    @Override // scala.collection.convert.Wrappers
    public Wrappers$MutableMapWrapper$ MutableMapWrapper() {
        return this.MutableMapWrapper$module == null ? MutableMapWrapper$lzycompute() : this.MutableMapWrapper$module;
    }

    @Override // scala.collection.convert.Wrappers
    public Wrappers$MutableSeqWrapper$ MutableSeqWrapper() {
        return this.MutableSeqWrapper$module == null ? MutableSeqWrapper$lzycompute() : this.MutableSeqWrapper$module;
    }

    @Override // scala.collection.convert.Wrappers
    public Wrappers$MutableSetWrapper$ MutableSetWrapper() {
        return this.MutableSetWrapper$module == null ? MutableSetWrapper$lzycompute() : this.MutableSetWrapper$module;
    }

    @Override // scala.collection.convert.Wrappers
    public Wrappers$SeqWrapper$ SeqWrapper() {
        return this.SeqWrapper$module == null ? SeqWrapper$lzycompute() : this.SeqWrapper$module;
    }
}
