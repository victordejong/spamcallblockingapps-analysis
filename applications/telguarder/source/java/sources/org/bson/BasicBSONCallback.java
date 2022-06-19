package org.bson;

import java.util.Date;
import java.util.LinkedList;
import java.util.List;
import java.util.UUID;
import java.util.regex.Pattern;
import org.bson.types.BSONTimestamp;
import org.bson.types.BasicBSONList;
import org.bson.types.Binary;
import org.bson.types.Code;
import org.bson.types.CodeWScope;
import org.bson.types.Decimal128;
import org.bson.types.MaxKey;
import org.bson.types.MinKey;
import org.bson.types.ObjectId;
/* loaded from: classes-dex2jar.jar:org/bson/BasicBSONCallback.class */
public class BasicBSONCallback implements BSONCallback {
    private Object root;
    private final LinkedList<BSONObject> stack = new LinkedList<>();
    private final LinkedList<String> nameStack = new LinkedList<>();

    public BasicBSONCallback() {
        reset();
    }

    protected void _put(String str, Object obj) {
        BSONObject cur = cur();
        if (BSON.hasDecodeHooks()) {
            obj = BSON.applyDecodingHooks(obj);
        }
        cur.put(str, obj);
    }

    @Override // org.bson.BSONCallback
    public Object arrayDone() {
        return objectDone();
    }

    @Override // org.bson.BSONCallback
    public void arrayStart() {
        BSONObject create = create(true, null);
        this.root = create;
        this.stack.add(create);
    }

    @Override // org.bson.BSONCallback
    public void arrayStart(String str) {
        this.nameStack.addLast(str);
        BSONObject create = create(true, this.nameStack);
        this.stack.getLast().put(str, create);
        this.stack.addLast(create);
    }

    public BSONObject create() {
        return new BasicBSONObject();
    }

    public BSONObject create(boolean z, List<String> list) {
        return z ? createList() : create();
    }

    @Override // org.bson.BSONCallback
    public BSONCallback createBSONCallback() {
        return new BasicBSONCallback();
    }

    protected BSONObject createList() {
        return new BasicBSONList();
    }

    protected BSONObject cur() {
        return this.stack.getLast();
    }

    protected String curName() {
        return this.nameStack.peekLast();
    }

    @Override // org.bson.BSONCallback
    public Object get() {
        return this.root;
    }

    @Override // org.bson.BSONCallback
    public void gotBinary(String str, byte b, byte[] bArr) {
        if (b == 0 || b == 2) {
            _put(str, bArr);
        } else {
            _put(str, new Binary(b, bArr));
        }
    }

    @Override // org.bson.BSONCallback
    @Deprecated
    public void gotBinaryArray(String str, byte[] bArr) {
        gotBinary(str, (byte) 0, bArr);
    }

    @Override // org.bson.BSONCallback
    public void gotBoolean(String str, boolean z) {
        _put(str, Boolean.valueOf(z));
    }

    @Override // org.bson.BSONCallback
    public void gotCode(String str, String str2) {
        _put(str, new Code(str2));
    }

    @Override // org.bson.BSONCallback
    public void gotCodeWScope(String str, String str2, Object obj) {
        _put(str, new CodeWScope(str2, (BSONObject) obj));
    }

    @Override // org.bson.BSONCallback
    public void gotDBRef(String str, String str2, ObjectId objectId) {
        _put(str, new BasicBSONObject("$ns", str2).append("$id", objectId));
    }

    @Override // org.bson.BSONCallback
    public void gotDate(String str, long j) {
        _put(str, new Date(j));
    }

    @Override // org.bson.BSONCallback
    public void gotDecimal128(String str, Decimal128 decimal128) {
        _put(str, decimal128);
    }

    @Override // org.bson.BSONCallback
    public void gotDouble(String str, double d) {
        _put(str, Double.valueOf(d));
    }

    @Override // org.bson.BSONCallback
    public void gotInt(String str, int i) {
        _put(str, Integer.valueOf(i));
    }

    @Override // org.bson.BSONCallback
    public void gotLong(String str, long j) {
        _put(str, Long.valueOf(j));
    }

    @Override // org.bson.BSONCallback
    public void gotMaxKey(String str) {
        cur().put(str, new MaxKey());
    }

    @Override // org.bson.BSONCallback
    public void gotMinKey(String str) {
        cur().put(str, new MinKey());
    }

    @Override // org.bson.BSONCallback
    public void gotNull(String str) {
        cur().put(str, null);
    }

    @Override // org.bson.BSONCallback
    public void gotObjectId(String str, ObjectId objectId) {
        _put(str, objectId);
    }

    @Override // org.bson.BSONCallback
    public void gotRegex(String str, String str2, String str3) {
        _put(str, Pattern.compile(str2, BSON.regexFlags(str3)));
    }

    @Override // org.bson.BSONCallback
    public void gotString(String str, String str2) {
        _put(str, str2);
    }

    @Override // org.bson.BSONCallback
    public void gotSymbol(String str, String str2) {
        _put(str, str2);
    }

    @Override // org.bson.BSONCallback
    public void gotTimestamp(String str, int i, int i2) {
        _put(str, new BSONTimestamp(i, i2));
    }

    @Override // org.bson.BSONCallback
    public void gotUUID(String str, long j, long j2) {
        _put(str, new UUID(j, j2));
    }

    @Override // org.bson.BSONCallback
    public void gotUndefined(String str) {
    }

    protected boolean isStackEmpty() {
        boolean z = true;
        if (this.stack.size() >= 1) {
            z = false;
        }
        return z;
    }

    @Override // org.bson.BSONCallback
    public Object objectDone() {
        BSONObject removeLast = this.stack.removeLast();
        if (this.nameStack.size() > 0) {
            this.nameStack.removeLast();
        } else if (this.stack.size() > 0) {
            throw new IllegalStateException("Illegal object end in current context.");
        }
        if (BSON.hasDecodeHooks()) {
            removeLast = (BSONObject) BSON.applyDecodingHooks(removeLast);
        }
        return removeLast;
    }

    @Override // org.bson.BSONCallback
    public void objectStart() {
        if (this.stack.size() <= 0) {
            BSONObject create = create(false, null);
            this.root = create;
            this.stack.add(create);
            return;
        }
        throw new IllegalStateException("Illegal object beginning in current context.");
    }

    @Override // org.bson.BSONCallback
    public void objectStart(String str) {
        this.nameStack.addLast(str);
        BSONObject create = create(false, this.nameStack);
        this.stack.getLast().put(str, create);
        this.stack.addLast(create);
    }

    @Override // org.bson.BSONCallback
    public void reset() {
        this.root = null;
        this.stack.clear();
        this.nameStack.clear();
    }

    protected void setRoot(Object obj) {
        this.root = obj;
    }
}
