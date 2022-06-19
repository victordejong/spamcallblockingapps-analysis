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
import androidx.p052i.p053a.C1179a;
import com.facebook.FacebookException;
import com.facebook.common.C10165a;
import com.facebook.internal.C10213ae;
import com.facebook.internal.C10326s;
import com.facebook.internal.C10340z;
import com.facebook.internal.p299b.p301b.C10249a;
import com.facebook.share.internal.C10446a;
import com.facebook.share.internal.C10477b;
import com.facebook.share.internal.LikeBoxCountView;
import com.facebook.share.internal.LikeButton;
import net.pubnative.lite.sdk.analytics.Reporting;
@Deprecated
/* loaded from: classes3-dex2jar.jar:com/facebook/share/widget/LikeView.class */
public class LikeView extends FrameLayout {

    /* renamed from: a */
    private String f34244a;

    /* renamed from: b */
    private EnumC10509e f34245b;

    /* renamed from: c */
    private LinearLayout f34246c;

    /* renamed from: d */
    private LikeButton f34247d;

    /* renamed from: e */
    private LikeBoxCountView f34248e;

    /* renamed from: f */
    private TextView f34249f;

    /* renamed from: g */
    private C10446a f34250g;

    /* renamed from: h */
    private AbstractC10510f f34251h;

    /* renamed from: i */
    private BroadcastReceiver f34252i;

    /* renamed from: j */
    private C10507c f34253j;

    /* renamed from: k */
    private EnumC10511g f34254k;

    /* renamed from: l */
    private EnumC10506b f34255l;

    /* renamed from: m */
    private EnumC10505a f34256m;

    /* renamed from: n */
    private int f34257n;

    /* renamed from: o */
    private int f34258o;

    /* renamed from: p */
    private int f34259p;

    /* renamed from: q */
    private C10326s f34260q;

    /* renamed from: r */
    private boolean f34261r;

