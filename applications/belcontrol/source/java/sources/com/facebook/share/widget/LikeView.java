package com.facebook.share.widget;

import android.app.Activity;
import android.app.Fragment;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.facebook.share.internal.LikeBoxCountView;
import com.facebook.share.internal.LikeButton;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.millennialmedia.NativeAd;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/facebook/share/widget/LikeView.class */
public class LikeView extends FrameLayout {

    /* renamed from: a */
    public String f2654a;

    /* renamed from: b */
    public EnumC0377g f2655b;

    /* renamed from: c */
    public LinearLayout f2656c;

    /* renamed from: d */
    public LikeButton f2657d;

    /* renamed from: f */
    public LikeBoxCountView f2658f;

    /* renamed from: g */
    public TextView f2659g;

    /* renamed from: h */
    public no0 f2660h;

    /* renamed from: j */
    public AbstractC0378h f2661j;

    /* renamed from: k */
    public BroadcastReceiver f2662k;

    /* renamed from: l */
    public e f2663l;

    /* renamed from: q */
    public int f2668q;

    /* renamed from: r */
    public int f2669r;

    /* renamed from: s */
    public pm0 f2670s;

    /* renamed from: m */
    public EnumC0379i f2664m = EnumC0379i.f2699g;

    /* renamed from: n */
    public EnumC0375d f2665n = EnumC0375d.f2684g;

    /* renamed from: o */
    public EnumC0374c f2666o = EnumC0374c.f2677g;

    /* renamed from: p */
    public int f2667p = -1;

    /* renamed from: t */
    public boolean f2671t = true;

    /* renamed from: com.facebook.share.widget.LikeView$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/widget/LikeView$a.class */
    public class View$OnClickListenerC0372a implements View.OnClickListener {
        public View$OnClickListenerC0372a() {
            LikeView.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            LikeView.this.m4870q();
        }
    }

