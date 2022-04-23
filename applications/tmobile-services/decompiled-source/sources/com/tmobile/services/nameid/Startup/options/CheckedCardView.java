package com.tmobile.services.nameid.Startup.options;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.annotation.StringRes;
import com.tmobile.services.C1517R;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/Startup/options/CheckedCardView.class */
public class CheckedCardView extends LinearLayout {

    /* renamed from: f */
    TextView f13011f;

    /* renamed from: g */
    TextView f13012g;

    /* renamed from: h */
    CheckBox f13013h;

    /* renamed from: i */
    LinearLayout f13014i;

    /* renamed from: j */
    private boolean f13015j;

    /* renamed from: k */
    private boolean f13016k;

    public CheckedCardView(Context context) {
        this(context, null);
    }

    public CheckedCardView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f13016k = true;
        View inflate = LayoutInflater.from(context).inflate(C1517R.layout.checked_cardview, (ViewGroup) this, true);
        ((LinearLayout) inflate).setOrientation(1);
        this.f13011f = (TextView) inflate.findViewById(C1517R.C1520id.checked_cardview_title);
        this.f13012g = (TextView) inflate.findViewById(C1517R.C1520id.checked_cardview_subtext);
        this.f13013h = (CheckBox) inflate.findViewById(C1517R.C1520id.checked_cardview_checkbox);
        LinearLayout linearLayout = (LinearLayout) inflate.findViewById(C1517R.C1520id.checked_cardview_container);
        this.f13014i = linearLayout;
        linearLayout.setOnClickListener(new View.OnClickListener() { // from class: com.tmobile.services.nameid.Startup.options.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CheckedCardView.this.m7192a(view);
            }
        });
    }

    /* renamed from: a */
    public /* synthetic */ void m7192a(View view) {
        m7191b();
    }

    /* renamed from: b */
    public void m7191b() {
        if (this.f13015j && this.f13016k) {
            this.f13013h.toggle();
        }
    }

    public void setChecked(boolean z) {
        this.f13013h.setChecked(z);
    }

    public void setCheckedChangedListener(CompoundButton.OnCheckedChangeListener onCheckedChangeListener) {
        this.f13013h.setOnCheckedChangeListener(onCheckedChangeListener);
    }

    public void setContent(@StringRes int i, @StringRes int i2, boolean z, boolean z2) {
        this.f13011f.setText(i);
        this.f13012g.setText(i2);
        this.f13013h.setChecked(z);
        this.f13015j = z2;
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        this.f13016k = z;
        this.f13013h.setEnabled(z);
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.f13014i.setOnClickListener(onClickListener);
    }
}