    /* renamed from: com.facebook.share.widget.LikeView$2 */
    /* loaded from: classes3-dex2jar.jar:com/facebook/share/widget/LikeView$2.class */
    public static final /* synthetic */ class C105042 {

        /* renamed from: a */
        static final /* synthetic */ int[] f34263a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC10505a.values().length];
            f34263a = iArr;
            try {
                iArr[EnumC10505a.TOP.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f34263a[EnumC10505a.BOTTOM.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f34263a[EnumC10505a.INLINE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    @Deprecated
    /* renamed from: com.facebook.share.widget.LikeView$a */
    /* loaded from: classes3-dex2jar.jar:com/facebook/share/widget/LikeView$a.class */
    public enum EnumC10505a {
        BOTTOM("bottom", 0),
        INLINE("inline", 1),
        TOP("top", 2);
        
        static EnumC10505a DEFAULT = BOTTOM;
        private int intValue;
        private String stringValue;

        EnumC10505a(String str, int i) {
            this.stringValue = str;
            this.intValue = i;
        }

        static EnumC10505a fromInt(int i) {
            EnumC10505a[] values;
            for (EnumC10505a enumC10505a : values()) {
                if (enumC10505a.getValue() == i) {
                    return enumC10505a;
                }
            }
            return null;
        }

        public int getValue() {
            return this.intValue;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return this.stringValue;
        }
    }

    @Deprecated
    /* renamed from: com.facebook.share.widget.LikeView$b */
    /* loaded from: classes3-dex2jar.jar:com/facebook/share/widget/LikeView$b.class */
    public enum EnumC10506b {
        CENTER("center", 0),
        LEFT("left", 1),
        RIGHT("right", 2);
        
        static EnumC10506b DEFAULT = CENTER;
        private int intValue;
        private String stringValue;

        EnumC10506b(String str, int i) {
            this.stringValue = str;
            this.intValue = i;
        }

        static EnumC10506b fromInt(int i) {
            EnumC10506b[] values;
            for (EnumC10506b enumC10506b : values()) {
                if (enumC10506b.getValue() == i) {
                    return enumC10506b;
                }
            }
            return null;
        }

        public int getValue() {
            return this.intValue;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return this.stringValue;
        }
    }

    /* renamed from: com.facebook.share.widget.LikeView$c */
    /* loaded from: classes3-dex2jar.jar:com/facebook/share/widget/LikeView$c.class */
    public final class C10507c implements C10446a.AbstractC10464c {

        /* renamed from: a */
        boolean f34264a;

        private C10507c() {
            LikeView.this = r4;
        }

        @Override // com.facebook.share.internal.C10446a.AbstractC10464c
        /* renamed from: a */
        public final void mo22680a(C10446a c10446a, FacebookException facebookException) {
            if (this.f34264a) {
                return;
            }
            if (c10446a != null) {
                facebookException = new FacebookException("Cannot use LikeView. The device may not be supported.");
                LikeView.m22694a(LikeView.this, c10446a);
                LikeView.this.m22691b();
            }
            if (facebookException != null && LikeView.this.f34251h != null) {
                AbstractC10510f unused = LikeView.this.f34251h;
            }
            LikeView.this.f34253j = null;
        }
    }

    /* renamed from: com.facebook.share.widget.LikeView$d */
    /* loaded from: classes3-dex2jar.jar:com/facebook/share/widget/LikeView$d.class */
    public final class C10508d extends BroadcastReceiver {
        private C10508d() {
            LikeView.this = r4;
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            Bundle extras = intent.getExtras();
            boolean z = true;
            if (extras != null) {
                String string = extras.getString("com.facebook.sdk.LikeActionController.OBJECT_ID");
                z = true;
                if (!C10213ae.m23230a(string)) {
                    z = C10213ae.m23233a(LikeView.this.f34244a, string);
                }
            }
            if (!z) {
                return;
            }
            if ("com.facebook.sdk.LikeActionController.UPDATED".equals(action)) {
                LikeView.this.m22691b();
            } else if ("com.facebook.sdk.LikeActionController.DID_ERROR".equals(action)) {
                if (LikeView.this.f34251h == null) {
                    return;
                }
                AbstractC10510f unused = LikeView.this.f34251h;
                C10340z.m22965a(extras);
            } else if (!"com.facebook.sdk.LikeActionController.DID_RESET".equals(action)) {
            } else {
                LikeView likeView = LikeView.this;
                likeView.m22692a(likeView.f34244a, LikeView.this.f34245b);
                LikeView.this.m22691b();
            }
        }
    }

    @Deprecated
    /* renamed from: com.facebook.share.widget.LikeView$e */
    /* loaded from: classes3-dex2jar.jar:com/facebook/share/widget/LikeView$e.class */
    public enum EnumC10509e {
        UNKNOWN("unknown", 0),
        OPEN_GRAPH("open_graph", 1),
        PAGE("page", 2);
        
        private int intValue;
        private String stringValue;
        public static EnumC10509e DEFAULT = UNKNOWN;

        EnumC10509e(String str, int i) {
            this.stringValue = str;
            this.intValue = i;
        }

        public static EnumC10509e fromInt(int i) {
            EnumC10509e[] values;
            for (EnumC10509e enumC10509e : values()) {
                if (enumC10509e.getValue() == i) {
                    return enumC10509e;
                }
            }
            return null;
        }

        public final int getValue() {
            return this.intValue;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return this.stringValue;
        }
    }

    /* renamed from: com.facebook.share.widget.LikeView$f */
    /* loaded from: classes3-dex2jar.jar:com/facebook/share/widget/LikeView$f.class */
    public interface AbstractC10510f {
    }

    @Deprecated
    /* renamed from: com.facebook.share.widget.LikeView$g */
    /* loaded from: classes3-dex2jar.jar:com/facebook/share/widget/LikeView$g.class */
    public enum EnumC10511g {
        STANDARD(Reporting.CreativeType.STANDARD, 0),
        BUTTON("button", 1),
        BOX_COUNT("box_count", 2);
        
        private int intValue;
        private String stringValue;
        static EnumC10511g DEFAULT = STANDARD;

        EnumC10511g(String str, int i) {
            this.stringValue = str;
            this.intValue = i;
        }

        static EnumC10511g fromInt(int i) {
            EnumC10511g[] values;
            for (EnumC10511g enumC10511g : values()) {
                if (enumC10511g.getValue() == i) {
                    return enumC10511g;
                }
            }
            return null;
        }

        public int getValue() {
            return this.intValue;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return this.stringValue;
        }
    }

    @Deprecated
    public LikeView(Context context) {
        super(context);
        this.f34254k = EnumC10511g.DEFAULT;
        this.f34255l = EnumC10506b.DEFAULT;
        this.f34256m = EnumC10505a.DEFAULT;
        this.f34257n = -1;
        this.f34261r = true;
        m22696a(context);
    }

    @Deprecated
    public LikeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes;
        this.f34254k = EnumC10511g.DEFAULT;
        this.f34255l = EnumC10506b.DEFAULT;
        this.f34256m = EnumC10505a.DEFAULT;
        this.f34257n = -1;
        this.f34261r = true;
        if (attributeSet != null && getContext() != null && (obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C10165a.C10173h.com_facebook_like_view)) != null) {
            this.f34244a = C10213ae.m23227a(obtainStyledAttributes.getString(C10165a.C10173h.com_facebook_like_view_com_facebook_object_id), (String) null);
            this.f34245b = EnumC10509e.fromInt(obtainStyledAttributes.getInt(C10165a.C10173h.com_facebook_like_view_com_facebook_object_type, EnumC10509e.DEFAULT.getValue()));
            EnumC10511g fromInt = EnumC10511g.fromInt(obtainStyledAttributes.getInt(C10165a.C10173h.com_facebook_like_view_com_facebook_style, EnumC10511g.DEFAULT.getValue()));
            this.f34254k = fromInt;
            if (fromInt == null) {
                throw new IllegalArgumentException("Unsupported value for LikeView 'style'");
            }
            EnumC10505a fromInt2 = EnumC10505a.fromInt(obtainStyledAttributes.getInt(C10165a.C10173h.com_facebook_like_view_com_facebook_auxiliary_view_position, EnumC10505a.DEFAULT.getValue()));
            this.f34256m = fromInt2;
            if (fromInt2 == null) {
                throw new IllegalArgumentException("Unsupported value for LikeView 'auxiliary_view_position'");
            }
            EnumC10506b fromInt3 = EnumC10506b.fromInt(obtainStyledAttributes.getInt(C10165a.C10173h.com_facebook_like_view_com_facebook_horizontal_alignment, EnumC10506b.DEFAULT.getValue()));
            this.f34255l = fromInt3;
            if (fromInt3 == null) {
                throw new IllegalArgumentException("Unsupported value for LikeView 'horizontal_alignment'");
            }
            this.f34257n = obtainStyledAttributes.getColor(C10165a.C10173h.com_facebook_like_view_com_facebook_foreground_color, -1);
            obtainStyledAttributes.recycle();
        }
        m22696a(context);
    }

    /* renamed from: a */
    private void m22697a() {
        if (this.f34252i != null) {
            C1179a.m43410a(getContext()).m43412a(this.f34252i);
            this.f34252i = null;
        }
        C10507c c10507c = this.f34253j;
        if (c10507c != null) {
            c10507c.f34264a = true;
            this.f34253j = null;
        }
        this.f34250g = null;
    }

    /* renamed from: a */
    private void m22696a(Context context) {
        this.f34258o = getResources().getDimensionPixelSize(C10165a.C10167b.com_facebook_likeview_edge_padding);
        this.f34259p = getResources().getDimensionPixelSize(C10165a.C10167b.com_facebook_likeview_internal_padding);
        if (this.f34257n == -1) {
            this.f34257n = getResources().getColor(C10165a.C10166a.com_facebook_likeview_text_color);
        }
        setBackgroundColor(0);
        this.f34246c = new LinearLayout(context);
        this.f34246c.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
        m22690b(context);
        m22687c(context);
        m22684d(context);
        this.f34246c.addView(this.f34247d);
        this.f34246c.addView(this.f34249f);
        this.f34246c.addView(this.f34248e);
        addView(this.f34246c);
        m22692a(this.f34244a, this.f34245b);
        m22691b();
    }

    /* renamed from: a */
    static /* synthetic */ void m22695a(LikeView likeView) {
        boolean z;
        if (likeView.f34250g != null) {
            if (likeView.f34260q == null) {
                Context context = likeView.getContext();
                while (true) {
                    Context context2 = context;
                    z = context2 instanceof Activity;
                    if (z || !(context2 instanceof ContextWrapper)) {
                        break;
                    }
                    context = ((ContextWrapper) context2).getBaseContext();
                }
                if (!z) {
                    throw new FacebookException("Unable to get Activity.");
                }
            }
            C10446a c10446a = likeView.f34250g;
            Bundle bundle = new Bundle();
            bundle.putString("style", likeView.f34254k.toString());
            bundle.putString("auxiliary_position", likeView.f34256m.toString());
            bundle.putString("horizontal_alignment", likeView.f34255l.toString());
            bundle.putString("object_id", C10213ae.m23227a(likeView.f34244a, ""));
            bundle.putString("object_type", likeView.f34245b.toString());
            boolean z2 = !c10446a.f34165a;
            if (c10446a.m22749d()) {
                c10446a.m22765a(z2);
                if (c10446a.f34166b) {
                    c10446a.m22754c().m23412c("fb_like_control_did_undo_quickly", bundle);
                    return;
                } else if (c10446a.m22764a(z2, bundle)) {
                    return;
                } else {
                    c10446a.m22765a(!z2);
                }
            }
            C10477b.m22717a();
            C10477b.m22716b();
            c10446a.m22768a("present_dialog", bundle);
            C10213ae.m23250a();
            C10446a.m22773a((C10446a) null, "com.facebook.sdk.LikeActionController.UPDATED", (Bundle) null);
        }
    }

    /* renamed from: a */
    static /* synthetic */ void m22694a(LikeView likeView, C10446a c10446a) {
        likeView.f34250g = c10446a;
        likeView.f34252i = new C10508d();
        C1179a m43410a = C1179a.m43410a(likeView.getContext());
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.facebook.sdk.LikeActionController.UPDATED");
        intentFilter.addAction("com.facebook.sdk.LikeActionController.DID_ERROR");
        intentFilter.addAction("com.facebook.sdk.LikeActionController.DID_RESET");
        m43410a.m43411a(likeView.f34252i, intentFilter);
    }

    /* renamed from: a */
    public void m22692a(String str, EnumC10509e enumC10509e) {
        m22697a();
        this.f34244a = str;
        this.f34245b = enumC10509e;
        if (C10213ae.m23230a(str)) {
            return;
        }
        this.f34253j = new C10507c();
        if (isInEditMode()) {
            return;
        }
        C10446a.m22767a(str, enumC10509e, this.f34253j);
    }

    /* renamed from: b */
    public void m22691b() {
        boolean z = !this.f34261r;
        C10446a c10446a = this.f34250g;
        if (c10446a == null) {
            this.f34247d.setSelected(false);
            this.f34249f.setText((CharSequence) null);
            this.f34248e.setText(null);
        } else {
            this.f34247d.setSelected(c10446a.f34165a);
            this.f34249f.setText(this.f34250g.m22762b());
            this.f34248e.setText(this.f34250g.m22783a());
            z = false;
        }
        super.setEnabled(z);
        this.f34247d.setEnabled(z);
        m22688c();
    }

    /* renamed from: b */
    private void m22690b(Context context) {
        C10446a c10446a = this.f34250g;
        LikeButton likeButton = new LikeButton(context, c10446a != null && c10446a.f34165a);
        this.f34247d = likeButton;
        likeButton.setOnClickListener(new View.OnClickListener() { // from class: com.facebook.share.widget.LikeView.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                if (C10249a.m23108a(this)) {
                    return;
                }
                try {
                    LikeView.m22695a(LikeView.this);
                } catch (Throwable th) {
                    C10249a.m23106a(th, this);
                }
            }
        });
        this.f34247d.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
    }

