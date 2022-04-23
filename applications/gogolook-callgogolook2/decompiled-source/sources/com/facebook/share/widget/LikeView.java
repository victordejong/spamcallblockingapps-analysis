package com.facebook.share.widget;

import android.app.Activity;
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
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import androidx.media2.exoplayer.external.text.ttml.TtmlNode;
import com.facebook.common.R$color;
import com.facebook.common.R$dimen;
import com.facebook.common.R$styleable;
import com.facebook.internal.C2372a0;
import com.facebook.internal.C2408g0;
import com.facebook.internal.C2486r;
import com.facebook.share.p046d.C2577d;
import com.facebook.share.p046d.C2608e;
import com.facebook.share.p046d.C2611f;
import p081h.p154f.C6131k;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/facebook/share/widget/LikeView.class */
public class LikeView extends FrameLayout {

    /* renamed from: a */
    public String f3747a;

    /* renamed from: b */
    public EnumC2719g f3748b;

    /* renamed from: c */
    public LinearLayout f3749c;

    /* renamed from: d */
    public C2611f f3750d;

    /* renamed from: e */
    public C2608e f3751e;

    /* renamed from: f */
    public TextView f3752f;

    /* renamed from: g */
    public C2577d f3753g;

    /* renamed from: h */
    public AbstractC2720h f3754h;

    /* renamed from: i */
    public BroadcastReceiver f3755i;

    /* renamed from: j */
    public C2717e f3756j;

    /* renamed from: o */
    public int f3761o;

    /* renamed from: p */
    public int f3762p;

    /* renamed from: q */
    public C2486r f3763q;

    /* renamed from: k */
    public EnumC2721i f3757k = EnumC2721i.f3794f;

    /* renamed from: l */
    public EnumC2716d f3758l = EnumC2716d.f3777f;

    /* renamed from: m */
    public EnumC2715c f3759m = EnumC2715c.f3770f;

    /* renamed from: n */
    public int f3760n = -1;

    /* renamed from: r */
    public boolean f3764r = true;

