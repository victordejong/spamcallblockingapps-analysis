package com.github.jdsjlzx.view;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.RelativeLayout;
import p078c.p081b.p082a.C1820c;
/* loaded from: classes-dex2jar.jar:com/github/jdsjlzx/view/CommonFooter.class */
public class CommonFooter extends RelativeLayout {
    public CommonFooter(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m22197a(context);
    }

    public CommonFooter(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m22197a(context);
    }

    /* renamed from: a */
    public void m22197a(Context context) {
        RelativeLayout.inflate(context, C1820c.layout_recyclerview_footer, this);
    }
}