    /* renamed from: c */
    private void m22688c() {
        TextView textView;
        C10446a c10446a;
        C10446a c10446a2;
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f34246c.getLayoutParams();
        LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.f34247d.getLayoutParams();
        int i = this.f34255l == EnumC10506b.LEFT ? 3 : this.f34255l == EnumC10506b.CENTER ? 1 : 5;
        layoutParams.gravity = i | 48;
        layoutParams2.gravity = i;
        this.f34249f.setVisibility(8);
        this.f34248e.setVisibility(8);
        if (this.f34254k == EnumC10511g.STANDARD && (c10446a2 = this.f34250g) != null && !C10213ae.m23230a(c10446a2.m22762b())) {
            textView = this.f34249f;
        } else if (this.f34254k != EnumC10511g.BOX_COUNT || (c10446a = this.f34250g) == null || C10213ae.m23230a(c10446a.m22783a())) {
            return;
        } else {
            m22685d();
            textView = this.f34248e;
        }
        textView.setVisibility(0);
        ((LinearLayout.LayoutParams) textView.getLayoutParams()).gravity = i;
        this.f34246c.setOrientation(this.f34256m == EnumC10505a.INLINE ? 0 : 1);
        if (this.f34256m == EnumC10505a.TOP || (this.f34256m == EnumC10505a.INLINE && this.f34255l == EnumC10506b.RIGHT)) {
            this.f34246c.removeView(this.f34247d);
            this.f34246c.addView(this.f34247d);
        } else {
            this.f34246c.removeView(textView);
            this.f34246c.addView(textView);
        }
        int i2 = C105042.f34263a[this.f34256m.ordinal()];
        if (i2 == 1) {
            int i3 = this.f34258o;
            textView.setPadding(i3, i3, i3, this.f34259p);
        } else if (i2 == 2) {
            int i4 = this.f34258o;
            textView.setPadding(i4, this.f34259p, i4, i4);
        } else if (i2 != 3) {
        } else {
            if (this.f34255l == EnumC10506b.RIGHT) {
                int i5 = this.f34258o;
                textView.setPadding(i5, i5, this.f34259p, i5);
                return;
            }
            int i6 = this.f34259p;
            int i7 = this.f34258o;
            textView.setPadding(i6, i7, i7, i7);
        }
    }

