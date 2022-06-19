package p193e.p1577m.p1578a.p1641e;

import android.view.View;
import com.google.android.flexbox.FlexItem;
import java.util.ArrayList;
import java.util.List;
/* renamed from: e.m.a.e.b */
/* loaded from: classes2-dex2jar.jar:e/m/a/e/b.class */
public class C24872b {

    /* renamed from: e */
    public int f69758e;

    /* renamed from: f */
    public int f69759f;

    /* renamed from: g */
    public int f69760g;

    /* renamed from: h */
    public int f69761h;

    /* renamed from: i */
    public int f69762i;

    /* renamed from: j */
    public float f69763j;

    /* renamed from: k */
    public float f69764k;

    /* renamed from: l */
    public int f69765l;

    /* renamed from: m */
    public int f69766m;

    /* renamed from: o */
    public int f69768o;

    /* renamed from: p */
    public int f69769p;

    /* renamed from: q */
    public boolean f69770q;

    /* renamed from: r */
    public boolean f69771r;

    /* renamed from: a */
    public int f69754a = Integer.MAX_VALUE;

    /* renamed from: b */
    public int f69755b = Integer.MAX_VALUE;

    /* renamed from: c */
    public int f69756c = Integer.MIN_VALUE;

    /* renamed from: d */
    public int f69757d = Integer.MIN_VALUE;

    /* renamed from: n */
    public List<Integer> f69767n = new ArrayList();

    /* renamed from: a */
    public int m4333a() {
        return this.f69761h - this.f69762i;
    }

    /* renamed from: b */
    public void m4332b(View view, int i, int i2, int i3, int i4) {
        FlexItem flexItem = (FlexItem) view.getLayoutParams();
        this.f69754a = Math.min(this.f69754a, (view.getLeft() - flexItem.mo39149R1()) - i);
        this.f69755b = Math.min(this.f69755b, (view.getTop() - flexItem.mo39150Q()) - i2);
        this.f69756c = Math.max(this.f69756c, flexItem.mo39146Z1() + view.getRight() + i3);
        this.f69757d = Math.max(this.f69757d, flexItem.mo39141n0() + view.getBottom() + i4);
    }
}
