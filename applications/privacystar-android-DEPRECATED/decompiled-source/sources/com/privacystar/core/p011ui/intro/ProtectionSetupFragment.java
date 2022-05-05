package com.privacystar.core.p011ui.intro;

import android.content.Context;
import android.os.Bundle;
import android.support.p004v7.widget.CardView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.google.android.gms.analytics.ecommerce.Promotion;
import com.privacystar.core.C1566R;
import com.privacystar.core.data.blocking.protection.ProtectionLevel;
import com.privacystar.core.p011ui.intro.intro_core.IntroActivity;
import com.privacystar.core.p011ui.intro.intro_core.IntroFragment;
import com.privacystar.core.service.PreferenceUtil;
import com.privacystar.core.util.BuildUtil;
import com.rey.material.widget.RadioButton;
import io.realm.Realm;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import timber.log.Timber;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010\u000b\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0005\u0018��2\u00020\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u001f\u001a\u00020 H\u0016J\b\u0010!\u001a\u00020\"H\u0014J\b\u0010#\u001a\u00020 H\u0016J&\u0010$\u001a\u0004\u0018\u00010%2\u0006\u0010&\u001a\u00020'2\b\u0010(\u001a\u0004\u0018\u00010)2\b\u0010*\u001a\u0004\u0018\u00010+H\u0016J\u0010\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020%H\u0002J\u0014\u0010/\u001a\u00020-2\n\b\u0002\u00100\u001a\u0004\u0018\u00010\u0005H\u0002J\b\u00101\u001a\u00020 H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086.¢\u0006\u000e\n��\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001a\u0010\f\u001a\u00020\rX\u0086.¢\u0006\u000e\n��\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0007X\u0086.¢\u0006\u000e\n��\u001a\u0004\b\u0013\u0010\t\"\u0004\b\u0014\u0010\u000bR\u001a\u0010\u0015\u001a\u00020\rX\u0086.¢\u0006\u000e\n��\u001a\u0004\b\u0016\u0010\u000f\"\u0004\b\u0017\u0010\u0011R\u001a\u0010\u0018\u001a\u00020\u0007X\u0086.¢\u0006\u000e\n��\u001a\u0004\b\u0019\u0010\t\"\u0004\b\u001a\u0010\u000bR\u001a\u0010\u001b\u001a\u00020\rX\u0086.¢\u0006\u000e\n��\u001a\u0004\b\u001c\u0010\u000f\"\u0004\b\u001d\u0010\u0011R\u000e\u0010\u001e\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n��¨\u00062"}, m254d2 = {"Lcom/privacystar/core/ui/intro/ProtectionSetupFragment;", "Lcom/privacystar/core/ui/intro/intro_core/IntroFragment;", "Lcom/privacystar/core/ui/intro/intro_core/IntroActivity$IntroActivityContent;", "()V", "DEFAULT_PROTECTION_LEVEL", "Lcom/privacystar/core/data/blocking/protection/ProtectionLevel;", "basicContainer", "Landroid/widget/LinearLayout;", "getBasicContainer", "()Landroid/widget/LinearLayout;", "setBasicContainer", "(Landroid/widget/LinearLayout;)V", "basicRadio", "Lcom/rey/material/widget/RadioButton;", "getBasicRadio", "()Lcom/rey/material/widget/RadioButton;", "setBasicRadio", "(Lcom/rey/material/widget/RadioButton;)V", "enhancedContainer", "getEnhancedContainer", "setEnhancedContainer", "enhancedRadio", "getEnhancedRadio", "setEnhancedRadio", "maxContainer", "getMaxContainer", "setMaxContainer", "maxRadio", "getMaxRadio", "setMaxRadio", "protectionLevelSelection", "canAutoTransition", "", "getLayoutResId", "", "handlesBackButton", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onProtectionLevelClick", "", Promotion.ACTION_VIEW, "setProtectionLevel", "protectionLevel", "shouldDisplay", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.intro.ProtectionSetupFragment */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/ProtectionSetupFragment.class */
public final class ProtectionSetupFragment extends IntroFragment implements IntroActivity.IntroActivityContent {
    private HashMap _$_findViewCache;
    @NotNull
    public LinearLayout basicContainer;
    @NotNull
    public RadioButton basicRadio;
    @NotNull
    public LinearLayout enhancedContainer;
    @NotNull
    public RadioButton enhancedRadio;
    @NotNull
    public LinearLayout maxContainer;
    @NotNull
    public RadioButton maxRadio;
    private final ProtectionLevel DEFAULT_PROTECTION_LEVEL = ProtectionLevel.ENHANCED;
    private ProtectionLevel protectionLevelSelection = this.DEFAULT_PROTECTION_LEVEL;

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0110, code lost:
        if (kotlin.jvm.internal.Intrinsics.areEqual(r7, r0) != false) goto L_0x0113;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onProtectionLevelClick(android.view.View r7) {
        /*
            Method dump skipped, instructions count: 359
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.privacystar.core.p011ui.intro.ProtectionSetupFragment.onProtectionLevelClick(android.view.View):void");
    }

    private final void setProtectionLevel(ProtectionLevel protectionLevel) {
        if (protectionLevel == null) {
            protectionLevel = this.protectionLevelSelection;
        }
        this.protectionLevelSelection = protectionLevel;
        Timber.m37d("Setting protection level to: %s.", this.protectionLevelSelection.toString());
        PreferenceUtil.putProtectionSetup(true);
        PreferenceUtil.putProtectionLevel(this.protectionLevelSelection.getValue());
        PreferenceUtil.updateTypeBlockingBasedOnProtection(this.protectionLevelSelection);
        PreferenceUtil.putCustomProtectionEnabled(false);
        if (this.protectionLevelSelection == ProtectionLevel.ENHANCED || this.protectionLevelSelection == ProtectionLevel.MAXIMUM) {
            PreferenceUtil.putIsUnknownBlockingEnabled(true);
        }
        transitionIntroFragment();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void setProtectionLevel$default(ProtectionSetupFragment protectionSetupFragment, ProtectionLevel protectionLevel, int i, Object obj) {
        if ((i & 1) != 0) {
            protectionLevel = null;
        }
        protectionSetupFragment.setProtectionLevel(protectionLevel);
    }

    public void _$_clearFindViewByIdCache() {
        if (this._$_findViewCache != null) {
            this._$_findViewCache.clear();
        }
    }

    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        View view2 = view;
        if (view == null) {
            View view3 = getView();
            if (view3 == null) {
                return null;
            }
            view2 = view3.findViewById(i);
            this._$_findViewCache.put(Integer.valueOf(i), view2);
        }
        return view2;
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroActivity.IntroActivityContent
    public boolean canAutoTransition() {
        return false;
    }

    @NotNull
    public final LinearLayout getBasicContainer() {
        LinearLayout linearLayout = this.basicContainer;
        if (linearLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("basicContainer");
        }
        return linearLayout;
    }

    @NotNull
    public final RadioButton getBasicRadio() {
        RadioButton radioButton = this.basicRadio;
        if (radioButton == null) {
            Intrinsics.throwUninitializedPropertyAccessException("basicRadio");
        }
        return radioButton;
    }

    @NotNull
    public final LinearLayout getEnhancedContainer() {
        LinearLayout linearLayout = this.enhancedContainer;
        if (linearLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("enhancedContainer");
        }
        return linearLayout;
    }

    @NotNull
    public final RadioButton getEnhancedRadio() {
        RadioButton radioButton = this.enhancedRadio;
        if (radioButton == null) {
            Intrinsics.throwUninitializedPropertyAccessException("enhancedRadio");
        }
        return radioButton;
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroFragment
    protected int getLayoutResId() {
        return C1566R.C1571layout.protection_setup_fragment;
    }

    @NotNull
    public final LinearLayout getMaxContainer() {
        LinearLayout linearLayout = this.maxContainer;
        if (linearLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("maxContainer");
        }
        return linearLayout;
    }

    @NotNull
    public final RadioButton getMaxRadio() {
        RadioButton radioButton = this.maxRadio;
        if (radioButton == null) {
            Intrinsics.throwUninitializedPropertyAccessException("maxRadio");
        }
        return radioButton;
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroActivity.IntroActivityContent
    public boolean handlesBackButton() {
        return false;
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroFragment, android.support.p001v4.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        View view = inflater.inflate(getLayoutResId(), viewGroup, false);
        Intrinsics.checkExpressionValueIsNotNull(view, "view");
        RadioButton radioButton = (RadioButton) view.findViewById(C1566R.C1569id.protection_setup_basic_rb);
        Intrinsics.checkExpressionValueIsNotNull(radioButton, "view.protection_setup_basic_rb");
        this.basicRadio = radioButton;
        RadioButton radioButton2 = (RadioButton) view.findViewById(C1566R.C1569id.protection_setup_enhanced_rb);
        Intrinsics.checkExpressionValueIsNotNull(radioButton2, "view.protection_setup_enhanced_rb");
        this.enhancedRadio = radioButton2;
        RadioButton radioButton3 = (RadioButton) view.findViewById(C1566R.C1569id.protection_setup_maximum_rb);
        Intrinsics.checkExpressionValueIsNotNull(radioButton3, "view.protection_setup_maximum_rb");
        this.maxRadio = radioButton3;
        LinearLayout linearLayout = (LinearLayout) view.findViewById(C1566R.C1569id.protection_setup_basic_container);
        Intrinsics.checkExpressionValueIsNotNull(linearLayout, "view.protection_setup_basic_container");
        this.basicContainer = linearLayout;
        LinearLayout linearLayout2 = (LinearLayout) view.findViewById(C1566R.C1569id.protection_setup_enhanced_container);
        Intrinsics.checkExpressionValueIsNotNull(linearLayout2, "view.protection_setup_enhanced_container");
        this.enhancedContainer = linearLayout2;
        LinearLayout linearLayout3 = (LinearLayout) view.findViewById(C1566R.C1569id.protection_setup_maximum_container);
        Intrinsics.checkExpressionValueIsNotNull(linearLayout3, "view.protection_setup_maximum_container");
        this.maxContainer = linearLayout3;
        BuildUtil buildUtil = BuildUtil.INSTANCE;
        Context context = getContext();
        Realm realm = getRealm();
        Intrinsics.checkExpressionValueIsNotNull(realm, "realm");
        if (!buildUtil.shouldVariantInstanceShowFullUx(context, realm)) {
            setProtectionLevel(ProtectionLevel.BASIC);
        }
        RadioButton radioButton4 = this.basicRadio;
        if (radioButton4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("basicRadio");
        }
        radioButton4.setOnClickListener(new View.OnClickListener() { // from class: com.privacystar.core.ui.intro.ProtectionSetupFragment$onCreateView$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View v) {
                ProtectionSetupFragment protectionSetupFragment = ProtectionSetupFragment.this;
                Intrinsics.checkExpressionValueIsNotNull(v, "v");
                protectionSetupFragment.onProtectionLevelClick(v);
            }
        });
        RadioButton radioButton5 = this.enhancedRadio;
        if (radioButton5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("enhancedRadio");
        }
        radioButton5.setOnClickListener(new View.OnClickListener() { // from class: com.privacystar.core.ui.intro.ProtectionSetupFragment$onCreateView$2
            @Override // android.view.View.OnClickListener
            public final void onClick(View v) {
                ProtectionSetupFragment protectionSetupFragment = ProtectionSetupFragment.this;
                Intrinsics.checkExpressionValueIsNotNull(v, "v");
                protectionSetupFragment.onProtectionLevelClick(v);
            }
        });
        RadioButton radioButton6 = this.maxRadio;
        if (radioButton6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("maxRadio");
        }
        radioButton6.setOnClickListener(new View.OnClickListener() { // from class: com.privacystar.core.ui.intro.ProtectionSetupFragment$onCreateView$3
            @Override // android.view.View.OnClickListener
            public final void onClick(View v) {
                ProtectionSetupFragment protectionSetupFragment = ProtectionSetupFragment.this;
                Intrinsics.checkExpressionValueIsNotNull(v, "v");
                protectionSetupFragment.onProtectionLevelClick(v);
            }
        });
        LinearLayout linearLayout4 = this.basicContainer;
        if (linearLayout4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("basicContainer");
        }
        linearLayout4.setOnClickListener(new View.OnClickListener() { // from class: com.privacystar.core.ui.intro.ProtectionSetupFragment$onCreateView$4
            @Override // android.view.View.OnClickListener
            public final void onClick(View v) {
                ProtectionSetupFragment protectionSetupFragment = ProtectionSetupFragment.this;
                Intrinsics.checkExpressionValueIsNotNull(v, "v");
                protectionSetupFragment.onProtectionLevelClick(v);
            }
        });
        LinearLayout linearLayout5 = this.enhancedContainer;
        if (linearLayout5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("enhancedContainer");
        }
        linearLayout5.setOnClickListener(new View.OnClickListener() { // from class: com.privacystar.core.ui.intro.ProtectionSetupFragment$onCreateView$5
            @Override // android.view.View.OnClickListener
            public final void onClick(View v) {
                ProtectionSetupFragment protectionSetupFragment = ProtectionSetupFragment.this;
                Intrinsics.checkExpressionValueIsNotNull(v, "v");
                protectionSetupFragment.onProtectionLevelClick(v);
            }
        });
        LinearLayout linearLayout6 = this.maxContainer;
        if (linearLayout6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("maxContainer");
        }
        linearLayout6.setOnClickListener(new View.OnClickListener() { // from class: com.privacystar.core.ui.intro.ProtectionSetupFragment$onCreateView$6
            @Override // android.view.View.OnClickListener
            public final void onClick(View v) {
                ProtectionSetupFragment protectionSetupFragment = ProtectionSetupFragment.this;
                Intrinsics.checkExpressionValueIsNotNull(v, "v");
                protectionSetupFragment.onProtectionLevelClick(v);
            }
        });
        ((CardView) view.findViewById(C1566R.C1569id.protection_setup_finish_cv)).setOnClickListener(new View.OnClickListener() { // from class: com.privacystar.core.ui.intro.ProtectionSetupFragment$onCreateView$7
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                ProtectionSetupFragment.setProtectionLevel$default(ProtectionSetupFragment.this, null, 1, null);
            }
        });
        RadioButton radioButton7 = this.enhancedRadio;
        if (radioButton7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("enhancedRadio");
        }
        radioButton7.setCheckedImmediately(true);
        return view;
    }

    @Override // android.support.p001v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    public final void setBasicContainer(@NotNull LinearLayout linearLayout) {
        Intrinsics.checkParameterIsNotNull(linearLayout, "<set-?>");
        this.basicContainer = linearLayout;
    }

    public final void setBasicRadio(@NotNull RadioButton radioButton) {
        Intrinsics.checkParameterIsNotNull(radioButton, "<set-?>");
        this.basicRadio = radioButton;
    }

    public final void setEnhancedContainer(@NotNull LinearLayout linearLayout) {
        Intrinsics.checkParameterIsNotNull(linearLayout, "<set-?>");
        this.enhancedContainer = linearLayout;
    }

    public final void setEnhancedRadio(@NotNull RadioButton radioButton) {
        Intrinsics.checkParameterIsNotNull(radioButton, "<set-?>");
        this.enhancedRadio = radioButton;
    }

    public final void setMaxContainer(@NotNull LinearLayout linearLayout) {
        Intrinsics.checkParameterIsNotNull(linearLayout, "<set-?>");
        this.maxContainer = linearLayout;
    }

    public final void setMaxRadio(@NotNull RadioButton radioButton) {
        Intrinsics.checkParameterIsNotNull(radioButton, "<set-?>");
        this.maxRadio = radioButton;
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroActivity.IntroActivityContent
    public boolean shouldDisplay() {
        return !PreferenceUtil.getProtectionSetup();
    }
}
