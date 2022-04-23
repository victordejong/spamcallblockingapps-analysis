package androidx.recyclerview.widget;

import android.util.SparseArray;
import java.lang.reflect.Array;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/TileList.class */
class TileList<T> {

    /* renamed from: a */
    private final SparseArray<Tile<T>> f4907a;

    /* renamed from: b */
    Tile<T> f4908b;

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/TileList$Tile.class */
    public static class Tile<T> {

        /* renamed from: a */
        public final T[] f4909a;

        /* renamed from: b */
        public int f4910b;

        /* renamed from: c */
        public int f4911c;

        /* renamed from: d */
        Tile<T> f4912d;

        public Tile(Class<T> cls, int i) {
            this.f4909a = (T[]) ((Object[]) Array.newInstance((Class<?>) cls, i));
        }
    }

    /* renamed from: a */
    public Tile<T> m17058a(Tile<T> tile) {
        int indexOfKey = this.f4907a.indexOfKey(tile.f4910b);
        if (indexOfKey < 0) {
            this.f4907a.put(tile.f4910b, tile);
            return null;
        }
        Tile<T> valueAt = this.f4907a.valueAt(indexOfKey);
        this.f4907a.setValueAt(indexOfKey, tile);
        if (this.f4908b == valueAt) {
            this.f4908b = tile;
        }
        return valueAt;
    }

    /* renamed from: b */
    public void m17057b() {
        this.f4907a.clear();
    }

    /* renamed from: c */
    public Tile<T> m17056c(int i) {
        return this.f4907a.valueAt(i);
    }

    /* renamed from: d */
    public Tile<T> m17055d(int i) {
        Tile<T> tile = this.f4907a.get(i);
        if (this.f4908b == tile) {
            this.f4908b = null;
        }
        this.f4907a.delete(i);
        return tile;
    }

    /* renamed from: e */
    public int m17054e() {
        return this.f4907a.size();
    }
}
