package androidx.recyclerview.widget;

import androidx.core.e.c;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.i;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/a.class */
public final class a implements i.a {

    /* renamed from: a  reason: collision with root package name */
    final ArrayList<b> f5398a;

    /* renamed from: b  reason: collision with root package name */
    final ArrayList<b> f5399b;

    /* renamed from: c  reason: collision with root package name */
    final AbstractC0110a f5400c;

    /* renamed from: d  reason: collision with root package name */
    Runnable f5401d;
    final boolean e;
    final i f;
    int g;
    private c.a<b> h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.recyclerview.widget.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/a$a.class */
    public interface AbstractC0110a {
        RecyclerView.v a(int i);

        void a(int i, int i2);

        void a(int i, int i2, Object obj);

        void a(b bVar);

        void b(int i, int i2);

        void b(b bVar);

        void c(int i, int i2);

        void d(int i, int i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/a$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        int f5402a;

        /* renamed from: b  reason: collision with root package name */
        int f5403b;

        /* renamed from: c  reason: collision with root package name */
        Object f5404c;

        /* renamed from: d  reason: collision with root package name */
        int f5405d;

        b(int i, int i2, int i3, Object obj) {
            this.f5402a = i;
            this.f5403b = i2;
            this.f5405d = i3;
            this.f5404c = obj;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            int i = this.f5402a;
            if (i != bVar.f5402a) {
                return false;
            }
            if (i == 8 && Math.abs(this.f5405d - this.f5403b) == 1 && this.f5405d == bVar.f5403b && this.f5403b == bVar.f5405d) {
                return true;
            }
            if (this.f5405d != bVar.f5405d || this.f5403b != bVar.f5403b) {
                return false;
            }
            Object obj2 = this.f5404c;
            return obj2 != null ? obj2.equals(bVar.f5404c) : bVar.f5404c == null;
        }

        public final int hashCode() {
            return (((this.f5402a * 31) + this.f5403b) * 31) + this.f5405d;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append("[");
            int i = this.f5402a;
            sb.append(i != 1 ? i != 2 ? i != 4 ? i != 8 ? "??" : "mv" : "up" : "rm" : "add");
            sb.append(",s:");
            sb.append(this.f5403b);
            sb.append("c:");
            sb.append(this.f5405d);
            sb.append(",p:");
            sb.append(this.f5404c);
            sb.append("]");
            return sb.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(AbstractC0110a aVar) {
        this(aVar, false);
    }

    a(AbstractC0110a aVar, boolean z) {
        this.h = new c.b(30);
        this.f5398a = new ArrayList<>();
        this.f5399b = new ArrayList<>();
        this.g = 0;
        this.f5400c = aVar;
        this.e = z;
        this.f = new i(this);
    }

    private void a(b bVar, int i) {
        this.f5400c.a(bVar);
        int i2 = bVar.f5402a;
        if (i2 == 2) {
            this.f5400c.a(i, bVar.f5405d);
        } else if (i2 == 4) {
            this.f5400c.a(i, bVar.f5405d, bVar.f5404c);
        } else {
            throw new IllegalArgumentException("only remove and update ops can be dispatched in first pass");
        }
    }

    private void a(List<b> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            a(list.get(i));
        }
        list.clear();
    }

    private int b(int i, int i2) {
        int i3;
        int i4;
        for (int size = this.f5399b.size() - 1; size >= 0; size--) {
            b bVar = this.f5399b.get(size);
            if (bVar.f5402a == 8) {
                if (bVar.f5403b < bVar.f5405d) {
                    i4 = bVar.f5403b;
                    i3 = bVar.f5405d;
                } else {
                    i4 = bVar.f5405d;
                    i3 = bVar.f5403b;
                }
                if (i < i4 || i > i3) {
                    i = i;
                    if (i < bVar.f5403b) {
                        if (i2 == 1) {
                            bVar.f5403b++;
                            bVar.f5405d++;
                            i = i;
                        } else {
                            i = i;
                            if (i2 == 2) {
                                bVar.f5403b--;
                                bVar.f5405d--;
                                i = i;
                            }
                        }
                    }
                } else if (i4 == bVar.f5403b) {
                    if (i2 == 1) {
                        bVar.f5405d++;
                    } else if (i2 == 2) {
                        bVar.f5405d--;
                    }
                    i++;
                } else {
                    if (i2 == 1) {
                        bVar.f5403b++;
                    } else if (i2 == 2) {
                        bVar.f5403b--;
                    }
                    i--;
                }
            } else if (bVar.f5403b <= i) {
                if (bVar.f5402a == 1) {
                    i -= bVar.f5405d;
                } else {
                    i = i;
                    if (bVar.f5402a == 2) {
                        i += bVar.f5405d;
                    }
                }
            } else if (i2 == 1) {
                bVar.f5403b++;
                i = i;
            } else {
                i = i;
                if (i2 == 2) {
                    bVar.f5403b--;
                    i = i;
                }
            }
        }
        for (int size2 = this.f5399b.size() - 1; size2 >= 0; size2--) {
            b bVar2 = this.f5399b.get(size2);
            if (bVar2.f5402a == 8) {
                if (bVar2.f5405d == bVar2.f5403b || bVar2.f5405d < 0) {
                    this.f5399b.remove(size2);
                    a(bVar2);
                }
            } else if (bVar2.f5405d <= 0) {
                this.f5399b.remove(size2);
                a(bVar2);
            }
        }
        return i;
    }

    private void b(b bVar) {
        int i;
        if (bVar.f5402a == 1 || bVar.f5402a == 8) {
            throw new IllegalArgumentException("should not dispatch add or move for pre layout");
        }
        int b2 = b(bVar.f5403b, bVar.f5402a);
        int i2 = bVar.f5403b;
        int i3 = bVar.f5402a;
        if (i3 == 2) {
            i = 0;
        } else if (i3 == 4) {
            i = 1;
        } else {
            throw new IllegalArgumentException("op should be remove or update.".concat(String.valueOf(bVar)));
        }
        int i4 = 1;
        for (int i5 = 1; i5 < bVar.f5405d; i5++) {
            int b3 = b(bVar.f5403b + (i * i5), bVar.f5402a);
            int i6 = bVar.f5402a;
            if (i6 == 2 ? b3 == b2 : i6 == 4 && b3 == b2 + 1) {
                i4++;
            } else {
                b a2 = a(bVar.f5402a, b2, i4, bVar.f5404c);
                a(a2, i2);
                a(a2);
                i2 = i2;
                if (bVar.f5402a == 4) {
                    i2 += i4;
                }
                i4 = 1;
                b2 = b3;
            }
        }
        Object obj = bVar.f5404c;
        a(bVar);
        if (i4 > 0) {
            b a3 = a(bVar.f5402a, b2, i4, obj);
            a(a3, i2);
            a(a3);
        }
    }

    private void c(b bVar) {
        this.f5399b.add(bVar);
        int i = bVar.f5402a;
        if (i == 1) {
            this.f5400c.c(bVar.f5403b, bVar.f5405d);
        } else if (i == 2) {
            this.f5400c.b(bVar.f5403b, bVar.f5405d);
        } else if (i == 4) {
            this.f5400c.a(bVar.f5403b, bVar.f5405d, bVar.f5404c);
        } else if (i == 8) {
            this.f5400c.d(bVar.f5403b, bVar.f5405d);
        } else {
            throw new IllegalArgumentException("Unknown update op type for ".concat(String.valueOf(bVar)));
        }
    }

    private boolean d(int i) {
        int size = this.f5399b.size();
        for (int i2 = 0; i2 < size; i2++) {
            b bVar = this.f5399b.get(i2);
            if (bVar.f5402a == 8) {
                if (a(bVar.f5405d, i2 + 1) == i) {
                    return true;
                }
            } else if (bVar.f5402a == 1) {
                int i3 = bVar.f5403b;
                int i4 = bVar.f5405d;
                for (int i5 = bVar.f5403b; i5 < i3 + i4; i5++) {
                    if (a(i5, i2 + 1) == i) {
                        return true;
                    }
                }
                continue;
            } else {
                continue;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int a(int i, int i2) {
        int size = this.f5399b.size();
        for (int i3 = i2; i3 < size; i3++) {
            b bVar = this.f5399b.get(i3);
            if (bVar.f5402a != 8) {
                i = i;
                if (bVar.f5403b > i) {
                    continue;
                } else if (bVar.f5402a != 2) {
                    i = i;
                    if (bVar.f5402a == 1) {
                        i += bVar.f5405d;
                    }
                } else if (i < bVar.f5403b + bVar.f5405d) {
                    return -1;
                } else {
                    i -= bVar.f5405d;
                }
            } else if (bVar.f5403b == i) {
                i = bVar.f5405d;
            } else {
                int i4 = i;
                if (bVar.f5403b < i) {
                    i4 = i - 1;
                }
                i = i4;
                if (bVar.f5405d <= i4) {
                    i = i4 + 1;
                }
            }
        }
        return i;
    }

    @Override // androidx.recyclerview.widget.i.a
    public final b a(int i, int i2, int i3, Object obj) {
        b bVar;
        b a2 = this.h.a();
        if (a2 == null) {
            bVar = new b(i, i2, i3, obj);
        } else {
            a2.f5402a = i;
            a2.f5403b = i2;
            a2.f5405d = i3;
            a2.f5404c = obj;
            bVar = a2;
        }
        return bVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        a(this.f5398a);
        a(this.f5399b);
        this.g = 0;
    }

    @Override // androidx.recyclerview.widget.i.a
    public final void a(b bVar) {
        if (!this.e) {
            bVar.f5404c = null;
            this.h.a(bVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a(int i) {
        return (i & this.g) != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int b(int i) {
        return a(i, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:204:0x0196 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:216:0x000a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00f4  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0103  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0160  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x016e  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0187  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void b() {
        /*
            Method dump skipped, instructions count: 1810
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.a.b():void");
    }

    public final int c(int i) {
        int size = this.f5398a.size();
        for (int i2 = 0; i2 < size; i2++) {
            b bVar = this.f5398a.get(i2);
            int i3 = bVar.f5402a;
            if (i3 == 1) {
                i = i;
                if (bVar.f5403b <= i) {
                    i += bVar.f5405d;
                }
            } else if (i3 == 2) {
                i = i;
                if (bVar.f5403b > i) {
                    continue;
                } else if (bVar.f5403b + bVar.f5405d > i) {
                    return -1;
                } else {
                    i -= bVar.f5405d;
                }
            } else if (i3 != 8) {
                i = i;
            } else if (bVar.f5403b == i) {
                i = bVar.f5405d;
            } else {
                int i4 = i;
                if (bVar.f5403b < i) {
                    i4 = i - 1;
                }
                i = i4;
                if (bVar.f5405d <= i4) {
                    i = i4 + 1;
                }
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c() {
        int size = this.f5399b.size();
        for (int i = 0; i < size; i++) {
            this.f5400c.b(this.f5399b.get(i));
        }
        a(this.f5399b);
        this.g = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean d() {
        return this.f5398a.size() > 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void e() {
        c();
        int size = this.f5398a.size();
        for (int i = 0; i < size; i++) {
            b bVar = this.f5398a.get(i);
            int i2 = bVar.f5402a;
            if (i2 == 1) {
                this.f5400c.b(bVar);
                this.f5400c.c(bVar.f5403b, bVar.f5405d);
            } else if (i2 == 2) {
                this.f5400c.b(bVar);
                this.f5400c.a(bVar.f5403b, bVar.f5405d);
            } else if (i2 == 4) {
                this.f5400c.b(bVar);
                this.f5400c.a(bVar.f5403b, bVar.f5405d, bVar.f5404c);
            } else if (i2 == 8) {
                this.f5400c.b(bVar);
                this.f5400c.d(bVar.f5403b, bVar.f5405d);
            }
            Runnable runnable = this.f5401d;
            if (runnable != null) {
                runnable.run();
            }
        }
        a(this.f5398a);
        this.g = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean f() {
        return !this.f5399b.isEmpty() && !this.f5398a.isEmpty();
    }
}
