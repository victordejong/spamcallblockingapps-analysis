package com.callapp.contacts.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/ContactItemView.class */
public class ContactItemView extends BaseItemView {
    private TextView k;
    private LinearLayout l;

    public ContactItemView(Context context) {
        this(context, null);
    }

    public ContactItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ContactItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.callapp.contacts.widget.BaseItemView
    public final void a() {
        super.a();
        this.k = (TextView) findViewById(2131363348);
        this.l = (LinearLayout) findViewById(2131363123);
        this.k.setTextColor(ThemeUtils.getColor(2131100140));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.callapp.contacts.widget.BaseItemView
    public final void b() {
        super.b();
        a(2131363180);
        a(2131363789);
        a(2131364115);
        a(2131362649);
        a(2131363678);
    }

    @Override // com.callapp.contacts.widget.BaseItemView
    protected int getLayoutResId() {
        return 2131558758;
    }

    @Override // com.callapp.contacts.widget.BaseItemView
    protected boolean isSwipeable() {
        return false;
    }

    public void setDuration(CharSequence charSequence) {
        setLazyText(2131362649, charSequence);
        setLazyTextColor(2131362649, ThemeUtils.getColor(2131100108));
    }

    public void setFirstRowText(CharSequence charSequence) {
        this.k.setText(charSequence);
    }

    public void setFirstRowTextColor(int i) {
        this.k.setTextColor(i);
    }

    public void setLeftIcon(int i) {
        setLeftIcon(i, 0);
    }

    public void setLeftIcon(int i, int i2) {
        if (i != 0 || isViewInflated(2131363180)) {
            ((FourEventsIconsViewGroup) getLazyView(2131363180)).setEventIcon(0, i, i2);
        }
    }

    public void setLeftIcons(int[] iArr) {
        if ((iArr != null && iArr.length != 0) || isViewInflated(2131363180)) {
            ((FourEventsIconsViewGroup) getLazyView(2131363180)).setIconsToEvents(iArr);
        }
    }

    public void setMargin(int i) {
        ViewUtils.a(this.l, i, i, i, i);
    }

    public void setOnSwitchViewContainerClickListener(View.OnClickListener onClickListener) {
        if (onClickListener != null) {
            getLazyView(2131364044).setOnClickListener(onClickListener);
            getLazyView(2131364044).setVisibility(0);
        } else if (isViewInflated(2131364044)) {
            getLazyView(2131364044).findViewById(2131364042).setOnClickListener(null);
            getLazyView(2131364044).findViewById(2131364042).setVisibility(8);
        }
    }

    public void setRightIcon(int i) {
        setLazyDrawable$4868d30e(i, ThemeUtils.getColor(2131100108));
    }

    public void setSecondRowText(CharSequence charSequence) {
        setLazyText(2131363789, charSequence);
    }

    public void setSecondRowTextColor(int i) {
        setLazyTextColor(2131363789, i);
    }

    @Override // com.callapp.contacts.widget.BaseItemView, android.view.View
    public void setTag(Object obj) {
        super.setTag(obj);
        this.k.setTag(obj);
        this.l.setTag(obj);
        setLazyTag(2131363180, obj);
        setLazyTag(2131363789, obj);
        setLazyTag(2131364115, obj);
        setLazyTag(2131362649, obj);
        setLazyTag(2131363678, obj);
    }
}
