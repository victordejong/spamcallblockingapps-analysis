package com.tmobile.services.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.tmobile.services.C1517R;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/databinding/FragmentScamShieldFeaturesPageBindingImpl.class */
public class FragmentScamShieldFeaturesPageBindingImpl extends FragmentScamShieldFeaturesPageBinding {
    @Nullable

    /* renamed from: I */
    private static final ViewDataBinding.IncludedLayouts f12611I = null;
    @Nullable

    /* renamed from: J */
    private static final SparseIntArray f12612J;
    @NonNull

    /* renamed from: G */
    private final LinearLayout f12613G;

    /* renamed from: H */
    private long f12614H;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f12612J = sparseIntArray;
        sparseIntArray.put(C1517R.C1520id.top_divider, 1);
        f12612J.put(C1517R.C1520id.scam_shield_features_page_title, 2);
        f12612J.put(C1517R.C1520id.scam_shield_features_page_body, 3);
        f12612J.put(C1517R.C1520id.scam_shield_features_page_button, 4);
        f12612J.put(C1517R.C1520id.scam_shield_features_find_a_store, 5);
        f12612J.put(C1517R.C1520id.scam_shield_features_page_legal, 6);
    }

    public FragmentScamShieldFeaturesPageBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.m18630A(dataBindingComponent, view, 7, f12611I, f12612J));
    }

    private FragmentScamShieldFeaturesPageBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TextView) objArr[5], (TextView) objArr[3], (Button) objArr[4], (TextView) objArr[6], (TextView) objArr[2], (View) objArr[1]);
        this.f12614H = -1L;
        LinearLayout linearLayout = (LinearLayout) objArr[0];
        this.f12613G = linearLayout;
        linearLayout.setTag(null);
        m18625G(view);
        mo7653x();
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: B */
    protected boolean mo7656B(int i, Object obj, int i2) {
        return false;
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: k */
    protected void mo7655k() {
        synchronized (this) {
            this.f12614H = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: v */
    public boolean mo7654v() {
        synchronized (this) {
            return this.f12614H != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: x */
    public void mo7653x() {
        synchronized (this) {
            this.f12614H = 1L;
        }
        m18627E();
    }
}
