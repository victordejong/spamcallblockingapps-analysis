package com.callapp.contacts.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/CirclePaginationContainer.class */
public class CirclePaginationContainer extends BasePaginationContainer<DualCirclesCheckBox> implements PaginationContainer {
    public CirclePaginationContainer(Context context) {
        this(context, null);
    }

    public CirclePaginationContainer(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CirclePaginationContainer(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // com.callapp.contacts.widget.BasePaginationContainer
    protected final /* synthetic */ DualCirclesCheckBox a(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        return (DualCirclesCheckBox) layoutInflater.inflate(2131558971, viewGroup, false);
    }

    @Override // com.callapp.contacts.widget.BasePaginationContainer
    protected final /* synthetic */ void a(DualCirclesCheckBox[] dualCirclesCheckBoxArr, int i, int i2, int i3) {
        DualCirclesCheckBox[] dualCirclesCheckBoxArr2 = dualCirclesCheckBoxArr;
        for (int i4 = 0; i4 < dualCirclesCheckBoxArr2.length; i4++) {
            DualCirclesCheckBox dualCirclesCheckBox = dualCirclesCheckBoxArr2[i4];
            if (i4 == i) {
                dualCirclesCheckBox.setIconColorFilter(i2, true);
            } else {
                dualCirclesCheckBox.setIconColorFilter(i3, true);
            }
            dualCirclesCheckBox.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.callapp.contacts.widget.BasePaginationContainer
    public DualCirclesCheckBox[] getNewBtnsArray(int i) {
        return new DualCirclesCheckBox[i];
    }
}
