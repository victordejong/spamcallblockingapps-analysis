package com.truecaller.messaging.groupinfo;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import kotlin.Metadata;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\r\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018��2\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0005\u0010\u0006R\u0016\u0010\n\u001a\u00020\u00078\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0016\u0010\f\u001a\u00020\u00078\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\tR\u0016\u0010\u0010\u001a\u00020\r8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000f¨\u0006\u0011"}, d2 = {"Lcom/truecaller/messaging/groupinfo/GroupInfoItemView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "", "text", "Ls1/s;", "setSubtitle", "(Ljava/lang/CharSequence;)V", "Landroid/widget/TextView;", "v", "Landroid/widget/TextView;", "subtitleView", "u", "titleView", "Landroid/widget/ImageView;", "t", "Landroid/widget/ImageView;", "iconView", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/groupinfo/GroupInfoItemView.class */
public final class GroupInfoItemView extends ConstraintLayout {

    /* renamed from: t */
    public final ImageView f13491t;

    /* renamed from: u */
    public final TextView f13492u;

    /* renamed from: v */
    public final TextView f13493v;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GroupInfoItemView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
        ViewGroup.inflate(context, C2752R.layout.item_group_info, this);
        setMinHeight(getResources().getDimensionPixelSize(C2752R.dimen.list_item_common_height));
        setBackground(C19291g.m13600P(context, 2130969811));
        View findViewById = findViewById(C2752R.C2754id.iconView);
        l.d(findViewById, "findViewById(R.id.iconView)");
        ImageView imageView = (ImageView) findViewById;
        this.f13491t = imageView;
        View findViewById2 = findViewById(C2752R.C2754id.titleView);
        l.d(findViewById2, "findViewById(R.id.titleView)");
        TextView textView = (TextView) findViewById2;
        this.f13492u = textView;
        View findViewById3 = findViewById(C2752R.C2754id.subtitleView);
        l.d(findViewById3, "findViewById(R.id.subtitleView)");
        TextView textView2 = (TextView) findViewById3;
        this.f13493v = textView2;
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, C2752R.styleable.GroupInfoItemView, 0, 0);
        imageView.setImageDrawable(obtainStyledAttributes.getDrawable(0));
        textView.setText(obtainStyledAttributes.getString(2));
        textView2.setText(obtainStyledAttributes.getString(1));
    }

    public final void setSubtitle(CharSequence charSequence) {
        this.f13493v.setText(charSequence);
    }
}
