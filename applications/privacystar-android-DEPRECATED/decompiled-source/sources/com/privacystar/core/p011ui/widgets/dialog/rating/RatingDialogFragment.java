package com.privacystar.core.p011ui.widgets.dialog.rating;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.p001v4.app.FragmentManager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.google.android.gms.analytics.ecommerce.Promotion;
import com.privacystar.core.C1566R;
import com.privacystar.core.p011ui.widgets.PSDialogFragment;
import com.privacystar.core.p011ui.widgets.PSSnackBars;
import com.privacystar.core.p011ui.widgets.dialog.rating.RatingDialogContract;
import java.util.HashMap;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018�� 02\u00020\u00012\u00020\u0002:\u00010B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"H\u0016J\b\u0010#\u001a\u00020 H\u0016J&\u0010$\u001a\u0004\u0018\u00010\u000b2\u0006\u0010%\u001a\u00020&2\b\u0010'\u001a\u0004\u0018\u00010(2\b\u0010)\u001a\u0004\u0018\u00010*H\u0016J\u001a\u0010+\u001a\u00020 2\u0006\u0010,\u001a\u00020\u000b2\b\u0010)\u001a\u0004\u0018\u00010*H\u0016J\u000e\u0010-\u001a\u00020 2\u0006\u0010,\u001a\u00020\u000bJ\b\u0010.\u001a\u00020 H\u0016J\b\u0010/\u001a\u00020 H\u0016R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\u0006\u0010\u0007R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n��R\u001b\u0010\f\u001a\u00020\r8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0010\u0010\t\u001a\u0004\b\u000e\u0010\u000fR\u001b\u0010\u0011\u001a\u00020\u00128BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0015\u0010\t\u001a\u0004\b\u0013\u0010\u0014R\u001b\u0010\u0016\u001a\u00020\u00058BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0018\u0010\t\u001a\u0004\b\u0017\u0010\u0007R\u001b\u0010\u0019\u001a\u00020\u00058BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001b\u0010\t\u001a\u0004\b\u001a\u0010\u0007R\u001b\u0010\u001c\u001a\u00020\u00058BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001e\u0010\t\u001a\u0004\b\u001d\u0010\u0007¨\u00061"}, m254d2 = {"Lcom/privacystar/core/ui/widgets/dialog/rating/RatingDialogFragment;", "Lcom/privacystar/core/ui/widgets/PSDialogFragment;", "Lcom/privacystar/core/ui/widgets/dialog/rating/RatingDialogContract$View;", "()V", "middleButton", "Landroid/widget/TextView;", "getMiddleButton", "()Landroid/widget/TextView;", "middleButton$delegate", "Lkotlin/Lazy;", "parentView", "Landroid/view/View;", "presenter", "Lcom/privacystar/core/ui/widgets/dialog/rating/RatingDialogPresenter;", "getPresenter", "()Lcom/privacystar/core/ui/widgets/dialog/rating/RatingDialogPresenter;", "presenter$delegate", "ratingBar", "Lcom/privacystar/core/ui/widgets/dialog/rating/CustomRatingBar;", "getRatingBar", "()Lcom/privacystar/core/ui/widgets/dialog/rating/CustomRatingBar;", "ratingBar$delegate", "rightButton", "getRightButton", "rightButton$delegate", "subtitle", "getSubtitle", "subtitle$delegate", "title", "getTitle", "title$delegate", "finishDialog", "", "positiveReview", "", "goToPlayStore", "onCreateView", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onViewCreated", Promotion.ACTION_VIEW, "setSnackbarParent", "setupGoodReviewThankYouPage", "setupRatingPage", "Companion", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.widgets.dialog.rating.RatingDialogFragment */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/widgets/dialog/rating/RatingDialogFragment.class */
public final class RatingDialogFragment extends PSDialogFragment implements RatingDialogContract.View {
    @NotNull
    private static final String CLASS_TAG = "RatingDialogFragment";
    private HashMap _$_findViewCache;
    private View parentView;
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(RatingDialogFragment.class), "presenter", "getPresenter()Lcom/privacystar/core/ui/widgets/dialog/rating/RatingDialogPresenter;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(RatingDialogFragment.class), "title", "getTitle()Landroid/widget/TextView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(RatingDialogFragment.class), "subtitle", "getSubtitle()Landroid/widget/TextView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(RatingDialogFragment.class), "ratingBar", "getRatingBar()Lcom/privacystar/core/ui/widgets/dialog/rating/CustomRatingBar;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(RatingDialogFragment.class), "middleButton", "getMiddleButton()Landroid/widget/TextView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(RatingDialogFragment.class), "rightButton", "getRightButton()Landroid/widget/TextView;"))};
    public static final Companion Companion = new Companion(null);
    @NotNull
    private final Lazy presenter$delegate = LazyKt.lazy(new RatingDialogFragment$presenter$2(this));
    private final Lazy title$delegate = LazyKt.lazy(new RatingDialogFragment$title$2(this));
    private final Lazy subtitle$delegate = LazyKt.lazy(new RatingDialogFragment$subtitle$2(this));
    private final Lazy ratingBar$delegate = LazyKt.lazy(new RatingDialogFragment$ratingBar$2(this));
    private final Lazy middleButton$delegate = LazyKt.lazy(new RatingDialogFragment$middleButton$2(this));
    private final Lazy rightButton$delegate = LazyKt.lazy(new RatingDialogFragment$rightButton$2(this));

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fR\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006¨\u0006\r"}, m254d2 = {"Lcom/privacystar/core/ui/widgets/dialog/rating/RatingDialogFragment$Companion;", "", "()V", "CLASS_TAG", "", "getCLASS_TAG", "()Ljava/lang/String;", "showRatingDialog", "Lcom/privacystar/core/ui/widgets/dialog/rating/RatingDialogFragment;", "fragmentManager", "Landroid/support/v4/app/FragmentManager;", "snackbarParent", "Landroid/view/View;", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* renamed from: com.privacystar.core.ui.widgets.dialog.rating.RatingDialogFragment$Companion */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/widgets/dialog/rating/RatingDialogFragment$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final String getCLASS_TAG() {
            return RatingDialogFragment.CLASS_TAG;
        }

        @NotNull
        public final RatingDialogFragment showRatingDialog(@NotNull FragmentManager fragmentManager, @NotNull View snackbarParent) {
            Intrinsics.checkParameterIsNotNull(fragmentManager, "fragmentManager");
            Intrinsics.checkParameterIsNotNull(snackbarParent, "snackbarParent");
            RatingDialogFragment ratingDialogFragment = new RatingDialogFragment();
            ratingDialogFragment.setSnackbarParent(snackbarParent);
            ratingDialogFragment.show(fragmentManager, getCLASS_TAG());
            return ratingDialogFragment;
        }
    }

    private final TextView getMiddleButton() {
        Lazy lazy = this.middleButton$delegate;
        KProperty kProperty = $$delegatedProperties[4];
        return (TextView) lazy.getValue();
    }

    private final CustomRatingBar getRatingBar() {
        Lazy lazy = this.ratingBar$delegate;
        KProperty kProperty = $$delegatedProperties[3];
        return (CustomRatingBar) lazy.getValue();
    }

    private final TextView getRightButton() {
        Lazy lazy = this.rightButton$delegate;
        KProperty kProperty = $$delegatedProperties[5];
        return (TextView) lazy.getValue();
    }

    private final TextView getSubtitle() {
        Lazy lazy = this.subtitle$delegate;
        KProperty kProperty = $$delegatedProperties[2];
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

    @Override // com.privacystar.core.p011ui.widgets.dialog.rating.RatingDialogContract.View
    public void finishDialog(boolean z) {
        dismissAllowingStateLoss();
        if (!z && this.parentView != null && getContext() != null) {
            PSSnackBars pSSnackBars = PSSnackBars.INSTANCE;
            View view = this.parentView;
            if (view == null) {
                Intrinsics.throwNpe();
            }
            Context context = getContext();
            if (context == null) {
                Intrinsics.throwNpe();
            }
            Intrinsics.checkExpressionValueIsNotNull(context, "context!!");
            PSSnackBars.getTopToBottomNoActionSnack$default(pSSnackBars, view, context, C1566R.string.af_settings_rate_thank_you, false, false, 16, null).show();
        }
    }

    @NotNull
    public final RatingDialogPresenter getPresenter() {
        Lazy lazy = this.presenter$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (RatingDialogPresenter) lazy.getValue();
    }

    @Override // com.privacystar.core.p011ui.widgets.dialog.rating.RatingDialogContract.View
    public void goToPlayStore() {
        Context context = getContext();
        String packageName = context != null ? context.getPackageName() : null;
        try {
            startActivity(new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=" + packageName)));
        } catch (ActivityNotFoundException e) {
            startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://play.google.com/store/apps/details?id=" + packageName)));
        }
    }

    @Override // android.support.p001v4.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        return inflater.inflate(C1566R.C1571layout.dialog_rate_app, viewGroup);
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
        getPresenter().viewCreated();
    }

    public final void setSnackbarParent(@NotNull View view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        this.parentView = view;
    }

    @Override // com.privacystar.core.p011ui.widgets.dialog.rating.RatingDialogContract.View
    public void setupGoodReviewThankYouPage() {
        getTitle().setText(C1566R.string.rate_app_dialog_thank_you_title_text);
        getSubtitle().setText(C1566R.string.rate_app_dialog_thank_you_subtitle_text);
        getRatingBar().setVisibility(8);
        getMiddleButton().setVisibility(0);
        getMiddleButton().setText(C1566R.string.rate_app_dialog_not_now_btn_label);
        getMiddleButton().setOnClickListener(new View.OnClickListener() { // from class: com.privacystar.core.ui.widgets.dialog.rating.RatingDialogFragment$setupGoodReviewThankYouPage$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RatingDialogFragment.this.getPresenter().onNotNowClicked();
            }
        });
        getRightButton().setVisibility(0);
        getRightButton().setText(C1566R.string.rate_app_dialog_review_btn_label);
        getRightButton().setOnClickListener(new View.OnClickListener() { // from class: com.privacystar.core.ui.widgets.dialog.rating.RatingDialogFragment$setupGoodReviewThankYouPage$2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RatingDialogFragment.this.getPresenter().onReviewClicked();
            }
        });
    }

    @Override // com.privacystar.core.p011ui.widgets.dialog.rating.RatingDialogContract.View
    public void setupRatingPage() {
        getTitle().setText(C1566R.string.rate_app_dialog_title_text);
        getSubtitle().setText(C1566R.string.rate_app_dialog_subtitle_text);
        getRatingBar().setVisibility(0);
        getRatingBar().setOnScoreSelectedListener(new RatingDialogFragment$setupRatingPage$1(this));
        getMiddleButton().setVisibility(8);
        getRightButton().setVisibility(8);
    }
}
