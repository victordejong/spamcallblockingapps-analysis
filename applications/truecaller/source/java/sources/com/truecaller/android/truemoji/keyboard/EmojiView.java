package com.truecaller.android.truemoji.keyboard;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.razorpay.AnalyticsConstants;
import com.truecaller.android.truemoji.C2886R;
import e.m.d.y.n;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.p1221t.p1222a.p1224u.C20309d;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b��\u0018��2\u00020\u0001J\u0015\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006R\u0016\u0010\n\u001a\u00020\u00078\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0016\u0010\u000e\u001a\u00020\u000b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u000f"}, d2 = {"Lcom/truecaller/android/truemoji/keyboard/EmojiView;", "Landroid/widget/FrameLayout;", "Le/a/t/a/u/d;", "emoji", "Ls1/s;", "setEmoji", "(Le/a/t/a/u/d;)V", "Landroid/view/View;", C22021b.f61237c, "Landroid/view/View;", "variantsIndicator", "Landroid/widget/ImageView;", "a", "Landroid/widget/ImageView;", "imageView", "truemoji_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:com/truecaller/android/truemoji/keyboard/EmojiView.class */
public final class EmojiView extends FrameLayout {

    /* renamed from: a */
    public final ImageView f10067a;

    /* renamed from: b */
    public final View f10068b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EmojiView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
        FrameLayout.inflate(context, C2886R.layout.view_emoji, this);
        View findViewById = findViewById(C2886R.C2888id.imageView);
        l.d(findViewById, "findViewById(R.id.imageView)");
        this.f10067a = (ImageView) findViewById;
        View findViewById2 = findViewById(C2886R.C2888id.variantsIndicator);
        l.d(findViewById2, "findViewById(R.id.variantsIndicator)");
        this.f10068b = findViewById2;
    }

    public final void setEmoji(C20309d c20309d) {
        l.e(c20309d, "emoji");
        ImageView imageView = this.f10067a;
        Context context = getContext();
        l.d(context, AnalyticsConstants.CONTEXT);
        imageView.setImageResource(n.D(c20309d, context));
        View view = this.f10068b;
        int i = 0;
        if (c20309d.f57120b.length == 0) {
            i = 8;
        }
        view.setVisibility(i);
    }
}
