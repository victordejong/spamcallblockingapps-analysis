package com.callapp.contacts.activity.contact.cards.framework.horizontal.pager;

import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import com.callapp.contacts.util.ViewUtils;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerFragment.class */
public abstract class HorizontalPagerFragment<ViewHolder, Data> extends Fragment {

    /* renamed from: a */
    protected View.OnTouchListener f21440a;

    /* renamed from: b */
    private ViewHolder f21441b;

    /* renamed from: c */
    private Data f21442c;

    /* renamed from: d */
    private View f21443d;

    /* renamed from: e */
    private Integer f21444e = null;

    /* renamed from: f */
    private Drawable f21445f = null;

    /* renamed from: a */
    protected abstract ViewHolder mo26363a(View view);

    /* renamed from: a */
    protected abstract void mo26362a(ViewHolder viewholder, Data data);

    protected abstract int getLayoutResId();

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.f21443d = layoutInflater.inflate(getLayoutResId(), viewGroup, false);
        Integer num = this.f21444e;
        if (num != null) {
            setBackgroundColor(num.intValue());
        }
        Drawable drawable = this.f21445f;
        if (drawable != null) {
            setBackgroundDrawable(drawable);
        }
        ViewHolder mo26363a = mo26363a(this.f21443d);
        this.f21441b = mo26363a;
        mo26362a(mo26363a, this.f21442c);
        return this.f21443d;
    }

    public void setBackgroundColor(int i) {
        this.f21444e = Integer.valueOf(i);
        View view = this.f21443d;
        if (view != null) {
            view.setBackgroundColor(i);
        }
    }

    public void setBackgroundDrawable(Drawable drawable) {
        this.f21445f = drawable;
        View view = this.f21443d;
        if (view != null) {
            ViewUtils.m27320a(view, drawable);
        }
    }

    public void setData(Data data) {
        this.f21442c = data;
        ViewHolder viewholder = this.f21441b;
        if (viewholder != null) {
            mo26362a(viewholder, data);
        }
    }

    public void setOnTouchListener(View.OnTouchListener onTouchListener) {
        this.f21440a = onTouchListener;
    }
}
