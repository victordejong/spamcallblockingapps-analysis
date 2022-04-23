package com.callapp.contacts.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RadioGroup;
import com.callapp.contacts.R;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.ThemeUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/BasePaginationContainer.class */
public abstract class BasePaginationContainer<Btn extends View> extends RetractableFrameLayout implements PaginationContainer {

    /* renamed from: b  reason: collision with root package name */
    private RadioGroup f16412b;

    /* renamed from: c  reason: collision with root package name */
    private BasePaginationContainer<Btn>.Attributes f16413c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/BasePaginationContainer$Attributes.class */
    public class Attributes {

        /* renamed from: b  reason: collision with root package name */
        private int f16419b;

        /* renamed from: c  reason: collision with root package name */
        private int f16420c;

        /* renamed from: d  reason: collision with root package name */
        private float f16421d;
        private float e;
        private float f;

        private Attributes() {
            this.f16419b = ThemeUtils.a(BasePaginationContainer.this.getContext(), 2131099784);
            this.f16420c = ThemeUtils.a(BasePaginationContainer.this.getContext(), 2131100108);
            this.f16421d = BasePaginationContainer.this.getResources().getDimension(2131165771);
            this.e = BasePaginationContainer.this.getResources().getDimension(2131165771);
            this.f = Activities.a(4.0f);
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
        this.f16413c = attributes;
        if (!(getContext() == null || attributeSet == null)) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.paginatedContainer);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = obtainStyledAttributes.getIndex(i2);
                if (index == 0) {
                    ((Attributes) attributes).f16419b = obtainStyledAttributes.getColor(index, ((Attributes) attributes).f16419b);
                } else if (index == 1) {
                    ((Attributes) attributes).e = obtainStyledAttributes.getDimension(index, ((Attributes) attributes).e);
                } else if (index == 2) {
                    ((Attributes) attributes).f16421d = obtainStyledAttributes.getDimension(index, ((Attributes) attributes).f16421d);
                } else if (index == 3) {
                    ((Attributes) attributes).f = obtainStyledAttributes.getDimension(index, ((Attributes) attributes).f);
                } else if (index != 4) {
                    StringBuilder sb = new StringBuilder("Unknown attribute for ");
                    sb.append(getClass().toString());
                    sb.append(": ");
                    sb.append(index);
                    CLog.a("TAG");
                } else {
                    ((Attributes) attributes).f16420c = obtainStyledAttributes.getColor(index, ((Attributes) attributes).f16420c);
                }
            }
            obtainStyledAttributes.recycle();
        }
        this.f16412b = (RadioGroup) inflate(getContext(), 2131558970, this).findViewById(2131363476);
    }

    private void a(int i, int i2) {
        this.f16412b.removeAllViews();
        final int i3 = ((Attributes) this.f16413c).f16419b;
        final int i4 = ((Attributes) this.f16413c).f16420c;
        final Btn[] newBtnsArray = getNewBtnsArray(i);
        LayoutInflater from = LayoutInflater.from(getContext());
        for (int i5 = 0; i5 < i; i5++) {
            newBtnsArray[i5] = a(from, this.f16412b);
            newBtnsArray[i5].setClickable(false);
            this.f16412b.addView(newBtnsArray[i5]);
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) newBtnsArray[i5].getLayoutParams();
            layoutParams.width = (int) ((Attributes) this.f16413c).f16421d;
            layoutParams.height = (int) ((Attributes) this.f16413c).e;
            if (i5 < i - 1) {
                layoutParams.setMargins(0, 0, (int) ((Attributes) this.f16413c).f, 0);
            }
            newBtnsArray[i5].setLayoutParams(layoutParams);
        }
        this.f16412b.clearCheck();
        if (i > 0) {
            this.f16412b.check(0);
            a(newBtnsArray, 0, i3, i4);
        } else if (i > 0) {
            this.f16412b.check(0);
            a(newBtnsArray, 0, i3, i4);
        }
        this.f16412b.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: com.callapp.contacts.widget.BasePaginationContainer.1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public void onCheckedChanged(RadioGroup radioGroup, int i6) {
                BasePaginationContainer.this.a(newBtnsArray, i6, i3, i4);
            }
        });
    }

    protected abstract Btn a(LayoutInflater layoutInflater, ViewGroup viewGroup);

    @Override // com.callapp.contacts.widget.PaginationContainer
    public final void a(int i) {
        int i2 = 0;
        a(i, 0);
        if (i <= 1) {
            i2 = 4;
        }
        setVisibility(i2);
    }

    protected abstract void a(Btn[] btnArr, int i, int i2, int i3);

    protected abstract Btn[] getNewBtnsArray(int i);

    public void setCheckedColor(int i) {
        ((Attributes) this.f16413c).f16419b = i;
    }

    @Override // com.callapp.contacts.widget.PaginationContainer
    public void setCheckedPosition(int i) {
        this.f16412b.check(i);
    }

    public void setUncheckedColor(int i) {
        ((Attributes) this.f16413c).f16420c = i;
    }
}
