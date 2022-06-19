package com.allinone.callerid.customview;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.EditText;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/customview/DeletableEditText.class */
public class DeletableEditText extends EditText {

    /* renamed from: d */
    private Drawable f8476d;

    /* renamed from: e */
    private boolean f8477e;

    /* renamed from: com.allinone.callerid.customview.DeletableEditText$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/customview/DeletableEditText$b.class */
    public class View$OnFocusChangeListenerC2423b implements View.OnFocusChangeListener {
        private View$OnFocusChangeListenerC2423b() {
            DeletableEditText.this = r4;
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            DeletableEditText.this.f8477e = z;
            boolean z2 = false;
            if (!DeletableEditText.this.f8477e) {
                DeletableEditText.this.setClearDrawableVisible(false);
                return;
            }
            if (DeletableEditText.this.getText().toString().length() >= 1) {
                z2 = true;
            }
            DeletableEditText.this.setClearDrawableVisible(z2);
        }
    }

    /* renamed from: com.allinone.callerid.customview.DeletableEditText$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/customview/DeletableEditText$c.class */
    public class C2424c implements TextWatcher {
        private C2424c() {
            DeletableEditText.this = r4;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            boolean z = true;
            if (DeletableEditText.this.getText().toString().length() < 1) {
                z = false;
            }
            DeletableEditText.this.setClearDrawableVisible(z);
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    public DeletableEditText(Context context) {
        super(context);
        m27435c();
    }

    public DeletableEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m27435c();
    }

    public DeletableEditText(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m27435c();
    }

    /* renamed from: c */
    private void m27435c() {
        this.f8476d = getCompoundDrawables()[2];
        setOnFocusChangeListener(new View$OnFocusChangeListenerC2423b());
        addTextChangedListener(new C2424c());
        setClearDrawableVisible(false);
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z = true;
        if (motionEvent.getAction() == 1) {
            if (motionEvent.getX() <= getWidth() - getTotalPaddingRight() || motionEvent.getX() >= getWidth() - getPaddingRight()) {
                z = false;
            }
            if (z) {
                setText("");
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    protected void setClearDrawableVisible(boolean z) {
        setCompoundDrawables(getCompoundDrawables()[0], getCompoundDrawables()[1], z ? this.f8476d : null, getCompoundDrawables()[3]);
    }
}
