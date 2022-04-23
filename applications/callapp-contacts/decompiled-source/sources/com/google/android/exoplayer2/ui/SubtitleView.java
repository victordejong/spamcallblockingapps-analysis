package com.google.android.exoplayer2.ui;

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
import com.google.android.exoplayer2.text.b;
import com.google.android.exoplayer2.text.j;
import com.google.android.exoplayer2.util.af;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/SubtitleView.class */
public final class SubtitleView extends FrameLayout implements j {

    /* renamed from: a  reason: collision with root package name */
    private List<b> f22011a;

    /* renamed from: b  reason: collision with root package name */
    private com.google.android.exoplayer2.text.a f22012b;

    /* renamed from: c  reason: collision with root package name */
    private int f22013c;

    /* renamed from: d  reason: collision with root package name */
    private float f22014d;
    private float e;
    private boolean f;
    private boolean g;
    private int h;
    private a i;
    private View j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/SubtitleView$a.class */
    public interface a {
        void a(List<b> list, com.google.android.exoplayer2.text.a aVar, float f, int i, float f2);
    }

    public SubtitleView(Context context) {
        this(context, null);
    }

    public SubtitleView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f22011a = Collections.emptyList();
        this.f22012b = com.google.android.exoplayer2.text.a.f21697a;
        this.f22013c = 0;
        this.f22014d = 0.0533f;
        this.e = 0.08f;
        this.f = true;
        this.g = true;
        CanvasSubtitleOutput canvasSubtitleOutput = new CanvasSubtitleOutput(context, attributeSet);
        this.i = canvasSubtitleOutput;
        this.j = canvasSubtitleOutput;
        addView(canvasSubtitleOutput);
        this.h = 1;
    }

    private b a(b bVar) {
        CharSequence charSequence = bVar.f21734b;
        if (!this.f) {
            b.a b2 = bVar.a().b(-3.4028235E38f, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW);
            b2.i = false;
            if (charSequence != null) {
                b2.f21738a = charSequence.toString();
            }
            return b2.a();
        }
        b bVar2 = bVar;
        if (!this.g) {
            if (charSequence == null) {
                return bVar;
            }
            b.a b3 = bVar.a().b(-3.4028235E38f, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW);
            if (charSequence instanceof Spanned) {
                SpannableString valueOf = SpannableString.valueOf(charSequence);
                for (AbsoluteSizeSpan absoluteSizeSpan : (AbsoluteSizeSpan[]) valueOf.getSpans(0, valueOf.length(), AbsoluteSizeSpan.class)) {
                    valueOf.removeSpan(absoluteSizeSpan);
                }
                for (RelativeSizeSpan relativeSizeSpan : (RelativeSizeSpan[]) valueOf.getSpans(0, valueOf.length(), RelativeSizeSpan.class)) {
                    valueOf.removeSpan(relativeSizeSpan);
                }
                b3.f21738a = valueOf;
            }
            bVar2 = b3.a();
        }
        return bVar2;
    }

    private void a() {
        this.i.a(b(), this.f22012b, this.f22014d, this.f22013c, this.e);
    }

    private void a(int i, float f) {
        this.f22013c = i;
        this.f22014d = f;
        a();
    }

    private <T extends View & a> void a(T t) {
        removeView(this.j);
        View view = this.j;
        if (view instanceof WebViewSubtitleOutput) {
            ((WebViewSubtitleOutput) view).f22023a.destroy();
        }
        this.j = t;
        this.i = t;
        addView(t);
    }

    private List<b> b() {
        if (this.f && this.g) {
            return this.f22011a;
        }
        ArrayList arrayList = new ArrayList(this.f22011a.size());
        for (int i = 0; i < this.f22011a.size(); i++) {
            arrayList.add(a(this.f22011a.get(i)));
        }
        return arrayList;
    }

    @Override // com.google.android.exoplayer2.text.j
    public final void a(List<b> list) {
        setCues(list);
    }

    public final void setApplyEmbeddedFontSizes(boolean z) {
        this.g = z;
        a();
    }

    public final void setApplyEmbeddedStyles(boolean z) {
        this.f = z;
        a();
    }

    public final void setBottomPaddingFraction(float f) {
        this.e = f;
        a();
    }

    public final void setCues(List<b> list) {
        if (list == null) {
            list = Collections.emptyList();
        }
        this.f22011a = list;
        a();
    }

    public final void setFixedTextSize(int i, float f) {
        Context context = getContext();
        a(2, TypedValue.applyDimension(i, f, (context == null ? Resources.getSystem() : context.getResources()).getDisplayMetrics()));
    }

    public final void setFractionalTextSize(float f) {
        setFractionalTextSize(f, false);
    }

    public final void setFractionalTextSize(float f, boolean z) {
        a(z ? 1 : 0, f);
    }

    public final void setStyle(com.google.android.exoplayer2.text.a aVar) {
        this.f22012b = aVar;
        a();
    }

    public final void setUserDefaultStyle() {
        com.google.android.exoplayer2.text.a aVar;
        if (af.f22275a < 19 || isInEditMode()) {
            aVar = com.google.android.exoplayer2.text.a.f21697a;
        } else {
            CaptioningManager captioningManager = (CaptioningManager) getContext().getSystemService("captioning");
            aVar = (captioningManager == null || !captioningManager.isEnabled()) ? com.google.android.exoplayer2.text.a.f21697a : com.google.android.exoplayer2.text.a.a(captioningManager.getUserStyle());
        }
        setStyle(aVar);
    }

    public final void setUserDefaultTextSize() {
        float f = 1.0f;
        if (af.f22275a >= 19) {
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
        if (this.h != i) {
            if (i == 1) {
                a((SubtitleView) new CanvasSubtitleOutput(getContext()));
            } else if (i == 2) {
                a((SubtitleView) new WebViewSubtitleOutput(getContext()));
            } else {
                throw new IllegalArgumentException();
            }
            this.h = i;
        }
    }
}
