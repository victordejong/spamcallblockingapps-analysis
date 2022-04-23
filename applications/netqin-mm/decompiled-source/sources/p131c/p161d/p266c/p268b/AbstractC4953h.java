package p131c.p161d.p266c.p268b;

import com.google.common.cache.LocalCache;
/* renamed from: c.d.c.b.h */
/* loaded from: classes2-dex2jar.jar:c/d/c/b/h.class */
public interface AbstractC4953h<K, V> {
    long getAccessTime();

    int getHash();

    K getKey();

    AbstractC4953h<K, V> getNext();

    AbstractC4953h<K, V> getNextInAccessQueue();

    AbstractC4953h<K, V> getNextInWriteQueue();

    AbstractC4953h<K, V> getPreviousInAccessQueue();

    AbstractC4953h<K, V> getPreviousInWriteQueue();

    LocalCache.AbstractC7376s<K, V> getValueReference();

    long getWriteTime();

    void setAccessTime(long j);

    void setNextInAccessQueue(AbstractC4953h<K, V> hVar);

    void setNextInWriteQueue(AbstractC4953h<K, V> hVar);

    void setPreviousInAccessQueue(AbstractC4953h<K, V> hVar);

    void setPreviousInWriteQueue(AbstractC4953h<K, V> hVar);

    void setValueReference(LocalCache.AbstractC7376s<K, V> sVar);

    void setWriteTime(long j);
}