    /* renamed from: c */
    private void m22687c(Context context) {
        TextView textView = new TextView(context);
        this.f34249f = textView;
        textView.setTextSize(0, getResources().getDimension(C10165a.C10167b.com_facebook_likeview_text_size));
        this.f34249f.setMaxLines(2);
        this.f34249f.setTextColor(this.f34257n);
        this.f34249f.setGravity(17);
        this.f34249f.setLayoutParams(new LinearLayout.LayoutParams(-2, -1));
    }

    /* renamed from: d */
    private void m22685d() {
        LikeBoxCountView.EnumC10443a enumC10443a;
        LikeBoxCountView likeBoxCountView;
        int i = C105042.f34263a[this.f34256m.ordinal()];
        if (i == 1) {
            likeBoxCountView = this.f34248e;
            enumC10443a = LikeBoxCountView.EnumC10443a.BOTTOM;
        } else if (i == 2) {
            likeBoxCountView = this.f34248e;
            enumC10443a = LikeBoxCountView.EnumC10443a.TOP;
        } else if (i != 3) {
            return;
        } else {
            likeBoxCountView = this.f34248e;
            enumC10443a = this.f34255l == EnumC10506b.RIGHT ? LikeBoxCountView.EnumC10443a.RIGHT : LikeBoxCountView.EnumC10443a.LEFT;
        }
        likeBoxCountView.setCaretPosition(enumC10443a);
    }

