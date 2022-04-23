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
import com.facebook.FacebookException;
import com.facebook.common.a;
import com.facebook.internal.ae;
import com.facebook.internal.s;
import com.facebook.internal.z;
import com.facebook.share.internal.LikeBoxCountView;
import com.facebook.share.internal.LikeButton;
import com.facebook.share.internal.a;
import net.pubnative.lite.sdk.analytics.Reporting;
@Deprecated
/* loaded from: classes3-dex2jar.jar:com/facebook/share/widget/LikeView.class */
public class LikeView extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    private String f20218a;

    /* renamed from: b  reason: collision with root package name */
    private e f20219b;

    /* renamed from: c  reason: collision with root package name */
    private LinearLayout f20220c;

    /* renamed from: d  reason: collision with root package name */
    private LikeButton f20221d;
    private LikeBoxCountView e;
    private TextView f;
    private com.facebook.share.internal.a g;
    private f h;
    private BroadcastReceiver i;
    private c j;
    private g k;
    private b l;
    private a m;
    private int n;
    private int o;
    private int p;
    private s q;
    private boolean r;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.facebook.share.widget.LikeView$2  reason: invalid class name */
    /* loaded from: classes3-dex2jar.jar:com/facebook/share/widget/LikeView$2.class */
    public static final /* synthetic */ class AnonymousClass2 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f20223a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[a.values().length];
            f20223a = iArr;
            try {
                iArr[a.TOP.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f20223a[a.BOTTOM.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f20223a[a.INLINE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    @Deprecated
    /* loaded from: classes3-dex2jar.jar:com/facebook/share/widget/LikeView$a.class */
    public enum a {
        BOTTOM("bottom", 0),
        INLINE("inline", 1),
        TOP("top", 2);
        
        static a DEFAULT = BOTTOM;
        private int intValue;
        private String stringValue;

        a(String str, int i) {
            this.stringValue = str;
            this.intValue = i;
        }

        static a fromInt(int i) {
            a[] values;
            for (a aVar : values()) {
                if (aVar.getValue() == i) {
                    return aVar;
                }
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int getValue() {
            return this.intValue;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return this.stringValue;
        }
    }

    @Deprecated
    /* loaded from: classes3-dex2jar.jar:com/facebook/share/widget/LikeView$b.class */
    public enum b {
        CENTER("center", 0),
        LEFT("left", 1),
        RIGHT("right", 2);
        
        static b DEFAULT = CENTER;
        private int intValue;
        private String stringValue;

        b(String str, int i) {
            this.stringValue = str;
            this.intValue = i;
        }

        static b fromInt(int i) {
            b[] values;
            for (b bVar : values()) {
                if (bVar.getValue() == i) {
                    return bVar;
                }
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int getValue() {
            return this.intValue;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return this.stringValue;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/facebook/share/widget/LikeView$c.class */
    public final class c implements a.c {

        /* renamed from: a  reason: collision with root package name */
        boolean f20224a;

        private c() {
        }

        @Override // com.facebook.share.internal.a.c
        public final void a(com.facebook.share.internal.a aVar, FacebookException facebookException) {
            if (!this.f20224a) {
                if (aVar != null) {
                    facebookException = new FacebookException("Cannot use LikeView. The device may not be supported.");
                    LikeView.a(LikeView.this, aVar);
                    LikeView.this.b();
                }
                if (!(facebookException == null || LikeView.this.h == null)) {
                    f unused = LikeView.this.h;
                }
                LikeView.this.j = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/facebook/share/widget/LikeView$d.class */
    public final class d extends BroadcastReceiver {
        private d() {
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            Bundle extras = intent.getExtras();
            boolean z = true;
            if (extras != null) {
                String string = extras.getString("com.facebook.sdk.LikeActionController.OBJECT_ID");
                z = true;
                if (!ae.a(string)) {
                    z = ae.a(LikeView.this.f20218a, string);
                }
            }
            if (z) {
                if ("com.facebook.sdk.LikeActionController.UPDATED".equals(action)) {
                    LikeView.this.b();
                } else if ("com.facebook.sdk.LikeActionController.DID_ERROR".equals(action)) {
                    if (LikeView.this.h != null) {
                        f unused = LikeView.this.h;
                        z.a(extras);
                    }
                } else if ("com.facebook.sdk.LikeActionController.DID_RESET".equals(action)) {
                    LikeView likeView = LikeView.this;
                    likeView.a(likeView.f20218a, LikeView.this.f20219b);
                    LikeView.this.b();
                }
            }
        }
    }

    @Deprecated
    /* loaded from: classes3-dex2jar.jar:com/facebook/share/widget/LikeView$e.class */
    public enum e {
        UNKNOWN("unknown", 0),
        OPEN_GRAPH("open_graph", 1),
        PAGE("page", 2);
        
        private int intValue;
        private String stringValue;
        public static e DEFAULT = UNKNOWN;

        e(String str, int i) {
            this.stringValue = str;
            this.intValue = i;
        }

        public static e fromInt(int i) {
            e[] values;
            for (e eVar : values()) {
                if (eVar.getValue() == i) {
                    return eVar;
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

    /* loaded from: classes3-dex2jar.jar:com/facebook/share/widget/LikeView$f.class */
    public interface f {
    }

    @Deprecated
    /* loaded from: classes3-dex2jar.jar:com/facebook/share/widget/LikeView$g.class */
    public enum g {
        STANDARD(Reporting.CreativeType.STANDARD, 0),
        BUTTON("button", 1),
        BOX_COUNT("box_count", 2);
        
        private int intValue;
        private String stringValue;
        static g DEFAULT = STANDARD;

        g(String str, int i) {
            this.stringValue = str;
            this.intValue = i;
        }

        static g fromInt(int i) {
            g[] values;
            for (g gVar : values()) {
                if (gVar.getValue() == i) {
                    return gVar;
                }
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: private */
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
        this.k = g.DEFAULT;
        this.l = b.DEFAULT;
        this.m = a.DEFAULT;
        this.n = -1;
        this.r = true;
        a(context);
    }

    @Deprecated
    public LikeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes;
        this.k = g.DEFAULT;
        this.l = b.DEFAULT;
        this.m = a.DEFAULT;
        this.n = -1;
        this.r = true;
        if (!(attributeSet == null || getContext() == null || (obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, a.h.com_facebook_like_view)) == null)) {
            this.f20218a = ae.a(obtainStyledAttributes.getString(a.h.com_facebook_like_view_com_facebook_object_id), (String) null);
            this.f20219b = e.fromInt(obtainStyledAttributes.getInt(a.h.com_facebook_like_view_com_facebook_object_type, e.DEFAULT.getValue()));
            g fromInt = g.fromInt(obtainStyledAttributes.getInt(a.h.com_facebook_like_view_com_facebook_style, g.DEFAULT.getValue()));
            this.k = fromInt;
            if (fromInt != null) {
                a fromInt2 = a.fromInt(obtainStyledAttributes.getInt(a.h.com_facebook_like_view_com_facebook_auxiliary_view_position, a.DEFAULT.getValue()));
                this.m = fromInt2;
                if (fromInt2 != null) {
                    b fromInt3 = b.fromInt(obtainStyledAttributes.getInt(a.h.com_facebook_like_view_com_facebook_horizontal_alignment, b.DEFAULT.getValue()));
                    this.l = fromInt3;
                    if (fromInt3 != null) {
                        this.n = obtainStyledAttributes.getColor(a.h.com_facebook_like_view_com_facebook_foreground_color, -1);
                        obtainStyledAttributes.recycle();
                    } else {
                        throw new IllegalArgumentException("Unsupported value for LikeView 'horizontal_alignment'");
                    }
                } else {
                    throw new IllegalArgumentException("Unsupported value for LikeView 'auxiliary_view_position'");
                }
            } else {
                throw new IllegalArgumentException("Unsupported value for LikeView 'style'");
            }
        }
        a(context);
    }

    private void a() {
        if (this.i != null) {
            androidx.i.a.a.a(getContext()).a(this.i);
            this.i = null;
        }
        c cVar = this.j;
        if (cVar != null) {
            cVar.f20224a = true;
            this.j = null;
        }
        this.g = null;
    }

    private void a(Context context) {
        this.o = getResources().getDimensionPixelSize(a.b.com_facebook_likeview_edge_padding);
        this.p = getResources().getDimensionPixelSize(a.b.com_facebook_likeview_internal_padding);
        if (this.n == -1) {
            this.n = getResources().getColor(a.C0393a.com_facebook_likeview_text_color);
        }
        setBackgroundColor(0);
        this.f20220c = new LinearLayout(context);
        this.f20220c.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
        b(context);
        c(context);
        d(context);
        this.f20220c.addView(this.f20221d);
        this.f20220c.addView(this.f);
        this.f20220c.addView(this.e);
        addView(this.f20220c);
        a(this.f20218a, this.f20219b);
        b();
    }

    static /* synthetic */ void a(LikeView likeView) {
        boolean z;
        if (likeView.g != null) {
            if (likeView.q == null) {
                Context context = likeView.getContext();
                while (true) {
                    z = context instanceof Activity;
                    if (z || !(context instanceof ContextWrapper)) {
                        break;
                    }
                    context = ((ContextWrapper) context).getBaseContext();
                }
                if (!z) {
                    throw new FacebookException("Unable to get Activity.");
                }
            }
            com.facebook.share.internal.a aVar = likeView.g;
            Bundle bundle = new Bundle();
            bundle.putString("style", likeView.k.toString());
            bundle.putString("auxiliary_position", likeView.m.toString());
            bundle.putString("horizontal_alignment", likeView.l.toString());
            bundle.putString("object_id", ae.a(likeView.f20218a, ""));
            bundle.putString("object_type", likeView.f20219b.toString());
            boolean z2 = !aVar.f20175a;
            if (aVar.d()) {
                aVar.a(z2);
                if (aVar.f20176b) {
                    aVar.c().c("fb_like_control_did_undo_quickly", bundle);
                    return;
                } else if (!aVar.a(z2, bundle)) {
                    aVar.a(!z2);
                } else {
                    return;
                }
            }
            com.facebook.share.internal.b.a();
            com.facebook.share.internal.b.b();
            aVar.a("present_dialog", bundle);
            ae.a();
            com.facebook.share.internal.a.a((com.facebook.share.internal.a) null, "com.facebook.sdk.LikeActionController.UPDATED", (Bundle) null);
        }
    }

    static /* synthetic */ void a(LikeView likeView, com.facebook.share.internal.a aVar) {
        likeView.g = aVar;
        likeView.i = new d();
        androidx.i.a.a a2 = androidx.i.a.a.a(likeView.getContext());
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.facebook.sdk.LikeActionController.UPDATED");
        intentFilter.addAction("com.facebook.sdk.LikeActionController.DID_ERROR");
        intentFilter.addAction("com.facebook.sdk.LikeActionController.DID_RESET");
        a2.a(likeView.i, intentFilter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, e eVar) {
        a();
        this.f20218a = str;
        this.f20219b = eVar;
        if (!ae.a(str)) {
            this.j = new c();
            if (!isInEditMode()) {
                com.facebook.share.internal.a.a(str, eVar, this.j);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        boolean z = !this.r;
        com.facebook.share.internal.a aVar = this.g;
        if (aVar == null) {
            this.f20221d.setSelected(false);
            this.f.setText((CharSequence) null);
            this.e.setText(null);
        } else {
            this.f20221d.setSelected(aVar.f20175a);
            this.f.setText(this.g.b());
            this.e.setText(this.g.a());
            z = false;
        }
        super.setEnabled(z);
        this.f20221d.setEnabled(z);
        c();
    }

    private void b(Context context) {
        com.facebook.share.internal.a aVar = this.g;
        LikeButton likeButton = new LikeButton(context, aVar != null && aVar.f20175a);
        this.f20221d = likeButton;
        likeButton.setOnClickListener(new View.OnClickListener() { // from class: com.facebook.share.widget.LikeView.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                if (!com.facebook.internal.b.b.a.a(this)) {
                    try {
                        LikeView.a(LikeView.this);
                    } catch (Throwable th) {
                        com.facebook.internal.b.b.a.a(th, this);
                    }
                }
            }
        });
        this.f20221d.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
    }

    private void c() {
        View view;
        com.facebook.share.internal.a aVar;
        com.facebook.share.internal.a aVar2;
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f20220c.getLayoutParams();
        LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.f20221d.getLayoutParams();
        int i = this.l == b.LEFT ? 3 : this.l == b.CENTER ? 1 : 5;
        layoutParams.gravity = i | 48;
        layoutParams2.gravity = i;
        this.f.setVisibility(8);
        this.e.setVisibility(8);
        if (this.k == g.STANDARD && (aVar2 = this.g) != null && !ae.a(aVar2.b())) {
            view = this.f;
        } else if (this.k == g.BOX_COUNT && (aVar = this.g) != null && !ae.a(aVar.a())) {
            d();
            view = this.e;
        } else {
            return;
        }
        int i2 = 0;
        view.setVisibility(0);
        ((LinearLayout.LayoutParams) view.getLayoutParams()).gravity = i;
        LinearLayout linearLayout = this.f20220c;
        if (this.m != a.INLINE) {
            i2 = 1;
        }
        linearLayout.setOrientation(i2);
        if (this.m == a.TOP || (this.m == a.INLINE && this.l == b.RIGHT)) {
            this.f20220c.removeView(this.f20221d);
            this.f20220c.addView(this.f20221d);
        } else {
            this.f20220c.removeView(view);
            this.f20220c.addView(view);
        }
        int i3 = AnonymousClass2.f20223a[this.m.ordinal()];
        if (i3 == 1) {
            int i4 = this.o;
            view.setPadding(i4, i4, i4, this.p);
        } else if (i3 == 2) {
            int i5 = this.o;
            view.setPadding(i5, this.p, i5, i5);
        } else if (i3 == 3) {
            if (this.l == b.RIGHT) {
                int i6 = this.o;
                view.setPadding(i6, i6, this.p, i6);
                return;
            }
            int i7 = this.p;
            int i8 = this.o;
            view.setPadding(i7, i8, i8, i8);
        }
    }

    private void c(Context context) {
        TextView textView = new TextView(context);
        this.f = textView;
        textView.setTextSize(0, getResources().getDimension(a.b.com_facebook_likeview_text_size));
        this.f.setMaxLines(2);
        this.f.setTextColor(this.n);
        this.f.setGravity(17);
        this.f.setLayoutParams(new LinearLayout.LayoutParams(-2, -1));
    }

    private void d() {
        LikeBoxCountView.a aVar;
        LikeBoxCountView likeBoxCountView;
        int i = AnonymousClass2.f20223a[this.m.ordinal()];
        if (i == 1) {
            likeBoxCountView = this.e;
            aVar = LikeBoxCountView.a.BOTTOM;
        } else if (i == 2) {
            likeBoxCountView = this.e;
            aVar = LikeBoxCountView.a.TOP;
        } else if (i == 3) {
            likeBoxCountView = this.e;
            aVar = this.l == b.RIGHT ? LikeBoxCountView.a.RIGHT : LikeBoxCountView.a.LEFT;
        } else {
            return;
        }
        likeBoxCountView.setCaretPosition(aVar);
    }

    private void d(Context context) {
        this.e = new LikeBoxCountView(context);
        this.e.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        setObjectIdAndType(null, e.UNKNOWN);
        super.onDetachedFromWindow();
    }

    @Deprecated
    public void setAuxiliaryViewPosition(a aVar) {
        if (aVar == null) {
            aVar = a.DEFAULT;
        }
        if (this.m != aVar) {
            this.m = aVar;
            c();
        }
    }

    @Override // android.view.View
    @Deprecated
    public void setEnabled(boolean z) {
        this.r = true;
        b();
    }

    @Deprecated
    public void setForegroundColor(int i) {
        if (this.n != i) {
            this.f.setTextColor(i);
        }
    }

    @Deprecated
    public void setFragment(Fragment fragment) {
        this.q = new s(fragment);
    }

    @Deprecated
    public void setFragment(androidx.fragment.app.Fragment fragment) {
        this.q = new s(fragment);
    }

    @Deprecated
    public void setHorizontalAlignment(b bVar) {
        if (bVar == null) {
            bVar = b.DEFAULT;
        }
        if (this.l != bVar) {
            this.l = bVar;
            c();
        }
    }

    @Deprecated
    public void setLikeViewStyle(g gVar) {
        if (gVar == null) {
            gVar = g.DEFAULT;
        }
        if (this.k != gVar) {
            this.k = gVar;
            c();
        }
    }

    @Deprecated
    public void setObjectIdAndType(String str, e eVar) {
        String a2 = ae.a(str, (String) null);
        if (eVar == null) {
            eVar = e.DEFAULT;
        }
        if (!ae.a(a2, this.f20218a) || eVar != this.f20219b) {
            a(a2, eVar);
            b();
        }
    }

    @Deprecated
    public void setOnErrorListener(f fVar) {
        this.h = fVar;
    }
}