    /* renamed from: com.facebook.share.widget.LikeView$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/widget/LikeView$a.class */
    public class View$OnClickListenerC2713a implements View.OnClickListener {
        public View$OnClickListenerC2713a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            LikeView.this.m33790d();
        }
    }

    /* renamed from: com.facebook.share.widget.LikeView$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/widget/LikeView$b.class */
    public static /* synthetic */ class C2714b {

        /* renamed from: a */
        public static final /* synthetic */ int[] f3766a = new int[EnumC2715c.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            try {
                f3766a[EnumC2715c.TOP.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f3766a[EnumC2715c.BOTTOM.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f3766a[EnumC2715c.INLINE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    @Deprecated
    /* renamed from: com.facebook.share.widget.LikeView$c */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/widget/LikeView$c.class */
    public enum EnumC2715c {
        BOTTOM("bottom", 0),
        INLINE("inline", 1),
        TOP("top", 2);
        

        /* renamed from: a */
        public String f3772a;

        /* renamed from: b */
        public int f3773b;

        /* renamed from: f */
        public static EnumC2715c f3770f = BOTTOM;

        EnumC2715c(String str, int i) {
            this.f3772a = str;
            this.f3773b = i;
        }

        /* renamed from: a */
        public static EnumC2715c m33782a(int i) {
            EnumC2715c[] values;
            for (EnumC2715c cVar : values()) {
                if (cVar.m33783a() == i) {
                    return cVar;
                }
            }
            return null;
        }

        /* renamed from: a */
        public final int m33783a() {
            return this.f3773b;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.f3772a;
        }
    }

    @Deprecated
    /* renamed from: com.facebook.share.widget.LikeView$d */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/widget/LikeView$d.class */
    public enum EnumC2716d {
        CENTER(TtmlNode.CENTER, 0),
        LEFT(TtmlNode.LEFT, 1),
        RIGHT(TtmlNode.RIGHT, 2);
        

        /* renamed from: a */
        public String f3779a;

        /* renamed from: b */
        public int f3780b;

        /* renamed from: f */
        public static EnumC2716d f3777f = CENTER;

        EnumC2716d(String str, int i) {
            this.f3779a = str;
            this.f3780b = i;
        }

        /* renamed from: a */
        public static EnumC2716d m33779a(int i) {
            EnumC2716d[] values;
            for (EnumC2716d dVar : values()) {
                if (dVar.m33780a() == i) {
                    return dVar;
                }
            }
            return null;
        }

        /* renamed from: a */
        public final int m33780a() {
            return this.f3780b;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.f3779a;
        }
    }

    /* renamed from: com.facebook.share.widget.LikeView$e */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/widget/LikeView$e.class */
    public class C2717e implements C2577d.AbstractC2596o {

        /* renamed from: a */
        public boolean f3781a;

        public C2717e() {
        }

        public /* synthetic */ C2717e(LikeView likeView, View$OnClickListenerC2713a aVar) {
            this();
        }

        /* renamed from: a */
        public void m33777a() {
            this.f3781a = true;
        }

        @Override // com.facebook.share.p046d.C2577d.AbstractC2596o
        /* renamed from: a */
        public void mo33776a(C2577d dVar, C6131k kVar) {
            if (!this.f3781a) {
                kVar = kVar;
                if (dVar != null) {
                    if (!dVar.m34204j()) {
                        kVar = new C6131k("Cannot use LikeView. The device may not be supported.");
                    }
                    LikeView.this.m33803a(dVar);
                    LikeView.this.m33784g();
                }
                if (!(kVar == null || LikeView.this.f3754h == null)) {
                    LikeView.this.f3754h.m33773a(kVar);
                }
                LikeView.this.f3756j = null;
            }
        }
    }

    /* renamed from: com.facebook.share.widget.LikeView$f */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/widget/LikeView$f.class */
    public class C2718f extends BroadcastReceiver {
        public C2718f() {
        }

        public /* synthetic */ C2718f(LikeView likeView, View$OnClickListenerC2713a aVar) {
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
                if (!C2408g0.m34816d(string)) {
                    z = C2408g0.m34858a(LikeView.this.f3747a, string);
                }
            }
            if (z) {
                if ("com.facebook.sdk.LikeActionController.UPDATED".equals(action)) {
                    LikeView.this.m33784g();
                } else if ("com.facebook.sdk.LikeActionController.DID_ERROR".equals(action)) {
                    if (LikeView.this.f3754h != null) {
                        LikeView.this.f3754h.m33773a(C2372a0.m34965a(extras));
                    }
                } else if ("com.facebook.sdk.LikeActionController.DID_RESET".equals(action)) {
                    LikeView likeView = LikeView.this;
                    likeView.m33794b(likeView.f3747a, LikeView.this.f3748b);
                    LikeView.this.m33784g();
                }
            }
        }
    }

    @Deprecated
    /* renamed from: com.facebook.share.widget.LikeView$g */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/widget/LikeView$g.class */
    public enum EnumC2719g {
        UNKNOWN("unknown", 0),
        OPEN_GRAPH("open_graph", 1),
        PAGE("page", 2);
        

        /* renamed from: a */
        public String f3789a;

        /* renamed from: b */
        public int f3790b;

        /* renamed from: f */
        public static EnumC2719g f3787f = UNKNOWN;

        EnumC2719g(String str, int i) {
            this.f3789a = str;
            this.f3790b = i;
        }

        /* renamed from: a */
        public static EnumC2719g m33774a(int i) {
            EnumC2719g[] values;
            for (EnumC2719g gVar : values()) {
                if (gVar.m33775a() == i) {
                    return gVar;
                }
            }
            return null;
        }

        /* renamed from: a */
        public int m33775a() {
            return this.f3790b;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.f3789a;
        }
    }

    /* renamed from: com.facebook.share.widget.LikeView$h */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/widget/LikeView$h.class */
    public interface AbstractC2720h {
        /* renamed from: a */
        void m33773a(C6131k kVar);
    }

    @Deprecated
    /* renamed from: com.facebook.share.widget.LikeView$i */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/widget/LikeView$i.class */
    public enum EnumC2721i {
        STANDARD("standard", 0),
        BUTTON("button", 1),
        BOX_COUNT("box_count", 2);
        

        /* renamed from: a */
        public String f3796a;

        /* renamed from: b */
        public int f3797b;

        /* renamed from: f */
        public static EnumC2721i f3794f = STANDARD;

        EnumC2721i(String str, int i) {
            this.f3796a = str;
            this.f3797b = i;
        }

        /* renamed from: a */
        public static EnumC2721i m33771a(int i) {
            EnumC2721i[] values;
            for (EnumC2721i iVar : values()) {
                if (iVar.m33772a() == i) {
                    return iVar;
                }
            }
            return null;
        }

        /* renamed from: a */
        public final int m33772a() {
            return this.f3797b;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.f3796a;
        }
    }

    @Deprecated
    public LikeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m33804a(attributeSet);
        m33805a(context);
    }

    /* renamed from: a */
    public final Activity m33806a() {
        boolean z;
        Context context = getContext();
        while (true) {
            z = context instanceof Activity;
            if (z || !(context instanceof ContextWrapper)) {
                break;
            }
            context = ((ContextWrapper) context).getBaseContext();
        }
        if (z) {
            return (Activity) context;
        }
        throw new C6131k("Unable to get Activity.");
    }

    /* renamed from: a */
    public final void m33805a(Context context) {
        this.f3761o = getResources().getDimensionPixelSize(R$dimen.com_facebook_likeview_edge_padding);
        this.f3762p = getResources().getDimensionPixelSize(R$dimen.com_facebook_likeview_internal_padding);
        if (this.f3760n == -1) {
            this.f3760n = getResources().getColor(R$color.com_facebook_likeview_text_color);
        }
        setBackgroundColor(0);
        this.f3749c = new LinearLayout(context);
        this.f3749c.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
        m33796b(context);
        m33789d(context);
        m33792c(context);
        this.f3749c.addView(this.f3750d);
        this.f3749c.addView(this.f3752f);
        this.f3749c.addView(this.f3751e);
        addView(this.f3749c);
        m33794b(this.f3747a, this.f3748b);
        m33784g();
    }

    /* renamed from: a */
    public final void m33804a(AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes;
        if (attributeSet != null && getContext() != null && (obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.com_facebook_like_view)) != null) {
            this.f3747a = C2408g0.m34852a(obtainStyledAttributes.getString(R$styleable.com_facebook_like_view_com_facebook_object_id), (String) null);
            this.f3748b = EnumC2719g.m33774a(obtainStyledAttributes.getInt(R$styleable.com_facebook_like_view_com_facebook_object_type, EnumC2719g.f3787f.m33775a()));
            this.f3757k = EnumC2721i.m33771a(obtainStyledAttributes.getInt(R$styleable.com_facebook_like_view_com_facebook_style, EnumC2721i.f3794f.m33772a()));
            if (this.f3757k != null) {
                this.f3759m = EnumC2715c.m33782a(obtainStyledAttributes.getInt(R$styleable.com_facebook_like_view_com_facebook_auxiliary_view_position, EnumC2715c.f3770f.m33783a()));
                if (this.f3759m != null) {
                    this.f3758l = EnumC2716d.m33779a(obtainStyledAttributes.getInt(R$styleable.com_facebook_like_view_com_facebook_horizontal_alignment, EnumC2716d.f3777f.m33780a()));
                    if (this.f3758l != null) {
                        this.f3760n = obtainStyledAttributes.getColor(R$styleable.com_facebook_like_view_com_facebook_foreground_color, -1);
                        obtainStyledAttributes.recycle();
                        return;
                    }
                    throw new IllegalArgumentException("Unsupported value for LikeView 'horizontal_alignment'");
                }
                throw new IllegalArgumentException("Unsupported value for LikeView 'auxiliary_view_position'");
            }
            throw new IllegalArgumentException("Unsupported value for LikeView 'style'");
        }
    }

    /* renamed from: a */
    public final void m33803a(C2577d dVar) {
        this.f3753g = dVar;
        this.f3755i = new C2718f(this, null);
        LocalBroadcastManager instance = LocalBroadcastManager.getInstance(getContext());
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.facebook.sdk.LikeActionController.UPDATED");
        intentFilter.addAction("com.facebook.sdk.LikeActionController.DID_ERROR");
        intentFilter.addAction("com.facebook.sdk.LikeActionController.DID_RESET");
        instance.registerReceiver(this.f3755i, intentFilter);
    }

    @Deprecated
    /* renamed from: a */
    public void m33798a(String str, EnumC2719g gVar) {
        String a = C2408g0.m34852a(str, (String) null);
        if (gVar == null) {
            gVar = EnumC2719g.f3787f;
        }
        if (!C2408g0.m34858a(a, this.f3747a) || gVar != this.f3748b) {
            m33794b(a, gVar);
            m33784g();
        }
    }

    /* renamed from: b */
    public final Bundle m33797b() {
        Bundle bundle = new Bundle();
        bundle.putString("style", this.f3757k.toString());
        bundle.putString("auxiliary_position", this.f3759m.toString());
        bundle.putString("horizontal_alignment", this.f3758l.toString());
        bundle.putString("object_id", C2408g0.m34852a(this.f3747a, ""));
        bundle.putString("object_type", this.f3748b.toString());
        return bundle;
    }

    /* renamed from: b */
    public final void m33796b(Context context) {
        C2577d dVar = this.f3753g;
        this.f3750d = new C2611f(context, dVar != null && dVar.m34210g());
        this.f3750d.setOnClickListener(new View$OnClickListenerC2713a());
        this.f3750d.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
    }

    /* renamed from: b */
    public final void m33794b(String str, EnumC2719g gVar) {
        m33793c();
        this.f3747a = str;
        this.f3748b = gVar;
        if (!C2408g0.m34816d(str)) {
            this.f3756j = new C2717e(this, null);
            if (!isInEditMode()) {
                C2577d.m34223c(str, gVar, this.f3756j);
            }
        }
    }

    /* renamed from: c */
    public final void m33793c() {
        if (this.f3755i != null) {
            LocalBroadcastManager.getInstance(getContext()).unregisterReceiver(this.f3755i);
            this.f3755i = null;
        }
        C2717e eVar = this.f3756j;
        if (eVar != null) {
            eVar.m33777a();
            this.f3756j = null;
        }
        this.f3753g = null;
    }

    /* renamed from: c */
    public final void m33792c(Context context) {
        this.f3751e = new C2608e(context);
        this.f3751e.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
    }

    /* renamed from: d */
    public final void m33790d() {
        if (this.f3753g != null) {
            Activity activity = null;
            if (this.f3763q == null) {
                activity = m33806a();
            }
            this.f3753g.m34240b(activity, this.f3763q, m33797b());
        }
    }

    /* renamed from: d */
    public final void m33789d(Context context) {
        this.f3752f = new TextView(context);
        this.f3752f.setTextSize(0, getResources().getDimension(R$dimen.com_facebook_likeview_text_size));
        this.f3752f.setMaxLines(2);
        this.f3752f.setTextColor(this.f3760n);
        this.f3752f.setGravity(17);
        this.f3752f.setLayoutParams(new LinearLayout.LayoutParams(-2, -1));
    }

    /* renamed from: e */
    public final void m33787e() {
        int i = C2714b.f3766a[this.f3759m.ordinal()];
        if (i == 1) {
            this.f3751e.m34183a(C2608e.EnumC2610b.BOTTOM);
        } else if (i == 2) {
            this.f3751e.m34183a(C2608e.EnumC2610b.TOP);
        } else if (i == 3) {
            this.f3751e.m34183a(this.f3758l == EnumC2716d.RIGHT ? C2608e.EnumC2610b.RIGHT : C2608e.EnumC2610b.LEFT);
        }
    }

    /* renamed from: f */
    public final void m33785f() {
        View view;
        C2577d dVar;
        C2577d dVar2;
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f3749c.getLayoutParams();
        LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.f3750d.getLayoutParams();
        EnumC2716d dVar3 = this.f3758l;
        int i = dVar3 == EnumC2716d.LEFT ? 3 : dVar3 == EnumC2716d.CENTER ? 1 : 5;
        layoutParams.gravity = i | 48;
        layoutParams2.gravity = i;
        this.f3752f.setVisibility(8);
        this.f3751e.setVisibility(8);
        if (this.f3757k == EnumC2721i.STANDARD && (dVar2 = this.f3753g) != null && !C2408g0.m34816d(dVar2.m34212f())) {
            view = this.f3752f;
        } else if (this.f3757k == EnumC2721i.BOX_COUNT && (dVar = this.f3753g) != null && !C2408g0.m34816d(dVar.m34222d())) {
            m33787e();
            view = this.f3751e;
        } else {
            return;
        }
        int i2 = 0;
        view.setVisibility(0);
        ((LinearLayout.LayoutParams) view.getLayoutParams()).gravity = i;
        LinearLayout linearLayout = this.f3749c;
        if (this.f3759m != EnumC2715c.INLINE) {
            i2 = 1;
        }
        linearLayout.setOrientation(i2);
        EnumC2715c cVar = this.f3759m;
        if (cVar == EnumC2715c.TOP || (cVar == EnumC2715c.INLINE && this.f3758l == EnumC2716d.RIGHT)) {
            this.f3749c.removeView(this.f3750d);
            this.f3749c.addView(this.f3750d);
        } else {
            this.f3749c.removeView(view);
            this.f3749c.addView(view);
        }
        int i3 = C2714b.f3766a[this.f3759m.ordinal()];
        if (i3 == 1) {
            int i4 = this.f3761o;
            view.setPadding(i4, i4, i4, this.f3762p);
        } else if (i3 == 2) {
            int i5 = this.f3761o;
            view.setPadding(i5, this.f3762p, i5, i5);
        } else if (i3 == 3) {
            if (this.f3758l == EnumC2716d.RIGHT) {
                int i6 = this.f3761o;
                view.setPadding(i6, i6, this.f3762p, i6);
                return;
            }
            int i7 = this.f3762p;
            int i8 = this.f3761o;
            view.setPadding(i7, i8, i8, i8);
        }
    }

    /* renamed from: g */
    public final void m33784g() {
        boolean z = !this.f3764r;
        C2577d dVar = this.f3753g;
        if (dVar == null) {
            this.f3750d.setSelected(false);
            this.f3752f.setText((CharSequence) null);
            this.f3751e.m34182a((String) null);
        } else {
            this.f3750d.setSelected(dVar.m34210g());
            this.f3752f.setText(this.f3753g.m34212f());
            this.f3751e.m34182a(this.f3753g.m34222d());
            z &= this.f3753g.m34204j();
        }
        super.setEnabled(z);
        this.f3750d.setEnabled(z);
        m33785f();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        m33798a((String) null, EnumC2719g.UNKNOWN);
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    @Deprecated
    public void setEnabled(boolean z) {
        this.f3764r = true;
        m33784g();
    }
}
