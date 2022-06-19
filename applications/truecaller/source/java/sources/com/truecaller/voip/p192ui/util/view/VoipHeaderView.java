package com.truecaller.voip.p192ui.util.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.widget.ImageButton;
import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.constraintlayout.widget.Guideline;
import com.razorpay.AnalyticsConstants;
import com.truecaller.voip.C4781R;
import java.util.Objects;
import kotlin.Metadata;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p1451f.p1452a.ComponentCallbacks2C22222c;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p619d.p628c.p629a.AbstractC11198o;
import p193e.p194a.p619d.p628c.p629a.C11179b;
import p193e.p194a.p619d.p628c.p629a.C11180c;
import p193e.p194a.p619d.p628c.p629a.C11181d;
import p193e.p194a.p619d.p628c.p629a.C11182e;
import p193e.p194a.p619d.p628c.p629a.C11189i;
import p193e.p194a.p619d.p628c.p629a.C11190j;
import p193e.p194a.p619d.p628c.p629a.C11191k;
import p193e.p194a.p619d.p628c.p629a.C11192l;
import p193e.p194a.p619d.p628c.p629a.C11193m;
import p193e.p194a.p619d.p628c.p629a.p630a.AbstractC11175c;
import p193e.p194a.p619d.p628c.p629a.p630a.C11170b;
import s1.i;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b��\u0018��2\u00020\u0001J\u0015\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\t\u001a\u00020\u00042\b\b\u0001\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ\u0015\u0010\r\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000eJ\u0015\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0015\u001a\u00020\u00042\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0018\u001a\u00020\u00042\b\b\u0001\u0010\u0017\u001a\u00020\u0007¢\u0006\u0004\b\u0018\u0010\nJ\u0019\u0010\u001b\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u001d\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u001f\u0010\u001eR\u0016\u0010#\u001a\u00020 8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010\"R\u0016\u0010&\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010%R\u0016\u0010*\u001a\u00020'8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b(\u0010)R\u0016\u0010-\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010,R\u0016\u0010/\u001a\u00020 8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b.\u0010\"R\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b0\u00101R\u0016\u00105\u001a\u0002028\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b3\u00104R\u0016\u00109\u001a\u0002068\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b7\u00108R\u0016\u0010=\u001a\u00020:8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b;\u0010<¨\u0006>"}, d2 = {"Lcom/truecaller/voip/ui/util/view/VoipHeaderView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Le/a/d/c/a/o;", "theme", "Ls1/s;", "D", "(Le/a/d/c/a/o;)V", "", "resId", "setLogo", "(I)V", "", "url", "setAssistantImage", "(Ljava/lang/String;)V", "", "visible", "setMinimizeButtonVisible", "(Z)V", "Landroid/view/View$OnClickListener;", "listener", "setMinimizeButtonClickListener", "(Landroid/view/View$OnClickListener;)V", "res", "setMinimizeButtonBackgroundResource", "Landroid/view/WindowInsets;", "insets", "onApplyWindowInsets", "(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;", "g1", "()V", "f1", "Landroid/widget/ImageView;", "u", "Landroid/widget/ImageView;", "logo", "y", "I", "logoRes", "Le/a/d/c/a/a/b;", "t", "Le/a/d/c/a/a/b;", "backgroundDrawable", "z", "Z", "showMinimizeArrow", "A", "assistantLogo", "x", "Le/a/d/c/a/o;", "Landroidx/constraintlayout/widget/Group;", "B", "Landroidx/constraintlayout/widget/Group;", "assistantGroup", "Landroidx/constraintlayout/widget/Guideline;", "v", "Landroidx/constraintlayout/widget/Guideline;", "topWindowInsetGuide", "Landroid/widget/ImageButton;", "w", "Landroid/widget/ImageButton;", "minimizeButton", "voip_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.voip.ui.util.view.VoipHeaderView */
/* loaded from: classes15-dex2jar.jar:com/truecaller/voip/ui/util/view/VoipHeaderView.class */
public final class VoipHeaderView extends ConstraintLayout {

    /* renamed from: A */
    public final ImageView f16467A;

    /* renamed from: B */
    public final Group f16468B;

    /* renamed from: t */
    public final C11170b f16469t;

    /* renamed from: u */
    public final ImageView f16470u;

    /* renamed from: v */
    public final Guideline f16471v;

    /* renamed from: w */
    public final ImageButton f16472w;

    /* renamed from: x */
    public AbstractC11198o f16473x = C11181d.f33060a;

    /* renamed from: y */
    public int f16474y = C4781R.C4782drawable.ic_tcx_truecaller_voice_logo;

