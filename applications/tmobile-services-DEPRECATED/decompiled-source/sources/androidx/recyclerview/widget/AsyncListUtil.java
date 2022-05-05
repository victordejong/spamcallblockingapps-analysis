package androidx.recyclerview.widget;

import android.util.Log;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import androidx.annotation.NonNull;
import androidx.annotation.UiThread;
import androidx.annotation.WorkerThread;
import androidx.recyclerview.widget.ThreadUtil;
import androidx.recyclerview.widget.TileList;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/AsyncListUtil.class */
public class AsyncListUtil<T> {

    /* renamed from: a */
    final Class<T> f4415a;

    /* renamed from: b */
    final int f4416b;

    /* renamed from: c */
    final DataCallback<T> f4417c;

    /* renamed from: d */
    final ViewCallback f4418d;

    /* renamed from: e */
    final TileList<T> f4419e;

    /* renamed from: f */
    final ThreadUtil.MainThreadCallback<T> f4420f;

    /* renamed from: g */
    final ThreadUtil.BackgroundCallback<T> f4421g;

    /* renamed from: h */
    final int[] f4422h;

    /* renamed from: i */
    final int[] f4423i;

    /* renamed from: j */
    final int[] f4424j;

    /* renamed from: k */
    boolean f4425k;

    /* renamed from: l */
    private int f4426l;

    /* renamed from: m */
    int f4427m;

    /* renamed from: n */
    int f4428n;

    /* renamed from: o */
    int f4429o;

    /* renamed from: p */
    final SparseIntArray f4430p;

    /* renamed from: androidx.recyclerview.widget.AsyncListUtil$1 */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/AsyncListUtil$1.class */
    class C04521 implements ThreadUtil.MainThreadCallback<T> {

        /* renamed from: a */
        final /* synthetic */ AsyncListUtil f4431a;

        /* renamed from: d */
        private boolean m17861d(int i) {
            return i == this.f4431a.f4429o;
        }

        /* renamed from: e */
        private void m17860e() {
            for (int i = 0; i < this.f4431a.f4419e.m17054e(); i++) {
                AsyncListUtil asyncListUtil = this.f4431a;
                asyncListUtil.f4421g.mo17064b(asyncListUtil.f4419e.m17056c(i));
            }
            this.f4431a.f4419e.m17057b();
        }

        @Override // androidx.recyclerview.widget.ThreadUtil.MainThreadCallback
        /* renamed from: a */
        public void mo17061a(int i, TileList.Tile<T> tile) {
            if (!m17861d(i)) {
                this.f4431a.f4421g.mo17064b(tile);
                return;
            }
            TileList.Tile<T> a = this.f4431a.f4419e.m17058a(tile);
            if (a != null) {
                Log.e("AsyncListUtil", "duplicate tile @" + a.f4910b);
                this.f4431a.f4421g.mo17064b(a);
            }
            int i2 = tile.f4910b;
            int i3 = tile.f4911c;
            int i4 = 0;
            while (i4 < this.f4431a.f4430p.size()) {
                int keyAt = this.f4431a.f4430p.keyAt(i4);
                if (tile.f4910b > keyAt || keyAt >= i2 + i3) {
                    i4++;
                } else {
                    this.f4431a.f4430p.removeAt(i4);
                    this.f4431a.f4418d.m17845d(keyAt);
                }
            }
        }

        @Override // androidx.recyclerview.widget.ThreadUtil.MainThreadCallback
        /* renamed from: b */
        public void mo17060b(int i, int i2) {
            if (m17861d(i)) {
                TileList.Tile<T> d = this.f4431a.f4419e.m17055d(i2);
                if (d == null) {
                    Log.e("AsyncListUtil", "tile not found @" + i2);
                    return;
                }
                this.f4431a.f4421g.mo17064b(d);
            }
        }

