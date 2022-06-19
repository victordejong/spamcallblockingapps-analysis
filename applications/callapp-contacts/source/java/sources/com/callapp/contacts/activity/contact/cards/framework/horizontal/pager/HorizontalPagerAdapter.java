package com.callapp.contacts.activity.contact.cards.framework.horizontal.pager;

import android.view.View;
import androidx.fragment.app.AbstractC1119q;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.callapp.contacts.util.CLog;
import com.callapp.framework.util.CollectionUtils;
import java.util.Collection;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerAdapter.class */
public class HorizontalPagerAdapter<Data> extends AbstractC1119q {

    /* renamed from: a */
    private List<Data> f21436a;

    /* renamed from: b */
    private final Class<? extends HorizontalPagerFragment> f21437b;

    /* renamed from: c */
    private View.OnTouchListener f21438c;

    public HorizontalPagerAdapter(FragmentManager fragmentManager, Class<? extends HorizontalPagerFragment> cls) {
        super(fragmentManager);
        this.f21437b = cls;
    }

    /* renamed from: a */
    public final boolean m31118a(List<Data> list) {
        synchronized (this) {
            if (!CollectionUtils.m26074a((Collection) this.f21436a, (Collection) list)) {
                this.f21436a = list;
                m39589c();
                return true;
            }
            return false;
        }
    }

    @Override // androidx.viewpager.widget.AbstractC2941a
    public int getCount() {
        synchronized (this) {
            List<Data> list = this.f21436a;
            if (list == null) {
                return 0;
            }
            return list.size();
        }
    }

    Data getDataAt(int i) {
        Data data;
        if (this.f21436a == null) {
            return null;
        }
        try {
            synchronized (this) {
                data = this.f21436a.get(i);
            }
            return data;
        } catch (Exception e) {
            CLog.m27598b(HorizontalPagerAdapter.class, "fail to get index at: ".concat(String.valueOf(i)));
            return null;
        }
    }

    @Override // androidx.fragment.app.AbstractC1119q
    public Fragment getItem(int i) {
        HorizontalPagerFragment horizontalPagerFragment;
        Throwable e;
        HorizontalPagerFragment horizontalPagerFragment2;
        try {
            horizontalPagerFragment2 = this.f21437b.newInstance();
        } catch (IllegalAccessException e2) {
            e = e2;
            horizontalPagerFragment2 = null;
        } catch (InstantiationException e3) {
            e = e3;
            horizontalPagerFragment2 = null;
        }
        try {
            horizontalPagerFragment2.setData(getDataAt(i));
            horizontalPagerFragment = horizontalPagerFragment2;
            if (i <= 1) {
                horizontalPagerFragment2.setOnTouchListener(this.f21438c);
                horizontalPagerFragment = horizontalPagerFragment2;
            }
        } catch (IllegalAccessException e4) {
            e = e4;
            CLog.m27609a(HorizontalPagerAdapter.class, e);
            horizontalPagerFragment = horizontalPagerFragment2;
            return horizontalPagerFragment;
        } catch (InstantiationException e5) {
            e = e5;
            CLog.m27609a(HorizontalPagerAdapter.class, e);
            horizontalPagerFragment = horizontalPagerFragment2;
            return horizontalPagerFragment;
        }
        return horizontalPagerFragment;
    }

    @Override // androidx.viewpager.widget.AbstractC2941a
    public final int getItemPosition$5d527804() {
        return -2;
    }

    public void setCancelAnimationOnTouchListener(View.OnTouchListener onTouchListener) {
        this.f21438c = onTouchListener;
    }
}
