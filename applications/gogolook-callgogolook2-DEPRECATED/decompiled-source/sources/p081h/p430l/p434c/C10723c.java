package p081h.p430l.p434c;

import android.content.Context;
import android.graphics.Rect;
import androidx.annotation.NonNull;
import com.mopub.common.util.Dips;
/* renamed from: h.l.c.c */
/* loaded from: classes2-dex2jar.jar:h/l/c/c.class */
public class C10723c {
    @NonNull

    /* renamed from: a */
    public final Context f24431a;
    @NonNull

    /* renamed from: b */
    public final Rect f24432b = new Rect();
    @NonNull

    /* renamed from: c */
    public final Rect f24433c = new Rect();
    @NonNull

    /* renamed from: d */
    public final Rect f24434d = new Rect();
    @NonNull

    /* renamed from: e */
    public final Rect f24435e = new Rect();
    @NonNull

    /* renamed from: f */
    public final Rect f24436f = new Rect();
    @NonNull

    /* renamed from: g */
    public final Rect f24437g = new Rect();
    @NonNull

    /* renamed from: h */
    public final Rect f24438h = new Rect();
    @NonNull

    /* renamed from: i */
    public final Rect f24439i = new Rect();

    /* renamed from: j */
    public final float f24440j;

    public C10723c(Context context, float f) {
        this.f24431a = context.getApplicationContext();
        this.f24440j = f;
    }

    @NonNull
    /* renamed from: a */
    public Rect m10819a() {
        return this.f24437g;
    }

    /* renamed from: a */
    public void m10818a(int i, int i2) {
        this.f24432b.set(0, 0, i, i2);
        m10816a(this.f24432b, this.f24433c);
    }

    /* renamed from: a */
    public void m10817a(int i, int i2, int i3, int i4) {
        this.f24436f.set(i, i2, i3 + i, i4 + i2);
        m10816a(this.f24436f, this.f24437g);
    }

    /* renamed from: a */
    public final void m10816a(Rect rect, Rect rect2) {
        rect2.set(Dips.pixelsToIntDips(rect.left, this.f24431a), Dips.pixelsToIntDips(rect.top, this.f24431a), Dips.pixelsToIntDips(rect.right, this.f24431a), Dips.pixelsToIntDips(rect.bottom, this.f24431a));
    }

    @NonNull
    /* renamed from: b */
    public Rect m10815b() {
        return this.f24438h;
    }

    /* renamed from: b */
    public void m10814b(int i, int i2, int i3, int i4) {
        this.f24438h.set(i, i2, i3 + i, i4 + i2);
        m10816a(this.f24438h, this.f24439i);
    }

    @NonNull
    /* renamed from: c */
    public Rect m10813c() {
        return this.f24439i;
    }

    /* renamed from: c */
    public void m10812c(int i, int i2, int i3, int i4) {
        this.f24434d.set(i, i2, i3 + i, i4 + i2);
        m10816a(this.f24434d, this.f24435e);
    }

    @NonNull
    /* renamed from: d */
    public Rect m10811d() {
        return this.f24434d;
    }

    @NonNull
    /* renamed from: e */
    public Rect m10810e() {
        return this.f24435e;
    }

    @NonNull
    /* renamed from: f */
    public Rect m10809f() {
        return this.f24433c;
    }

    public float getDensity() {
        return this.f24440j;
    }
}
