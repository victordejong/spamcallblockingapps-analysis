package com.truecaller.insights.p168ui.filters.view;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatAutoCompleteTextView;
import com.razorpay.AnalyticsConstants;
import com.truecaller.insights.p168ui.C4078R;
import kotlin.Metadata;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p372b0.p417k.C8502h;
import p193e.p194a.p437c.p438a.p480j.p486e.C9189o;
import p193e.p194a.p437c.p438a.p480j.p486e.View$OnTouchListenerC9188n;
import s1.s;
import s1.z.b.a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\b\u0007\u0018��2\u00020\u0001J\u001b\u0010\u0005\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0016\u0010\f\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0016\u0010\u000e\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010\u000bR\u0016\u0010\u0010\u001a\u00020\t8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u000bR\u0016\u0010\u0014\u001a\u00020\u00118\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u001e\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0016\u0010\u0019\u001a\u00020\u00118\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0013¨\u0006\u001a"}, d2 = {"Lcom/truecaller/insights/ui/filters/view/FilterSearchEditText;", "Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;", "Lkotlin/Function0;", "Ls1/s;", "listener", "setClearIconClickListener", "(Ls1/z/b/a;)V", "a", "()V", "", "g", "Z", "touchToLeft", "h", "touchToRight", "f", "isRTL", "Landroid/graphics/drawable/Drawable;", "e", "Landroid/graphics/drawable/Drawable;", "clearIcon", "i", "Ls1/z/b/a;", "clearIconClickListener", "d", "searchIcon", "insights-ui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.insights.ui.filters.view.FilterSearchEditText */
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/ui/filters/view/FilterSearchEditText.class */
public final class FilterSearchEditText extends AppCompatAutoCompleteTextView {

    /* renamed from: j */
    public static final /* synthetic */ int f12728j = 0;

    /* renamed from: d */
    public final Drawable f12729d;

    /* renamed from: e */
    public final Drawable f12730e;

    /* renamed from: f */
    public final boolean f12731f;

    /* renamed from: g */
    public boolean f12732g;

    /* renamed from: h */
    public boolean f12733h;

    /* renamed from: i */
    public a<s> f12734i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FilterSearchEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
        int i = C4078R.C4079drawable.ic_search;
        int i2 = C4078R.attr.tcx_textTertiary;
        Drawable m13535l0 = C19291g.m13535l0(context, i, i2);
        l.d(m13535l0, "ThemeUtils.getTintedDraw…tr.tcx_textTertiary\n    )");
        this.f12729d = m13535l0;
        Drawable m13535l02 = C19291g.m13535l0(context, C4078R.C4079drawable.ic_close_black_24dp, i2);
        l.d(m13535l02, "ThemeUtils.getTintedDraw…tr.tcx_textTertiary\n    )");
        this.f12730e = m13535l02;
        this.f12731f = !isInEditMode() && C8502h.m28437a();
        int dimensionPixelSize = getResources().getDimensionPixelSize(C4078R.dimen.dp24);
        m13535l02.setBounds(0, 0, dimensionPixelSize, dimensionPixelSize);
        m13535l0.setBounds(0, 0, dimensionPixelSize, dimensionPixelSize);
        setOnTouchListener(new View$OnTouchListenerC9188n(this));
        m35203a();
        addTextChangedListener(new C9189o(this));
    }

    /* renamed from: a */
    public final void m35203a() {
        if (this.f12731f) {
            setCompoundDrawables(null, getCompoundDrawables()[1], this.f12729d, getCompoundDrawables()[3]);
        } else {
            setCompoundDrawables(this.f12729d, getCompoundDrawables()[1], null, getCompoundDrawables()[3]);
        }
    }

    public final void setClearIconClickListener(a<s> aVar) {
        l.e(aVar, "listener");
        this.f12734i = aVar;
    }
}
