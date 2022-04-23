package com.privacystar.core.p011ui.intro;

import android.os.Bundle;
import android.support.p001v4.app.DialogFragment;
import android.support.p004v7.widget.CardView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.privacystar.core.C1566R;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018�� \u00162\u00020\u0001:\u0001\u0016B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0016J&\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u00122\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0016J\b\u0010\u0013\u001a\u00020\nH\u0016J\u000e\u0010\u0014\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u0004R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086.¢\u0006\u000e\n��\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\u0017"}, m254d2 = {"Lcom/privacystar/core/ui/intro/PrivacyPolicyDialog;", "Landroid/support/v4/app/DialogFragment;", "()V", "continueListener", "Landroid/view/View$OnClickListener;", "getContinueListener", "()Landroid/view/View$OnClickListener;", "setContinueListener", "(Landroid/view/View$OnClickListener;)V", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "onDestroy", "setListener", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Companion", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.intro.PrivacyPolicyDialog */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/PrivacyPolicyDialog.class */
public final class PrivacyPolicyDialog extends DialogFragment {
    @NotNull
    private static final String CLASS_TAG = "PrivacyPolicyDialog";
    public static final Companion Companion = new Companion(null);
    private HashMap _$_findViewCache;
    @NotNull
    public View.OnClickListener continueListener;

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, m254d2 = {"Lcom/privacystar/core/ui/intro/PrivacyPolicyDialog$Companion;", "", "()V", "CLASS_TAG", "", "getCLASS_TAG", "()Ljava/lang/String;", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* renamed from: com.privacystar.core.ui.intro.PrivacyPolicyDialog$Companion */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/PrivacyPolicyDialog$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final String getCLASS_TAG() {
            return PrivacyPolicyDialog.CLASS_TAG;
        }
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

    @NotNull
    public final View.OnClickListener getContinueListener() {
        View.OnClickListener onClickListener = this.continueListener;
        if (onClickListener == null) {
            Intrinsics.throwUninitializedPropertyAccessException("continueListener");
        }
        return onClickListener;
    }

    @Override // android.support.p001v4.app.DialogFragment, android.support.p001v4.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setStyle(0, 0);
    }

    @Override // android.support.p001v4.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        View view = inflater.inflate(C1566R.C1571layout.privacy_policy_dialog, viewGroup, false);
        if (this.continueListener != null) {
            Intrinsics.checkExpressionValueIsNotNull(view, "view");
            CardView cardView = (CardView) view.findViewById(C1566R.C1569id.privacy_policy_card);
            View.OnClickListener onClickListener = this.continueListener;
            if (onClickListener == null) {
                Intrinsics.throwUninitializedPropertyAccessException("continueListener");
            }
            cardView.setOnClickListener(onClickListener);
        }
        return view;
    }

    @Override // android.support.p001v4.app.Fragment
    public void onDestroy() {
        dismiss();
        super.onDestroy();
    }

    @Override // android.support.p001v4.app.DialogFragment, android.support.p001v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    public final void setContinueListener(@NotNull View.OnClickListener onClickListener) {
        Intrinsics.checkParameterIsNotNull(onClickListener, "<set-?>");
        this.continueListener = onClickListener;
    }

    public final void setListener(@NotNull View.OnClickListener listener) {
        Intrinsics.checkParameterIsNotNull(listener, "listener");
        this.continueListener = listener;
    }
}
