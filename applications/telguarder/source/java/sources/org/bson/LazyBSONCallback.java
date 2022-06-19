package org.bson;

import java.util.List;
import org.bson.types.ObjectId;
/* loaded from: classes-dex2jar.jar:org/bson/LazyBSONCallback.class */
public class LazyBSONCallback extends EmptyBSONCallback {
    private Object root;

    private Object getRoot() {
        return this.root;
    }

    private void setRoot(Object obj) {
        this.root = obj;
    }

    public List createArray(byte[] bArr, int i) {
        return new LazyBSONList(bArr, i, this);
    }

    public Object createDBRef(String str, ObjectId objectId) {
        return new BasicBSONObject("$ns", str).append("$id", objectId);
    }

    public Object createObject(byte[] bArr, int i) {
        return new LazyBSONObject(bArr, i, this);
    }

    @Override // org.bson.EmptyBSONCallback, org.bson.BSONCallback
    public Object get() {
        return getRoot();
    }

    @Override // org.bson.EmptyBSONCallback, org.bson.BSONCallback
    public void gotBinary(String str, byte b, byte[] bArr) {
        setRoot(createObject(bArr, 0));
    }

    @Override // org.bson.EmptyBSONCallback, org.bson.BSONCallback
    public void reset() {
        this.root = null;
    }
}
