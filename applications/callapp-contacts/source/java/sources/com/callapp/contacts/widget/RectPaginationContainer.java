package com.callapp.contacts.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/RectPaginationContainer.class */
public class RectPaginationContainer extends BasePaginationContainer<View> implements PaginationContainer {
    public RectPaginationContainer(Context context) {
        this(context, null);
    }

    public RectPaginationContainer(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RectPaginationContainer(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // com.callapp.contacts.widget.BasePaginationContainer
    /* renamed from: a */
    protected final View mo26663a(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        return layoutInflater.inflate(2131558972, viewGroup, false);
    }

    @Override // com.callapp.contacts.widget.BasePaginationContainer
    /* renamed from: a */
    protected final void mo26662a(View[] viewArr, int i, int i2, int i3) {
        for (int i4 = 0; i4 < viewArr.length; i4++) {
            View view = viewArr[i4];
            if (i4 == i) {
                view.setBackgroundColor(i2);
            } else {
                view.setBackgroundColor(i3);
            }
            view.invalidate();
        }
    }

    @Override // com.callapp.contacts.widget.BasePaginationContainer
    protected View[] getNewBtnsArray(int i) {
        return new DualCirclesCheckBox[i];
    }
}
