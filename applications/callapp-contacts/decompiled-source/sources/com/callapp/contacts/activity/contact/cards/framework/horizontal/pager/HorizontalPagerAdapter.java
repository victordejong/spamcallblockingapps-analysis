package com.callapp.contacts.activity.contact.cards.framework.horizontal.pager;

import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.q;
import com.callapp.contacts.util.CLog;
import com.callapp.framework.util.CollectionUtils;
import java.util.Collection;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerAdapter.class */
public class HorizontalPagerAdapter<Data> extends q {

    /* renamed from: a  reason: collision with root package name */
    private List<Data> f11894a;

    /* renamed from: b  reason: collision with root package name */
    private final Class<? extends HorizontalPagerFragment> f11895b;

    /* renamed from: c  reason: collision with root package name */
    private View.OnTouchListener f11896c;

    public HorizontalPagerAdapter(FragmentManager fragmentManager, Class<? extends HorizontalPagerFragment> cls) {
        super(fragmentManager);
        this.f11895b = cls;
    }

    public final boolean a(List<Data> list) {
        synchronized (this) {
            if (CollectionUtils.a((Collection) this.f11894a, (Collection) list)) {
                return false;
            }
            this.f11894a = list;
            c();
            return true;
        }
    }

    @Override // androidx.viewpager.widget.a
    public int getCount() {
        synchronized (this) {
            List<Data> list = this.f11894a;
            if (list == null) {
                return 0;
            }
            return list.size();
        }
    }

    Data getDataAt(int i) {
        Data data;
        if (this.f11894a == null) {
            return null;
        }
        try {
            synchronized (this) {
                data = this.f11894a.get(i);
            }
            return data;
        } catch (Exception e) {
            CLog.b(HorizontalPagerAdapter.class, "fail to get index at: ".concat(String.valueOf(i)));
            return null;
        }
    }

    @Override // androidx.fragment.app.q
    public Fragment getItem(int i) {
        HorizontalPagerFragment horizontalPagerFragment;
        Throwable e;
        try {
            horizontalPagerFragment = (HorizontalPagerFragment) this.f11895b.newInstance();
        } catch (IllegalAccessException e2) {
            e = e2;
            horizontalPagerFragment = null;
        } catch (InstantiationException e3) {
            e = e3;
            horizontalPagerFragment = null;
        }
        try {
            horizontalPagerFragment.setData(getDataAt(i));
            horizontalPagerFragment = horizontalPagerFragment;
            if (i <= 1) {
                horizontalPagerFragment.setOnTouchListener(this.f11896c);
                horizontalPagerFragment = horizontalPagerFragment;
            }
        } catch (IllegalAccessException e4) {
            e = e4;
            CLog.a(HorizontalPagerAdapter.class, e);
            return horizontalPagerFragment;
        } catch (InstantiationException e5) {
            e = e5;
            CLog.a(HorizontalPagerAdapter.class, e);
            return horizontalPagerFragment;
        }
        return horizontalPagerFragment;
    }

    @Override // androidx.viewpager.widget.a
    public final int getItemPosition$5d527804() {
        return -2;
    }

    public void setCancelAnimationOnTouchListener(View.OnTouchListener onTouchListener) {
        this.f11896c = onTouchListener;
    }
}
