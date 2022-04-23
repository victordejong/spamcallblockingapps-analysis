package com.callapp.contacts.widget.tutorial;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.c;
import androidx.core.view.v;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.widget.tutorial.command.TutorialCommand;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/tutorial/BeginningTutorialView.class */
public class BeginningTutorialView extends TutorialView<BeginningTutorialPageModel> {
    public BeginningTutorialView(Context context) {
        this(context, null);
    }

    public BeginningTutorialView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public BeginningTutorialView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    private void a(ConstraintLayout constraintLayout, int[] iArr) {
        int length = iArr.length;
        int[] iArr2 = new int[length];
        for (int i = 0; i < iArr.length; i++) {
            ImageView imageView = new ImageView(getContext());
            imageView.setImageResource(iArr[i]);
            imageView.setId(v.a());
            imageView.setLayoutParams(new RelativeLayout.LayoutParams(-2, -2));
            constraintLayout.addView(imageView);
            iArr2[i] = imageView.getId();
        }
        c cVar = new c();
        cVar.a(constraintLayout);
        for (int i2 = 0; i2 < length; i2++) {
            cVar.a(iArr2[i2], 3, 2131364398, 4, getResources().getDimensionPixelOffset(2131165557));
        }
        cVar.a(iArr2);
        cVar.b(constraintLayout);
    }

    @Override // com.callapp.contacts.widget.tutorial.TutorialView
    public final /* synthetic */ void a(BeginningTutorialPageModel beginningTutorialPageModel, View.OnClickListener onClickListener, TutorialCommand.COMMAND_TYPE command_type) {
        BeginningTutorialPageModel beginningTutorialPageModel2 = beginningTutorialPageModel;
        super.a(beginningTutorialPageModel2, onClickListener, command_type);
        AnalyticsManager.get().c();
        if (Activities.getScreenHeight(1) > 1280) {
            ConstraintLayout constraintLayout = new ConstraintLayout(getContext());
            addView(constraintLayout);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
            layoutParams.addRule(14);
            layoutParams.addRule(3, this.e.getId());
            constraintLayout.setLayoutParams(layoutParams);
            a(constraintLayout, beginningTutorialPageModel2.getIcons());
        } else {
            int dimensionPixelOffset = getResources().getDimensionPixelOffset(2131165554);
            this.f16996b.setPadding(dimensionPixelOffset, 0, dimensionPixelOffset, 0);
            ((RelativeLayout.LayoutParams) this.e.getLayoutParams()).topMargin = getResources().getDimensionPixelOffset(2131165549);
        }
        this.f16997c.setText(beginningTutorialPageModel2.getCtaText());
        this.f16996b.setText(beginningTutorialPageModel2.getSubtitle());
        this.f.setOnClickListener(onClickListener);
        this.f.setVisibility(0);
        this.g.setVisibility(8);
        ((RelativeLayout.LayoutParams) this.e.getLayoutParams()).addRule(2, 0);
        this.e.getLayoutParams().height = -2;
    }
}
