package com.tmobile.services.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.tmobile.services.C1517R;
import com.tmobile.services.nameid.p007ui.NameIDTextView;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/databinding/ActivityOnboardingOptionsBindingImpl.class */
public class ActivityOnboardingOptionsBindingImpl extends ActivityOnboardingOptionsBinding {
    @Nullable

    /* renamed from: E */
    private static final ViewDataBinding.IncludedLayouts f12601E = null;
    @Nullable

    /* renamed from: F */
    private static final SparseIntArray f12602F;
    @NonNull

    /* renamed from: C */
    private final ScrollView f12603C;

    /* renamed from: D */
    private long f12604D;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f12602F = sparseIntArray;
        sparseIntArray.put(C1517R.C1520id.activity_onboarding_options, 1);
        f12602F.put(C1517R.C1520id.onboarding_options_begin_trial_button, 2);
        f12602F.put(C1517R.C1520id.onboarding_options_skip_button, 3);
        f12602F.put(C1517R.C1520id.visual_voicemail_download_requirement, 4);
    }

    public ActivityOnboardingOptionsBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.m18630A(dataBindingComponent, view, 5, f12601E, f12602F));
    }

    private ActivityOnboardingOptionsBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (LinearLayout) objArr[1], (Button) objArr[2], (TextView) objArr[3], (NameIDTextView) objArr[4]);
        this.f12604D = -1L;
        ScrollView scrollView = (ScrollView) objArr[0];
        this.f12603C = scrollView;
        scrollView.setTag(null);
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
            this.f12604D = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: v */
    public boolean mo7654v() {
        synchronized (this) {
            return this.f12604D != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: x */
    public void mo7653x() {
        synchronized (this) {
            this.f12604D = 1L;
        }
        m18627E();
    }
}
