package p459j.p460a.p596x;

import android.content.Context;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import java.util.List;
/* renamed from: j.a.x.i */
/* loaded from: classes2-dex2jar.jar:j/a/x/i.class */
public class C14375i extends FragmentPagerAdapter {

    /* renamed from: a */
    public List<Fragment> f32192a;

    public C14375i(FragmentManager fragmentManager, Context context, List<Fragment> list) {
        super(fragmentManager);
        this.f32192a = list;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getCount() {
        return this.f32192a.size();
    }

    @Override // androidx.fragment.app.FragmentPagerAdapter
    public Fragment getItem(int i) {
        return this.f32192a.get(i);
    }
}