    /* renamed from: d */
    private void m22684d(Context context) {
        this.f34248e = new LikeBoxCountView(context);
        this.f34248e.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        setObjectIdAndType(null, EnumC10509e.UNKNOWN);
        super.onDetachedFromWindow();
    }

    @Deprecated
    public void setAuxiliaryViewPosition(EnumC10505a enumC10505a) {
        if (enumC10505a == null) {
            enumC10505a = EnumC10505a.DEFAULT;
        }
        if (this.f34256m != enumC10505a) {
            this.f34256m = enumC10505a;
            m22688c();
        }
    }

    @Override // android.view.View
    @Deprecated
    public void setEnabled(boolean z) {
        this.f34261r = true;
        m22691b();
    }

    @Deprecated
    public void setForegroundColor(int i) {
        if (this.f34257n != i) {
            this.f34249f.setTextColor(i);
        }
    }

    @Deprecated
    public void setFragment(Fragment fragment) {
        this.f34260q = new C10326s(fragment);
    }

    @Deprecated
    public void setFragment(androidx.fragment.app.Fragment fragment) {
        this.f34260q = new C10326s(fragment);
    }

    @Deprecated
    public void setHorizontalAlignment(EnumC10506b enumC10506b) {
        if (enumC10506b == null) {
            enumC10506b = EnumC10506b.DEFAULT;
        }
        if (this.f34255l != enumC10506b) {
            this.f34255l = enumC10506b;
            m22688c();
        }
    }

    @Deprecated
    public void setLikeViewStyle(EnumC10511g enumC10511g) {
        if (enumC10511g == null) {
            enumC10511g = EnumC10511g.DEFAULT;
        }
        if (this.f34254k != enumC10511g) {
            this.f34254k = enumC10511g;
            m22688c();
        }
    }

    @Deprecated
    public void setObjectIdAndType(String str, EnumC10509e enumC10509e) {
        String m23227a = C10213ae.m23227a(str, (String) null);
        if (enumC10509e == null) {
            enumC10509e = EnumC10509e.DEFAULT;
        }
        if (!C10213ae.m23233a(m23227a, this.f34244a) || enumC10509e != this.f34245b) {
            m22692a(m23227a, enumC10509e);
            m22691b();
        }
    }

    @Deprecated
    public void setOnErrorListener(AbstractC10510f abstractC10510f) {
        this.f34251h = abstractC10510f;
    }
}
