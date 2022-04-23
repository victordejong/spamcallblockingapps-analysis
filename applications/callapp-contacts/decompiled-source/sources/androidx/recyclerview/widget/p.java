package androidx.recyclerview.widget;

import android.view.View;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/p.class */
final class p {

    /* renamed from: a  reason: collision with root package name */
    final b f5495a;

    /* renamed from: b  reason: collision with root package name */
    a f5496b = new a();

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/p$a.class */
    static final class a {

        /* renamed from: a  reason: collision with root package name */
        int f5497a = 0;

        /* renamed from: b  reason: collision with root package name */
        int f5498b;

        /* renamed from: c  reason: collision with root package name */
        int f5499c;

        /* renamed from: d  reason: collision with root package name */
        int f5500d;
        int e;

        a() {
        }

        private static int a(int i, int i2) {
            if (i > i2) {
                return 1;
            }
            return i == i2 ? 2 : 4;
        }

        final void a(int i) {
            this.f5497a = i | this.f5497a;
        }

        final void a(int i, int i2, int i3, int i4) {
            this.f5498b = i;
            this.f5499c = i2;
            this.f5500d = i3;
            this.e = i4;
        }

        final boolean a() {
            int i = this.f5497a;
            if ((i & 7) != 0 && (i & (a(this.f5500d, this.f5498b) << 0)) == 0) {
                return false;
            }
            int i2 = this.f5497a;
            if ((i2 & 112) != 0 && (i2 & (a(this.f5500d, this.f5499c) << 4)) == 0) {
                return false;
            }
            int i3 = this.f5497a;
            if ((i3 & 1792) != 0 && (i3 & (a(this.e, this.f5498b) << 8)) == 0) {
                return false;
            }
            int i4 = this.f5497a;
            return (i4 & 28672) == 0 || (i4 & (a(this.e, this.f5499c) << 12)) != 0;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/p$b.class */
    interface b {
        int a();

        int a(View view);

        View a(int i);

        int b();

        int b(View view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(b bVar) {
        this.f5495a = bVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final View a(int i, int i2, int i3, int i4) {
        int a2 = this.f5495a.a();
        int b2 = this.f5495a.b();
        int i5 = i2 > i ? 1 : -1;
        View view = null;
        while (i != i2) {
            View a3 = this.f5495a.a(i);
            this.f5496b.a(a2, b2, this.f5495a.a(a3), this.f5495a.b(a3));
            if (i3 != 0) {
                this.f5496b.f5497a = 0;
                this.f5496b.a(i3);
                if (this.f5496b.a()) {
                    return a3;
                }
            }
            view = view;
            if (i4 != 0) {
                this.f5496b.f5497a = 0;
                this.f5496b.a(i4);
                view = view;
                if (this.f5496b.a()) {
                    view = a3;
                }
            }
            i += i5;
        }
        return view;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a(View view) {
        this.f5496b.a(this.f5495a.a(), this.f5495a.b(), this.f5495a.a(view), this.f5495a.b(view));
        this.f5496b.f5497a = 0;
        this.f5496b.a(24579);
        return this.f5496b.a();
    }
}