        @Override // androidx.recyclerview.widget.ThreadUtil.MainThreadCallback
        /* renamed from: c */
        public void mo17059c(int i, int i2) {
            if (m17861d(i)) {
                AsyncListUtil asyncListUtil = this.f4431a;
                asyncListUtil.f4427m = i2;
                asyncListUtil.f4418d.m17846c();
                AsyncListUtil asyncListUtil2 = this.f4431a;
                asyncListUtil2.f4428n = asyncListUtil2.f4429o;
                m17860e();
                AsyncListUtil asyncListUtil3 = this.f4431a;
                asyncListUtil3.f4425k = false;
                asyncListUtil3.m17862a();
            }
        }
    }

    /* renamed from: androidx.recyclerview.widget.AsyncListUtil$2 */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/AsyncListUtil$2.class */
    class C04532 implements ThreadUtil.BackgroundCallback<T> {

        /* renamed from: a */
        private TileList.Tile<T> f4432a;

        /* renamed from: b */
        final SparseBooleanArray f4433b;

        /* renamed from: c */
        private int f4434c;

        /* renamed from: d */
        private int f4435d;

        /* renamed from: e */
        private int f4436e;

        /* renamed from: f */
        private int f4437f;

        /* renamed from: g */
        final /* synthetic */ AsyncListUtil f4438g;

        /* renamed from: e */
        private TileList.Tile<T> m17859e() {
            TileList.Tile<T> tile = this.f4432a;
            if (tile != null) {
                this.f4432a = tile.f4912d;
                return tile;
            }
            AsyncListUtil asyncListUtil = this.f4438g;
            return new TileList.Tile<>(asyncListUtil.f4415a, asyncListUtil.f4416b);
        }

        /* renamed from: f */
        private void m17858f(TileList.Tile<T> tile) {
            this.f4433b.put(tile.f4910b, true);
            this.f4438g.f4420f.mo17061a(this.f4434c, tile);
        }

        /* renamed from: g */
        private void m17857g(int i) {
            int b = this.f4438g.f4417c.m17851b();
            while (this.f4433b.size() >= b) {
                int keyAt = this.f4433b.keyAt(0);
                SparseBooleanArray sparseBooleanArray = this.f4433b;
                int keyAt2 = sparseBooleanArray.keyAt(sparseBooleanArray.size() - 1);
                int i2 = this.f4436e - keyAt;
                int i3 = keyAt2 - this.f4437f;
                if (i2 > 0 && (i2 >= i3 || i == 2)) {
                    m17854j(keyAt);
                } else if (i3 <= 0) {
                    return;
                } else {
                    if (i2 < i3 || i == 1) {
                        m17854j(keyAt2);
                    } else {
                        return;
                    }
                }
            }
        }

        /* renamed from: h */
        private int m17856h(int i) {
            return i - (i % this.f4438g.f4416b);
        }

        /* renamed from: i */
        private boolean m17855i(int i) {
            return this.f4433b.get(i);
        }

        /* renamed from: j */
        private void m17854j(int i) {
            this.f4433b.delete(i);
            this.f4438g.f4420f.mo17060b(this.f4434c, i);
        }

        /* renamed from: k */
        private void m17853k(int i, int i2, int i3, boolean z) {
            int i4 = i;
            while (i4 <= i2) {
                this.f4438g.f4421g.mo17063c(z ? (i2 + i) - i4 : i4, i3);
                i4 += this.f4438g.f4416b;
            }
        }

        @Override // androidx.recyclerview.widget.ThreadUtil.BackgroundCallback
        /* renamed from: a */
        public void mo17065a(int i, int i2, int i3, int i4, int i5) {
            if (i <= i2) {
                int h = m17856h(i);
                int h2 = m17856h(i2);
                this.f4436e = m17856h(i3);
                int h3 = m17856h(i4);
                this.f4437f = h3;
                if (i5 == 1) {
                    m17853k(this.f4436e, h2, i5, true);
                    m17853k(h2 + this.f4438g.f4416b, this.f4437f, i5, false);
                    return;
                }
                m17853k(h, h3, i5, false);
                m17853k(this.f4436e, h - this.f4438g.f4416b, i5, true);
            }
        }

