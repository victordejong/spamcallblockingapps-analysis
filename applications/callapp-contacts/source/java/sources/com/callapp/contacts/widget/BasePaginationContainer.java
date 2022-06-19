package com.callapp.contacts.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RadioGroup;
import com.callapp.contacts.C5563R;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.ThemeUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/BasePaginationContainer.class */
public abstract class BasePaginationContainer<Btn extends View> extends RetractableFrameLayout implements PaginationContainer {

    /* renamed from: b */
    private RadioGroup f28585b;

    /* renamed from: c */
    private BasePaginationContainer<Btn>.Attributes f28586c;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/BasePaginationContainer$Attributes.class */
    public class Attributes {

        /* renamed from: b */
        private int f28592b;

        /* renamed from: c */
        private int f28593c;

        /* renamed from: d */
        private float f28594d;

        /* renamed from: e */
        private float f28595e;

        /* renamed from: f */
        private float f28596f;

        private Attributes() {
            BasePaginationContainer.this = r5;
            this.f28592b = ThemeUtils.m27386a(r5.getContext(), 2131099784);
            this.f28593c = ThemeUtils.m27386a(r5.getContext(), 2131100108);
            this.f28594d = r5.getResources().getDimension(2131165771);
            this.f28595e = r5.getResources().getDimension(2131165771);
            this.f28596f = Activities.m27699a(4.0f);
        }
    }

    public BasePaginationContainer(Context context) {
        this(context, null);
    }

    public BasePaginationContainer(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public BasePaginationContainer(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        BasePaginationContainer<Btn>.Attributes attributes = new Attributes();
        this.f28586c = attributes;
        if (getContext() != null && attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C5563R.styleable.paginatedContainer);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = obtainStyledAttributes.getIndex(i2);
                if (index == 0) {
                    ((Attributes) attributes).f28592b = obtainStyledAttributes.getColor(index, ((Attributes) attributes).f28592b);
                } else if (index == 1) {
                    ((Attributes) attributes).f28595e = obtainStyledAttributes.getDimension(index, ((Attributes) attributes).f28595e);
                } else if (index == 2) {
                    ((Attributes) attributes).f28594d = obtainStyledAttributes.getDimension(index, ((Attributes) attributes).f28594d);
                } else if (index == 3) {
                    ((Attributes) attributes).f28596f = obtainStyledAttributes.getDimension(index, ((Attributes) attributes).f28596f);
                } else if (index != 4) {
                    StringBuilder sb = new StringBuilder("Unknown attribute for ");
                    sb.append(getClass().toString());
                    sb.append(": ");
                    sb.append(index);
                    CLog.m27606a("TAG");
                } else {
                    ((Attributes) attributes).f28593c = obtainStyledAttributes.getColor(index, ((Attributes) attributes).f28593c);
                }
            }
            obtainStyledAttributes.recycle();
        }
        this.f28585b = (RadioGroup) inflate(getContext(), 2131558970, this).findViewById(2131363476);
    }

    /* renamed from: a */
    private void m26832a(int i, int i2) {
        this.f28585b.removeAllViews();
        final int i3 = ((Attributes) this.f28586c).f28592b;
        final int i4 = ((Attributes) this.f28586c).f28593c;
        final Btn[] newBtnsArray = getNewBtnsArray(i);
        LayoutInflater from = LayoutInflater.from(getContext());
        for (int i5 = 0; i5 < i; i5++) {
            newBtnsArray[i5] = mo26663a(from, this.f28585b);
            newBtnsArray[i5].setClickable(false);
            this.f28585b.addView(newBtnsArray[i5]);
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) newBtnsArray[i5].getLayoutParams();
            layoutParams.width = (int) ((Attributes) this.f28586c).f28594d;
            layoutParams.height = (int) ((Attributes) this.f28586c).f28595e;
            if (i5 < i - 1) {
                layoutParams.setMargins(0, 0, (int) ((Attributes) this.f28586c).f28596f, 0);
            }
            newBtnsArray[i5].setLayoutParams(layoutParams);
        }
        this.f28585b.clearCheck();
        if (i > 0) {
            this.f28585b.check(0);
            mo26662a(newBtnsArray, 0, i3, i4);
        } else if (i > 0) {
            this.f28585b.check(0);
            mo26662a(newBtnsArray, 0, i3, i4);
        }
        this.f28585b.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: com.callapp.contacts.widget.BasePaginationContainer.1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public void onCheckedChanged(RadioGroup radioGroup, int i6) {
                BasePaginationContainer.this.mo26662a(newBtnsArray, i6, i3, i4);
            }
        });
    }

    /* renamed from: a */
    protected abstract Btn mo26663a(LayoutInflater layoutInflater, ViewGroup viewGroup);

    @Override // com.callapp.contacts.widget.PaginationContainer
    /* renamed from: a */
    public final void mo26690a(int i) {
        int i2 = 0;
        m26832a(i, 0);
        if (i <= 1) {
            i2 = 4;
        }
        setVisibility(i2);
    }

    /* renamed from: a */
    protected abstract void mo26662a(Btn[] btnArr, int i, int i2, int i3);

    protected abstract Btn[] getNewBtnsArray(int i);

    public void setCheckedColor(int i) {
        ((Attributes) this.f28586c).f28592b = i;
    }

    @Override // com.callapp.contacts.widget.PaginationContainer
    public void setCheckedPosition(int i) {
        this.f28585b.check(i);
    }

    public void setUncheckedColor(int i) {
        ((Attributes) this.f28586c).f28593c = i;
    }
}
