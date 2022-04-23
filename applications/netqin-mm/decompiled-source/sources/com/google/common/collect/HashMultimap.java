package com.google.common.collect;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import p131c.p161d.p266c.p267a.C4933n;
import p131c.p161d.p266c.p269c.AbstractC4995i0;
import p131c.p161d.p266c.p269c.AbstractC4997j0;
import p131c.p161d.p266c.p269c.C5009o0;
import p131c.p161d.p266c.p269c.C5023s0;
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/HashMultimap.class */
public final class HashMultimap<K, V> extends HashMultimapGwtSerializationDependencies<K, V> {
    public static final int DEFAULT_VALUES_PER_KEY = 2;
    public static final long serialVersionUID = 0;
    public transient int expectedValuesPerKey;

    public HashMultimap() {
        this(12, 2);
    }

    public HashMultimap(int i, int i2) {
        super(C5009o0.m24651a(i));
        this.expectedValuesPerKey = 2;
        C4933n.m24791a(i2 >= 0);
        this.expectedValuesPerKey = i2;
    }

    public HashMultimap(AbstractC4995i0<? extends K, ? extends V> i0Var) {
        super(C5009o0.m24651a(i0Var.keySet().size()));
        this.expectedValuesPerKey = 2;
        putAll(i0Var);
    }

    public static <K, V> HashMultimap<K, V> create() {
        return new HashMultimap<>();
    }

    public static <K, V> HashMultimap<K, V> create(int i, int i2) {
        return new HashMultimap<>(i, i2);
    }

    public static <K, V> HashMultimap<K, V> create(AbstractC4995i0<? extends K, ? extends V> i0Var) {
        return new HashMultimap<>(i0Var);
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this.expectedValuesPerKey = 2;
        int a = C5023s0.m24621a(objectInputStream);
        setMap(C5009o0.m24651a(12));
        C5023s0.m24626a(this, objectInputStream, a);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        C5023s0.m24625a(this, objectOutputStream);
    }

    @Override // com.google.common.collect.AbstractSetMultimap, p131c.p161d.p266c.p269c.AbstractC4963c, p131c.p161d.p266c.p269c.AbstractC4995i0
    public /* bridge */ /* synthetic */ Map asMap() {
        return super.asMap();
    }

    @Override // com.google.common.collect.AbstractMapBasedMultimap, p131c.p161d.p266c.p269c.AbstractC4995i0
    public /* bridge */ /* synthetic */ void clear() {
        super.clear();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4963c, p131c.p161d.p266c.p269c.AbstractC4995i0
    public /* bridge */ /* synthetic */ boolean containsEntry(Object obj, Object obj2) {
        return super.containsEntry(obj, obj2);
    }

    @Override // com.google.common.collect.AbstractMapBasedMultimap, p131c.p161d.p266c.p269c.AbstractC4995i0
    public /* bridge */ /* synthetic */ boolean containsKey(Object obj) {
        return super.containsKey(obj);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4963c, p131c.p161d.p266c.p269c.AbstractC4995i0
    public /* bridge */ /* synthetic */ boolean containsValue(Object obj) {
        return super.containsValue(obj);
    }

    @Override // com.google.common.collect.AbstractSetMultimap, com.google.common.collect.AbstractMapBasedMultimap
    public Set<V> createCollection() {
        return C5009o0.m24646b(this.expectedValuesPerKey);
    }

    @Override // com.google.common.collect.AbstractSetMultimap, com.google.common.collect.AbstractMapBasedMultimap, p131c.p161d.p266c.p269c.AbstractC4963c, p131c.p161d.p266c.p269c.AbstractC4995i0
    public /* bridge */ /* synthetic */ Set entries() {
        return super.entries();
    }

    @Override // com.google.common.collect.AbstractSetMultimap, p131c.p161d.p266c.p269c.AbstractC4963c, p131c.p161d.p266c.p269c.AbstractC4995i0
    public /* bridge */ /* synthetic */ boolean equals(Object obj) {
        return super.equals(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.AbstractSetMultimap, com.google.common.collect.AbstractMapBasedMultimap, p131c.p161d.p266c.p269c.AbstractC4995i0
    public /* bridge */ /* synthetic */ Set get(Object obj) {
        return super.get((HashMultimap<K, V>) obj);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4963c, p131c.p161d.p266c.p269c.AbstractC4995i0
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4963c, p131c.p161d.p266c.p269c.AbstractC4995i0
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4963c, p131c.p161d.p266c.p269c.AbstractC4995i0
    public /* bridge */ /* synthetic */ Set keySet() {
        return super.keySet();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4963c, p131c.p161d.p266c.p269c.AbstractC4995i0
    public /* bridge */ /* synthetic */ AbstractC4997j0 keys() {
        return super.keys();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.AbstractSetMultimap, com.google.common.collect.AbstractMapBasedMultimap, p131c.p161d.p266c.p269c.AbstractC4963c, p131c.p161d.p266c.p269c.AbstractC4995i0
    public /* bridge */ /* synthetic */ boolean put(Object obj, Object obj2) {
        return super.put(obj, obj2);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4963c, p131c.p161d.p266c.p269c.AbstractC4995i0
    public /* bridge */ /* synthetic */ boolean putAll(AbstractC4995i0 i0Var) {
        return super.putAll(i0Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p131c.p161d.p266c.p269c.AbstractC4963c, p131c.p161d.p266c.p269c.AbstractC4995i0
    public /* bridge */ /* synthetic */ boolean putAll(Object obj, Iterable iterable) {
        return super.putAll(obj, iterable);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4963c, p131c.p161d.p266c.p269c.AbstractC4995i0
    public /* bridge */ /* synthetic */ boolean remove(Object obj, Object obj2) {
        return super.remove(obj, obj2);
    }

    @Override // com.google.common.collect.AbstractSetMultimap, com.google.common.collect.AbstractMapBasedMultimap, p131c.p161d.p266c.p269c.AbstractC4995i0
    public /* bridge */ /* synthetic */ Set removeAll(Object obj) {
        return super.removeAll(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.AbstractSetMultimap, com.google.common.collect.AbstractMapBasedMultimap, p131c.p161d.p266c.p269c.AbstractC4963c, p131c.p161d.p266c.p269c.AbstractC4995i0
    public /* bridge */ /* synthetic */ Set replaceValues(Object obj, Iterable iterable) {
        return super.replaceValues((HashMultimap<K, V>) obj, iterable);
    }

    @Override // com.google.common.collect.AbstractMapBasedMultimap, p131c.p161d.p266c.p269c.AbstractC4995i0
    public /* bridge */ /* synthetic */ int size() {
        return super.size();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4963c
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    @Override // com.google.common.collect.AbstractMapBasedMultimap, p131c.p161d.p266c.p269c.AbstractC4963c, p131c.p161d.p266c.p269c.AbstractC4995i0
    public /* bridge */ /* synthetic */ Collection values() {
        return super.values();
    }
}