    /* renamed from: com.facebook.share.widget.LikeView$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/widget/LikeView$b.class */
    public static /* synthetic */ class C0373b {

        /* renamed from: a */
        public static final /* synthetic */ int[] f2673a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC0374c.values().length];
            f2673a = iArr;
            try {
                iArr[EnumC0374c.TOP.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f2673a[EnumC0374c.BOTTOM.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f2673a[EnumC0374c.INLINE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    @Deprecated
    /* renamed from: com.facebook.share.widget.LikeView$c */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/widget/LikeView$c.class */
    public enum EnumC0374c {
        BOTTOM("bottom", 0),
        INLINE(NativeAd.NATIVE_TYPE_INLINE, 1),
        TOP("top", 2);
        

        /* renamed from: a */
        public String f2679a;

        /* renamed from: b */
        public int f2680b;

        /* renamed from: g */
        public static EnumC0374c f2677g = BOTTOM;

        EnumC0374c(String str, int i) {
            this.f2679a = str;
            this.f2680b = i;
        }

        /* renamed from: b */
        public static EnumC0374c m4865b(int i) {
            EnumC0374c[] values;
            for (EnumC0374c enumC0374c : values()) {
                if (enumC0374c.m4864c() == i) {
                    return enumC0374c;
                }
            }
            return null;
        }

        /* renamed from: c */
        public final int m4864c() {
            return this.f2680b;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.f2679a;
        }
    }

    @Deprecated
    /* renamed from: com.facebook.share.widget.LikeView$d */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/widget/LikeView$d.class */
    public enum EnumC0375d {
        CENTER(TtmlNode.CENTER, 0),
        LEFT(TtmlNode.LEFT, 1),
        RIGHT(TtmlNode.RIGHT, 2);
        

        /* renamed from: a */
        public String f2686a;

        /* renamed from: b */
        public int f2687b;

        /* renamed from: g */
        public static EnumC0375d f2684g = CENTER;

        EnumC0375d(String str, int i) {
            this.f2686a = str;
            this.f2687b = i;
        }

        /* renamed from: b */
        public static EnumC0375d m4862b(int i) {
            EnumC0375d[] values;
            for (EnumC0375d enumC0375d : values()) {
                if (enumC0375d.m4861c() == i) {
                    return enumC0375d;
                }
            }
            return null;
        }

        /* renamed from: c */
        public final int m4861c() {
            return this.f2687b;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.f2686a;
        }
    }

    /* renamed from: com.facebook.share.widget.LikeView$f */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/widget/LikeView$f.class */
    public class C0376f extends BroadcastReceiver {
        public C0376f() {
            LikeView.this = r4;
        }

        public /* synthetic */ C0376f(LikeView likeView, View$OnClickListenerC0372a view$OnClickListenerC0372a) {
            this();
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            Bundle extras = intent.getExtras();
            boolean z = true;
            if (extras != null) {
                String string = extras.getString("com.facebook.sdk.LikeActionController.OBJECT_ID");
                z = true;
                if (!fn0.Q(string)) {
                    z = fn0.b(LikeView.this.f2654a, string);
                }
            }
            if (!z) {
                return;
            }
            if (!"com.facebook.sdk.LikeActionController.UPDATED".equals(action)) {
                if ("com.facebook.sdk.LikeActionController.DID_ERROR".equals(action)) {
                    if (LikeView.this.f2661j == null) {
                        return;
                    }
                    LikeView.this.f2661j.m4858b(zm0.t(extras));
                    return;
                } else if (!"com.facebook.sdk.LikeActionController.DID_RESET".equals(action)) {
                    return;
                } else {
                    LikeView likeView = LikeView.this;
                    likeView.m4872o(likeView.f2654a, LikeView.this.f2655b);
                }
            }
            LikeView.this.m4867t();
        }
    }

    @Deprecated
    /* renamed from: com.facebook.share.widget.LikeView$g */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/widget/LikeView$g.class */
    public enum EnumC0377g {
        UNKNOWN("unknown", 0),
        OPEN_GRAPH("open_graph", 1),
        PAGE("page", 2);
        

        /* renamed from: a */
        public String f2694a;

        /* renamed from: b */
        public int f2695b;

        /* renamed from: g */
        public static EnumC0377g f2692g = UNKNOWN;

        EnumC0377g(String str, int i) {
            this.f2694a = str;
            this.f2695b = i;
        }

        /* renamed from: a */
        public static EnumC0377g m4860a(int i) {
            EnumC0377g[] values;
            for (EnumC0377g enumC0377g : values()) {
                if (enumC0377g.m4859b() == i) {
                    return enumC0377g;
                }
            }
            return null;
        }

        /* renamed from: b */
        public int m4859b() {
            return this.f2695b;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.f2694a;
        }
    }

    /* renamed from: com.facebook.share.widget.LikeView$h */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/widget/LikeView$h.class */
    public interface AbstractC0378h {
        /* renamed from: b */
        void m4858b(ri0 ri0Var);
    }

    @Deprecated
    /* renamed from: com.facebook.share.widget.LikeView$i */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/widget/LikeView$i.class */
    public enum EnumC0379i {
        STANDARD("standard", 0),
        BUTTON("button", 1),
        BOX_COUNT("box_count", 2);
        

        /* renamed from: a */
        public String f2701a;

        /* renamed from: b */
        public int f2702b;

        /* renamed from: g */
        public static EnumC0379i f2699g = STANDARD;

        EnumC0379i(String str, int i) {
            this.f2701a = str;
            this.f2702b = i;
        }

        /* renamed from: b */
        public static EnumC0379i m4856b(int i) {
            EnumC0379i[] values;
            for (EnumC0379i enumC0379i : values()) {
                if (enumC0379i.m4855c() == i) {
                    return enumC0379i;
                }
            }
            return null;
        }

        /* renamed from: c */
        public final int m4855c() {
            return this.f2702b;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.f2701a;
        }
    }

    @Deprecated
    public LikeView(Context context) {
        super(context);
        m4877j(context);
    }

    @Deprecated
    public LikeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m4873n(attributeSet);
        m4877j(context);
    }

    private Activity getActivity() {
        Context context;
        boolean z;
        Context context2 = getContext();
        while (true) {
            context = context2;
            z = context instanceof Activity;
            if (z || !(context instanceof ContextWrapper)) {
                break;
            }
            context2 = ((ContextWrapper) context).getBaseContext();
        }
        if (z) {
            return (Activity) context;
        }
        throw new ri0("Unable to get Activity.");
    }

    private Bundle getAnalyticsParameters() {
        Bundle bundle = new Bundle();
        bundle.putString(TtmlNode.TAG_STYLE, this.f2664m.toString());
        bundle.putString("auxiliary_position", this.f2666o.toString());
        bundle.putString("horizontal_alignment", this.f2665n.toString());
        bundle.putString("object_id", fn0.i(this.f2654a, ""));
        bundle.putString("object_type", this.f2655b.toString());
        return bundle;
    }

    @Deprecated
    public AbstractC0378h getOnErrorListener() {
        return this.f2661j;
    }

    /* renamed from: i */
    public final void m4878i(no0 no0Var) {
        this.f2660h = no0Var;
        this.f2662k = new C0376f(this, null);
        nf b = nf.b(getContext());
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.facebook.sdk.LikeActionController.UPDATED");
        intentFilter.addAction("com.facebook.sdk.LikeActionController.DID_ERROR");
        intentFilter.addAction("com.facebook.sdk.LikeActionController.DID_RESET");
        b.c(this.f2662k, intentFilter);
    }

    /* renamed from: j */
    public final void m4877j(Context context) {
        this.f2668q = getResources().getDimensionPixelSize(ql0.com_facebook_likeview_edge_padding);
        this.f2669r = getResources().getDimensionPixelSize(ql0.com_facebook_likeview_internal_padding);
        if (this.f2667p == -1) {
            this.f2667p = getResources().getColor(pl0.com_facebook_likeview_text_color);
        }
        setBackgroundColor(0);
        this.f2656c = new LinearLayout(context);
        this.f2656c.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
        m4876k(context);
        m4874m(context);
        m4875l(context);
        this.f2656c.addView(this.f2657d);
        this.f2656c.addView(this.f2659g);
        this.f2656c.addView(this.f2658f);
        addView(this.f2656c);
        m4872o(this.f2654a, this.f2655b);
        m4867t();
    }

    /* renamed from: k */
    public final void m4876k(Context context) {
        no0 no0Var = this.f2660h;
        LikeButton likeButton = new LikeButton(context, no0Var != null && no0Var.X());
        this.f2657d = likeButton;
        likeButton.setOnClickListener(new View$OnClickListenerC0372a());
        this.f2657d.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
    }

    /* renamed from: l */
    public final void m4875l(Context context) {
        this.f2658f = new LikeBoxCountView(context);
        this.f2658f.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
    }

    /* renamed from: m */
    public final void m4874m(Context context) {
        TextView textView = new TextView(context);
        this.f2659g = textView;
        textView.setTextSize(0, getResources().getDimension(ql0.com_facebook_likeview_text_size));
        this.f2659g.setMaxLines(2);
        this.f2659g.setTextColor(this.f2667p);
        this.f2659g.setGravity(17);
        this.f2659g.setLayoutParams(new LinearLayout.LayoutParams(-2, -1));
    }

    /* renamed from: n */
    public final void m4873n(AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes;
        if (attributeSet == null || getContext() == null || (obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, wl0.com_facebook_like_view)) == null) {
            return;
        }
        this.f2654a = fn0.i(obtainStyledAttributes.getString(wl0.com_facebook_like_view_com_facebook_object_id), (String) null);
        this.f2655b = EnumC0377g.m4860a(obtainStyledAttributes.getInt(wl0.com_facebook_like_view_com_facebook_object_type, EnumC0377g.f2692g.m4859b()));
        EnumC0379i m4856b = EnumC0379i.m4856b(obtainStyledAttributes.getInt(wl0.com_facebook_like_view_com_facebook_style, EnumC0379i.f2699g.m4855c()));
        this.f2664m = m4856b;
        if (m4856b == null) {
            throw new IllegalArgumentException("Unsupported value for LikeView 'style'");
        }
        EnumC0374c m4865b = EnumC0374c.m4865b(obtainStyledAttributes.getInt(wl0.com_facebook_like_view_com_facebook_auxiliary_view_position, EnumC0374c.f2677g.m4864c()));
        this.f2666o = m4865b;
        if (m4865b == null) {
            throw new IllegalArgumentException("Unsupported value for LikeView 'auxiliary_view_position'");
        }
        EnumC0375d m4862b = EnumC0375d.m4862b(obtainStyledAttributes.getInt(wl0.com_facebook_like_view_com_facebook_horizontal_alignment, EnumC0375d.f2684g.m4861c()));
        this.f2665n = m4862b;
        if (m4862b == null) {
            throw new IllegalArgumentException("Unsupported value for LikeView 'horizontal_alignment'");
        }
        this.f2667p = obtainStyledAttributes.getColor(wl0.com_facebook_like_view_com_facebook_foreground_color, -1);
        obtainStyledAttributes.recycle();
    }

    /* renamed from: o */
    public final void m4872o(String str, EnumC0377g enumC0377g) {
        m4871p();
        this.f2654a = str;
        this.f2655b = enumC0377g;
        if (fn0.Q(str)) {
            return;
        }
        this.f2663l = new e(this, (View$OnClickListenerC0372a) null);
        if (isInEditMode()) {
            return;
        }
        no0.P(str, enumC0377g, this.f2663l);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        setObjectIdAndType(null, EnumC0377g.UNKNOWN);
        super.onDetachedFromWindow();
    }

    /* renamed from: p */
    public final void m4871p() {
        if (this.f2662k != null) {
            nf.b(getContext()).e(this.f2662k);
            this.f2662k = null;
        }
        e eVar = this.f2663l;
        if (eVar != null) {
            eVar.b();
            this.f2663l = null;
        }
        this.f2660h = null;
    }

    /* renamed from: q */
    public final void m4870q() {
        if (this.f2660h != null) {
            Activity activity = null;
            if (this.f2670s == null) {
                activity = getActivity();
            }
            this.f2660h.s0(activity, this.f2670s, getAnalyticsParameters());
        }
    }

    /* renamed from: r */
    public final void m4869r() {
        LikeBoxCountView.EnumC0358b enumC0358b;
        LikeBoxCountView likeBoxCountView;
        int i = C0373b.f2673a[this.f2666o.ordinal()];
        if (i == 1) {
            likeBoxCountView = this.f2658f;
            enumC0358b = LikeBoxCountView.EnumC0358b.BOTTOM;
        } else if (i == 2) {
            likeBoxCountView = this.f2658f;
            enumC0358b = LikeBoxCountView.EnumC0358b.TOP;
        } else if (i != 3) {
            return;
        } else {
            likeBoxCountView = this.f2658f;
            enumC0358b = this.f2665n == EnumC0375d.RIGHT ? LikeBoxCountView.EnumC0358b.RIGHT : LikeBoxCountView.EnumC0358b.LEFT;
        }
        likeBoxCountView.setCaretPosition(enumC0358b);
    }

    /* renamed from: s */
    public final void m4868s() {
        TextView textView;
        no0 no0Var;
        no0 no0Var2;
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f2656c.getLayoutParams();
        LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.f2657d.getLayoutParams();
        EnumC0375d enumC0375d = this.f2665n;
        int i = enumC0375d == EnumC0375d.LEFT ? 3 : enumC0375d == EnumC0375d.CENTER ? 1 : 5;
        layoutParams.gravity = i | 48;
        layoutParams2.gravity = i;
        this.f2659g.setVisibility(8);
        this.f2658f.setVisibility(8);
        if (this.f2664m == EnumC0379i.STANDARD && (no0Var2 = this.f2660h) != null && !fn0.Q(no0Var2.U())) {
            textView = this.f2659g;
        } else if (this.f2664m != EnumC0379i.BOX_COUNT || (no0Var = this.f2660h) == null || fn0.Q(no0Var.R())) {
            return;
        } else {
            m4869r();
            textView = this.f2658f;
        }
        textView.setVisibility(0);
        ((LinearLayout.LayoutParams) textView.getLayoutParams()).gravity = i;
        LinearLayout linearLayout = this.f2656c;
        EnumC0374c enumC0374c = this.f2666o;
        EnumC0374c enumC0374c2 = EnumC0374c.INLINE;
        linearLayout.setOrientation(enumC0374c == enumC0374c2 ? 0 : 1);
        EnumC0374c enumC0374c3 = this.f2666o;
        if (enumC0374c3 == EnumC0374c.TOP || (enumC0374c3 == enumC0374c2 && this.f2665n == EnumC0375d.RIGHT)) {
            this.f2656c.removeView(this.f2657d);
            this.f2656c.addView(this.f2657d);
        } else {
            this.f2656c.removeView(textView);
            this.f2656c.addView(textView);
        }
        int i2 = C0373b.f2673a[this.f2666o.ordinal()];
        if (i2 == 1) {
            int i3 = this.f2668q;
            textView.setPadding(i3, i3, i3, this.f2669r);
        } else if (i2 == 2) {
            int i4 = this.f2668q;
            textView.setPadding(i4, this.f2669r, i4, i4);
        } else if (i2 != 3) {
        } else {
            if (this.f2665n == EnumC0375d.RIGHT) {
                int i5 = this.f2668q;
                textView.setPadding(i5, i5, this.f2669r, i5);
                return;
            }
            int i6 = this.f2669r;
            int i7 = this.f2668q;
            textView.setPadding(i6, i7, i7, i7);
        }
    }

    @Deprecated
    public void setAuxiliaryViewPosition(EnumC0374c enumC0374c) {
        if (enumC0374c == null) {
            enumC0374c = EnumC0374c.f2677g;
        }
        if (this.f2666o != enumC0374c) {
            this.f2666o = enumC0374c;
            m4868s();
        }
    }

    @Override // android.view.View
    @Deprecated
    public void setEnabled(boolean z) {
        this.f2671t = true;
        m4867t();
    }

    @Deprecated
    public void setForegroundColor(int i) {
        if (this.f2667p != i) {
            this.f2659g.setTextColor(i);
        }
    }

    @Deprecated
    public void setFragment(Fragment fragment) {
        this.f2670s = new pm0(fragment);
    }

    @Deprecated
    public void setFragment(androidx.fragment.app.Fragment fragment) {
        this.f2670s = new pm0(fragment);
    }

    @Deprecated
    public void setHorizontalAlignment(EnumC0375d enumC0375d) {
        if (enumC0375d == null) {
            enumC0375d = EnumC0375d.f2684g;
        }
        if (this.f2665n != enumC0375d) {
            this.f2665n = enumC0375d;
            m4868s();
        }
    }

    @Deprecated
    public void setLikeViewStyle(EnumC0379i enumC0379i) {
        if (enumC0379i == null) {
            enumC0379i = EnumC0379i.f2699g;
        }
        if (this.f2664m != enumC0379i) {
            this.f2664m = enumC0379i;
            m4868s();
        }
    }

    @Deprecated
    public void setObjectIdAndType(String str, EnumC0377g enumC0377g) {
        String i = fn0.i(str, (String) null);
        if (enumC0377g == null) {
            enumC0377g = EnumC0377g.f2692g;
        }
        if (!fn0.b(i, this.f2654a) || enumC0377g != this.f2655b) {
            m4872o(i, enumC0377g);
            m4867t();
        }
    }

    @Deprecated
    public void setOnErrorListener(AbstractC0378h abstractC0378h) {
        this.f2661j = abstractC0378h;
    }

    /* renamed from: t */
    public final void m4867t() {
        boolean z = !this.f2671t;
        no0 no0Var = this.f2660h;
        if (no0Var == null) {
            this.f2657d.setSelected(false);
            this.f2659g.setText((CharSequence) null);
            this.f2658f.setText(null);
        } else {
            this.f2657d.setSelected(no0Var.X());
            this.f2659g.setText(this.f2660h.U());
            this.f2658f.setText(this.f2660h.R());
            z &= this.f2660h.q0();
        }
        super.setEnabled(z);
        this.f2657d.setEnabled(z);
        m4868s();
    }
}
