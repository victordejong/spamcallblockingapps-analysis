package com.google.android.exoplayer2.p346ui;

import android.content.Context;
import android.content.res.Resources;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.RelativeSizeSpan;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.accessibility.CaptioningManager;
import android.widget.FrameLayout;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.google.android.exoplayer2.text.AbstractC11420j;
import com.google.android.exoplayer2.text.C11343a;
import com.google.android.exoplayer2.text.C11356b;
import com.google.android.exoplayer2.util.C11599af;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* renamed from: com.google.android.exoplayer2.ui.SubtitleView */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/SubtitleView.class */
public final class SubtitleView extends FrameLayout implements AbstractC11420j {

    /* renamed from: a */
    private List<C11356b> f38127a;

    /* renamed from: b */
    private C11343a f38128b;

    /* renamed from: c */
    private int f38129c;

    /* renamed from: d */
    private float f38130d;

    /* renamed from: e */
    private float f38131e;

    /* renamed from: f */
    private boolean f38132f;

    /* renamed from: g */
    private boolean f38133g;

    /* renamed from: h */
    private int f38134h;

    /* renamed from: i */
    private AbstractC11470a f38135i;

    /* renamed from: j */
    private View f38136j;

    /* renamed from: com.google.android.exoplayer2.ui.SubtitleView$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/SubtitleView$a.class */
    public interface AbstractC11470a {
        /* renamed from: a */
        void mo20276a(List<C11356b> list, C11343a c11343a, float f, int i, float f2);
    }

    public SubtitleView(Context context) {
        this(context, null);
    }

    public SubtitleView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f38127a = Collections.emptyList();
        this.f38128b = C11343a.f37307a;
        this.f38129c = 0;
        this.f38130d = 0.0533f;
        this.f38131e = 0.08f;
        this.f38132f = true;
        this.f38133g = true;
        CanvasSubtitleOutput canvasSubtitleOutput = new CanvasSubtitleOutput(context, attributeSet);
        this.f38135i = canvasSubtitleOutput;
        this.f38136j = canvasSubtitleOutput;
        addView(canvasSubtitleOutput);
        this.f38134h = 1;
    }

    /* renamed from: a */
    private C11356b m20290a(C11356b c11356b) {
        CharSequence charSequence = c11356b.f37412b;
        if (!this.f38132f) {
            C11356b.C11358a m20742b = c11356b.m20745a().m20742b(-3.4028235E38f, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW);
            m20742b.f37436i = false;
            if (charSequence != null) {
                m20742b.f37428a = charSequence.toString();
            }
            return m20742b.m20744a();
        }
        C11356b c11356b2 = c11356b;
        if (!this.f38133g) {
            if (charSequence == null) {
                return c11356b;
            }
            C11356b.C11358a m20742b2 = c11356b.m20745a().m20742b(-3.4028235E38f, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW);
            if (charSequence instanceof Spanned) {
                SpannableString valueOf = SpannableString.valueOf(charSequence);
                for (AbsoluteSizeSpan absoluteSizeSpan : (AbsoluteSizeSpan[]) valueOf.getSpans(0, valueOf.length(), AbsoluteSizeSpan.class)) {
                    valueOf.removeSpan(absoluteSizeSpan);
                }
                for (RelativeSizeSpan relativeSizeSpan : (RelativeSizeSpan[]) valueOf.getSpans(0, valueOf.length(), RelativeSizeSpan.class)) {
                    valueOf.removeSpan(relativeSizeSpan);
                }
                m20742b2.f37428a = valueOf;
            }
            c11356b2 = m20742b2.m20744a();
        }
        return c11356b2;
    }

    /* renamed from: a */
    private void m20293a() {
        this.f38135i.mo20276a(m20288b(), this.f38128b, this.f38130d, this.f38129c, this.f38131e);
    }

    /* renamed from: a */
    private void m20292a(int i, float f) {
        this.f38129c = i;
        this.f38130d = f;
        m20293a();
    }

    /* renamed from: a */
    private <T extends View & AbstractC11470a> void m20291a(T t) {
        removeView(this.f38136j);
        View view = this.f38136j;
        if (view instanceof WebViewSubtitleOutput) {
            ((WebViewSubtitleOutput) view).f38157a.destroy();
        }
        this.f38136j = t;
        this.f38135i = t;
        addView(t);
    }

    /* renamed from: b */
    private List<C11356b> m20288b() {
        if (!this.f38132f || !this.f38133g) {
            ArrayList arrayList = new ArrayList(this.f38127a.size());
            for (int i = 0; i < this.f38127a.size(); i++) {
                arrayList.add(m20290a(this.f38127a.get(i)));
            }
            return arrayList;
        }
        return this.f38127a;
    }

    @Override // com.google.android.exoplayer2.text.AbstractC11420j
    /* renamed from: a */
    public final void mo20289a(List<C11356b> list) {
        setCues(list);
    }

    public final void setApplyEmbeddedFontSizes(boolean z) {
        this.f38133g = z;
        m20293a();
    }

    public final void setApplyEmbeddedStyles(boolean z) {
        this.f38132f = z;
        m20293a();
    }

    public final void setBottomPaddingFraction(float f) {
        this.f38131e = f;
        m20293a();
    }

    public final void setCues(List<C11356b> list) {
        if (list == null) {
            list = Collections.emptyList();
        }
        this.f38127a = list;
        m20293a();
    }

    public final void setFixedTextSize(int i, float f) {
        Context context = getContext();
        m20292a(2, TypedValue.applyDimension(i, f, (context == null ? Resources.getSystem() : context.getResources()).getDisplayMetrics()));
    }

    public final void setFractionalTextSize(float f) {
        setFractionalTextSize(f, false);
    }

    public final void setFractionalTextSize(float f, boolean z) {
        m20292a(z ? 1 : 0, f);
    }

    public final void setStyle(C11343a c11343a) {
        this.f38128b = c11343a;
        m20293a();
    }

    public final void setUserDefaultStyle() {
        C11343a c11343a;
        if (C11599af.f38648a < 19 || isInEditMode()) {
            c11343a = C11343a.f37307a;
        } else {
            CaptioningManager captioningManager = (CaptioningManager) getContext().getSystemService("captioning");
            c11343a = (captioningManager == null || !captioningManager.isEnabled()) ? C11343a.f37307a : C11343a.m20805a(captioningManager.getUserStyle());
        }
        setStyle(c11343a);
    }

    public final void setUserDefaultTextSize() {
        float f = 1.0f;
        if (C11599af.f38648a >= 19) {
            if (isInEditMode()) {
                f = 1.0f;
            } else {
                CaptioningManager captioningManager = (CaptioningManager) getContext().getSystemService("captioning");
                f = 1.0f;
                if (captioningManager != null) {
                    f = 1.0f;
                    if (captioningManager.isEnabled()) {
                        f = captioningManager.getFontScale();
                    }
                }
            }
        }
        setFractionalTextSize(0.0533f * f);
    }

    public final void setViewType(int i) {
        if (this.f38134h == i) {
            return;
        }
        if (i == 1) {
            m20291a((SubtitleView) new CanvasSubtitleOutput(getContext()));
        } else if (i != 2) {
            throw new IllegalArgumentException();
        } else {
            m20291a((SubtitleView) new WebViewSubtitleOutput(getContext()));
        }
        this.f38134h = i;
    }
}
