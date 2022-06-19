package com.truecaller.incallui.utils;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewStub;
import android.widget.CompoundButton;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.TextView;
import android.widget.ToggleButton;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.razorpay.AnalyticsConstants;
import com.truecaller.incallui.C4013R;
import java.util.Objects;
import kotlin.Metadata;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p717f.p732x.C13753l;
import p193e.p194a.p717f.p734z.C13819g0;
import p193e.p194a.p717f.p734z.C13821h0;
import p193e.p194a.p717f.p734z.C13825j0;
import p193e.p194a.p717f.p734z.View$OnClickListenerC13823i0;
import s1.g;
import s1.s;
import s1.z.b.p;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\u0018��2\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J/\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00022\u0018\u0010\n\u001a\u0014\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00040\b¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u000f\u0010\u000eR6\u0010\u0017\u001a\u0016\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0004\u0018\u00010\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u0016\u0010\u001a\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR.\u0010&\u001a\u0004\u0018\u00010\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010\u001e8\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R\u0018\u0010*\u001a\u0004\u0018\u00010'8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)R\u0018\u0010.\u001a\u0004\u0018\u00010+8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010-R%\u00105\u001a\n 0*\u0004\u0018\u00010/0/8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b1\u00102\u001a\u0004\b3\u00104R.\u0010=\u001a\u0004\u0018\u0001062\b\u0010\u001f\u001a\u0004\u0018\u0001068\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b7\u00108\u001a\u0004\b9\u0010:\"\u0004\b;\u0010<¨\u0006>"}, d2 = {"Lcom/truecaller/incallui/utils/OngoingCallActionButton;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "", "enabled", "Ls1/s;", "setEnabled", "(Z)V", "checked", "Lkotlin/Function2;", "Landroid/widget/CompoundButton;", "listener", "f1", "(ZLs1/z/b/p;)V", "onDetachedFromWindow", "()V", "g1", "Landroid/view/View;", "v", "Ls1/z/b/p;", "getOnClickListener", "()Ls1/z/b/p;", "setOnClickListener", "(Ls1/z/b/p;)V", "onClickListener", "w", "Z", "actionButtonInflated", "u", "Landroid/view/View;", "actionButton", "", "value", "A", "Ljava/lang/String;", "getActionButtonText", "()Ljava/lang/String;", "setActionButtonText", "(Ljava/lang/String;)V", "actionButtonText", "Le/a/f/x/l;", "y", "Le/a/f/x/l;", "binding", "", "t", "Ljava/lang/Integer;", "actionButtonType", "Landroid/view/LayoutInflater;", "kotlin.jvm.PlatformType", "x", "Ls1/g;", "getInflater", "()Landroid/view/LayoutInflater;", "inflater", "Landroid/graphics/drawable/Drawable;", "z", "Landroid/graphics/drawable/Drawable;", "getActionButtonSrc", "()Landroid/graphics/drawable/Drawable;", "setActionButtonSrc", "(Landroid/graphics/drawable/Drawable;)V", "actionButtonSrc", "incallui_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes10-dex2jar.jar:com/truecaller/incallui/utils/OngoingCallActionButton.class */
public final class OngoingCallActionButton extends ConstraintLayout {

    /* renamed from: A */
    public String f12443A;

    /* renamed from: t */
    public Integer f12444t;

    /* renamed from: u */
    public View f12445u;

    /* renamed from: v */
    public p<? super View, ? super Boolean, s> f12446v;

    /* renamed from: w */
    public boolean f12447w;

    /* renamed from: x */
    public final g f12448x;

    /* renamed from: y */
    public C13753l f12449y;

