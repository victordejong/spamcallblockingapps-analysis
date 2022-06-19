package androidx.media2.widget;

import android.graphics.Canvas;
import android.media.MediaFormat;
import android.os.Handler;
import android.util.LongSparseArray;
import androidx.media2.common.SubtitleData;
import java.util.ArrayList;
import java.util.SortedMap;
import java.util.TreeMap;
/* renamed from: androidx.media2.widget.p */
/* loaded from: classes-dex2jar.jar:androidx/media2/widget/p.class */
abstract class AbstractC2595p {

    /* renamed from: b */
    protected boolean f9804b;

    /* renamed from: e */
    MediaFormat f9807e;

    /* renamed from: f */
    protected AbstractC2568h f9808f;

    /* renamed from: g */
    private long f9809g;

    /* renamed from: i */
    private final LongSparseArray<C2600d> f9811i = new LongSparseArray<>();

    /* renamed from: j */
    private final LongSparseArray<C2600d> f9812j = new LongSparseArray<>();

    /* renamed from: a */
    final ArrayList<C2596a> f9803a = new ArrayList<>();

    /* renamed from: c */
    public boolean f9805c = false;

    /* renamed from: d */
    protected Handler f9806d = new Handler();

    /* renamed from: l */
    private long f9814l = -1;

    /* renamed from: k */
    private C2597b f9813k = new C2597b();

    /* renamed from: h */
    private long f9810h = -1;

    /* renamed from: androidx.media2.widget.p$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/p$a.class */
    public static final class C2596a {

        /* renamed from: a */
        public long f9815a;

        /* renamed from: b */
        public long f9816b;

        /* renamed from: c */
        public long[] f9817c;

        /* renamed from: d */
        public C2596a f9818d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media2.widget.p$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/p$b.class */
    public static final class C2597b {

        /* renamed from: b */
        public boolean f9820b = false;

        /* renamed from: a */
        SortedMap<Long, ArrayList<C2596a>> f9819a = new TreeMap();

        C2597b() {
        }

