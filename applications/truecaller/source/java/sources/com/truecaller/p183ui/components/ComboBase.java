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
import com.truecaller.p183ui.components.ComboBase;
import java.util.ArrayList;
import java.util.List;
import n3.b.a.g;
import p1727n3.p1734b.p1735a.g$a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1114o5.C19045j0;
import p193e.p194a.p682e.p699c2.C13181c;
import p193e.p194a.p682e.p699c2.C13197i0;
import p193e.p194a.p682e.p699c2.C13214w;
/* renamed from: com.truecaller.ui.components.ComboBase */
/* loaded from: classes15-dex2jar.jar:com/truecaller/ui/components/ComboBase.class */
public class ComboBase extends LinearLayout implements View.OnClickListener {

    /* renamed from: a */
    public String f15707a;

    /* renamed from: b */
    public C13197i0 f15708b;

    /* renamed from: c */
    public List<? extends C13197i0> f15709c;

    /* renamed from: d */
    public List<AbstractC4672a> f15710d;

    /* renamed from: e */
    public int f15711e = 0;

    /* renamed from: f */
    public g f15712f;

    /* renamed from: com.truecaller.ui.components.ComboBase$a */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/ui/components/ComboBase$a.class */
    public interface AbstractC4672a {
        /* renamed from: a */
        void mo14306a(ComboBase comboBase);
    }

    public ComboBase(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        int i;
        int i2 = 0;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C2752R.styleable.ComboBase);
        int i3 = 2131558628;
        String str = null;
        String str2 = null;
        int i4 = 2131558628;
        if (obtainStyledAttributes != null) {
            while (true) {
                str = str2;
                if (i2 >= obtainStyledAttributes.getIndexCount()) {
                    break;
                }
                int index = obtainStyledAttributes.getIndex(i2);
                if (index == 0) {
                    str2 = obtainStyledAttributes.getString(index);
                    i = i3;
                } else {
                    i = i3;
                    str2 = str;
                    if (index == 1) {
                        i = obtainStyledAttributes.getResourceId(index, i3);
                        str2 = str;
                    }
                }
                i2++;
                i3 = i;
            }
            obtainStyledAttributes.recycle();
            i4 = i3;
        }
        addView(C19045j0.m14205k(getContext(), i4), new LinearLayout.LayoutParams(-1, -2));
        setOnClickListener(this);
        setClickable(true);
        setEnabled(isEnabled());
        if (str != null) {
            setTitle(C13197i0.m21997c(true, str));
        }
    }

    /* renamed from: a */
    public void m34539a(AbstractC4672a abstractC4672a) {
        if (this.f15710d == null) {
            this.f15710d = new ArrayList(1);
        }
        this.f15710d.add(abstractC4672a);
    }

    /* renamed from: b */
    public void m34538b() {
        List<AbstractC4672a> list = this.f15710d;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.f15710d.get(size).mo14306a(this);
            }
        }
    }

    public List<? extends C13197i0> getItems() {
        return this.f15709c;
    }

    public C13197i0 getSelection() {
        return this.f15708b;
    }

    public String getTitle() {
        return this.f15707a;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.f15709c != null) {
            g$a g_a = new g$a(C17422k.m16113E(getContext(), true), 2131952119);
            g_a.f70854a.f154d = this.f15707a;
            C13214w c13214w = (this.f15708b == null || this.f15711e == 0) ? new C13214w(this.f15709c) : new C13214w(this.f15709c, this.f15711e, this.f15708b, new C13181c(this));
            DialogInterface.OnClickListener onClickListener = new DialogInterface.OnClickListener() { // from class: e.a.e.c2.d
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    ComboBase comboBase = ComboBase.this;
                    comboBase.setSelection(comboBase.f15709c.get(i));
                    comboBase.m34538b();
                }
            };
            AlertController.C0037b c0037b = g_a.f70854a;
            c0037b.f168r = c13214w;
            c0037b.f169s = onClickListener;
            this.f15712f = g_a.m3652q();
        }
    }

    public void setData(List<? extends C13197i0> list) {
        this.f15709c = list;
        if (list == null || list.size() <= 0) {
            return;
        }
        setSelection(this.f15709c.get(0));
    }

    public void setListItemLayoutRes(int i) {
        this.f15711e = i;
    }

    public void setSelection(C13197i0 c13197i0) {
        this.f15708b = c13197i0;
        String str = "";
        String mo18605h = c13197i0 == null ? "" : c13197i0.mo18605h(getContext());
        if (c13197i0 != null) {
            str = this.f15708b.mo18608d(getContext());
        }
        int i = c13197i0 == null ? 0 : c13197i0.f38322a;
        int i2 = C19045j0.f53198b;
        C19045j0.m14201o((ImageView) findViewById(C2752R.C2754id.listItemIcon), i);
        C19045j0.m14196t((TextView) findViewById(2131364642), mo18605h);
        C19045j0.m14196t((TextView) findViewById(C2752R.C2754id.listItemDetails), str);
    }

    public void setTitle(String str) {
        String m21997c = C13197i0.m21997c(true, str);
        this.f15707a = m21997c;
        int i = C19045j0.f53198b;
        C19045j0.m14196t((TextView) findViewById(C2752R.C2754id.comboTitle), m21997c);
    }
}
