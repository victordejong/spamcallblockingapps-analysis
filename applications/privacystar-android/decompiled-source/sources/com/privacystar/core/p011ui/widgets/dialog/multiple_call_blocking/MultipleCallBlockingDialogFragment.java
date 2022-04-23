package com.privacystar.core.p011ui.widgets.dialog.multiple_call_blocking;

import android.os.Bundle;
import android.support.p001v4.app.FragmentManager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.gms.analytics.ecommerce.Promotion;
import com.privacystar.core.C1566R;
import com.privacystar.core.p011ui.widgets.PSDialogFragment;
import com.privacystar.core.p011ui.widgets.dialog.multiple_call_blocking.MultipleCallBlockingContract;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import java.util.HashMap;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import timber.log.Timber;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018�� 32\u00020\u00012\u00020\u0002:\u00013B\u0005¢\u0006\u0002\u0010\u0003J&\u0010\"\u001a\u0004\u0018\u00010#2\u0006\u0010$\u001a\u00020%2\b\u0010&\u001a\u0004\u0018\u00010'2\b\u0010(\u001a\u0004\u0018\u00010)H\u0016J\u001a\u0010*\u001a\u00020\u00142\u0006\u0010+\u001a\u00020#2\b\u0010(\u001a\u0004\u0018\u00010)H\u0016J\u0014\u0010,\u001a\u00020\u00142\f\u0010-\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013J\u0014\u0010.\u001a\u00020\u00142\f\u0010-\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013J\u000e\u0010/\u001a\u00020\u00142\u0006\u00100\u001a\u00020\u001eJ\b\u00101\u001a\u00020\u0014H\u0016J\b\u00102\u001a\u00020\u0014H\u0016R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\u0006\u0010\u0007R\u001b\u0010\n\u001a\u00020\u000b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010\t\u001a\u0004\b\f\u0010\rR\u001b\u0010\u000f\u001a\u00020\u000b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0011\u0010\t\u001a\u0004\b\u0010\u0010\rR\u0014\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013X\u0082.¢\u0006\u0002\n��R\u001b\u0010\u0015\u001a\u00020\u000b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0017\u0010\t\u001a\u0004\b\u0016\u0010\rR\u0014\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013X\u0082.¢\u0006\u0002\n��R\u0011\u0010\u0019\u001a\u00020\u001a¢\u0006\b\n��\u001a\u0004\b\u001b\u0010\u001cR\u000e\u0010\u001d\u001a\u00020\u001eX\u0082\u000e¢\u0006\u0002\n��R\u001b\u0010\u001f\u001a\u00020\u000b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b!\u0010\t\u001a\u0004\b \u0010\r¨\u00064"}, m254d2 = {"Lcom/privacystar/core/ui/widgets/dialog/multiple_call_blocking/MultipleCallBlockingDialogFragment;", "Lcom/privacystar/core/ui/widgets/PSDialogFragment;", "Lcom/privacystar/core/ui/widgets/dialog/multiple_call_blocking/MultipleCallBlockingContract$View;", "()V", SettingsJsonConstants.APP_ICON_KEY, "Landroid/widget/ImageView;", "getIcon", "()Landroid/widget/ImageView;", "icon$delegate", "Lkotlin/Lazy;", "message", "Landroid/widget/TextView;", "getMessage", "()Landroid/widget/TextView;", "message$delegate", "negativeAction", "getNegativeAction", "negativeAction$delegate", "negativeResponse", "Lkotlin/Function0;", "", "positiveAction", "getPositiveAction", "positiveAction$delegate", "positiveResponse", "presenter", "Lcom/privacystar/core/ui/widgets/dialog/multiple_call_blocking/MultipleCallBlockingDialogPresenter;", "getPresenter", "()Lcom/privacystar/core/ui/widgets/dialog/multiple_call_blocking/MultipleCallBlockingDialogPresenter;", "secondAlert", "", "title", "getTitle", "title$delegate", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onViewCreated", Promotion.ACTION_VIEW, "setNegativeResponse", "response", "setPositiveResponse", "setSecondAlert", "alert", "setupAppClosingAlert", "setupUninstallAlert", "Companion", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.widgets.dialog.multiple_call_blocking.MultipleCallBlockingDialogFragment */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/widgets/dialog/multiple_call_blocking/MultipleCallBlockingDialogFragment.class */
public final class MultipleCallBlockingDialogFragment extends PSDialogFragment implements MultipleCallBlockingContract.View {
    @NotNull
    private static final String CLASS_TAG = "MultipleCallBlockingDialog";
    private HashMap _$_findViewCache;
    private Function0<Unit> negativeResponse;
    private Function0<Unit> positiveResponse;
    private boolean secondAlert;
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(MultipleCallBlockingDialogFragment.class), SettingsJsonConstants.APP_ICON_KEY, "getIcon()Landroid/widget/ImageView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(MultipleCallBlockingDialogFragment.class), "title", "getTitle()Landroid/widget/TextView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(MultipleCallBlockingDialogFragment.class), "message", "getMessage()Landroid/widget/TextView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(MultipleCallBlockingDialogFragment.class), "positiveAction", "getPositiveAction()Landroid/widget/TextView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(MultipleCallBlockingDialogFragment.class), "negativeAction", "getNegativeAction()Landroid/widget/TextView;"))};
    public static final Companion Companion = new Companion(null);
    @NotNull
    private final MultipleCallBlockingDialogPresenter presenter = new MultipleCallBlockingDialogPresenter(this);
    private final Lazy icon$delegate = LazyKt.lazy(new MultipleCallBlockingDialogFragment$icon$2(this));
    private final Lazy title$delegate = LazyKt.lazy(new MultipleCallBlockingDialogFragment$title$2(this));
    private final Lazy message$delegate = LazyKt.lazy(new MultipleCallBlockingDialogFragment$message$2(this));
    private final Lazy positiveAction$delegate = LazyKt.lazy(new MultipleCallBlockingDialogFragment$positiveAction$2(this));
    private final Lazy negativeAction$delegate = LazyKt.lazy(new MultipleCallBlockingDialogFragment$negativeAction$2(this));

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J6\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e2\u0010\b\u0002\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000eR\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, m254d2 = {"Lcom/privacystar/core/ui/widgets/dialog/multiple_call_blocking/MultipleCallBlockingDialogFragment$Companion;", "", "()V", "CLASS_TAG", "", "getCLASS_TAG", "()Ljava/lang/String;", "showMutlipleCallBlockingDialog", "Lcom/privacystar/core/ui/widgets/dialog/multiple_call_blocking/MultipleCallBlockingDialogFragment;", "fragmentManager", "Landroid/support/v4/app/FragmentManager;", "secondAlert", "", "positiveResponse", "Lkotlin/Function0;", "", "negativeResponse", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* renamed from: com.privacystar.core.ui.widgets.dialog.multiple_call_blocking.MultipleCallBlockingDialogFragment$Companion */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/widgets/dialog/multiple_call_blocking/MultipleCallBlockingDialogFragment$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @NotNull
        public static /* synthetic */ MultipleCallBlockingDialogFragment showMutlipleCallBlockingDialog$default(Companion companion, FragmentManager fragmentManager, boolean z, Function0 function0, Function0 function02, int i, Object obj) {
            if ((i & 8) != 0) {
                function02 = null;
            }
            return companion.showMutlipleCallBlockingDialog(fragmentManager, z, function0, function02);
        }

        @NotNull
        public final String getCLASS_TAG() {
            return MultipleCallBlockingDialogFragment.CLASS_TAG;
        }

        @NotNull
        public final MultipleCallBlockingDialogFragment showMutlipleCallBlockingDialog(@NotNull FragmentManager fragmentManager, boolean z, @NotNull Function0<Unit> positiveResponse, @Nullable Function0<Unit> function0) {
            Intrinsics.checkParameterIsNotNull(fragmentManager, "fragmentManager");
            Intrinsics.checkParameterIsNotNull(positiveResponse, "positiveResponse");
            MultipleCallBlockingDialogFragment multipleCallBlockingDialogFragment = new MultipleCallBlockingDialogFragment();
            multipleCallBlockingDialogFragment.setCancelable(false);
            multipleCallBlockingDialogFragment.setSecondAlert(z);
            multipleCallBlockingDialogFragment.setPositiveResponse(positiveResponse);
            if (function0 == null) {
                function0 = C1673xe9ce53c6.INSTANCE;
            }
            multipleCallBlockingDialogFragment.setNegativeResponse(function0);
            multipleCallBlockingDialogFragment.show(fragmentManager, getCLASS_TAG());
            return multipleCallBlockingDialogFragment;
        }
    }

    @NotNull
    public static final /* synthetic */ Function0 access$getNegativeResponse$p(MultipleCallBlockingDialogFragment multipleCallBlockingDialogFragment) {
        Function0<Unit> function0 = multipleCallBlockingDialogFragment.negativeResponse;
        if (function0 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("negativeResponse");
        }
        return function0;
    }

    @NotNull
    public static final /* synthetic */ Function0 access$getPositiveResponse$p(MultipleCallBlockingDialogFragment multipleCallBlockingDialogFragment) {
        Function0<Unit> function0 = multipleCallBlockingDialogFragment.positiveResponse;
        if (function0 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("positiveResponse");
        }
        return function0;
    }

    private final ImageView getIcon() {
        Lazy lazy = this.icon$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (ImageView) lazy.getValue();
    }

    private final TextView getMessage() {
        Lazy lazy = this.message$delegate;
        KProperty kProperty = $$delegatedProperties[2];
        return (TextView) lazy.getValue();
    }

    private final TextView getNegativeAction() {
        Lazy lazy = this.negativeAction$delegate;
        KProperty kProperty = $$delegatedProperties[4];
        return (TextView) lazy.getValue();
    }

    private final TextView getPositiveAction() {
        Lazy lazy = this.positiveAction$delegate;
        KProperty kProperty = $$delegatedProperties[3];
        return (TextView) lazy.getValue();
    }

    private final TextView getTitle() {
        Lazy lazy = this.title$delegate;
        KProperty kProperty = $$delegatedProperties[1];
        return (TextView) lazy.getValue();
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
    public final MultipleCallBlockingDialogPresenter getPresenter() {
        return this.presenter;
    }

    @Override // android.support.p001v4.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        return inflater.inflate(C1566R.C1571layout.dialog_mutliple_call_blocking, viewGroup);
    }

    @Override // android.support.p001v4.app.DialogFragment, android.support.p001v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    @Override // android.support.p001v4.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        this.presenter.onViewCreated(this.secondAlert);
    }

    public final void setNegativeResponse(@NotNull Function0<Unit> response) {
        Intrinsics.checkParameterIsNotNull(response, "response");
        this.negativeResponse = response;
    }

    public final void setPositiveResponse(@NotNull Function0<Unit> response) {
        Intrinsics.checkParameterIsNotNull(response, "response");
        this.positiveResponse = response;
    }

    public final void setSecondAlert(boolean z) {
        this.secondAlert = z;
    }

    @Override // com.privacystar.core.p011ui.widgets.dialog.multiple_call_blocking.MultipleCallBlockingContract.View
    public void setupAppClosingAlert() {
        Timber.m37d("Showing App closing alert", new Object[0]);
        getIcon().setImageResource(C1566R.C1568drawable.ic_error_outline_black_24dp);
        getTitle().setText(C1566R.string.application_uninstall_declined_alert_title);
        getMessage().setText(C1566R.string.application_uninstall_declined_alert_message);
        getPositiveAction().setText(C1566R.string.application_uninstall_declined_alert_positive);
        getPositiveAction().setOnClickListener(new View.OnClickListener() { // from class: com.privacystar.core.ui.widgets.dialog.multiple_call_blocking.MultipleCallBlockingDialogFragment$setupAppClosingAlert$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MultipleCallBlockingDialogFragment.access$getPositiveResponse$p(MultipleCallBlockingDialogFragment.this).invoke();
            }
        });
        getNegativeAction().setText(C1566R.string.application_uninstall_declined_alert_negative);
        getNegativeAction().setOnClickListener(new View.OnClickListener() { // from class: com.privacystar.core.ui.widgets.dialog.multiple_call_blocking.MultipleCallBlockingDialogFragment$setupAppClosingAlert$2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MultipleCallBlockingDialogFragment.access$getNegativeResponse$p(MultipleCallBlockingDialogFragment.this).invoke();
            }
        });
    }

    @Override // com.privacystar.core.p011ui.widgets.dialog.multiple_call_blocking.MultipleCallBlockingContract.View
    public void setupUninstallAlert() {
        Timber.m37d("Showing uninstall alert", new Object[0]);
        getIcon().setImageResource(C1566R.C1568drawable.ic_error_outline_black_24dp);
        getTitle().setText(C1566R.string.application_uninstall_alert_title);
        getMessage().setText(C1566R.string.application_uninstall_alert_message);
        getPositiveAction().setText(C1566R.string.application_uninstall_alert_positive);
        getPositiveAction().setOnClickListener(new View.OnClickListener() { // from class: com.privacystar.core.ui.widgets.dialog.multiple_call_blocking.MultipleCallBlockingDialogFragment$setupUninstallAlert$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MultipleCallBlockingDialogFragment.access$getPositiveResponse$p(MultipleCallBlockingDialogFragment.this).invoke();
            }
        });
        getNegativeAction().setVisibility(8);
    }
}
