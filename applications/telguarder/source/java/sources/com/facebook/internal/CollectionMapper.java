package com.facebook.internal;

import com.facebook.FacebookException;
import java.util.Iterator;
import java.util.LinkedList;
/* loaded from: classes-dex2jar.jar:com/facebook/internal/CollectionMapper.class */
public class CollectionMapper {

    /* loaded from: classes-dex2jar.jar:com/facebook/internal/CollectionMapper$Collection.class */
    public interface Collection<T> {
        Object get(T t);

        Iterator<T> keyIterator();

        void set(T t, Object obj, OnErrorListener onErrorListener);
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/internal/CollectionMapper$OnErrorListener.class */
    public interface OnErrorListener {
        void onError(FacebookException facebookException);
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/internal/CollectionMapper$OnMapValueCompleteListener.class */
    public interface OnMapValueCompleteListener extends OnErrorListener {
        void onComplete(Object obj);
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/internal/CollectionMapper$OnMapperCompleteListener.class */
    public interface OnMapperCompleteListener extends OnErrorListener {
        void onComplete();
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/internal/CollectionMapper$ValueMapper.class */
    public interface ValueMapper {
        void mapValue(Object obj, OnMapValueCompleteListener onMapValueCompleteListener);
    }

    private CollectionMapper() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> void iterate(final Collection<T> collection, ValueMapper valueMapper, final OnMapperCompleteListener onMapperCompleteListener) {
        final Mutable mutable = new Mutable(false);
        final Mutable mutable2 = new Mutable(1);
        final OnMapperCompleteListener onMapperCompleteListener2 = new OnMapperCompleteListener() { // from class: com.facebook.internal.CollectionMapper.1
            /* JADX WARN: Type inference failed for: r0v12, types: [T, java.lang.Integer] */
            @Override // com.facebook.internal.CollectionMapper.OnMapperCompleteListener
            public void onComplete() {
                if (((Boolean) mutable.value).booleanValue()) {
                    return;
                }
                Mutable mutable3 = mutable2;
                ?? valueOf = Integer.valueOf(((Integer) mutable3.value).intValue() - 1);
                mutable3.value = valueOf;
                if (valueOf.intValue() != 0) {
                    return;
                }
                onMapperCompleteListener.onComplete();
            }

            /* JADX WARN: Type inference failed for: r1v1, types: [T, java.lang.Boolean] */
            @Override // com.facebook.internal.CollectionMapper.OnErrorListener
            public void onError(FacebookException facebookException) {
                if (((Boolean) mutable.value).booleanValue()) {
                    return;
                }
                mutable.value = true;
                onMapperCompleteListener.onError(facebookException);
            }
        };
        Iterator keyIterator = collection.keyIterator();
        LinkedList linkedList = new LinkedList();
        while (keyIterator.hasNext()) {
            linkedList.add(keyIterator.next());
        }
        for (final Object obj : linkedList) {
            Object obj2 = collection.get(obj);
            OnMapValueCompleteListener onMapValueCompleteListener = new OnMapValueCompleteListener() { // from class: com.facebook.internal.CollectionMapper.2
                @Override // com.facebook.internal.CollectionMapper.OnMapValueCompleteListener
                public void onComplete(Object obj3) {
                    collection.set(obj, obj3, onMapperCompleteListener2);
                    onMapperCompleteListener2.onComplete();
                }

                @Override // com.facebook.internal.CollectionMapper.OnErrorListener
                public void onError(FacebookException facebookException) {
                    onMapperCompleteListener2.onError(facebookException);
                }
            };
            Integer num = (Integer) mutable2.value;
            mutable2.value = (T) Integer.valueOf(((Integer) mutable2.value).intValue() + 1);
            valueMapper.mapValue(obj2, onMapValueCompleteListener);
        }
        onMapperCompleteListener2.onComplete();
    }
}
