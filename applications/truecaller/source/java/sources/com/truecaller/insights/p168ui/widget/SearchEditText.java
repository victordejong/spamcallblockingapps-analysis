package com.truecaller.insights.p168ui.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatAutoCompleteTextView;
import com.razorpay.AnalyticsConstants;
import com.truecaller.insights.p168ui.C4078R;
import kotlin.Metadata;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p372b0.p417k.C8502h;
import p193e.p194a.p437c.p438a.p521s.C9591b;
import p193e.p194a.p437c.p438a.p521s.View$OnTouchListenerC9590a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\u0018��2\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0003\u0010\u0004R\u0016\u0010\b\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0016\u0010\f\u001a\u00020\t8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0016\u0010\u000e\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010\u0007R\u0016\u0010\u0010\u001a\u00020\u00058\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0007¨\u0006\u0011"}, d2 = {"Lcom/truecaller/insights/ui/widget/SearchEditText;", "Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;", "Ls1/s;", "a", "()V", "", "f", "Z", "touchToLeft", "Landroid/graphics/drawable/Drawable;", "d", "Landroid/graphics/drawable/Drawable;", "clearIcon", "g", "touchToRight", "e", "isRTL", "insights-ui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.insights.ui.widget.SearchEditText */
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/ui/widget/SearchEditText.class */
public final class SearchEditText extends AppCompatAutoCompleteTextView {

    /* renamed from: h */
    public static final /* synthetic */ int f12946h = 0;

    /* renamed from: d */
    public final Drawable f12947d;

    /* renamed from: e */
    public final boolean f12948e;

    /* renamed from: f */
    public boolean f12949f;

    /* renamed from: g */
    public boolean f12950g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SearchEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
        Drawable m13535l0 = C19291g.m13535l0(context, C4078R.C4079drawable.ic_close_black_24dp, C4078R.attr.tcx_textTertiary);
        l.d(m13535l0, "ThemeUtils.getTintedDraw…tr.tcx_textTertiary\n    )");
        this.f12947d = m13535l0;
        this.f12948e = !isInEditMode() && C8502h.m28437a();
        int dimensionPixelSize = getResources().getDimensionPixelSize(C4078R.dimen.dp24);
        m13535l0.setBounds(0, 0, dimensionPixelSize, dimensionPixelSize);
        setOnTouchListener(new View$OnTouchListenerC9590a(this));
        addTextChangedListener(new C9591b(this));
    }

    /* renamed from: a */
    public final void m35145a() {
        if (this.f12948e) {
            setCompoundDrawables(null, getCompoundDrawables()[1], getCompoundDrawables()[2], getCompoundDrawables()[3]);
        } else {
            setCompoundDrawables(getCompoundDrawables()[0], getCompoundDrawables()[1], null, getCompoundDrawables()[3]);
        }
    }
}
