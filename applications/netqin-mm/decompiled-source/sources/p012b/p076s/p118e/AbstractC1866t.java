package p012b.p076s.p118e;

import android.graphics.Canvas;
import android.media.MediaFormat;
import android.os.Handler;
import android.util.Log;
import android.util.LongSparseArray;
import androidx.media2.common.SubtitleData;
import java.util.ArrayList;
import java.util.SortedMap;
import java.util.TreeMap;
import p012b.p076s.p118e.AbstractC1841g;
/* renamed from: b.s.e.t */
/* loaded from: classes-dex2jar.jar:b/s/e/t.class */
public abstract class AbstractC1866t implements AbstractC1841g.AbstractC1842a {

    /* renamed from: e */
    public boolean f7397e;

    /* renamed from: g */
    public MediaFormat f7399g;

    /* renamed from: h */
    public AbstractC1841g f7400h;

    /* renamed from: a */
    public final LongSparseArray<C1871d> f7393a = new LongSparseArray<>();

    /* renamed from: b */
    public final LongSparseArray<C1871d> f7394b = new LongSparseArray<>();

    /* renamed from: d */
    public final ArrayList<C1867a> f7396d = new ArrayList<>();

    /* renamed from: f */
    public boolean f7398f = false;

    /* renamed from: c */
    public C1868b f7395c = new C1868b();

    /* renamed from: b.s.e.t$a */
    /* loaded from: classes-dex2jar.jar:b/s/e/t$a.class */
    public static class C1867a {

        /* renamed from: a */
        public long f7401a;

        /* renamed from: b */
        public long f7402b;

        /* renamed from: c */
        public long[] f7403c;

        /* renamed from: d */
        public C1867a f7404d;
    }

    /* renamed from: b.s.e.t$b */
    /* loaded from: classes-dex2jar.jar:b/s/e/t$b.class */
    public static class C1868b {

        /* renamed from: a */
        public SortedMap<Long, ArrayList<C1867a>> f7405a = new TreeMap();

        /* renamed from: a */
        public void m31863a(C1867a aVar) {
            m31862a(aVar, aVar.f7401a);
            long[] jArr = aVar.f7403c;
            if (jArr != null) {
                for (long j : jArr) {
                    m31862a(aVar, j);
                }
            }
            m31862a(aVar, aVar.f7402b);
        }

        /* renamed from: a */
        public void m31862a(C1867a aVar, long j) {
            ArrayList<C1867a> arrayList = this.f7405a.get(Long.valueOf(j));
            if (arrayList != null) {
                arrayList.remove(aVar);
                if (arrayList.size() == 0) {
                    this.f7405a.remove(Long.valueOf(j));
                }
            }
        }
    }

    /* renamed from: b.s.e.t$c */
    /* loaded from: classes-dex2jar.jar:b/s/e/t$c.class */
    public interface AbstractC1869c {

        /* renamed from: b.s.e.t$c$a */
        /* loaded from: classes-dex2jar.jar:b/s/e/t$c$a.class */
        public interface AbstractC1870a {
            /* renamed from: a */
            void mo31859a(AbstractC1869c cVar);
        }

        /* renamed from: a */
        void mo31861a(int i, int i2);

        /* renamed from: a */
        void mo31860a(AbstractC1870a aVar);

        void draw(Canvas canvas);

        void onAttachedToWindow();

        void onDetachedFromWindow();

        void setVisible(boolean z);
    }

    /* renamed from: b.s.e.t$d */
    /* loaded from: classes-dex2jar.jar:b/s/e/t$d.class */
    public static class C1871d {

        /* renamed from: a */
        public C1867a f7406a;

        /* renamed from: b */
        public C1871d f7407b;

        /* renamed from: c */
        public C1871d f7408c;

        /* renamed from: d */
        public long f7409d = -1;

        /* renamed from: e */
        public long f7410e = 0;

        /* renamed from: f */
        public long f7411f = -1;

        /* renamed from: a */
        public void m31858a() {
            C1871d dVar = this.f7408c;
            if (dVar != null) {
                dVar.f7407b = this.f7407b;
                this.f7408c = null;
            }
            C1871d dVar2 = this.f7407b;
            if (dVar2 != null) {
                dVar2.f7408c = dVar;
                this.f7407b = null;
            }
        }

