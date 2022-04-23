package p113f.p114a.p115a.p116d;

import android.view.View;
import android.view.ViewGroup;
import androidx.viewpager.widget.AbstractC0533a;
import androidx.viewpager.widget.ViewPager;
import hani.momanii.supernova_emoji_library.Helper.C3150a;
import hani.momanii.supernova_emoji_library.Helper.C3155d;
import java.util.List;
/* renamed from: f.a.a.d.b */
/* loaded from: classes2-dex2jar.jar:f/a/a/d/b.class */
public class C3137b extends AbstractC0533a {

    /* renamed from: b */
    private List<C3150a> f12942b;

    public C3137b(List<C3150a> list) {
        this.f12942b = list;
    }

    @Override // androidx.viewpager.widget.AbstractC0533a
    /* renamed from: b */
    public void mo67b(ViewGroup viewGroup, int i, Object obj) {
        ((ViewPager) viewGroup).removeView((View) obj);
    }

    @Override // androidx.viewpager.widget.AbstractC0533a
    /* renamed from: e */
    public int mo66e() {
        return this.f12942b.size();
    }

    @Override // androidx.viewpager.widget.AbstractC0533a
    /* renamed from: j */
    public Object mo65j(ViewGroup viewGroup, int i) {
        View view = this.f12942b.get(i).f12999b;
        ((ViewPager) viewGroup).addView(view, 0);
        return view;
    }

    @Override // androidx.viewpager.widget.AbstractC0533a
    /* renamed from: k */
    public boolean mo64k(View view, Object obj) {
        return obj == view;
    }

    /* renamed from: u */
    public C3155d m63u() {
        for (C3150a aVar : this.f12942b) {
            if (aVar instanceof C3155d) {
                return (C3155d) aVar;
            }
        }
        return null;
    }
}
