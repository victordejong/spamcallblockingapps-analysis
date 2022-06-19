package com.truecaller.p183ui.components;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import kotlin.Metadata;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\u0018��2\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/truecaller/ui/components/BlockOption;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.ui.components.BlockOption */
/* loaded from: classes15-dex2jar.jar:com/truecaller/ui/components/BlockOption.class */
public final class BlockOption extends ConstraintLayout {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BlockOption(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
        LayoutInflater.from(context).inflate(C2752R.layout.item_blocking_row, (ViewGroup) this, true);
        ImageView imageView = (ImageView) findViewById(C2752R.C2754id.blockOptionIcon);
        TextView textView = (TextView) findViewById(C2752R.C2754id.blockOptionLabel);
        View findViewById = findViewById(C2752R.C2754id.blockOptionDivider);
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C2752R.styleable.BlockOption);
            l.d(obtainStyledAttributes, "context.obtainStyledAttr… R.styleable.BlockOption)");
            Drawable drawable = obtainStyledAttributes.getDrawable(0);
            String string = obtainStyledAttributes.getString(1);
            boolean z = obtainStyledAttributes.getBoolean(2, true);
            obtainStyledAttributes.recycle();
            imageView.setImageDrawable(drawable);
            l.d(textView, "label");
            textView.setText(string);
            if (z) {
                return;
            }
            l.d(findViewById, "divider");
            findViewById.setVisibility(4);
        }
    }
}