        /* renamed from: a */
        public void m31857a(LongSparseArray<C1871d> longSparseArray) {
            int indexOfKey = longSparseArray.indexOfKey(this.f7411f);
            if (indexOfKey >= 0) {
                if (this.f7408c == null) {
                    C1871d dVar = this.f7407b;
                    if (dVar == null) {
                        longSparseArray.removeAt(indexOfKey);
                    } else {
                        longSparseArray.setValueAt(indexOfKey, dVar);
                    }
                }
                m31858a();
            }
            long j = this.f7409d;
            if (j >= 0) {
                this.f7408c = null;
                C1871d dVar2 = longSparseArray.get(j);
                this.f7407b = dVar2;
                if (dVar2 != null) {
                    dVar2.f7408c = this;
                }
                longSparseArray.put(this.f7409d, this);
                this.f7411f = this.f7409d;
            }
        }
    }

    public AbstractC1866t(MediaFormat mediaFormat) {
        new Handler();
        this.f7399g = mediaFormat;
        m31874a();
    }

    /* renamed from: a */
    public void m31874a() {
        synchronized (this) {
            if (this.f7398f) {
                Log.v("SubtitleTrack", "Clearing " + this.f7396d.size() + " active cues");
            }
            this.f7396d.clear();
        }
    }

    /* renamed from: a */
    public final void m31873a(int i) {
        C1871d valueAt = this.f7393a.valueAt(i);
        while (valueAt != null) {
            C1867a aVar = valueAt.f7406a;
            while (aVar != null) {
                this.f7395c.m31863a(aVar);
                aVar = aVar.f7404d;
                aVar.f7404d = null;
            }
            this.f7394b.remove(valueAt.f7410e);
            valueAt = valueAt.f7407b;
            valueAt.f7408c = null;
            valueAt.f7407b = null;
        }
        this.f7393a.removeAt(i);
    }

    /* renamed from: a */
    public void m31872a(long j, long j2) {
        C1871d dVar;
        if (j != 0 && j != -1 && (dVar = this.f7394b.get(j)) != null) {
            dVar.f7409d = j2;
            dVar.m31857a(this.f7393a);
        }
    }

    /* renamed from: a */
    public void m31871a(SubtitleData subtitleData) {
        long g = subtitleData.m38203g() + 1;
        mo31869a(subtitleData.m38205e(), true, g);
        m31872a(g, (subtitleData.m38203g() + subtitleData.m38204f()) / 1000);
    }

    /* renamed from: a */
    public void m31870a(AbstractC1841g gVar) {
        synchronized (this) {
            if (this.f7400h != gVar) {
                if (this.f7400h != null) {
                    this.f7400h.m31946b(this);
                }
                this.f7400h = gVar;
                if (gVar != null) {
                    gVar.m31947a(this);
                }
            }
        }
    }

    /* renamed from: a */
    public abstract void mo31869a(byte[] bArr, boolean z, long j);

    /* renamed from: b */
    public final MediaFormat m31868b() {
        return this.f7399g;
    }

    /* renamed from: c */
    public abstract AbstractC1869c mo31867c();

    /* renamed from: d */
    public int m31866d() {
        return mo31867c() == null ? 3 : 4;
    }

    /* renamed from: e */
    public void m31865e() {
        if (this.f7397e) {
            AbstractC1841g gVar = this.f7400h;
            if (gVar != null) {
                gVar.m31946b(this);
            }
            AbstractC1869c c = mo31867c();
            if (c != null) {
                c.setVisible(false);
            }
            this.f7397e = false;
        }
    }

    /* renamed from: f */
    public void m31864f() {
        if (!this.f7397e) {
            this.f7397e = true;
            AbstractC1869c c = mo31867c();
            if (c != null) {
                c.setVisible(true);
            }
            AbstractC1841g gVar = this.f7400h;
            if (gVar != null) {
                gVar.m31947a(this);
            }
        }
    }

    public void finalize() throws Throwable {
        for (int size = this.f7393a.size() - 1; size >= 0; size--) {
            m31873a(size);
        }
        super.finalize();
    }
}
