package com.privacystar.core.p011ui.intro.af_welcome;

import android.content.DialogInterface;
import android.os.Bundle;
import android.support.p001v4.app.FragmentActivity;
import android.support.p001v4.app.FragmentManager;
import android.support.p004v7.widget.CardView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.gms.analytics.ecommerce.Promotion;
import com.privacystar.core.C1566R;
import com.privacystar.core.data.model.helper.SubscriptionRealm;
import com.privacystar.core.p011ui.AttachSubscriptionObserver;
import com.privacystar.core.p011ui.PSActivity;
import com.privacystar.core.p011ui.intro.af_welcome.AFWelcome;
import com.privacystar.core.p011ui.widgets.AFWelcomeFeatureView;
import com.privacystar.core.p011ui.widgets.PSDialogFragment;
import com.privacystar.core.service.googleplay.p010v3.BillingHelper;
import com.privacystar.core.service.googleplay.p010v3.IABV3Helper;
import com.privacystar.core.util.extension.ViewExtensionsKt;
import java.util.HashMap;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.TypeCastException;
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
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018�� +2\u00020\u00012\u00020\u0002:\u0001+B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0012\u001a\u00020\tH\u0016J\b\u0010\u0013\u001a\u00020\tH\u0002J\b\u0010\u0014\u001a\u00020\tH\u0016J\b\u0010\u0015\u001a\u00020\tH\u0016J\u0012\u0010\u0016\u001a\u00020\t2\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J&\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J\u0012\u0010\u001f\u001a\u00020\t2\b\u0010 \u001a\u0004\u0018\u00010!H\u0016J\u001a\u0010\"\u001a\u00020\t2\u0006\u0010#\u001a\u00020\u001a2\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J\u000e\u0010$\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u0005J\b\u0010%\u001a\u00020\tH\u0002J\b\u0010&\u001a\u00020\tH\u0016J\u000e\u0010'\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u0005J\u0014\u0010(\u001a\u00020\t2\f\u0010)\u001a\b\u0012\u0004\u0012\u00020\t0\bJ\b\u0010*\u001a\u00020\tH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n��R\u0016\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n��R\u001b\u0010\n\u001a\u00020\u000b8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\f\u0010\rR\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n��¨\u0006,"}, m254d2 = {"Lcom/privacystar/core/ui/intro/af_welcome/AFWelcomeDialogFragment;", "Lcom/privacystar/core/ui/widgets/PSDialogFragment;", "Lcom/privacystar/core/ui/intro/af_welcome/AFWelcome$AFWelcomeDialogView;", "()V", "canTransition", "", "isPremium", "onFinishCallback", "Lkotlin/Function0;", "", "presenter", "Lcom/privacystar/core/ui/intro/af_welcome/AFWelcomeDialogPresenter;", "getPresenter", "()Lcom/privacystar/core/ui/intro/af_welcome/AFWelcomeDialogPresenter;", "presenter$delegate", "Lkotlin/Lazy;", "subsChanged", "Lcom/privacystar/core/ui/PSActivity$OnSubscriptionChangedListener;", "attemptPurchase", "enablePremiumBanner", "finishView", "hideCloseButton", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "onDismiss", "dialog", "Landroid/content/DialogInterface;", "onViewCreated", Promotion.ACTION_VIEW, "setCanTransition", "setFeatures", "setFreeText", "setIsPremium", "setOnFinishCallback", "onFinish", "setPremiumText", "Companion", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.intro.af_welcome.AFWelcomeDialogFragment */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/af_welcome/AFWelcomeDialogFragment.class */
public final class AFWelcomeDialogFragment extends PSDialogFragment implements AFWelcome.AFWelcomeDialogView {
    @NotNull
    private static final String CLASS_TAG = "AFWelcomeDialogFragment";
    private HashMap _$_findViewCache;
    private boolean canTransition;
    private Function0<Unit> onFinishCallback;
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(AFWelcomeDialogFragment.class), "presenter", "getPresenter()Lcom/privacystar/core/ui/intro/af_welcome/AFWelcomeDialogPresenter;"))};
    public static final Companion Companion = new Companion(null);
    @NotNull
    private final Lazy presenter$delegate = LazyKt.lazy(new AFWelcomeDialogFragment$presenter$2(this));
    private boolean isPremium = SubscriptionRealm.isSubscriptionActive(getRealm());
    private final PSActivity.OnSubscriptionChangedListener subsChanged = new PSActivity.OnSubscriptionChangedListener() { // from class: com.privacystar.core.ui.intro.af_welcome.AFWelcomeDialogFragment$subsChanged$1
        @Override // com.privacystar.core.p011ui.PSActivity.OnSubscriptionChangedListener
        public final void onSubscriptionChanged(boolean z) {
            AFWelcomeDialogFragment.this.setIsPremium(z);
            AFWelcomeDialogFragment.this.getPresenter().subscriptionChanged(z);
        }
    };

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J,\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\f2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00100\u000fR\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, m254d2 = {"Lcom/privacystar/core/ui/intro/af_welcome/AFWelcomeDialogFragment$Companion;", "", "()V", "CLASS_TAG", "", "getCLASS_TAG", "()Ljava/lang/String;", "showWithCallback", "Lcom/privacystar/core/ui/intro/af_welcome/AFWelcomeDialogFragment;", "fragmentManager", "Landroid/support/v4/app/FragmentManager;", "isPremium", "", "allowBackButton", "onFinish", "Lkotlin/Function0;", "", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* renamed from: com.privacystar.core.ui.intro.af_welcome.AFWelcomeDialogFragment$Companion */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/af_welcome/AFWelcomeDialogFragment$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final String getCLASS_TAG() {
            return AFWelcomeDialogFragment.CLASS_TAG;
        }

        @NotNull
        public final AFWelcomeDialogFragment showWithCallback(@NotNull FragmentManager fragmentManager, boolean z, boolean z2, @NotNull Function0<Unit> onFinish) {
            Intrinsics.checkParameterIsNotNull(fragmentManager, "fragmentManager");
            Intrinsics.checkParameterIsNotNull(onFinish, "onFinish");
            AFWelcomeDialogFragment aFWelcomeDialogFragment = new AFWelcomeDialogFragment();
            aFWelcomeDialogFragment.setIsPremium(z);
            aFWelcomeDialogFragment.setOnFinishCallback(onFinish);
            aFWelcomeDialogFragment.setCanTransition(z2);
            aFWelcomeDialogFragment.show(fragmentManager, getCLASS_TAG());
            return aFWelcomeDialogFragment;
        }
    }

    private final void enablePremiumBanner() {
        LinearLayout af_welcome_premium_banner = (LinearLayout) _$_findCachedViewById(C1566R.C1569id.af_welcome_premium_banner);
        Intrinsics.checkExpressionValueIsNotNull(af_welcome_premium_banner, "af_welcome_premium_banner");
        af_welcome_premium_banner.setVisibility(0);
    }

    private final void setFeatures() {
        ((AFWelcomeFeatureView) _$_findCachedViewById(C1566R.C1569id.af_welcome_feature_one)).setContent(C1566R.string.af_welcome_feature_block, C1566R.C1568drawable.ic_welcome_auto_block);
        ((AFWelcomeFeatureView) _$_findCachedViewById(C1566R.C1569id.af_welcome_feature_two)).setContent(C1566R.string.af_welcome_feature_identify, C1566R.C1568drawable.ic_welcome_id);
        ((AFWelcomeFeatureView) _$_findCachedViewById(C1566R.C1569id.af_welcome_feature_three)).setContent(C1566R.string.af_welcome_feature_file_report, C1566R.C1568drawable.ic_welcome_report);
        ((AFWelcomeFeatureView) _$_findCachedViewById(C1566R.C1569id.af_welcome_feature_four)).setContent(C1566R.string.af_welcome_feature_customize_allow, C1566R.C1568drawable.ic_welcome_customize);
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

    @Override // com.privacystar.core.p011ui.intro.af_welcome.AFWelcome.AFWelcomeDialogView
    public void attemptPurchase() {
        BillingHelper.attemptPurchase(getActivity(), getString(C1566R.string.play_store_sku_premium_annual), IABV3Helper.SkuType.SUBSCRIPTION);
    }

    @Override // com.privacystar.core.p011ui.intro.af_welcome.AFWelcome.AFWelcomeDialogView
    public void finishView() {
        Function0<Unit> function0;
        setCanTransition(true);
        if (!(this.onFinishCallback == null || (function0 = this.onFinishCallback) == null)) {
            function0.invoke();
        }
        dismissAllowingStateLoss();
    }

    @NotNull
    public final AFWelcomeDialogPresenter getPresenter() {
        Lazy lazy = this.presenter$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (AFWelcomeDialogPresenter) lazy.getValue();
    }

    @Override // com.privacystar.core.p011ui.intro.af_welcome.AFWelcome.AFWelcomeDialogView
    public void hideCloseButton() {
        ImageView af_welcome_close_imgv = (ImageView) _$_findCachedViewById(C1566R.C1569id.af_welcome_close_imgv);
        Intrinsics.checkExpressionValueIsNotNull(af_welcome_close_imgv, "af_welcome_close_imgv");
        ViewExtensionsKt.gone(af_welcome_close_imgv);
    }

    @Override // android.support.p001v4.app.DialogFragment, android.support.p001v4.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (getActivity() instanceof AttachSubscriptionObserver) {
            FragmentActivity activity = getActivity();
            if (activity == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.privacystar.core.ui.AttachSubscriptionObserver");
            }
            ((AttachSubscriptionObserver) activity).attachObserver(this.subsChanged);
        } else {
            Timber.m34e("Subscription listener couldn't attach, activity is not an instance of AttachSubscriptionObserver", new Object[0]);
        }
        setStyle(0, 16973834);
    }

    @Override // android.support.p001v4.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        View view = inflater.inflate(C1566R.C1571layout.af_welcome_fragment, viewGroup);
        Intrinsics.checkExpressionValueIsNotNull(view, "view");
        ((ImageView) view.findViewById(C1566R.C1569id.af_welcome_close_imgv)).setOnClickListener(new View.OnClickListener() { // from class: com.privacystar.core.ui.intro.af_welcome.AFWelcomeDialogFragment$onCreateView$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                AFWelcomeDialogFragment.this.getPresenter().onCloseButtonClick();
            }
        });
        ((CardView) view.findViewById(C1566R.C1569id.af_welcome_button_cv)).setOnClickListener(new View.OnClickListener() { // from class: com.privacystar.core.ui.intro.af_welcome.AFWelcomeDialogFragment$onCreateView$2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                AFWelcomeDialogPresenter.onActionButtonClick$default(AFWelcomeDialogFragment.this.getPresenter(), 0, 1, null);
            }
        });
        return view;
    }

    @Override // android.support.p001v4.app.DialogFragment, android.support.p001v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    @Override // android.support.p001v4.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(@Nullable DialogInterface dialogInterface) {
        FragmentActivity activity;
        super.onDismiss(dialogInterface);
        if (!this.canTransition && (activity = getActivity()) != null) {
            activity.finish();
        }
    }

    @Override // android.support.p001v4.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        getPresenter().viewCreated();
    }

    public final void setCanTransition(boolean z) {
        this.canTransition = z;
    }

    @Override // com.privacystar.core.p011ui.intro.af_welcome.AFWelcome.AFWelcomeDialogView
    public void setFreeText() {
        TextView af_welcome_title_tv = (TextView) _$_findCachedViewById(C1566R.C1569id.af_welcome_title_tv);
        Intrinsics.checkExpressionValueIsNotNull(af_welcome_title_tv, "af_welcome_title_tv");
        af_welcome_title_tv.setText(getString(C1566R.string.af_welcome_free_user_title));
        TextView af_welcome_subtitle_tv = (TextView) _$_findCachedViewById(C1566R.C1569id.af_welcome_subtitle_tv);
        Intrinsics.checkExpressionValueIsNotNull(af_welcome_subtitle_tv, "af_welcome_subtitle_tv");
        af_welcome_subtitle_tv.setText(getString(C1566R.string.af_welcome_free_user_subtitle));
        TextView af_welcome_button_label_tv = (TextView) _$_findCachedViewById(C1566R.C1569id.af_welcome_button_label_tv);
        Intrinsics.checkExpressionValueIsNotNull(af_welcome_button_label_tv, "af_welcome_button_label_tv");
        af_welcome_button_label_tv.setText(getString(C1566R.string.af_welcome_free_user_button_label));
        setFeatures();
    }

    public final void setIsPremium(boolean z) {
        this.isPremium = z;
    }

    public final void setOnFinishCallback(@NotNull Function0<Unit> onFinish) {
        Intrinsics.checkParameterIsNotNull(onFinish, "onFinish");
        this.onFinishCallback = onFinish;
    }

    @Override // com.privacystar.core.p011ui.intro.af_welcome.AFWelcome.AFWelcomeDialogView
    public void setPremiumText() {
        TextView af_welcome_title_tv = (TextView) _$_findCachedViewById(C1566R.C1569id.af_welcome_title_tv);
        Intrinsics.checkExpressionValueIsNotNull(af_welcome_title_tv, "af_welcome_title_tv");
        af_welcome_title_tv.setText(getString(C1566R.string.af_welcome_premium_user_title));
        TextView af_welcome_subtitle_tv = (TextView) _$_findCachedViewById(C1566R.C1569id.af_welcome_subtitle_tv);
        Intrinsics.checkExpressionValueIsNotNull(af_welcome_subtitle_tv, "af_welcome_subtitle_tv");
        af_welcome_subtitle_tv.setText(getString(C1566R.string.af_welcome_premium_user_subtitle));
        TextView af_welcome_button_label_tv = (TextView) _$_findCachedViewById(C1566R.C1569id.af_welcome_button_label_tv);
        Intrinsics.checkExpressionValueIsNotNull(af_welcome_button_label_tv, "af_welcome_button_label_tv");
        af_welcome_button_label_tv.setText(getString(C1566R.string.af_welcome_premium_user_button_label));
        setFeatures();
        enablePremiumBanner();
    }
}
