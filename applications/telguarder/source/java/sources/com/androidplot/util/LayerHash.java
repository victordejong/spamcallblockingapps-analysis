package com.androidplot.util;

import java.util.HashMap;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/androidplot/util/LayerHash.class */
public class LayerHash<KeyType, ValueType> implements Layerable<KeyType> {
    private HashMap<KeyType, ValueType> hash = new HashMap<>();
    private LinkedLayerList<KeyType> zlist = new LinkedLayerList<>();

    public void addToBottom(KeyType keytype, ValueType valuetype) {
        synchronized (this) {
            if (this.hash.containsKey(keytype)) {
                this.hash.put(keytype, valuetype);
            } else {
                this.hash.put(keytype, valuetype);
                this.zlist.addToBottom(keytype);
            }
        }
    }

    public void addToTop(KeyType keytype, ValueType valuetype) {
        synchronized (this) {
            if (this.hash.containsKey(keytype)) {
                this.hash.put(keytype, valuetype);
            } else {
                this.hash.put(keytype, valuetype);
                this.zlist.addToTop(keytype);
            }
        }
    }

    @Override // com.androidplot.util.Layerable
    public List<KeyType> elements() {
        return this.zlist;
    }

    public ValueType get(KeyType keytype) {
        return this.hash.get(keytype);
    }

    public ValueType getAbove(KeyType keytype) {
        int indexOf = this.zlist.indexOf(keytype);
        if (indexOf < 0 || indexOf >= size() - 1) {
            return null;
        }
        return this.hash.get(this.zlist.get(indexOf + 1));
    }

    public ValueType getBeneath(KeyType keytype) {
        int indexOf = this.zlist.indexOf(keytype);
        if (indexOf > 0) {
            return this.hash.get(this.zlist.get(indexOf - 1));
        }
        return null;
    }

    public ValueType getBottom() {
        return this.hash.get(this.zlist.getFirst());
    }

    public List<KeyType> getKeysAsList() {
        return this.zlist;
    }

    public ValueType getTop() {
        return this.hash.get(this.zlist.getLast());
    }

    public List<KeyType> keys() {
        return elements();
    }

    @Override // com.androidplot.util.Layerable
    public boolean moveAbove(KeyType keytype, KeyType keytype2) {
        synchronized (this) {
            if (keytype != keytype2) {
                if (this.hash.containsKey(keytype2) && this.hash.containsKey(keytype)) {
                    return this.zlist.moveAbove(keytype, keytype2);
                }
                return false;
            }
            throw new IllegalArgumentException("Illegal argument to moveAbove(A, B); A cannot be equal to B.");
        }
    }

    @Override // com.androidplot.util.Layerable
    public boolean moveBeneath(KeyType keytype, KeyType keytype2) {
        synchronized (this) {
            if (keytype != keytype2) {
                if (this.hash.containsKey(keytype2) && this.hash.containsKey(keytype)) {
                    return this.zlist.moveBeneath(keytype, keytype2);
                }
                return false;
            }
            throw new IllegalArgumentException("Illegal argument to moveBeaneath(A, B); A cannot be equal to B.");
        }
    }

    @Override // com.androidplot.util.Layerable
    public boolean moveDown(KeyType keytype) {
        synchronized (this) {
            if (!this.hash.containsKey(keytype)) {
                return false;
            }
            return this.zlist.moveDown(keytype);
        }
    }

    @Override // com.androidplot.util.Layerable
    public boolean moveToBottom(KeyType keytype) {
        synchronized (this) {
            if (!this.hash.containsKey(keytype)) {
                return false;
            }
            return this.zlist.moveToBottom(keytype);
        }
    }

    @Override // com.androidplot.util.Layerable
    public boolean moveToTop(KeyType keytype) {
        synchronized (this) {
            if (!this.hash.containsKey(keytype)) {
                return false;
            }
            return this.zlist.moveToTop(keytype);
        }
    }

    @Override // com.androidplot.util.Layerable
    public boolean moveUp(KeyType keytype) {
        synchronized (this) {
            if (!this.hash.containsKey(keytype)) {
                return false;
            }
            return this.zlist.moveUp(keytype);
        }
    }

    public boolean remove(KeyType keytype) {
        synchronized (this) {
            if (this.hash.containsKey(keytype)) {
                this.hash.remove(keytype);
                this.zlist.remove(keytype);
                return true;
            }
            return false;
        }
    }

    public int size() {
        return this.zlist.size();
    }
}
