package androidx.recyclerview.widget;

import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/e.class */
public final class e implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    static final ThreadLocal<e> f5458a = new ThreadLocal<>();
    static Comparator<b> e = new Comparator<b>() { // from class: androidx.recyclerview.widget.e.1
        @Override // java.util.Comparator
        public final /* bridge */ /* synthetic */ int compare(b bVar, b bVar2) {
            b bVar3 = bVar;
            b bVar4 = bVar2;
            if ((bVar3.f5469d == null) != (bVar4.f5469d == null)) {
                return bVar3.f5469d == null ? 1 : -1;
            }
            if (bVar3.f5466a != bVar4.f5466a) {
                return bVar3.f5466a ? -1 : 1;
            }
            int i = bVar4.f5467b - bVar3.f5467b;
            if (i != 0) {
                return i;
            }
            int i2 = bVar3.f5468c - bVar4.f5468c;
            if (i2 != 0) {
                return i2;
            }
            return 0;
        }
    };

    /* renamed from: c  reason: collision with root package name */
    long f5460c;

    /* renamed from: d  reason: collision with root package name */
    long f5461d;

    /* renamed from: b  reason: collision with root package name */
    ArrayList<RecyclerView> f5459b = new ArrayList<>();
    private ArrayList<b> f = new ArrayList<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/e$a.class */
    public static final class a implements RecyclerView.i.a {

        /* renamed from: a  reason: collision with root package name */
        int f5462a;

        /* renamed from: b  reason: collision with root package name */
        int f5463b;

        /* renamed from: c  reason: collision with root package name */
        int[] f5464c;

        /* renamed from: d  reason: collision with root package name */
        int f5465d;

        /* JADX INFO: Access modifiers changed from: package-private */
        public final void a() {
            int[] iArr = this.f5464c;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            this.f5465d = 0;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.i.a
        public final void a(int i, int i2) {
            if (i < 0) {
                throw new IllegalArgumentException("Layout positions must be non-negative");
            } else if (i2 >= 0) {
                int i3 = this.f5465d * 2;
                int[] iArr = this.f5464c;
                if (iArr == null) {
                    int[] iArr2 = new int[4];
                    this.f5464c = iArr2;
                    Arrays.fill(iArr2, -1);
                } else if (i3 >= iArr.length) {
                    int[] iArr3 = new int[i3 * 2];
                    this.f5464c = iArr3;
                    System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
                }
                int[] iArr4 = this.f5464c;
                iArr4[i3] = i;
                iArr4[i3 + 1] = i2;
                this.f5465d++;
            } else {
                throw new IllegalArgumentException("Pixel distance must be non-negative");
            }
        }

        final void a(RecyclerView recyclerView, boolean z) {
            this.f5465d = 0;
            int[] iArr = this.f5464c;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            RecyclerView.i iVar = recyclerView.o;
            if (recyclerView.n != null && iVar != null && iVar.isItemPrefetchEnabled()) {
                if (z) {
                    if (!recyclerView.g.d()) {
                        iVar.a(recyclerView.n.getItemCount(), this);
                    }
                } else if (!recyclerView.h()) {
                    iVar.a(this.f5462a, this.f5463b, recyclerView.I, this);
                }
                if (this.f5465d > iVar.x) {
                    iVar.x = this.f5465d;
                    iVar.y = z;
                    recyclerView.e.b();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final boolean a(int i) {
            if (this.f5464c == null) {
                return false;
            }
            int i2 = this.f5465d;
            for (int i3 = 0; i3 < i2 * 2; i3 += 2) {
                if (this.f5464c[i3] == i) {
                    return true;
                }
            }
            return false;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/e$b.class */
    static final class b {

        /* renamed from: a  reason: collision with root package name */
        public boolean f5466a;

        /* renamed from: b  reason: collision with root package name */
        public int f5467b;

        /* renamed from: c  reason: collision with root package name */
        public int f5468c;

        /* renamed from: d  reason: collision with root package name */
        public RecyclerView f5469d;
        public int e;

        b() {
        }
    }

    private static RecyclerView.v a(RecyclerView recyclerView, int i, long j) {
        boolean z;
        int b2 = recyclerView.h.b();
        int i2 = 0;
        while (true) {
            if (i2 >= b2) {
                z = false;
                break;
            }
            RecyclerView.v c2 = RecyclerView.c(recyclerView.h.c(i2));
            if (c2.f5378b == i && !c2.isInvalid()) {
                z = true;
                break;
            }
            i2++;
        }
        if (z) {
            return null;
        }
        RecyclerView.o oVar = recyclerView.e;
        try {
            recyclerView.f();
            RecyclerView.v a2 = oVar.a(i, false, j);
            if (a2 != null) {
                if (!a2.isBound() || a2.isInvalid()) {
                    oVar.a(a2, false);
                } else {
                    oVar.a(a2.itemView);
                }
            }
            return a2;
        } finally {
            recyclerView.b(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(RecyclerView recyclerView, int i, int i2) {
        if (recyclerView.isAttachedToWindow() && this.f5460c == 0) {
            this.f5460c = recyclerView.getNanoTime();
            recyclerView.post(this);
        }
        a aVar = recyclerView.H;
        aVar.f5462a = i;
        aVar.f5463b = i2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15, types: [java.util.concurrent.TimeUnit] */
    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r12v0, types: [long] */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r12v6 */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1, types: [long] */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Unknown variable types count: 3 */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            Method dump skipped, instructions count: 751
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.e.run():void");
    }
}
