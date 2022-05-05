package p081h.p450p;

import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
/* renamed from: h.p.e */
/* loaded from: classes2-dex2jar.jar:h/p/e.class */
public class C10839e implements AbstractC10842g<ViewPager, PagerAdapter> {

    /* renamed from: a */
    public ViewPager f24800a;

    /* renamed from: b */
    public AbstractC10843h f24801b;

    /* renamed from: h.p.e$a */
    /* loaded from: classes2-dex2jar.jar:h/p/e$a.class */
    public class C10840a implements ViewPager.OnPageChangeListener {
        public C10840a() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i) {
            if (C10839e.this.f24801b != null) {
                C10839e.this.f24801b.onPageScrollStateChanged(i);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i, float f, int i2) {
            if (C10839e.this.f24801b != null) {
                C10839e.this.f24801b.onPageScrolled(i, f, i2);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i) {
            if (C10839e.this.f24801b != null) {
                C10839e.this.f24801b.onPageSelected(i);
            }
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // p081h.p450p.AbstractC10842g
    /* renamed from: a */
    public PagerAdapter mo10436a() {
        ViewPager viewPager = this.f24800a;
        if (viewPager != null) {
            return viewPager.getAdapter();
        }
        throw new IllegalStateException("ViewPager has not been bound.");
    }

    @Override // p081h.p450p.AbstractC10842g
    /* renamed from: a */
    public void mo10435a(float f) {
        this.f24800a.fakeDragBy(f);
    }

    @Override // p081h.p450p.AbstractC10842g
    /* renamed from: a */
    public void mo10434a(int i) {
        ViewPager viewPager = this.f24800a;
        if (viewPager != null) {
            viewPager.setCurrentItem(i);
            return;
        }
        throw new IllegalStateException("ViewPager has not been bound.");
    }

    @Override // p081h.p450p.AbstractC10842g
    /* renamed from: a */
    public void mo10433a(int i, boolean z) {
        ViewPager viewPager = this.f24800a;
        if (viewPager != null) {
            viewPager.setCurrentItem(i, z);
            return;
        }
        throw new IllegalStateException("ViewPager has not been bound.");
    }

    /* renamed from: a  reason: avoid collision after fix types in other method */
    public void mo10432a(ViewPager viewPager) {
        this.f24800a = viewPager;
    }

    @Override // p081h.p450p.AbstractC10842g
    /* renamed from: a */
    public void mo10431a(AbstractC10843h hVar) {
        this.f24801b = hVar;
        this.f24800a.setOnPageChangeListener(new C10840a());
    }

    @Override // p081h.p450p.AbstractC10842g
    /* renamed from: b */
    public boolean mo10430b() {
        return this.f24800a.isFakeDragging();
    }

    @Override // p081h.p450p.AbstractC10842g
    /* renamed from: c  reason: avoid collision after fix types in other method */
    public ViewPager mo10429c() {
        return this.f24800a;
    }

    @Override // p081h.p450p.AbstractC10842g
    /* renamed from: d */
    public boolean mo10428d() {
        return this.f24800a.beginFakeDrag();
    }

    @Override // p081h.p450p.AbstractC10842g
    /* renamed from: e */
    public void mo10427e() {
        this.f24800a.endFakeDrag();
    }

    @Override // p081h.p450p.AbstractC10842g
    /* renamed from: f */
    public void mo10426f() {
        this.f24800a.setOnPageChangeListener(null);
    }

    @Override // p081h.p450p.AbstractC10842g
    public int getCount() {
        if (mo10436a() != null) {
            return mo10436a().getCount();
        }
        return 0;
    }
}
