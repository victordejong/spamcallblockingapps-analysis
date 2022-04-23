package androidx.recyclerview.widget;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    final AbstractC0111b f5406a;

    /* renamed from: b  reason: collision with root package name */
    final a f5407b = new a();

    /* renamed from: c  reason: collision with root package name */
    final List<View> f5408c = new ArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/b$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        long f5409a = 0;

        /* renamed from: b  reason: collision with root package name */
        a f5410b;

        a() {
        }

        private void a() {
            if (this.f5410b == null) {
                this.f5410b = new a();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final void a(int i) {
            a aVar = this;
            while (i >= 64) {
                aVar.a();
                aVar = aVar.f5410b;
                i -= 64;
            }
            aVar.f5409a |= 1 << i;
        }

        final void a(int i, boolean z) {
            a aVar = this;
            boolean z2 = z;
            while (true) {
                if (i >= 64) {
                    aVar.a();
                    aVar = aVar.f5410b;
                    i -= 64;
                } else {
                    long j = aVar.f5409a;
                    boolean z3 = (Long.MIN_VALUE & j) != 0;
                    long j2 = (1 << i) - 1;
                    aVar.f5409a = ((j & (j2 ^ (-1))) << 1) | (j & j2);
                    if (z2) {
                        aVar.a(i);
                    } else {
                        aVar.b(i);
                    }
                    if (z3 || aVar.f5410b != null) {
                        aVar.a();
                        aVar = aVar.f5410b;
                        i = 0;
                        z2 = z3;
                    } else {
                        return;
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final void b(int i) {
            a aVar = this;
            while (i >= 64) {
                aVar = aVar.f5410b;
                if (aVar != null) {
                    i -= 64;
                } else {
                    return;
                }
            }
            aVar.f5409a &= (1 << i) ^ (-1);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final boolean c(int i) {
            a aVar = this;
            while (i >= 64) {
                aVar.a();
                aVar = aVar.f5410b;
                i -= 64;
            }
            return (aVar.f5409a & (1 << i)) != 0;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final boolean d(int i) {
            a aVar = this;
            while (i >= 64) {
                aVar.a();
                aVar = aVar.f5410b;
                i -= 64;
            }
            long j = 1 << i;
            long j2 = aVar.f5409a;
            boolean z = (j2 & j) != 0;
            long j3 = j2 & (j ^ (-1));
            aVar.f5409a = j3;
            long j4 = j - 1;
            aVar.f5409a = (j3 & j4) | Long.rotateRight((j4 ^ (-1)) & j3, 1);
            a aVar2 = aVar.f5410b;
            if (aVar2 != null) {
                if (aVar2.c(0)) {
                    aVar.a(63);
                }
                aVar.f5410b.d(0);
            }
            return z;
        }

        final int e(int i) {
            a aVar = this.f5410b;
            return aVar == null ? i >= 64 ? Long.bitCount(this.f5409a) : Long.bitCount(this.f5409a & ((1 << i) - 1)) : i < 64 ? Long.bitCount(this.f5409a & ((1 << i) - 1)) : aVar.e(i - 64) + Long.bitCount(this.f5409a);
        }

        public final String toString() {
            if (this.f5410b == null) {
                return Long.toBinaryString(this.f5409a);
            }
            return this.f5410b.toString() + "xx" + Long.toBinaryString(this.f5409a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.recyclerview.widget.b$b  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/b$b.class */
    public interface AbstractC0111b {
        int a();

        int a(View view);

        void a(int i);

        void a(View view, int i);

        void a(View view, int i, ViewGroup.LayoutParams layoutParams);

        View b(int i);

        RecyclerView.v b(View view);

        void b();

        void c(int i);

        void c(View view);

        void d(View view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(AbstractC0111b bVar) {
        this.f5406a = bVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int a() {
        return this.f5406a.a() - this.f5408c.size();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0032, code lost:
        if (r5.f5407b.c(r8) == false) goto L_0x003b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0035, code lost:
        r8 = r8 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x003c, code lost:
        return r8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int a(int r6) {
        /*
            r5 = this;
            r0 = r6
            if (r0 >= 0) goto L_0x0006
            r0 = -1
            return r0
        L_0x0006:
            r0 = r5
            androidx.recyclerview.widget.b$b r0 = r0.f5406a
            int r0 = r0.a()
            r7 = r0
            r0 = r6
            r8 = r0
        L_0x0012:
            r0 = r8
            r1 = r7
            if (r0 >= r1) goto L_0x0045
            r0 = r6
            r1 = r8
            r2 = r5
            androidx.recyclerview.widget.b$a r2 = r2.f5407b
            r3 = r8
            int r2 = r2.e(r3)
            int r1 = r1 - r2
            int r0 = r0 - r1
            r9 = r0
            r0 = r9
            if (r0 != 0) goto L_0x003d
        L_0x002a:
            r0 = r5
            androidx.recyclerview.widget.b$a r0 = r0.f5407b
            r1 = r8
            boolean r0 = r0.c(r1)
            if (r0 == 0) goto L_0x003b
            int r8 = r8 + 1
            goto L_0x002a
        L_0x003b:
            r0 = r8
            return r0
        L_0x003d:
            r0 = r8
            r1 = r9
            int r0 = r0 + r1
            r8 = r0
            goto L_0x0012
        L_0x0045:
            r0 = -1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.b.a(int):int");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(View view) {
        this.f5408c.add(view);
        this.f5406a.c(view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(View view, int i, ViewGroup.LayoutParams layoutParams, boolean z) {
        int a2 = i < 0 ? this.f5406a.a() : a(i);
        this.f5407b.a(a2, z);
        if (z) {
            a(view);
        }
        this.f5406a.a(view, a2, layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(View view, int i, boolean z) {
        int a2 = i < 0 ? this.f5406a.a() : a(i);
        this.f5407b.a(a2, z);
        if (z) {
            a(view);
        }
        this.f5406a.a(view, a2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int b() {
        return this.f5406a.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final View b(int i) {
        return this.f5406a.b(a(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean b(View view) {
        if (!this.f5408c.remove(view)) {
            return false;
        }
        this.f5406a.d(view);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int c(View view) {
        int a2 = this.f5406a.a(view);
        if (a2 != -1 && !this.f5407b.c(a2)) {
            return a2 - this.f5407b.e(a2);
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final View c(int i) {
        return this.f5406a.b(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void d(int i) {
        int a2 = a(i);
        this.f5407b.d(a2);
        this.f5406a.c(a2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean d(View view) {
        return this.f5408c.contains(view);
    }

    public final String toString() {
        return this.f5407b.toString() + ", hidden list:" + this.f5408c.size();
    }
}
