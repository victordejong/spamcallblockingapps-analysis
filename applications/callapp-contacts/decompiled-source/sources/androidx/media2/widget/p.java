package androidx.media2.widget;

import android.graphics.Canvas;
import android.media.MediaFormat;
import android.os.Handler;
import android.util.LongSparseArray;
import androidx.media2.common.SubtitleData;
import java.util.ArrayList;
import java.util.SortedMap;
import java.util.TreeMap;
/* loaded from: classes-dex2jar.jar:androidx/media2/widget/p.class */
abstract class p {

    /* renamed from: b  reason: collision with root package name */
    protected boolean f5271b;
    MediaFormat e;
    protected h f;
    private long g;
    private final LongSparseArray<d> i = new LongSparseArray<>();
    private final LongSparseArray<d> j = new LongSparseArray<>();

    /* renamed from: a  reason: collision with root package name */
    final ArrayList<a> f5270a = new ArrayList<>();

    /* renamed from: c  reason: collision with root package name */
    public boolean f5272c = false;

    /* renamed from: d  reason: collision with root package name */
    protected Handler f5273d = new Handler();
    private long l = -1;
    private b k = new b();
    private long h = -1;

    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/p$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public long f5274a;

        /* renamed from: b  reason: collision with root package name */
        public long f5275b;

        /* renamed from: c  reason: collision with root package name */
        public long[] f5276c;

        /* renamed from: d  reason: collision with root package name */
        public a f5277d;
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/p$b.class */
    static final class b {

        /* renamed from: b  reason: collision with root package name */
        public boolean f5279b = false;

        /* renamed from: a  reason: collision with root package name */
        SortedMap<Long, ArrayList<a>> f5278a = new TreeMap();

        b() {
        }

        final void a(a aVar, long j) {
            ArrayList<a> arrayList = this.f5278a.get(Long.valueOf(j));
            if (arrayList != null) {
                arrayList.remove(aVar);
                if (arrayList.size() == 0) {
                    this.f5278a.remove(Long.valueOf(j));
                }
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/p$c.class */
    interface c {

        /* loaded from: classes-dex2jar.jar:androidx/media2/widget/p$c$a.class */
        public interface a {
            void a();
        }

        void a(int i, int i2);

        void a(a aVar);

        void a(boolean z);

        void draw(Canvas canvas);

        void onAttachedToWindow();

        void onDetachedFromWindow();
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/p$d.class */
    static final class d {

        /* renamed from: a  reason: collision with root package name */
        public a f5280a;

        /* renamed from: b  reason: collision with root package name */
        public d f5281b;

        /* renamed from: c  reason: collision with root package name */
        public d f5282c;

        /* renamed from: d  reason: collision with root package name */
        public long f5283d = -1;
        public long e = 0;
        long f = -1;

        d() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(MediaFormat mediaFormat) {
        this.e = mediaFormat;
        d();
    }

    private void d() {
        synchronized (this) {
            if (this.f5272c) {
                StringBuilder sb = new StringBuilder("Clearing ");
                sb.append(this.f5270a.size());
                sb.append(" active cues");
            }
            this.f5270a.clear();
            this.g = -1L;
        }
    }

    public abstract c a();

    public final void a(SubtitleData subtitleData) {
        d dVar;
        long j = subtitleData.f2761a + 1;
        a(subtitleData.f2763c);
        long j2 = (subtitleData.f2761a + subtitleData.f2762b) / 1000;
        if (j != 0 && j != -1 && (dVar = this.j.get(j)) != null) {
            dVar.f5283d = j2;
            LongSparseArray<d> longSparseArray = this.i;
            int indexOfKey = longSparseArray.indexOfKey(dVar.f);
            if (indexOfKey >= 0) {
                if (dVar.f5282c == null) {
                    if (dVar.f5281b == null) {
                        longSparseArray.removeAt(indexOfKey);
                    } else {
                        longSparseArray.setValueAt(indexOfKey, dVar.f5281b);
                    }
                }
                d dVar2 = dVar.f5282c;
                if (dVar.f5282c != null) {
                    dVar.f5282c.f5281b = dVar.f5281b;
                    dVar.f5282c = null;
                }
                if (dVar.f5281b != null) {
                    dVar.f5281b.f5282c = dVar2;
                    dVar.f5281b = null;
                }
            }
            if (dVar.f5283d >= 0) {
                dVar.f5282c = null;
                dVar.f5281b = longSparseArray.get(dVar.f5283d);
                if (dVar.f5281b != null) {
                    dVar.f5281b.f5282c = dVar;
                }
                longSparseArray.put(dVar.f5283d, dVar);
                dVar.f = dVar.f5283d;
            }
        }
    }

    public final void a(h hVar) {
        synchronized (this) {
            if (this.f != hVar) {
                this.f = hVar;
            }
        }
    }

    protected abstract void a(byte[] bArr);

    public final void b() {
        if (!this.f5271b) {
            this.f5271b = true;
            c a2 = a();
            if (a2 != null) {
                a2.a(true);
            }
        }
    }

    public final void c() {
        if (this.f5271b) {
            c a2 = a();
            if (a2 != null) {
                a2.a(false);
            }
            this.f5271b = false;
        }
    }

    protected void finalize() throws Throwable {
        for (int size = this.i.size() - 1; size >= 0; size--) {
            d valueAt = this.i.valueAt(size);
            while (valueAt != null) {
                a aVar = valueAt.f5280a;
                while (aVar != null) {
                    b bVar = this.k;
                    bVar.a(aVar, aVar.f5274a);
                    if (aVar.f5276c != null) {
                        for (long j : aVar.f5276c) {
                            bVar.a(aVar, j);
                        }
                    }
                    bVar.a(aVar, aVar.f5275b);
                    aVar = aVar.f5277d;
                    aVar.f5277d = null;
                }
                this.j.remove(valueAt.e);
                valueAt = valueAt.f5281b;
                valueAt.f5282c = null;
                valueAt.f5281b = null;
            }
            this.i.removeAt(size);
        }
        super.finalize();
    }
}
