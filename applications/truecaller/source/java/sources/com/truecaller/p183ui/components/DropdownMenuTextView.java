package com.truecaller.p183ui.components;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatTextView;
import com.truecaller.C2752R;
import java.util.Objects;
import p1727n3.p1734b.p1741e.C25457f;
import p1727n3.p1734b.p1743f.C25508g0;
import p193e.p194a.p682e.p699c2.C13178a0;
import p193e.p194a.p682e.p699c2.View$OnClickListenerC13180b0;
/* renamed from: com.truecaller.ui.components.DropdownMenuTextView */
/* loaded from: classes15-dex2jar.jar:com/truecaller/ui/components/DropdownMenuTextView.class */
public class DropdownMenuTextView extends AppCompatTextView {

    /* renamed from: f */
    public C25508g0 f15737f;

    /* renamed from: g */
    public C25508g0.AbstractC25510b f15738g;

    public DropdownMenuTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        C25508g0 c25508g0 = new C25508g0(context, this, 0);
        this.f15737f = c25508g0;
        c25508g0.f71383e = new C13178a0(this);
        setOnClickListener(new View$OnClickListenerC13180b0(this));
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C2752R.styleable.DropdownMenuTextView, 0, 0);
        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
        if (resourceId != 0) {
            C25508g0 c25508g02 = this.f15737f;
            Objects.requireNonNull(c25508g02);
            new C25457f(c25508g02.f71379a).inflate(resourceId, this.f15737f.f71380b);
        }
        obtainStyledAttributes.recycle();
    }

    public void setOnMenuItemClickListener(C25508g0.AbstractC25510b abstractC25510b) {
        this.f15738g = abstractC25510b;
    }
}