    /* renamed from: z */
    public boolean f16475z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VoipHeaderView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
        C11170b c11170b = new C11170b(context);
        this.f16469t = c11170b;
        this.f16475z = true;
        setLayerType(1, null);
        LayoutInflater.from(context).inflate(C4781R.layout.view_voip_header, (ViewGroup) this, true);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C4781R.styleable.VoipHeaderView);
        this.f16475z = obtainStyledAttributes.getBoolean(C4781R.styleable.VoipHeaderView_showMinimizeArrow, true);
        obtainStyledAttributes.recycle();
        View findViewById = findViewById(C4781R.C4783id.logo);
        l.d(findViewById, "findViewById(R.id.logo)");
        this.f16470u = (ImageView) findViewById;
        View findViewById2 = findViewById(C4781R.C4783id.assistant_logo);
        l.d(findViewById2, "findViewById(R.id.assistant_logo)");
        this.f16467A = (ImageView) findViewById2;
        View findViewById3 = findViewById(C4781R.C4783id.assistant_group);
        l.d(findViewById3, "findViewById(R.id.assistant_group)");
        this.f16468B = (Group) findViewById3;
        View findViewById4 = findViewById(C4781R.C4783id.guide_top_window_inset);
        l.d(findViewById4, "findViewById(R.id.guide_top_window_inset)");
        this.f16471v = (Guideline) findViewById4;
        View findViewById5 = findViewById(C4781R.C4783id.button_minimise);
        l.d(findViewById5, "findViewById(R.id.button_minimise)");
        ImageButton imageButton = (ImageButton) findViewById5;
        this.f16472w = imageButton;
        setBackground(c11170b);
        C19286f.m13683U(imageButton, this.f16475z);
        setFitsSystemWindows(true);
        m34288g1();
    }

    /* renamed from: D */
    public final void m34290D(AbstractC11198o abstractC11198o) {
        l.e(abstractC11198o, "theme");
        this.f16473x = abstractC11198o;
        m34288g1();
    }

    /* renamed from: f1 */
    public final void m34289f1() {
        AbstractC11198o abstractC11198o = this.f16473x;
        int i = abstractC11198o instanceof C11180c ? C4781R.color.credPrimaryColor : abstractC11198o instanceof C11182e ? C4781R.color.tcx_voip_gold_logo_color : C4781R.color.tcx_voip_default_logo_color;
        ImageView imageView = this.f16470u;
        imageView.setImageResource(this.f16474y);
        Context context = imageView.getContext();
        Object obj = C26467a.f74235a;
        imageView.setColorFilter(C26467a.C26471d.m1787a(context, i));
    }

    /* renamed from: g1 */
    public final void m34288g1() {
        AbstractC11175c.C11176a c11176a;
        AbstractC11198o abstractC11198o = this.f16473x;
        if (abstractC11198o instanceof C11192l) {
            c11176a = new AbstractC11175c.C11176a(C4781R.color.tcx_voip_verified_business_color);
        } else if ((abstractC11198o instanceof C11179b) || (abstractC11198o instanceof C11191k)) {
            c11176a = new AbstractC11175c.C11176a(C4781R.color.tcx_voip_spam_color);
        } else if (abstractC11198o instanceof C11180c) {
            c11176a = AbstractC11175c.C11177b.f33056a;
        } else if (abstractC11198o instanceof C11182e) {
            c11176a = AbstractC11175c.C11178c.f33057a;
        } else if (abstractC11198o instanceof C11190j) {
            c11176a = new AbstractC11175c.C11176a(C4781R.color.tcx_voip_priority_color);
        } else if (abstractC11198o instanceof C11193m) {
            c11176a = new AbstractC11175c.C11176a(C4781R.color.tcx_voip_verified_business_color);
        } else if (!(abstractC11198o instanceof C11181d) && !(abstractC11198o instanceof C11189i)) {
            throw new i();
        } else {
            c11176a = new AbstractC11175c.C11176a(C4781R.color.voip_header_color);
        }
        C11170b c11170b = this.f16469t;
        Objects.requireNonNull(c11170b);
        l.e(c11176a, "style");
        c11170b.f33046e = c11176a;
        c11170b.m25069f();
        c11170b.invalidateSelf();
        m34289f1();
    }

    @Override // android.view.View
    public WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        if (windowInsets == null) {
            WindowInsets onApplyWindowInsets = super.onApplyWindowInsets(windowInsets);
            l.d(onApplyWindowInsets, "super.onApplyWindowInsets(insets)");
            return onApplyWindowInsets;
        }
        this.f16471v.setGuidelineBegin(windowInsets.getSystemWindowInsetTop());
        WindowInsets consumeSystemWindowInsets = windowInsets.consumeSystemWindowInsets();
        l.d(consumeSystemWindowInsets, "insets.consumeSystemWindowInsets()");
        return consumeSystemWindowInsets;
    }

    public final void setAssistantImage(String str) {
        l.e(str, "url");
        ComponentCallbacks2C22222c.m8445f(this.f16467A).mo8407r(str).m8427O(this.f16467A);
        C19286f.m13684T(this.f16468B);
        C19286f.m13687Q(this.f16470u);
    }

    public final void setLogo(int i) {
        this.f16474y = i;
        m34289f1();
    }

    public final void setMinimizeButtonBackgroundResource(int i) {
        this.f16472w.setBackgroundResource(i);
    }

    public final void setMinimizeButtonClickListener(View.OnClickListener onClickListener) {
        this.f16472w.setOnClickListener(onClickListener);
    }

    public final void setMinimizeButtonVisible(boolean z) {
        this.f16475z = z;
        C19286f.m13683U(this.f16472w, z);
    }
}
