package androidx.appcompat.view.menu;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Build;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.widget.PopupWindow;
import androidx.appcompat.a;
import androidx.appcompat.view.menu.m;
import androidx.core.view.e;
import androidx.core.view.v;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/l.class */
public class l {

    /* renamed from: a  reason: collision with root package name */
    public View f831a;

    /* renamed from: b  reason: collision with root package name */
    PopupWindow.OnDismissListener f832b;

    /* renamed from: c  reason: collision with root package name */
    private final Context f833c;

    /* renamed from: d  reason: collision with root package name */
    private final g f834d;
    private final boolean e;
    private final int f;
    private final int g;
    private int h;
    private boolean i;
    private m.a j;
    private k k;
    private final PopupWindow.OnDismissListener l;

    public l(Context context, g gVar) {
        this(context, gVar, null, false, a.C0018a.popupMenuStyle, 0);
    }

    public l(Context context, g gVar, View view) {
        this(context, gVar, view, false, a.C0018a.popupMenuStyle, 0);
    }

    public l(Context context, g gVar, View view, boolean z, int i) {
        this(context, gVar, view, z, i, 0);
    }

    public l(Context context, g gVar, View view, boolean z, int i, int i2) {
        this.h = 8388611;
        this.l = new PopupWindow.OnDismissListener() { // from class: androidx.appcompat.view.menu.l.1
            @Override // android.widget.PopupWindow.OnDismissListener
            public final void onDismiss() {
                l.this.e();
            }
        };
        this.f833c = context;
        this.f834d = gVar;
        this.f831a = view;
        this.e = z;
        this.f = i;
        this.g = i2;
    }

    public final void a() {
        this.h = 8388613;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(int i, int i2, boolean z, boolean z2) {
        k b2 = b();
        b2.c(z2);
        if (z) {
            int i3 = i;
            if ((e.a(this.h, v.f(this.f831a)) & 7) == 5) {
                i3 = i - this.f831a.getWidth();
            }
            b2.b(i3);
            b2.c(i2);
            int i4 = (int) ((this.f833c.getResources().getDisplayMetrics().density * 48.0f) / 2.0f);
            b2.g = new Rect(i3 - i4, i2 - i4, i3 + i4, i2 + i4);
        }
        b2.e_();
    }

    public final void a(m.a aVar) {
        this.j = aVar;
        k kVar = this.k;
        if (kVar != null) {
            kVar.a(aVar);
        }
    }

    public final void a(boolean z) {
        this.i = z;
        k kVar = this.k;
        if (kVar != null) {
            kVar.b(z);
        }
    }

    public final k b() {
        if (this.k == null) {
            Display defaultDisplay = ((WindowManager) this.f833c.getSystemService("window")).getDefaultDisplay();
            Point point = new Point();
            if (Build.VERSION.SDK_INT >= 17) {
                defaultDisplay.getRealSize(point);
            } else {
                defaultDisplay.getSize(point);
            }
            k dVar = Math.min(point.x, point.y) >= this.f833c.getResources().getDimensionPixelSize(a.d.abc_cascading_menus_min_smallest_width) ? new d(this.f833c, this.f831a, this.f, this.g, this.e) : new q(this.f833c, this.f834d, this.f831a, this.f, this.g, this.e);
            dVar.a(this.f834d);
            dVar.a(this.l);
            dVar.a(this.f831a);
            dVar.a(this.j);
            dVar.b(this.i);
            dVar.a(this.h);
            this.k = dVar;
        }
        return this.k;
    }

    public final boolean c() {
        if (f()) {
            return true;
        }
        if (this.f831a == null) {
            return false;
        }
        a(0, 0, false, false);
        return true;
    }

    public final void d() {
        if (f()) {
            this.k.d();
        }
    }

    public void e() {
        this.k = null;
        PopupWindow.OnDismissListener onDismissListener = this.f832b;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    public final boolean f() {
        k kVar = this.k;
        return kVar != null && kVar.e();
    }
}
