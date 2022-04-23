package gogolook.callgogolook2.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.IdRes;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$styleable;
import kotlin.Metadata;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.C14217x3;
import p626l.C14986p;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018�� \u00112\u00020\u0001:\u0001\u0011B%\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bR\u0011\u0010\t\u001a\u00020\n¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\r\u001a\u00020\u000e¢\u0006\b\n��\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0012"}, m815d2 = {"Lgogolook/callgogolook2/view/MetaphorBadgeLayout;", "Landroid/widget/FrameLayout;", "context", "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "defStyleAttr", "", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "badgeView", "Landroid/widget/ImageView;", "getBadgeView", "()Landroid/widget/ImageView;", "metaphorView", "Lgogolook/callgogolook2/view/RoundImageView;", "getMetaphorView", "()Lgogolook/callgogolook2/view/RoundImageView;", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/MetaphorBadgeLayout.class */
public final class MetaphorBadgeLayout extends FrameLayout {

    /* renamed from: c */
    public static final C5277a f13064c = new C5277a(null);

    /* renamed from: a */
    public final RoundImageView f13065a;

    /* renamed from: b */
    public final ImageView f13066b;

    /* renamed from: gogolook.callgogolook2.view.MetaphorBadgeLayout$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/MetaphorBadgeLayout$a.class */
    public static final class C5277a {
        public C5277a() {
        }

        public /* synthetic */ C5277a(C15145g gVar) {
            this();
        }

        /* renamed from: a */
        public final ImageView m25909a(View view, @IdRes int i, @IdRes int i2) {
            ImageView imageView;
            ImageView a;
            C15149k.m377b(view, "parent");
            MetaphorBadgeLayout metaphorBadgeLayout = (MetaphorBadgeLayout) view.findViewById(i);
            if (metaphorBadgeLayout == null || (a = metaphorBadgeLayout.m25913a()) == null) {
                View findViewById = view.findViewById(i2);
                C15149k.m383a((Object) findViewById, "parent.findViewById(deprecatedBadgeRes)");
                imageView = (ImageView) findViewById;
            } else {
                imageView = a;
            }
            return imageView;
        }

        /* renamed from: b */
        public final RoundImageView m25908b(View view, @IdRes int i, @IdRes int i2) {
            RoundImageView roundImageView;
            RoundImageView b;
            C15149k.m377b(view, "parent");
            MetaphorBadgeLayout metaphorBadgeLayout = (MetaphorBadgeLayout) view.findViewById(i);
            if (metaphorBadgeLayout == null || (b = metaphorBadgeLayout.m25911b()) == null) {
                View findViewById = view.findViewById(i2);
                C15149k.m383a((Object) findViewById, "parent.findViewById(deprecatedMetaphorRes)");
                roundImageView = (RoundImageView) findViewById;
            } else {
                roundImageView = b;
            }
            return roundImageView;
        }
    }

    public MetaphorBadgeLayout(Context context) {
        this(context, null, 0, 6, null);
    }

    public MetaphorBadgeLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MetaphorBadgeLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        TypedArray typedArray;
        int dimensionPixelSize;
        RoundImageView roundImageView;
        int dimensionPixelSize2;
        ViewGroup.LayoutParams layoutParams;
        C15149k.m377b(context, "context");
        View inflate = View.inflate(context, R$layout.common_metaphor_badge_layout, this);
        View findViewById = inflate.findViewById(R$id.riv_metaphor);
        C15149k.m383a((Object) findViewById, "root.findViewById(R.id.riv_metaphor)");
        this.f13065a = (RoundImageView) findViewById;
        View findViewById2 = inflate.findViewById(R$id.iv_badge);
        C15149k.m383a((Object) findViewById2, "root.findViewById(R.id.iv_badge)");
        this.f13066b = (ImageView) findViewById2;
        if (attributeSet != null) {
            TypedArray typedArray2 = null;
            try {
                try {
                    typedArray = context.obtainStyledAttributes(attributeSet, R$styleable.MetaphorBadgeLayout, 0, 0);
                    dimensionPixelSize = typedArray.getDimensionPixelSize(1, C14217x3.m2201a(1.5f));
                    roundImageView = this.f13065a;
                    dimensionPixelSize2 = typedArray.getDimensionPixelSize(2, 0) + (dimensionPixelSize * 2);
                    layoutParams = roundImageView.getLayoutParams();
                } catch (Exception e) {
                    C14080m2.m2612a((Throwable) e);
                    if (0 != 0) {
                        typedArray = null;
                    } else {
                        return;
                    }
                }
                if (layoutParams != null) {
                    FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) layoutParams;
                    layoutParams2.height = dimensionPixelSize2;
                    layoutParams2.width = dimensionPixelSize2;
                    roundImageView.setPadding(dimensionPixelSize, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize);
                    ImageView imageView = this.f13066b;
                    float dimension = typedArray.getDimension(0, 0.0f);
                    ViewGroup.LayoutParams layoutParams3 = imageView.getLayoutParams();
                    if (layoutParams3 != null) {
                        FrameLayout.LayoutParams layoutParams4 = (FrameLayout.LayoutParams) layoutParams3;
                        int i2 = (int) dimension;
                        layoutParams4.height = i2;
                        layoutParams4.width = i2;
                        if (typedArray == null) {
                            return;
                        }
                        typedArray.recycle();
                        return;
                    }
                    throw new C14986p("null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
                }
                throw new C14986p("null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
            } catch (Throwable th) {
                if (0 != 0) {
                    typedArray2.recycle();
                }
                throw th;
            }
        }
    }

    public /* synthetic */ MetaphorBadgeLayout(Context context, AttributeSet attributeSet, int i, int i2, C15145g gVar) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* renamed from: a */
    public static final ImageView m25912a(View view, @IdRes int i, @IdRes int i2) {
        return f13064c.m25909a(view, i, i2);
    }

    /* renamed from: b */
    public static final RoundImageView m25910b(View view, @IdRes int i, @IdRes int i2) {
        return f13064c.m25908b(view, i, i2);
    }

    /* renamed from: a */
    public final ImageView m25913a() {
        return this.f13066b;
    }

    /* renamed from: b */
    public final RoundImageView m25911b() {
        return this.f13065a;
    }
}
