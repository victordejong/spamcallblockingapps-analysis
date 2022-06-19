package com.truecaller.truecontext;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowManager;
import android.widget.PopupWindow;
import android.widget.Space;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.mopub.common.Constants;
import com.razorpay.AnalyticsConstants;
import e.f.a.r.k.c;
import java.util.Objects;
import kotlin.Metadata;
import p1727n3.p1795i.p1802c.C26389d;
import p193e.p1451f.p1452a.p1476r.C22591h;
import p193e.p1451f.p1452a.p1476r.p1478l.AbstractC22604d;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1064m5.AbstractC18240c;
import p193e.p194a.p1064m5.AbstractC18241d;
import p193e.p194a.p1064m5.C18238a;
import p193e.p194a.p1064m5.C18242e;
import p193e.p194a.p1064m5.p1065f.C18243a;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1129p5.p1132s0.C19296i0;
import p193e.p194a.p1129p5.p1132s0.View$OnAttachStateChangeListenerC19277c0;
import p193e.p194a.p1406z3.C21853e;
import s1.g;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\u0018��2\u00020\u00012\u00020\u0002:\u0001YJ\u0017\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u0015\u0010\n\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ\u0015\u0010\u000e\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0018\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u001b\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u001b\u0010\u0019J\u0017\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u001c\u0010\u0007J\u0017\u0010\u001e\u001a\u00020\u00052\u0006\u0010\u001d\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u001e\u0010\u0007J\u0017\u0010!\u001a\u00020\u00052\u0006\u0010 \u001a\u00020\u001fH\u0016¢\u0006\u0004\b!\u0010\"J\u000f\u0010#\u001a\u00020\u0005H\u0014¢\u0006\u0004\b#\u0010\u0015J\u000f\u0010$\u001a\u00020\u0005H\u0014¢\u0006\u0004\b$\u0010\u0015J\u001f\u0010(\u001a\u00020\u00052\u0006\u0010&\u001a\u00020%2\u0006\u0010'\u001a\u00020%H\u0016¢\u0006\u0004\b(\u0010)J\u0017\u0010,\u001a\u00020\u00052\u0006\u0010+\u001a\u00020*H\u0014¢\u0006\u0004\b,\u0010-R\u0016\u00101\u001a\u00020.8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b/\u00100R\u0018\u00105\u001a\u0004\u0018\u0001028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u00104R\u0018\u0010\t\u001a\u0004\u0018\u00010\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b6\u00107R\u0016\u0010:\u001a\u00020\u001f8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b8\u00109R\u0016\u0010<\u001a\u00020\u001f8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b;\u00109R\u0016\u0010?\u001a\u00020\u00038\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b=\u0010>R\u0018\u0010\r\u001a\u0004\u0018\u00010\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b@\u0010AR\u0018\u0010E\u001a\u0004\u0018\u00010B8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bC\u0010DR\u001f\u0010K\u001a\u0004\u0018\u00010F8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bG\u0010H\u001a\u0004\bI\u0010JR\u0016\u0010O\u001a\u00020L8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bM\u0010NR\u0016\u0010Q\u001a\u00020.8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bP\u00100R\u0016\u0010U\u001a\u00020R8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bS\u0010TR\u0018\u0010X\u001a\u0004\u0018\u00010F8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bV\u0010W¨\u0006Z"}, d2 = {"Lcom/truecaller/truecontext/TrueContext;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Le/a/m5/d;", "", "isExpanded", "Ls1/s;", "setIsExpandedInternal", "(Z)V", "Le/a/m5/c;", "presenter", "setPresenter", "(Le/a/m5/c;)V", "Lcom/truecaller/truecontext/TrueContext$a;", "listener", "g1", "(Lcom/truecaller/truecontext/TrueContext$a;)V", "Le/a/m5/e;", "theme", "P", "(Le/a/m5/e;)V", "R", "()V", "", "label", "setLabel", "(Ljava/lang/String;)V", "message", "setMessage", "setIsExpanded", "isExpandable", "setIsExpandable", "", "maxLength", "setMessageMaxLength", "(I)V", "onAttachedToWindow", "onDetachedFromWindow", "Landroid/view/View;", "child", "target", "onDescendantInvalidated", "(Landroid/view/View;Landroid/view/View;)V", "Landroid/graphics/Canvas;", "canvas", "dispatchDraw", "(Landroid/graphics/Canvas;)V", "", "C", "F", "labelBackgroundRadius", "Landroid/graphics/RectF;", "w", "Landroid/graphics/RectF;", "labelRectF", "u", "Le/a/m5/c;", "y", "I", "viewOrientation", "z", "viewSize", "A", "Z", "expandAsPopup", "v", "Lcom/truecaller/truecontext/TrueContext$a;", "Landroid/widget/PopupWindow;", "B", "Landroid/widget/PopupWindow;", "popupWindow", "Landroid/graphics/drawable/Drawable;", "E", "Ls1/g;", "getArrowDown", "()Landroid/graphics/drawable/Drawable;", "arrowDown", "Landroid/graphics/Path;", "x", "Landroid/graphics/Path;", "labelClippingPath", "D", "messageBackgroundRadius", "Le/a/m5/f/a;", "t", "Le/a/m5/f/a;", "binding", "J", "Landroid/graphics/drawable/Drawable;", "iconDrawable", "a", "truecontext_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes15-dex2jar.jar:com/truecaller/truecontext/TrueContext.class */
public final class TrueContext extends ConstraintLayout implements AbstractC18241d {

    /* renamed from: A */
    public final boolean f15491A;

    /* renamed from: B */
    public PopupWindow f15492B;

    /* renamed from: C */
    public final float f15493C;

    /* renamed from: D */
    public final float f15494D;

    /* renamed from: E */
    public final g f15495E;

    /* renamed from: J */
    public Drawable f15496J;

    /* renamed from: t */
    public final C18243a f15497t;

    /* renamed from: u */
    public AbstractC18240c f15498u;

    /* renamed from: v */
    public AbstractC4652a f15499v;

    /* renamed from: w */
    public RectF f15500w;

    /* renamed from: x */
    public final Path f15501x;

    /* renamed from: y */
    public final int f15502y;

    /* renamed from: z */
    public final int f15503z;

    /* renamed from: com.truecaller.truecontext.TrueContext$a */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/truecontext/TrueContext$a.class */
    public interface AbstractC4652a {
        /* renamed from: a */
        void mo20717a(boolean z);
    }

    /* renamed from: com.truecaller.truecontext.TrueContext$b */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/truecontext/TrueContext$b.class */
    public static final class View$OnClickListenerC4653b implements View.OnClickListener {
        public View$OnClickListenerC4653b(boolean z) {
            TrueContext.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            AbstractC18240c abstractC18240c = TrueContext.this.f15498u;
            if (abstractC18240c != null) {
                abstractC18240c.mo9709g4();
            }
        }
    }

    /* renamed from: com.truecaller.truecontext.TrueContext$c */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/truecontext/TrueContext$c.class */
    public static final class RunnableC4654c implements Runnable {

        /* renamed from: b */
        public final /* synthetic */ boolean f15506b;

        public RunnableC4654c(boolean z) {
            TrueContext.this = r4;
            this.f15506b = z;
        }

        @Override // java.lang.Runnable
        public final void run() {
            TrueContext.this.setIsExpandedInternal(this.f15506b);
        }
    }

    /* renamed from: com.truecaller.truecontext.TrueContext$d */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/truecontext/TrueContext$d.class */
    public static final class C4655d extends c<Drawable> {

        /* renamed from: e */
        public final /* synthetic */ C18242e f15508e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4655d(C18242e c18242e) {
            super(Integer.MIN_VALUE, Integer.MIN_VALUE);
            TrueContext.this = r5;
            this.f15508e = c18242e;
        }

        /* renamed from: d */
        public void m34603d(Drawable drawable) {
            TextView textView = TrueContext.this.f15497t.f51553c;
            l.d(textView, "binding.label");
            textView.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, (Drawable) null, textView.getCompoundDrawables()[2], (Drawable) null);
        }

        /* renamed from: e */
        public void m34602e(Object obj, AbstractC22604d abstractC22604d) {
            Drawable drawable = (Drawable) obj;
            l.e(drawable, Constants.VAST_RESOURCE);
            TrueContext trueContext = TrueContext.this;
            drawable.setTint(this.f15508e.f51545a);
            trueContext.f15496J = drawable;
            TextView textView = TrueContext.this.f15497t.f51553c;
            l.d(textView, "binding.label");
            Context context = textView.getContext();
            l.d(context, "binding.label.context");
            int m13645A = C19291g.m13645A(context, 8);
            TextView textView2 = TrueContext.this.f15497t.f51553c;
            l.d(textView2, "binding.label");
            int paddingTop = textView2.getPaddingTop();
            TextView textView3 = TrueContext.this.f15497t.f51553c;
            l.d(textView3, "binding.label");
            int paddingEnd = textView3.getPaddingEnd();
            TextView textView4 = TrueContext.this.f15497t.f51553c;
            l.d(textView4, "binding.label");
            textView.setPaddingRelative(m13645A, paddingTop, paddingEnd, textView4.getPaddingBottom());
            TextView textView5 = TrueContext.this.f15497t.f51553c;
            l.d(textView5, "binding.label");
            textView5.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, (Drawable) null, textView5.getCompoundDrawables()[2], (Drawable) null);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TrueContext(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
        LayoutInflater.from(context).inflate(C4647R.layout.true_context_view, this);
        int i = C4647R.C4649id.dummy;
        View findViewById = findViewById(i);
        if (findViewById != null) {
            i = C4647R.C4649id.label;
            TextView textView = (TextView) findViewById(i);
            if (textView != null) {
                i = C4647R.C4649id.message;
                TextView textView2 = (TextView) findViewById(i);
                if (textView2 != null) {
                    C18243a c18243a = new C18243a(this, findViewById, textView, textView2);
                    l.d(c18243a, "TrueContextViewBinding.i…ater.from(context), this)");
                    this.f15497t = c18243a;
                    this.f15501x = new Path();
                    this.f15493C = getResources().getDimension(C4647R.dimen.true_context_label_default_corner_radius);
                    this.f15494D = getResources().getDimension(C4647R.dimen.true_context_message_default_corner_radius);
                    this.f15495E = C25225a.m3978P1(new C18238a(context));
                    TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C4647R.styleable.TrueContext);
                    l.d(obtainStyledAttributes, "context.obtainStyledAttr… R.styleable.TrueContext)");
                    int i2 = obtainStyledAttributes.getInt(C4647R.styleable.TrueContext_view_orientation, 0);
                    this.f15502y = i2;
                    int i3 = obtainStyledAttributes.getInt(C4647R.styleable.TrueContext_view_size, 1);
                    this.f15503z = i3;
                    this.f15491A = obtainStyledAttributes.getBoolean(C4647R.styleable.TrueContext_expand_as_popup, false);
                    obtainStyledAttributes.recycle();
                    TextView textView3 = c18243a.f51553c;
                    l.d(textView3, "binding.label");
                    ViewGroup.LayoutParams layoutParams = textView3.getLayoutParams();
                    Objects.requireNonNull(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
                    ((ConstraintLayout.C0111a) layoutParams).f660z = i2 != 1 ? 0.0f : 0.5f;
                    TextView textView4 = c18243a.f51553c;
                    l.d(textView4, "binding.label");
                    ViewGroup.LayoutParams layoutParams2 = textView4.getLayoutParams();
                    Objects.requireNonNull(layoutParams2, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
                    ConstraintLayout.C0111a c0111a = (ConstraintLayout.C0111a) layoutParams2;
                    if (i2 == 1) {
                        C26389d c26389d = new C26389d();
                        c26389d.m1966e(this);
                        TextView textView5 = c18243a.f51553c;
                        l.d(textView5, "binding.label");
                        c26389d.m1965f(textView5.getId(), 7, 0, 7);
                        c26389d.m1968c(this, true);
                        setConstraintSet(null);
                        requestLayout();
                    }
                    TextView textView6 = c18243a.f51554d;
                    l.d(textView6, "binding.message");
                    textView6.setGravity(i2 != 1 ? 8388627 : 17);
                    if (i3 == 0) {
                        c18243a.f51553c.setTextSize(2, 12.0f);
                        c18243a.f51554d.setTextSize(2, 14.0f);
                        TextView textView7 = c18243a.f51554d;
                        Context context2 = getContext();
                        l.d(context2, AnalyticsConstants.CONTEXT);
                        textView7.setLineSpacing(C19291g.m13645A(context2, 4), 1.0f);
                        return;
                    }
                    c18243a.f51553c.setTextSize(2, 14.0f);
                    c18243a.f51554d.setTextSize(2, 16.0f);
                    TextView textView8 = c18243a.f51554d;
                    Context context3 = getContext();
                    l.d(context3, AnalyticsConstants.CONTEXT);
                    textView8.setLineSpacing(C19291g.m13645A(context3, 8), 1.0f);
                    return;
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(getResources().getResourceName(i)));
    }

    private final Drawable getArrowDown() {
        return (Drawable) this.f15495E.getValue();
    }

    public final void setIsExpandedInternal(boolean z) {
        int i = 0;
        if (this.f15491A) {
            if (z) {
                ViewParent parent = getParent();
                Objects.requireNonNull(parent, "null cannot be cast to non-null type android.view.View");
                View view = (View) parent;
                u1 u1Var = new u1(0, this);
                l.e(view, "$this$onDetached");
                l.e(u1Var, "callback");
                if (!view.isAttachedToWindow()) {
                    u1Var.invoke();
                } else {
                    view.addOnAttachStateChangeListener(new View$OnAttachStateChangeListenerC19277c0(view, u1Var));
                }
                u1 u1Var2 = new u1(1, this);
                l.e(this, "$this$showInPopupWindow");
                l.e(u1Var2, "onDismiss");
                ViewParent parent2 = getParent();
                Objects.requireNonNull(parent2, "null cannot be cast to non-null type android.view.ViewGroup");
                ViewGroup viewGroup = (ViewGroup) parent2;
                int top = getTop();
                ViewGroup.LayoutParams layoutParams = getLayoutParams();
                int i2 = layoutParams.width;
                int i3 = layoutParams.height;
                Space space = new Space(getContext());
                space.setId(getId());
                space.setLayoutParams(layoutParams);
                space.getLayoutParams().width = getWidth();
                space.getLayoutParams().height = getHeight();
                viewGroup.removeView(this);
                viewGroup.addView(space);
                boolean z2 = layoutParams instanceof ViewGroup.MarginLayoutParams;
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) (!z2 ? null : layoutParams);
                int marginStart = marginLayoutParams != null ? marginLayoutParams.getMarginStart() : 0;
                ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) (!z2 ? null : layoutParams);
                if (marginLayoutParams2 != null) {
                    i = marginLayoutParams2.getMarginEnd();
                }
                int max = Math.max(marginStart, i);
                PopupWindow popupWindow = new PopupWindow((View) this, viewGroup.getWidth() - max, -2, true);
                popupWindow.setOnDismissListener(new C19296i0(this, viewGroup, layoutParams, i2, i3, space, u1Var2));
                popupWindow.showAsDropDown(viewGroup, max / 2, top);
                this.f15492B = popupWindow;
                l.e(popupWindow, "$this$dimBehind");
                View contentView = popupWindow.getContentView();
                l.d(contentView, "contentView");
                View rootView = contentView.getRootView();
                l.d(rootView, "container");
                ViewGroup.LayoutParams layoutParams2 = rootView.getLayoutParams();
                Objects.requireNonNull(layoutParams2, "null cannot be cast to non-null type android.view.WindowManager.LayoutParams");
                WindowManager.LayoutParams layoutParams3 = (WindowManager.LayoutParams) layoutParams2;
                View contentView2 = popupWindow.getContentView();
                l.d(contentView2, "contentView");
                Context context = contentView2.getContext();
                l.d(context, "contentView.context");
                WindowManager m13529n0 = C19291g.m13529n0(context);
                layoutParams3.flags |= 2;
                layoutParams3.dimAmount = 0.3f;
                m13529n0.updateViewLayout(rootView, layoutParams3);
            } else {
                PopupWindow popupWindow2 = this.f15492B;
                if (popupWindow2 != null) {
                    this.f15492B = null;
                    popupWindow2.dismiss();
                }
            }
        }
        if (z) {
            Drawable arrowDown = getArrowDown();
            if (arrowDown != null) {
                TextView textView = this.f15497t.f51553c;
                Drawable drawable = this.f15496J;
                l.d(arrowDown, "drawable");
                Bitmap m43311D1 = MediaSessionCompat.m43311D1(arrowDown, 0, 0, null, 7);
                Matrix matrix = new Matrix();
                matrix.preRotate(180.0f);
                Bitmap createBitmap = Bitmap.createBitmap(m43311D1, 0, 0, m43311D1.getWidth(), m43311D1.getHeight(), matrix, true);
                l.d(createBitmap, "Bitmap.createBitmap(orig…nal.height, matrix, true)");
                if (!m43311D1.isRecycled()) {
                    m43311D1.recycle();
                }
                Resources resources = getResources();
                l.d(resources, "resources");
                textView.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, (Drawable) null, new BitmapDrawable(resources, createBitmap), (Drawable) null);
            }
        } else {
            this.f15497t.f51553c.setCompoundDrawablesRelativeWithIntrinsicBounds(this.f15496J, (Drawable) null, getArrowDown(), (Drawable) null);
        }
        TextView textView2 = this.f15497t.f51554d;
        l.d(textView2, "binding.message");
        C19286f.m13683U(textView2, z);
        AbstractC4652a abstractC4652a = this.f15499v;
        if (abstractC4652a != null) {
            abstractC4652a.mo20717a(z);
        }
    }

    @Override // p193e.p194a.p1064m5.AbstractC18241d
    /* renamed from: P */
    public void mo15388P(C18242e c18242e) {
        l.e(c18242e, "theme");
        TextView textView = this.f15497t.f51553c;
        textView.setTextColor(c18242e.f51545a);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(c18242e.f51546b);
        gradientDrawable.setCornerRadius(this.f15493C);
        textView.setBackground(gradientDrawable);
        Drawable arrowDown = getArrowDown();
        if (arrowDown != null) {
            arrowDown.setTint(c18242e.f51545a);
        }
        C21853e m15664K1 = C17891a1.C17902k.m15664K1(getContext());
        C22591h c22591h = new C22591h();
        TextView textView2 = this.f15497t.f51553c;
        l.d(textView2, "binding.label");
        Context context = textView2.getContext();
        l.d(context, "binding.label.context");
        int m13645A = C19291g.m13645A(context, 20);
        m15664K1.m8963w(c22591h.mo8088t(m13645A, m13645A));
        m15664K1.m8964B(c18242e.f51550f).m8429M(new C4655d(c18242e));
        TextView textView3 = this.f15497t.f51554d;
        textView3.setTextColor(c18242e.f51547c);
        GradientDrawable gradientDrawable2 = new GradientDrawable();
        gradientDrawable2.setColor(c18242e.f51548d);
        Context context2 = textView3.getContext();
        l.d(context2, AnalyticsConstants.CONTEXT);
        gradientDrawable2.setStroke(C19291g.m13645A(context2, 1), c18242e.f51549e);
        gradientDrawable2.setCornerRadius(this.f15494D);
        textView3.setBackground(gradientDrawable2);
    }

    @Override // p193e.p194a.p1064m5.AbstractC18241d
    /* renamed from: R */
    public void mo15387R() {
        C19286f.m13689O(this);
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        l.e(canvas, "canvas");
        if (this.f15500w == null) {
            TextView textView = this.f15497t.f51553c;
            RectF rectF = new RectF(textView.getX(), textView.getY(), textView.getX() + textView.getWidth(), textView.getY() + textView.getHeight());
            this.f15500w = rectF;
            if (rectF != null) {
                this.f15501x.reset();
                Path path = this.f15501x;
                float f = this.f15493C;
                path.addRoundRect(rectF, f, f, Path.Direction.CW);
                this.f15501x.close();
            }
        }
        TextView textView2 = this.f15497t.f51554d;
        l.d(textView2, "binding.message");
        if (textView2.getVisibility() == 0) {
            canvas.save();
            if (Build.VERSION.SDK_INT >= 26) {
                canvas.clipOutPath(this.f15501x);
            } else {
                canvas.clipPath(this.f15501x, Region.Op.DIFFERENCE);
            }
            drawChild(canvas, this.f15497t.f51554d, getDrawingTime());
            canvas.restore();
        }
        TextView textView3 = this.f15497t.f51553c;
        l.d(textView3, "binding.label");
        if (textView3.getVisibility() == 0) {
            drawChild(canvas, this.f15497t.f51553c, getDrawingTime());
        }
    }

    /* renamed from: g1 */
    public final void m34604g1(AbstractC4652a abstractC4652a) {
        l.e(abstractC4652a, "listener");
        this.f15499v = abstractC4652a;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        AbstractC18240c abstractC18240c = this.f15498u;
        if (abstractC18240c != null) {
            abstractC18240c.mo9029Y0(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onDescendantInvalidated(View view, View view2) {
        l.e(view, "child");
        l.e(view2, "target");
        super.onDescendantInvalidated(view, view2);
        this.f15500w = null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        AbstractC18240c abstractC18240c = this.f15498u;
        if (abstractC18240c != null) {
            abstractC18240c.mo9806c();
        }
    }

    @Override // p193e.p194a.p1064m5.AbstractC18241d
    public void setIsExpandable(boolean z) {
        TextView textView = this.f15497t.f51553c;
        if (z) {
            textView.setOnClickListener(new View$OnClickListenerC4653b(z));
            textView.setCompoundDrawablesRelativeWithIntrinsicBounds(this.f15496J, (Drawable) null, getArrowDown(), (Drawable) null);
            return;
        }
        textView.setOnClickListener(null);
        textView.setCompoundDrawablesRelativeWithIntrinsicBounds(this.f15496J, (Drawable) null, (Drawable) null, (Drawable) null);
    }

    @Override // p193e.p194a.p1064m5.AbstractC18241d
    public void setIsExpanded(boolean z) {
        post(new RunnableC4654c(z));
    }

    @Override // p193e.p194a.p1064m5.AbstractC18241d
    public void setLabel(String str) {
        l.e(str, "label");
        TextView textView = this.f15497t.f51553c;
        l.d(textView, "binding.label");
        textView.setText(str);
        TextView textView2 = this.f15497t.f51553c;
        l.d(textView2, "binding.label");
        C19286f.m13684T(textView2);
    }

    @Override // p193e.p194a.p1064m5.AbstractC18241d
    public void setMessage(String str) {
        l.e(str, "message");
        TextView textView = this.f15497t.f51554d;
        l.d(textView, "binding.message");
        textView.setText(str);
    }

    @Override // p193e.p194a.p1064m5.AbstractC18241d
    public void setMessageMaxLength(int i) {
        TextView textView = this.f15497t.f51554d;
        l.d(textView, "binding.message");
        textView.setFilters(new InputFilter.LengthFilter[]{new InputFilter.LengthFilter(i)});
    }

    public final void setPresenter(AbstractC18240c abstractC18240c) {
        l.e(abstractC18240c, "presenter");
        AbstractC18240c abstractC18240c2 = this.f15498u;
        if (abstractC18240c2 != null) {
            abstractC18240c2.mo9806c();
        }
        this.f15498u = abstractC18240c;
        abstractC18240c.mo9029Y0(this);
    }
}
