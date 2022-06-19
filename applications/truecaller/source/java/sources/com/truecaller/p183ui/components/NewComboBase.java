package com.truecaller.p183ui.components;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.app.AlertController;
import com.truecaller.C2752R;
import com.truecaller.p183ui.components.NewComboBase;
import java.util.List;
import java.util.Objects;
import p1727n3.p1734b.p1735a.g$a;
import p193e.p194a.p1114o5.C19045j0;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p682e.C13286n;
import p193e.p194a.p682e.C13319v0;
import p193e.p194a.p682e.p699c2.C13197i0;
import p193e.p194a.p682e.p699c2.C13214w;
/* renamed from: com.truecaller.ui.components.NewComboBase */
/* loaded from: classes15-dex2jar.jar:com/truecaller/ui/components/NewComboBase.class */
public class NewComboBase extends LinearLayout implements View.OnClickListener {

    /* renamed from: a */
    public String f15790a;

    /* renamed from: b */
    public C13197i0 f15791b;

    /* renamed from: c */
    public List<? extends C13197i0> f15792c;

    /* renamed from: d */
    public AbstractC4684a f15793d;

    /* renamed from: com.truecaller.ui.components.NewComboBase$a */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/ui/components/NewComboBase$a.class */
    public interface AbstractC4684a {
    }

    public NewComboBase(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        addView(C19045j0.m14205k(getContext(), C2752R.layout.control_new_combo), new LinearLayout.LayoutParams(-1, -2));
        setOnClickListener(this);
        setClickable(true);
        setEnabled(isEnabled());
        ((ImageView) findViewById(C2752R.C2754id.dropdown_icon)).setImageDrawable(C19291g.m13535l0(getContext(), C2752R.C2753drawable.ic_combo_dropdown, 2130970255));
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C2752R.styleable.NewComboBase);
        if (obtainStyledAttributes != null) {
            for (int i = 0; i < obtainStyledAttributes.getIndexCount(); i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == 0) {
                    setTitle(C13197i0.m21997c(true, obtainStyledAttributes.getString(index)));
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    public C13197i0 getSelection() {
        return this.f15791b;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        g$a g_a = new g$a(getContext());
        g_a.f70854a.f154d = this.f15790a;
        C13214w c13214w = new C13214w(this.f15792c);
        DialogInterface.OnClickListener onClickListener = new DialogInterface.OnClickListener() { // from class: e.a.e.c2.p
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                NewComboBase newComboBase = NewComboBase.this;
                newComboBase.setSelection(newComboBase.f15792c.get(i));
                NewComboBase.AbstractC4684a abstractC4684a = newComboBase.f15793d;
                if (abstractC4684a != null) {
                    C13286n c13286n = (C13286n) abstractC4684a;
                    C13319v0 c13319v0 = c13286n.f38620a;
                    int i2 = c13286n.f38621b;
                    int i3 = c13286n.f38622c;
                    Objects.requireNonNull(c13319v0);
                    int i4 = C19045j0.f53198b;
                    TextView textView = (TextView) newComboBase.findViewById(C2752R.C2754id.listItemDetails);
                    if (c13319v0.f38718x.get(0).mo18605h(c13319v0.getActivity()).equals(newComboBase.getSelection().mo18605h(c13319v0.getActivity()))) {
                        textView.setTextColor(i2);
                        return;
                    }
                    textView.setTextColor(i3);
                    c13319v0.m21932aB(c13319v0.f38706l, false);
                }
            }
        };
        AlertController.C0037b c0037b = g_a.f70854a;
        c0037b.f168r = c13214w;
        c0037b.f169s = onClickListener;
        g_a.m3652q();
    }

    public void setData(List<? extends C13197i0> list) {
        this.f15792c = list;
        if (list == null || list.size() <= 0) {
            return;
        }
        setSelection(this.f15792c.get(0));
    }

    public void setObserver(AbstractC4684a abstractC4684a) {
        this.f15793d = abstractC4684a;
    }

    public void setSelection(C13197i0 c13197i0) {
        this.f15791b = c13197i0;
        String mo18605h = c13197i0 == null ? "" : c13197i0.mo18605h(getContext());
        int i = C19045j0.f53198b;
        C19045j0.m14196t((TextView) findViewById(C2752R.C2754id.listItemDetails), mo18605h);
    }

    public void setTitle(String str) {
        this.f15790a = C13197i0.m21997c(true, str);
    }
}