        @Override // androidx.recyclerview.widget.ThreadUtil.BackgroundCallback
        /* renamed from: b */
        public void mo17064b(TileList.Tile<T> tile) {
            this.f4438g.f4417c.m17850c(tile.f4909a, tile.f4911c);
            tile.f4912d = this.f4432a;
            this.f4432a = tile;
        }

        @Override // androidx.recyclerview.widget.ThreadUtil.BackgroundCallback
        /* renamed from: c */
        public void mo17063c(int i, int i2) {
            if (!m17855i(i)) {
                TileList.Tile<T> e = m17859e();
                e.f4910b = i;
                int min = Math.min(this.f4438g.f4416b, this.f4435d - i);
                e.f4911c = min;
                this.f4438g.f4417c.m17852a(e.f4909a, e.f4910b, min);
                m17857g(i2);
                m17858f(e);
            }
        }

        @Override // androidx.recyclerview.widget.ThreadUtil.BackgroundCallback
        /* renamed from: d */
        public void mo17062d(int i) {
            this.f4434c = i;
            this.f4433b.clear();
            int d = this.f4438g.f4417c.m17849d();
            this.f4435d = d;
            this.f4438g.f4420f.mo17059c(this.f4434c, d);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/AsyncListUtil$DataCallback.class */
    public static abstract class DataCallback<T> {
        @WorkerThread
        /* renamed from: a */
        public abstract void m17852a(@NonNull T[] tArr, int i, int i2);

        @WorkerThread
        /* renamed from: b */
        public int m17851b() {
            return 10;
        }

        @WorkerThread
        /* renamed from: c */
        public void m17850c(@NonNull T[] tArr, int i) {
        }

        @WorkerThread
        /* renamed from: d */
        public abstract int m17849d();
    }

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/AsyncListUtil$ViewCallback.class */
    public static abstract class ViewCallback {
        @UiThread
        /* renamed from: a */
        public void m17848a(@NonNull int[] iArr, @NonNull int[] iArr2, int i) {
            int i2 = (iArr[1] - iArr[0]) + 1;
            int i3 = i2 / 2;
            iArr2[0] = iArr[0] - (i == 1 ? i2 : i3);
            int i4 = iArr[1];
            if (i != 2) {
                i2 = i3;
            }
            iArr2[1] = i4 + i2;
        }

        @UiThread
        /* renamed from: b */
        public abstract void m17847b(@NonNull int[] iArr);

        @UiThread
        /* renamed from: c */
        public abstract void m17846c();

        @UiThread
        /* renamed from: d */
        public abstract void m17845d(int i);
    }

    /* renamed from: a */
    void m17862a() {
        this.f4418d.m17847b(this.f4422h);
        int[] iArr = this.f4422h;
        if (iArr[0] <= iArr[1] && iArr[0] >= 0 && iArr[1] < this.f4427m) {
            if (!this.f4425k) {
                this.f4426l = 0;
            } else {
                int i = iArr[0];
                int[] iArr2 = this.f4423i;
                if (i > iArr2[1] || iArr2[0] > iArr[1]) {
                    this.f4426l = 0;
                } else if (iArr[0] < iArr2[0]) {
                    this.f4426l = 1;
                } else if (iArr[0] > iArr2[0]) {
                    this.f4426l = 2;
                }
            }
            int[] iArr3 = this.f4423i;
            int[] iArr4 = this.f4422h;
            iArr3[0] = iArr4[0];
            iArr3[1] = iArr4[1];
            this.f4418d.m17848a(iArr4, this.f4424j, this.f4426l);
            int[] iArr5 = this.f4424j;
            iArr5[0] = Math.min(this.f4422h[0], Math.max(iArr5[0], 0));
            int[] iArr6 = this.f4424j;
            iArr6[1] = Math.max(this.f4422h[1], Math.min(iArr6[1], this.f4427m - 1));
            ThreadUtil.BackgroundCallback<T> backgroundCallback = this.f4421g;
            int[] iArr7 = this.f4422h;
            int i2 = iArr7[0];
            int i3 = iArr7[1];
            int[] iArr8 = this.f4424j;
            backgroundCallback.mo17065a(i2, i3, iArr8[0], iArr8[1], this.f4426l);
        }
    }
}
