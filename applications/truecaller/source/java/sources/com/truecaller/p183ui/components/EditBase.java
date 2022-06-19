package com.truecaller.p183ui.components;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.appcompat.widget.AppCompatAutoCompleteTextView;
import com.truecaller.C2752R;
import com.truecaller.p183ui.components.EditBase;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p372b0.p417k.C8502h;
import p193e.p194a.p372b0.p430q.C8605o;
import p193e.p194a.p682e.p699c2.C13182c0;
import w3.c.a.a.a.h;
/* renamed from: com.truecaller.ui.components.EditBase */
/* loaded from: classes15-dex2jar.jar:com/truecaller/ui/components/EditBase.class */
public class EditBase extends AppCompatAutoCompleteTextView {

    /* renamed from: i */
    public static final /* synthetic */ int f15739i = 0;

    /* renamed from: d */
    public final Drawable f15740d;

    /* renamed from: e */
    public boolean f15741e;

    /* renamed from: f */
    public boolean f15742f;

    /* renamed from: g */
    public boolean f15743g;

    /* renamed from: h */
    public AbstractC4676a f15744h;

    /* renamed from: com.truecaller.ui.components.EditBase$a */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/ui/components/EditBase$a.class */
    public interface AbstractC4676a {
    }

    public EditBase(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        boolean z = true;
        TypedArray obtainStyledAttributes = C17422k.m16113E(context, true).obtainStyledAttributes(attributeSet, C2752R.styleable.EditBase);
        Drawable m13535l0 = C19291g.m13535l0(context, obtainStyledAttributes.getResourceId(0, 2131231576), 2130970256);
        this.f15740d = m13535l0;
        obtainStyledAttributes.recycle();
        this.f15741e = (isInEditMode() || !C8502h.m28437a()) ? false : z;
        int m28238b = C8605o.m28238b(context, 24.0f);
        m13535l0.setBounds(0, 0, m28238b, m28238b);
        setOnTouchListener(new View.OnTouchListener() { // from class: e.a.e.c2.h
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                boolean z2;
                EditBase editBase = EditBase.this;
                if (editBase.getCompoundDrawables()[(editBase.f15741e ? null : 2) == 1 ? 1 : 0] != null && motionEvent.getAction() == 1) {
                    boolean m = h.m(editBase.getText());
                    if (m) {
                        if (editBase.f15741e) {
                            if (motionEvent.getX() < editBase.f15740d.getIntrinsicWidth() + editBase.getPaddingLeft()) {
                                z2 = true;
                                editBase.f15742f = z2;
                                editBase.f15743g = editBase.f15741e && motionEvent.getX() > ((float) ((editBase.getWidth() - editBase.getPaddingRight()) - editBase.f15740d.getIntrinsicWidth()));
                            }
                        }
                        z2 = false;
                        editBase.f15742f = z2;
                        editBase.f15743g = editBase.f15741e && motionEvent.getX() > ((float) ((editBase.getWidth() - editBase.getPaddingRight()) - editBase.f15740d.getIntrinsicWidth()));
                    }
                    if ((!editBase.f15742f && !editBase.f15743g) || !m) {
                        return false;
                    }
                    editBase.setText("");
                    editBase.m34533a();
                    return false;
                }
                return false;
            }
        });
        addTextChangedListener(new C13182c0(this));
    }

    /* renamed from: a */
    public final void m34533a() {
        if (this.f15741e) {
            setCompoundDrawables(null, getCompoundDrawables()[1], getCompoundDrawables()[2], getCompoundDrawables()[3]);
        } else {
            setCompoundDrawables(getCompoundDrawables()[0], getCompoundDrawables()[1], null, getCompoundDrawables()[3]);
        }
    }

    public void setClearIconListener(AbstractC4676a abstractC4676a) {
        this.f15744h = abstractC4676a;
    }
}
