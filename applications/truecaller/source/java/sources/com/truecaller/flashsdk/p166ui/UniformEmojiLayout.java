package com.truecaller.flashsdk.p166ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.truecaller.flashsdk.C3909R;
import java.util.Objects;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.p1365y.p1387e.C21733i;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018��2\u00020\u00012\u00020\u0002:\u0001\u001dJ\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0003H\u0014¢\u0006\u0004\b\u0007\u0010\bJ7\u0010\u000f\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u0003H\u0014¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u001b\u0010\u0018\u001a\u00020\u00062\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00160\u0015¢\u0006\u0004\b\u0018\u0010\u0019R\u0016\u0010\u001c\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0016\u0010\u001e\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001bR\u001e\u0010!\u001a\n\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010 R$\u0010)\u001a\u0004\u0018\u00010\"8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R\u0016\u0010-\u001a\u00020*8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b+\u0010,R\u0016\u0010/\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b.\u0010\u001b¨\u00060"}, d2 = {"Lcom/truecaller/flashsdk/ui/UniformEmojiLayout;", "Landroid/view/ViewGroup;", "Landroid/view/View$OnClickListener;", "", "widthMeasureSpec", "heightMeasureSpec", "Ls1/s;", "onMeasure", "(II)V", "", AnalyticsConstants.CHANGED, "left", "top", "right", "bottom", "onLayout", "(ZIIII)V", "Landroid/view/View;", "v", "onClick", "(Landroid/view/View;)V", "", "Le/a/y/e/i;", "emojiList", "setEmojis", "([Lcom/truecaller/flashsdk/emojicons/Emoticon;)V", AbstractC2405c.f7629a, "I", "parentWidthMeasureSpec", "a", "leftMarginForEachChild", "e", "[Lcom/truecaller/flashsdk/emojicons/Emoticon;", "emoticonsList", "Lcom/truecaller/flashsdk/ui/UniformEmojiLayout$a;", "f", "Lcom/truecaller/flashsdk/ui/UniformEmojiLayout$a;", "getOnItemClickListener", "()Lcom/truecaller/flashsdk/ui/UniformEmojiLayout$a;", "setOnItemClickListener", "(Lcom/truecaller/flashsdk/ui/UniformEmojiLayout$a;)V", "onItemClickListener", "Landroid/view/ViewGroup$LayoutParams;", C22021b.f61237c, "Landroid/view/ViewGroup$LayoutParams;", "childLayoutParams", "d", "parentHeightMeasureSpec", "flash_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.flashsdk.ui.UniformEmojiLayout */
/* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/ui/UniformEmojiLayout.class */
public final class UniformEmojiLayout extends ViewGroup implements View.OnClickListener {

    /* renamed from: a */
    public int f12045a;

    /* renamed from: b */
    public final ViewGroup.LayoutParams f12046b = new ViewGroup.LayoutParams(-2, -1);

    /* renamed from: c */
    public int f12047c;

    /* renamed from: d */
    public int f12048d;

    /* renamed from: e */
    public C21733i[] f12049e;

    /* renamed from: f */
    public AbstractC3933a f12050f;

    /* renamed from: com.truecaller.flashsdk.ui.UniformEmojiLayout$a */
    /* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/ui/UniformEmojiLayout$a.class */
    public interface AbstractC3933a {
        /* renamed from: n */
        void mo9577n(int i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UniformEmojiLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
    }

    public final AbstractC3933a getOnItemClickListener() {
        return this.f12050f;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        l.e(view, "v");
        AbstractC3933a abstractC3933a = this.f12050f;
        if (abstractC3933a != null) {
            abstractC3933a.mo9577n(view.getId());
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        removeAllViewsInLayout();
        C21733i[] c21733iArr = this.f12049e;
        int length = c21733iArr != null ? c21733iArr.length : 0;
        int measuredWidth = (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
        int i6 = 0;
        while (true) {
            i5 = measuredWidth;
            if (i6 >= length) {
                break;
            }
            View inflate = View.inflate(getContext(), C3909R.layout.recent_emoji_item, null);
            Objects.requireNonNull(inflate, "null cannot be cast to non-null type android.widget.TextView");
            TextView textView = (TextView) inflate;
            addViewInLayout(textView, i6, this.f12046b, true);
            textView.setId(i6);
            C21733i[] c21733iArr2 = this.f12049e;
            String str = null;
            if (c21733iArr2 != null) {
                C21733i c21733i = c21733iArr2[i6];
                str = null;
                if (c21733i != null) {
                    str = c21733i.f60541a;
                }
            }
            textView.setText(str);
            textView.setOnClickListener(this);
            measureChild(textView, this.f12047c, this.f12048d);
            measuredWidth -= textView.getMeasuredWidth();
            if (measuredWidth < 0) {
                removeViewInLayout(textView);
                i5 = measuredWidth + textView.getMeasuredWidth();
                break;
            }
            i6++;
        }
        this.f12045a = i5 / (getChildCount() + 1);
        int paddingLeft = getPaddingLeft() + this.f12045a;
        int childCount = getChildCount();
        for (int i7 = 0; i7 < childCount; i7++) {
            View childAt = getChildAt(i7);
            l.d(childAt, "textView");
            int measuredWidth2 = childAt.getMeasuredWidth() + paddingLeft;
            childAt.layout(paddingLeft, i2, measuredWidth2, i4);
            paddingLeft = this.f12045a + measuredWidth2;
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.f12047c = i;
        this.f12048d = i2;
    }

    public final void setEmojis(C21733i[] c21733iArr) {
        l.e(c21733iArr, "emojiList");
        this.f12049e = c21733iArr;
        requestLayout();
    }

    public final void setOnItemClickListener(AbstractC3933a abstractC3933a) {
        this.f12050f = abstractC3933a;
    }
}
