package p081h.p450p;

import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
/* renamed from: h.p.d */
/* loaded from: classes2-dex2jar.jar:h/p/d.class */
public class C10837d implements AbstractC10842g<ViewPager2, RecyclerView.Adapter> {

    /* renamed from: a */
    public ViewPager2 f24796a;

    /* renamed from: b */
    public AbstractC10843h f24797b;

    /* renamed from: c */
    public ViewPager2.OnPageChangeCallback f24798c = new C10838a();

    /* renamed from: h.p.d$a */
    /* loaded from: classes2-dex2jar.jar:h/p/d$a.class */
    public class C10838a extends ViewPager2.OnPageChangeCallback {
        public C10838a() {
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageScrollStateChanged(int i) {
            if (C10837d.this.f24797b != null) {
                C10837d.this.f24797b.onPageScrollStateChanged(i);
            }
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageScrolled(int i, float f, int i2) {
            if (C10837d.this.f24797b != null) {
                C10837d.this.f24797b.onPageScrolled(i, f, i2);
            }
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageSelected(int i) {
            if (C10837d.this.f24797b != null) {
                C10837d.this.f24797b.onPageSelected(i);
            }
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // p081h.p450p.AbstractC10842g
    /* renamed from: a */
    public RecyclerView.Adapter mo10436a() {
        ViewPager2 viewPager2 = this.f24796a;
        if (viewPager2 != null) {
            return viewPager2.getAdapter();
        }
        throw new IllegalStateException("ViewPager has not been bound.");
    }

    @Override // p081h.p450p.AbstractC10842g
    /* renamed from: a */
    public void mo10435a(float f) {
        this.f24796a.fakeDragBy(f);
    }

    @Override // p081h.p450p.AbstractC10842g
    /* renamed from: a */
    public void mo10434a(int i) {
        ViewPager2 viewPager2 = this.f24796a;
        if (viewPager2 != null) {
            viewPager2.setCurrentItem(i);
            return;
        }
        throw new IllegalStateException("ViewPager has not been bound.");
    }

    @Override // p081h.p450p.AbstractC10842g
    /* renamed from: a */
    public void mo10433a(int i, boolean z) {
        ViewPager2 viewPager2 = this.f24796a;
        if (viewPager2 != null) {
            viewPager2.setCurrentItem(i, z);
            return;
        }
        throw new IllegalStateException("ViewPager has not been bound.");
    }

    /* renamed from: a  reason: avoid collision after fix types in other method */
    public void mo10432a(ViewPager2 viewPager2) {
        this.f24796a = viewPager2;
    }

    @Override // p081h.p450p.AbstractC10842g
    /* renamed from: a */
    public void mo10431a(AbstractC10843h hVar) {
        this.f24797b = hVar;
        this.f24796a.registerOnPageChangeCallback(this.f24798c);
    }

    @Override // p081h.p450p.AbstractC10842g
    /* renamed from: b */
    public boolean mo10430b() {
        return this.f24796a.isFakeDragging();
    }

    @Override // p081h.p450p.AbstractC10842g
    /* renamed from: c  reason: avoid collision after fix types in other method */
    public ViewPager2 mo10429c() {
        return this.f24796a;
    }

    @Override // p081h.p450p.AbstractC10842g
    /* renamed from: d */
    public boolean mo10428d() {
        return this.f24796a.beginFakeDrag();
    }

    @Override // p081h.p450p.AbstractC10842g
    /* renamed from: e */
    public void mo10427e() {
        this.f24796a.endFakeDrag();
    }

    @Override // p081h.p450p.AbstractC10842g
    /* renamed from: f */
    public void mo10426f() {
        this.f24796a.unregisterOnPageChangeCallback(this.f24798c);
    }

    @Override // p081h.p450p.AbstractC10842g
    public int getCount() {
        if (mo10436a() != null) {
            return mo10436a().getItemCount();
        }
        return 0;
    }
}