    /* renamed from: z */
    public Drawable f12450z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OngoingCallActionButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f12448x = C25225a.m3978P1(new C13819g0(context));
        getInflater().inflate(C4013R.layout.view_ongoing_call_action_button, this);
        int i = C4013R.C4015id.actionContainer;
        FrameLayout frameLayout = (FrameLayout) findViewById(i);
        if (frameLayout != null) {
            i = C4013R.C4015id.actionImageButtonViewStub;
            ViewStub viewStub = (ViewStub) findViewById(i);
            if (viewStub != null) {
                i = C4013R.C4015id.actionTextView;
                TextView textView = (TextView) findViewById(i);
                if (textView != null) {
                    i = C4013R.C4015id.actionToggleButtonViewStub;
                    ViewStub viewStub2 = (ViewStub) findViewById(i);
                    if (viewStub2 != null) {
                        this.f12449y = new C13753l(this, frameLayout, viewStub, textView, viewStub2);
                        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C4013R.styleable.OngoingCallActionButton);
                        l.d(obtainStyledAttributes, "context.obtainStyledAttr….OngoingCallActionButton)");
                        this.f12444t = Integer.valueOf(obtainStyledAttributes.getInt(C4013R.styleable.OngoingCallActionButton_actionButtonType, 0));
                        setActionButtonSrc(obtainStyledAttributes.getDrawable(C4013R.styleable.OngoingCallActionButton_actionButtonSrc));
                        setActionButtonText(obtainStyledAttributes.getString(C4013R.styleable.OngoingCallActionButton_actionButtonText));
                        obtainStyledAttributes.recycle();
                        m35287g1();
                        return;
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(getResources().getResourceName(i)));
    }

    private final LayoutInflater getInflater() {
        return (LayoutInflater) this.f12448x.getValue();
    }

    /* renamed from: f1 */
    public final void m35288f1(boolean z, p<? super CompoundButton, ? super Boolean, s> pVar) {
        l.e(pVar, "listener");
        View view = this.f12445u;
        Objects.requireNonNull(view, "null cannot be cast to non-null type android.widget.ToggleButton");
        ToggleButton toggleButton = (ToggleButton) view;
        toggleButton.setOnCheckedChangeListener(null);
        toggleButton.setChecked(z);
        toggleButton.setOnCheckedChangeListener(new C13821h0(pVar));
    }

    /* renamed from: g1 */
    public final void m35287g1() {
        ToggleButton toggleButton;
        ImageButton imageButton;
        TextView textView;
        C13753l c13753l = this.f12449y;
        if (c13753l != null && (textView = c13753l.f39893d) != null) {
            textView.setText(this.f12443A);
        }
        Integer num = this.f12444t;
        ViewStub viewStub = null;
        if (num != null && num.intValue() == 1) {
            if (!this.f12447w) {
                C13753l c13753l2 = this.f12449y;
                if (c13753l2 != null) {
                    viewStub = c13753l2.f39892c;
                }
                imageButton = (ImageButton) C19286f.m13666m(viewStub);
                if (imageButton != null) {
                    this.f12447w = true;
                } else {
                    imageButton = this.f12445u;
                }
            } else {
                imageButton = this.f12445u;
            }
            this.f12445u = imageButton;
            if (imageButton != null) {
                imageButton.setOnClickListener(new View$OnClickListenerC13823i0(this));
            }
        } else if (num != null && num.intValue() == 0) {
            if (!this.f12447w) {
                C13753l c13753l3 = this.f12449y;
                ViewStub viewStub2 = null;
                if (c13753l3 != null) {
                    viewStub2 = c13753l3.f39894e;
                }
                toggleButton = (ToggleButton) C19286f.m13666m(viewStub2);
                if (toggleButton != null) {
                    this.f12447w = true;
                } else {
                    toggleButton = this.f12445u;
                }
            } else {
                toggleButton = this.f12445u;
            }
            this.f12445u = toggleButton;
            Objects.requireNonNull(toggleButton, "null cannot be cast to non-null type android.widget.ToggleButton");
            ((ToggleButton) toggleButton).setOnCheckedChangeListener(new C13825j0(this));
        }
        View view = this.f12445u;
        if (view != null) {
            view.setBackground(this.f12450z);
        }
    }

    public final Drawable getActionButtonSrc() {
        return this.f12450z;
    }

    public final String getActionButtonText() {
        return this.f12443A;
    }

    public final p<View, Boolean, s> getOnClickListener() {
        return this.f12446v;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        this.f12449y = null;
        super.onDetachedFromWindow();
    }

    public final void setActionButtonSrc(Drawable drawable) {
        this.f12450z = drawable;
        if (drawable != null) {
            m35287g1();
        }
    }

    public final void setActionButtonText(String str) {
        C13753l c13753l;
        TextView textView;
        this.f12443A = str;
        if (str == null || (c13753l = this.f12449y) == null || (textView = c13753l.f39893d) == null) {
            return;
        }
        textView.setText(str);
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        TextView textView;
        super.setEnabled(z);
        View view = this.f12445u;
        if (view != null) {
            view.setEnabled(z);
        }
        View view2 = this.f12445u;
        if (view2 != null) {
            view2.setClickable(z);
        }
        C13753l c13753l = this.f12449y;
        if (c13753l == null || (textView = c13753l.f39893d) == null) {
            return;
        }
        textView.setEnabled(z);
    }

    public final void setOnClickListener(p<? super View, ? super Boolean, s> pVar) {
        this.f12446v = pVar;
    }
}