        /* renamed from: a */
        final void m40581a(C2596a c2596a, long j) {
            ArrayList<C2596a> arrayList = this.f9819a.get(Long.valueOf(j));
            if (arrayList != null) {
                arrayList.remove(c2596a);
                if (arrayList.size() != 0) {
                    return;
                }
                this.f9819a.remove(Long.valueOf(j));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media2.widget.p$c */
    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/p$c.class */
    public interface AbstractC2598c {

        /* renamed from: androidx.media2.widget.p$c$a */
        /* loaded from: classes-dex2jar.jar:androidx/media2/widget/p$c$a.class */
        public interface AbstractC2599a {
            /* renamed from: a */
            void mo40577a();
        }

        /* renamed from: a */
        void mo40580a(int i, int i2);

        /* renamed from: a */
        void mo40579a(AbstractC2599a abstractC2599a);

        /* renamed from: a */
        void mo40578a(boolean z);

        void draw(Canvas canvas);

        void onAttachedToWindow();

        void onDetachedFromWindow();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media2.widget.p$d */
    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/p$d.class */
    public static final class C2600d {

        /* renamed from: a */
        public C2596a f9821a;

        /* renamed from: b */
        public C2600d f9822b;

        /* renamed from: c */
        public C2600d f9823c;

        /* renamed from: d */
        public long f9824d = -1;

        /* renamed from: e */
        public long f9825e = 0;

        /* renamed from: f */
        long f9826f = -1;

        C2600d() {
        }
    }

    public AbstractC2595p(MediaFormat mediaFormat) {
        this.f9807e = mediaFormat;
        m40582d();
    }

    /* renamed from: d */
    private void m40582d() {
        synchronized (this) {
            if (this.f9805c) {
                StringBuilder sb = new StringBuilder("Clearing ");
                sb.append(this.f9803a.size());
                sb.append(" active cues");
            }
            this.f9803a.clear();
            this.f9809g = -1L;
        }
    }

    /* renamed from: a */
    public abstract AbstractC2598c mo40588a();

    /* renamed from: a */
    public final void m40587a(SubtitleData subtitleData) {
        C2600d c2600d;
        long j = subtitleData.f5057a + 1;
        mo40585a(subtitleData.f5059c);
        long j2 = (subtitleData.f5057a + subtitleData.f5058b) / 1000;
        if (j == 0 || j == -1 || (c2600d = this.f9812j.get(j)) == null) {
            return;
        }
        c2600d.f9824d = j2;
        LongSparseArray<C2600d> longSparseArray = this.f9811i;
        int indexOfKey = longSparseArray.indexOfKey(c2600d.f9826f);
        if (indexOfKey >= 0) {
            if (c2600d.f9823c == null) {
                if (c2600d.f9822b == null) {
                    longSparseArray.removeAt(indexOfKey);
                } else {
                    longSparseArray.setValueAt(indexOfKey, c2600d.f9822b);
                }
            }
            C2600d c2600d2 = c2600d.f9823c;
            if (c2600d.f9823c != null) {
                c2600d.f9823c.f9822b = c2600d.f9822b;
                c2600d.f9823c = null;
            }
            if (c2600d.f9822b != null) {
                c2600d.f9822b.f9823c = c2600d2;
                c2600d.f9822b = null;
            }
        }
        if (c2600d.f9824d < 0) {
            return;
        }
        c2600d.f9823c = null;
        c2600d.f9822b = longSparseArray.get(c2600d.f9824d);
        if (c2600d.f9822b != null) {
            c2600d.f9822b.f9823c = c2600d;
        }
        longSparseArray.put(c2600d.f9824d, c2600d);
        c2600d.f9826f = c2600d.f9824d;
    }

    /* renamed from: a */
    public final void m40586a(AbstractC2568h abstractC2568h) {
        synchronized (this) {
            if (this.f9808f == abstractC2568h) {
                return;
            }
            this.f9808f = abstractC2568h;
        }
    }

    /* renamed from: a */
    protected abstract void mo40585a(byte[] bArr);

    /* renamed from: b */
    public final void m40584b() {
        if (this.f9804b) {
            return;
        }
        this.f9804b = true;
        AbstractC2598c mo40588a = mo40588a();
        if (mo40588a == null) {
            return;
        }
        mo40588a.mo40578a(true);
    }

    /* renamed from: c */
    public final void m40583c() {
        if (!this.f9804b) {
            return;
        }
        AbstractC2598c mo40588a = mo40588a();
        if (mo40588a != null) {
            mo40588a.mo40578a(false);
        }
        this.f9804b = false;
    }

    protected void finalize() throws Throwable {
        for (int size = this.f9811i.size() - 1; size >= 0; size--) {
            C2600d valueAt = this.f9811i.valueAt(size);
            while (true) {
                C2600d c2600d = valueAt;
                if (c2600d != null) {
                    C2596a c2596a = c2600d.f9821a;
                    while (true) {
                        C2596a c2596a2 = c2596a;
                        if (c2596a2 != null) {
                            C2597b c2597b = this.f9813k;
                            c2597b.m40581a(c2596a2, c2596a2.f9815a);
                            if (c2596a2.f9817c != null) {
                                for (long j : c2596a2.f9817c) {
                                    c2597b.m40581a(c2596a2, j);
                                }
                            }
                            c2597b.m40581a(c2596a2, c2596a2.f9816b);
                            C2596a c2596a3 = c2596a2.f9818d;
                            c2596a2.f9818d = null;
                            c2596a = c2596a3;
                        }
                    }
                    this.f9812j.remove(c2600d.f9825e);
                    C2600d c2600d2 = c2600d.f9822b;
                    c2600d.f9823c = null;
                    c2600d.f9822b = null;
                    valueAt = c2600d2;
                }
            }
            this.f9811i.removeAt(size);
        }
        super.finalize();
    }
}
