package com.kedlin.cca.p007ui;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.AutoCompleteTextView;
/* renamed from: com.kedlin.cca.ui.AutoComplete */
/* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/AutoComplete.class */
public class AutoComplete extends AutoCompleteTextView {
    public AutoComplete(Context context) {
        super(context);
    }

    public AutoComplete(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public AutoComplete(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // android.widget.AutoCompleteTextView
    public boolean enoughToFilter() {
        return true;
    }
}
