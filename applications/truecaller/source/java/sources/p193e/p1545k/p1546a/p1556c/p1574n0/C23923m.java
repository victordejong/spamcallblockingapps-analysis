package p193e.p1545k.p1546a.p1556c.p1574n0;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.concurrent.ConcurrentHashMap;
/* renamed from: e.k.a.c.n0.m */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/n0/m.class */
public class C23923m<K, V> implements AbstractC23925o<K, V>, Serializable {

    /* renamed from: a */
    public final transient int f66179a;

    /* renamed from: b */
    public final transient ConcurrentHashMap<K, V> f66180b;

    /* renamed from: c */
    public transient int f66181c;

    public C23923m(int i, int i2) {
        this.f66180b = new ConcurrentHashMap<>(i, 0.8f, 4);
        this.f66179a = i2;
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException {
        this.f66181c = objectInputStream.readInt();
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeInt(this.f66181c);
    }

    /* renamed from: a */
    public V m5729a(K k, V v) {
        if (this.f66180b.size() >= this.f66179a) {
            synchronized (this) {
                if (this.f66180b.size() >= this.f66179a) {
                    this.f66180b.clear();
                }
            }
        }
        return this.f66180b.put(k, v);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1574n0.AbstractC23925o
    public V get(Object obj) {
        return this.f66180b.get(obj);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1574n0.AbstractC23925o
    public V putIfAbsent(K k, V v) {
        if (this.f66180b.size() >= this.f66179a) {
            synchronized (this) {
                if (this.f66180b.size() >= this.f66179a) {
                    this.f66180b.clear();
                }
            }
        }
        return this.f66180b.putIfAbsent(k, v);
    }

    public Object readResolve() {
        int i = this.f66181c;
        return new C23923m(i, i);
    }
}
