package com.tmobile.services.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.tmobile.services.C1517R;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/databinding/FragmentScamShieldFeaturesPageBinding.class */
public abstract class FragmentScamShieldFeaturesPageBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: A */
    public final TextView f12605A;
    @NonNull

    /* renamed from: B */
    public final TextView f12606B;
    @NonNull

    /* renamed from: C */
    public final Button f12607C;
    @NonNull

    /* renamed from: D */
    public final TextView f12608D;
    @NonNull

    /* renamed from: E */
    public final TextView f12609E;
    @NonNull

    /* renamed from: F */
    public final View f12610F;

    /* JADX INFO: Access modifiers changed from: protected */
    public FragmentScamShieldFeaturesPageBinding(Object obj, View view, int i, TextView textView, TextView textView2, Button button, TextView textView3, TextView textView4, View view2) {
        super(obj, view, i);
        this.f12605A = textView;
        this.f12606B = textView2;
        this.f12607C = button;
        this.f12608D = textView3;
        this.f12609E = textView4;
        this.f12610F = view2;
    }

    @NonNull
    /* renamed from: H */
    public static FragmentScamShieldFeaturesPageBinding m7658H(@NonNull LayoutInflater layoutInflater) {
        return m7657I(layoutInflater, DataBindingUtil.m18677d());
    }

    @NonNull
    @Deprecated
    /* renamed from: I */
    public static FragmentScamShieldFeaturesPageBinding m7657I(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (FragmentScamShieldFeaturesPageBinding) ViewDataBinding.m18608w(layoutInflater, C1517R.layout.fragment_scam_shield_features_page, null, false, obj);
    }
}
