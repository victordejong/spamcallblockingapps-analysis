package com.unknownphone.callblocker.custom;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.app.C0456a;
/* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/custom/NoPermissionWidget.class */
public class NoPermissionWidget extends FrameLayout {
    public NoPermissionWidget(Context context) {
        super(context);
        m1103a();
    }

    public NoPermissionWidget(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NoPermissionWidget(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public NoPermissionWidget(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        m1103a();
    }

    /* renamed from: a */
    private void m1103a() {
        View inflate = inflate(getContext(), 2131492944, null);
        ((AppCompatTextView) inflate.findViewById(2131296678)).setText(getContext().getText(2131755302));
        ((AppCompatTextView) inflate.findViewById(2131296679)).setText(getContext().getText(2131755303));
        ((AppCompatTextView) inflate.findViewById(2131296680)).setText(getContext().getText(2131755304));
        ((AppCompatTextView) inflate.findViewById(2131296681)).setText(getContext().getText(2131755305));
        inflate.findViewById(2131296441).setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.custom.NoPermissionWidget.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (NoPermissionWidget.this.getActivity() == null || ((String[]) C5287g.m1071e(NoPermissionWidget.this.getContext()).toArray(new String[0])).length == 0) {
                    return;
                }
                C0456a.m20820a(NoPermissionWidget.this.getActivity(), (String[]) C5287g.m1071e(NoPermissionWidget.this.getContext()).toArray(new String[0]), 763);
            }
        });
        addView(inflate);
    }

    public Activity getActivity() {
        Activity activity;
        Context context = getContext();
        while (true) {
            Context context2 = context;
            if (!(context2 instanceof ContextWrapper)) {
                activity = null;
                break;
            } else if (context2 instanceof Activity) {
                activity = (Activity) context2;
                break;
            } else {
                context = ((ContextWrapper) context2).getBaseContext();
            }
        }
        return activity;
    }
}
