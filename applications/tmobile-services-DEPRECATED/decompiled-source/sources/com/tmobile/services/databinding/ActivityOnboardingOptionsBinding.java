package com.tmobile.services.databinding;

import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.databinding.ViewDataBinding;
import com.tmobile.services.nameid.p007ui.NameIDTextView;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/databinding/ActivityOnboardingOptionsBinding.class */
public abstract class ActivityOnboardingOptionsBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: A */
    public final Button f12599A;
    @NonNull

    /* renamed from: B */
    public final TextView f12600B;

    /* JADX INFO: Access modifiers changed from: protected */
    public ActivityOnboardingOptionsBinding(Object obj, View view, int i, LinearLayout linearLayout, Button button, TextView textView, NameIDTextView nameIDTextView) {
        super(obj, view, i);
        this.f12599A = button;
        this.f12600B = textView;
    }
}
