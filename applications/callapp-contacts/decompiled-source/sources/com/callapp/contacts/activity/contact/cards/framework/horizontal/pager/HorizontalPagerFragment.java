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

    /* renamed from: a  reason: collision with root package name */
    protected View.OnTouchListener f11898a;

    /* renamed from: b  reason: collision with root package name */
    private ViewHolder f11899b;

    /* renamed from: c  reason: collision with root package name */
    private Data f11900c;

    /* renamed from: d  reason: collision with root package name */
    private View f11901d;
    private Integer e = null;
    private Drawable f = null;

    protected abstract ViewHolder a(View view);

    protected abstract void a(ViewHolder viewholder, Data data);

    protected abstract int getLayoutResId();

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.f11901d = layoutInflater.inflate(getLayoutResId(), viewGroup, false);
        Integer num = this.e;
        if (num != null) {
            setBackgroundColor(num.intValue());
        }
        Drawable drawable = this.f;
        if (drawable != null) {
            setBackgroundDrawable(drawable);
        }
        ViewHolder a2 = a(this.f11901d);
        this.f11899b = a2;
        a(a2, this.f11900c);
        return this.f11901d;
    }

    public void setBackgroundColor(int i) {
        this.e = Integer.valueOf(i);
        View view = this.f11901d;
        if (view != null) {
            view.setBackgroundColor(i);
        }
    }

    public void setBackgroundDrawable(Drawable drawable) {
        this.f = drawable;
        View view = this.f11901d;
        if (view != null) {
            ViewUtils.a(view, drawable);
        }
    }

    public void setData(Data data) {
        this.f11900c = data;
        ViewHolder viewholder = this.f11899b;
        if (viewholder != null) {
            a(viewholder, data);
        }
    }

    public void setOnTouchListener(View.OnTouchListener onTouchListener) {
        this.f11898a = onTouchListener;
    }
}
