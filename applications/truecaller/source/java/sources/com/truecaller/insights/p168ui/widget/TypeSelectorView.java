package com.truecaller.insights.p168ui.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.razorpay.AnalyticsConstants;
import com.truecaller.insights.p168ui.C4078R;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import s1.g;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018��2\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\b\b\u0001\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\u0007\u001a\u00020\u00042\b\b\u0001\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\u0006J\r\u0010\t\u001a\u00020\b¢\u0006\u0004\b\t\u0010\nR%\u0010\u0010\u001a\n \f*\u0004\u0018\u00010\u000b0\u000b8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\t\u0010\u000fR%\u0010\u0015\u001a\n \f*\u0004\u0018\u00010\u00110\u00118B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0012\u0010\u000e\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u0016"}, d2 = {"Lcom/truecaller/insights/ui/widget/TypeSelectorView;", "Landroid/widget/FrameLayout;", "", "value", "Ls1/s;", "setMessageType", "(I)V", "setMessageTypeRes", "", "getType", "()Ljava/lang/String;", "Landroid/widget/TextView;", "kotlin.jvm.PlatformType", C22021b.f61237c, "Ls1/g;", "()Landroid/widget/TextView;", "type", "Landroid/widget/ImageView;", "a", "getTypeRes", "()Landroid/widget/ImageView;", "typeRes", "insights-ui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.insights.ui.widget.TypeSelectorView */
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/ui/widget/TypeSelectorView.class */
public final class TypeSelectorView extends FrameLayout {

    /* renamed from: a */
    public final g f12953a = C19286f.m13660s(this, C4078R.C4080id.typeRes);

    /* renamed from: b */
    public final g f12954b = C19286f.m13660s(this, C4078R.C4080id.type);

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TypeSelectorView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
        FrameLayout.inflate(context, C4078R.layout.layout_type_selector, this);
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, C4078R.styleable.TypeSelectorView, 0, 0);
        try {
            getTypeRes().setImageResource(obtainStyledAttributes.getResourceId(C4078R.styleable.TypeSelectorView_android_src, 0));
            getType().setText(obtainStyledAttributes.getResourceId(C4078R.styleable.TypeSelectorView_android_text, 0));
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    private final TextView getType() {
        return (TextView) this.f12954b.getValue();
    }

    private final ImageView getTypeRes() {
        return (ImageView) this.f12953a.getValue();
    }

    /* renamed from: getType */
    public final String m47543getType() {
        TextView type = getType();
        l.d(type, "type");
        return type.getText().toString();
    }

    public final void setMessageType(int i) {
        getType().setText(i);
    }

    public final void setMessageTypeRes(int i) {
        getTypeRes().setImageResource(i);
    }
}
