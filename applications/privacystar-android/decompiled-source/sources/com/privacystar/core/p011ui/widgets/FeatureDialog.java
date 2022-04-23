package com.privacystar.core.p011ui.widgets;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.support.constraint.ConstraintLayout;
import android.support.p001v4.app.DialogFragment;
import android.support.p001v4.content.ContextCompat;
import android.support.p004v7.widget.CardView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.privacystar.core.C1566R;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0015\u0010\u0007\u001a\u00020��2\b\u0010\u0011\u001a\u0004\u0018\u00010\b¢\u0006\u0002\u0010\u0012J\u0018\u0010\u0013\u001a\u00020��2\u0006\u0010\u0014\u001a\u00020\u00042\b\u0010\u0015\u001a\u0004\u0018\u00010\u000bJ\u0012\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J&\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J\b\u0010 \u001a\u00020!H\u0016J\b\u0010\"\u001a\u00020!H\u0016J\u0018\u0010#\u001a\u00020��2\u0006\u0010\u0014\u001a\u00020\u00042\b\u0010\u0015\u001a\u0004\u0018\u00010\u000bJ\u000e\u0010\u000f\u001a\u00020��2\u0006\u0010\u000f\u001a\u00020\u0004J\u000e\u0010\u0010\u001a\u00020��2\u0006\u0010\u0010\u001a\u00020\u0004R\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\tR\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\f\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u000e\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u000f\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0010\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n��¨\u0006$"}, m254d2 = {"Lcom/privacystar/core/ui/widgets/FeatureDialog;", "Landroid/support/v4/app/DialogFragment;", "()V", "CLASS_TAG", "", "getCLASS_TAG", "()Ljava/lang/String;", SettingsJsonConstants.APP_ICON_KEY, "", "Ljava/lang/Integer;", "negButtonListener", "Landroid/view/View$OnClickListener;", "negButtonText", "posButtonListener", "posButtonText", "subtitle", "title", "iconRes", "(Ljava/lang/Integer;)Lcom/privacystar/core/ui/widgets/FeatureDialog;", "negButton", "text", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "onCreateDialog", "Landroid/app/Dialog;", "savedInstanceState", "Landroid/os/Bundle;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "onPause", "", "onStart", "posButton", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.widgets.FeatureDialog */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/widgets/FeatureDialog.class */
public final class FeatureDialog extends DialogFragment {
    private HashMap _$_findViewCache;
    private Integer icon;
    private View.OnClickListener negButtonListener;
    private String negButtonText;
    @NotNull
    private final String CLASS_TAG = "FeatureDialog";
    private String title = "";
    private String subtitle = "";
    private String posButtonText = "Okay";
    private View.OnClickListener posButtonListener = new View.OnClickListener() { // from class: com.privacystar.core.ui.widgets.FeatureDialog$posButtonListener$1
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            FeatureDialog.this.dismiss();
        }
    };

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

    @NotNull
    public final String getCLASS_TAG() {
        return this.CLASS_TAG;
    }

    @NotNull
    public final FeatureDialog icon(@Nullable Integer num) {
        FeatureDialog featureDialog = this;
        featureDialog.icon = num;
        return featureDialog;
    }

    @NotNull
    public final FeatureDialog negButton(@NotNull String text, @Nullable View.OnClickListener onClickListener) {
        Intrinsics.checkParameterIsNotNull(text, "text");
        FeatureDialog featureDialog = this;
        featureDialog.negButtonText = text;
        featureDialog.negButtonListener = onClickListener;
        return featureDialog;
    }

    @Override // android.support.p001v4.app.DialogFragment
    @NotNull
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        Dialog onCreateDialog = super.onCreateDialog(bundle);
        Intrinsics.checkExpressionValueIsNotNull(onCreateDialog, "super.onCreateDialog(savedInstanceState)");
        Window window = onCreateDialog.getWindow();
        if (window != null) {
            window.requestFeature(1);
        }
        return onCreateDialog;
    }

    @Override // android.support.p001v4.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        return inflater.inflate(C1566R.C1571layout.feature_dialog, viewGroup, false);
    }

    @Override // android.support.p001v4.app.DialogFragment, android.support.p001v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    @Override // android.support.p001v4.app.Fragment
    public void onPause() {
        super.onPause();
        dismissAllowingStateLoss();
    }

    @Override // android.support.p001v4.app.DialogFragment, android.support.p001v4.app.Fragment
    public void onStart() {
        super.onStart();
        TextView feature_dialog_title = (TextView) _$_findCachedViewById(C1566R.C1569id.feature_dialog_title);
        Intrinsics.checkExpressionValueIsNotNull(feature_dialog_title, "feature_dialog_title");
        feature_dialog_title.setText(this.title);
        TextView feature_dialog_subtitle = (TextView) _$_findCachedViewById(C1566R.C1569id.feature_dialog_subtitle);
        Intrinsics.checkExpressionValueIsNotNull(feature_dialog_subtitle, "feature_dialog_subtitle");
        feature_dialog_subtitle.setText(this.subtitle);
        TextView feature_dialog_pos_tv = (TextView) _$_findCachedViewById(C1566R.C1569id.feature_dialog_pos_tv);
        Intrinsics.checkExpressionValueIsNotNull(feature_dialog_pos_tv, "feature_dialog_pos_tv");
        feature_dialog_pos_tv.setText(this.posButtonText);
        ((CardView) _$_findCachedViewById(C1566R.C1569id.feature_dialog_pos)).setOnClickListener(this.posButtonListener);
        if (this.negButtonText != null) {
            TextView feature_dialog_neg_tv = (TextView) _$_findCachedViewById(C1566R.C1569id.feature_dialog_neg_tv);
            Intrinsics.checkExpressionValueIsNotNull(feature_dialog_neg_tv, "feature_dialog_neg_tv");
            feature_dialog_neg_tv.setText(this.negButtonText);
        } else {
            CardView feature_dialog_neg = (CardView) _$_findCachedViewById(C1566R.C1569id.feature_dialog_neg);
            Intrinsics.checkExpressionValueIsNotNull(feature_dialog_neg, "feature_dialog_neg");
            feature_dialog_neg.setVisibility(8);
        }
        if (this.negButtonListener != null) {
            ((TextView) _$_findCachedViewById(C1566R.C1569id.feature_dialog_neg_tv)).setOnClickListener(this.negButtonListener);
        }
        if (this.icon != null) {
            ImageView imageView = (ImageView) _$_findCachedViewById(C1566R.C1569id.feature_dialog_icon);
            Context context = getContext();
            if (context == null) {
                Intrinsics.throwNpe();
            }
            Integer num = this.icon;
            if (num == null) {
                throw new TypeCastException("null cannot be cast to non-null type kotlin.Int");
            }
            imageView.setImageDrawable(ContextCompat.getDrawable(context, num.intValue()));
            return;
        }
        ConstraintLayout feature_dialog_icon_container = (ConstraintLayout) _$_findCachedViewById(C1566R.C1569id.feature_dialog_icon_container);
        Intrinsics.checkExpressionValueIsNotNull(feature_dialog_icon_container, "feature_dialog_icon_container");
        feature_dialog_icon_container.setVisibility(8);
    }

    @NotNull
    public final FeatureDialog posButton(@NotNull String text, @Nullable View.OnClickListener onClickListener) {
        Intrinsics.checkParameterIsNotNull(text, "text");
        FeatureDialog featureDialog = this;
        featureDialog.posButtonText = text;
        if (onClickListener != null) {
            featureDialog.posButtonListener = onClickListener;
        }
        return featureDialog;
    }

    @NotNull
    public final FeatureDialog subtitle(@NotNull String subtitle) {
        Intrinsics.checkParameterIsNotNull(subtitle, "subtitle");
        FeatureDialog featureDialog = this;
        featureDialog.subtitle = subtitle;
        return featureDialog;
    }

    @NotNull
    public final FeatureDialog title(@NotNull String title) {
        Intrinsics.checkParameterIsNotNull(title, "title");
        FeatureDialog featureDialog = this;
        featureDialog.title = title;
        return featureDialog;
    }
}
