package com.privacystar.core.p011ui.intro.verification;

import android.content.Context;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.support.annotation.AttrRes;
import android.support.design.widget.CoordinatorLayout;
import android.support.p004v7.widget.CardView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.jakewharton.rxbinding2.InitialValueObservable;
import com.jakewharton.rxbinding2.widget.RxTextView;
import com.privacystar.core.C1566R;
import com.privacystar.core.PSApplication;
import com.privacystar.core.data.model.Subscription;
import com.privacystar.core.data.model.helper.SubscriptionRealm;
import com.privacystar.core.data.providers.DeviceNumberProvider;
import com.privacystar.core.p011ui.intro.intro_core.IntroActivity;
import com.privacystar.core.p011ui.intro.intro_core.IntroFragment;
import com.privacystar.core.p011ui.intro.verification.CodeVerification;
import com.privacystar.core.p011ui.widgets.PSSnackBars;
import com.privacystar.core.service.PreferenceUtil;
import com.privacystar.core.service.calleryd.CallerYDHelper;
import com.privacystar.core.util.NumbersUtil;
import com.privacystar.core.util.ThemeUtil;
import com.privacystar.core.util.extension.ViewExtensionsKt;
import io.reactivex.Observable;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.disposables.Disposable;
import io.reactivex.disposables.Disposables;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.rxkotlin.DisposableKt;
import io.reactivex.schedulers.Schedulers;
import io.reactivex.subjects.BehaviorSubject;
import io.realm.RealmResults;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import timber.log.Timber;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��¬\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010\t\n\u0002\b\u0010\u0018��2\u00020\u00012\u00020\u00022\u00020\u0003B\u0005¢\u0006\u0002\u0010\u0004J\b\u0010-\u001a\u00020\u000bH\u0016J\b\u0010.\u001a\u00020/H\u0016J\u0010\u00100\u001a\u00020/2\u0006\u00101\u001a\u00020\u000bH\u0016J\b\u00102\u001a\u000203H\u0014J\b\u00104\u001a\u000205H\u0002J\u000e\u00106\u001a\b\u0012\u0004\u0012\u00020\u000b0$H\u0002J\b\u00107\u001a\u00020/H\u0016J\b\u00108\u001a\u00020\u000bH\u0016J&\u00109\u001a\u0004\u0018\u00010:2\u0006\u0010;\u001a\u00020<2\b\u0010=\u001a\u0004\u0018\u00010>2\b\u0010?\u001a\u0004\u0018\u00010@H\u0016J\b\u0010A\u001a\u00020/H\u0016J\u0010\u0010B\u001a\u00020/2\u0006\u0010C\u001a\u000205H\u0016J\u0010\u0010D\u001a\u00020/2\u0006\u0010E\u001a\u000205H\u0016J\u0010\u0010F\u001a\u00020/2\u0006\u0010G\u001a\u000203H\u0016J\b\u0010H\u001a\u00020/H\u0016J\b\u0010I\u001a\u00020/H\u0016J\u0010\u0010J\u001a\u00020/2\u0006\u0010K\u001a\u00020\u000bH\u0016J\u0010\u0010L\u001a\u00020/2\u0006\u0010K\u001a\u00020\u000bH\u0016J\b\u0010M\u001a\u00020/H\u0016J\u0012\u0010N\u001a\u00020/2\b\u0010O\u001a\u0004\u0018\u000105H\u0016J\u0010\u0010P\u001a\u00020/2\u0006\u0010K\u001a\u00020\u000bH\u0016J\u0010\u0010Q\u001a\u00020/2\u0006\u0010R\u001a\u00020SH\u0016J\b\u0010T\u001a\u00020/H\u0002J\u0012\u0010U\u001a\u00020/2\b\b\u0001\u0010V\u001a\u000203H\u0002J\b\u0010W\u001a\u00020/H\u0002J\u0010\u0010X\u001a\u00020/2\u0006\u0010Y\u001a\u00020SH\u0016J\b\u0010Z\u001a\u00020\u000bH\u0016J\u0010\u0010[\u001a\u00020/2\u0006\u0010\\\u001a\u00020\u000bH\u0016J\b\u0010]\u001a\u00020/H\u0016J\b\u0010^\u001a\u00020/H\u0016J\b\u0010_\u001a\u00020/H\u0016J\b\u0010`\u001a\u00020/H\u0016J\u0010\u0010a\u001a\u00020/2\u0006\u0010b\u001a\u000205H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\bX\u0082.¢\u0006\u0002\n��R2\u0010\t\u001a&\u0012\f\u0012\n \f*\u0004\u0018\u00010\u000b0\u000b \f*\u0012\u0012\f\u0012\n \f*\u0004\u0018\u00010\u000b0\u000b\u0018\u00010\n0\nX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\u000eX\u0082.¢\u0006\u0002\n��R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082.¢\u0006\u0002\n��R\u000e\u0010\u0013\u001a\u00020\u0012X\u0082.¢\u0006\u0002\n��R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0016\u001a\u00020\u0015X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0017\u001a\u00020\u0015X\u0082\u0004¢\u0006\u0002\n��R\u001b\u0010\u0018\u001a\u00020\u00198BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001a\u0010\u001bR\u000e\u0010\u001e\u001a\u00020\u0012X\u0082.¢\u0006\u0002\n��R\u000e\u0010\u001f\u001a\u00020 X\u0082.¢\u0006\u0002\n��R\u000e\u0010!\u001a\u00020\"X\u0082.¢\u0006\u0002\n��Rj\u0010#\u001a^\u0012(\u0012&\u0012\f\u0012\n \f*\u0004\u0018\u00010&0& \f*\u0012\u0012\f\u0012\n \f*\u0004\u0018\u00010&0&\u0018\u00010%0% \f*.\u0012(\u0012&\u0012\f\u0012\n \f*\u0004\u0018\u00010&0& \f*\u0012\u0012\f\u0012\n \f*\u0004\u0018\u00010&0&\u0018\u00010%0%\u0018\u00010$0$X\u0082\u0004¢\u0006\u0002\n��R2\u0010'\u001a&\u0012\f\u0012\n \f*\u0004\u0018\u00010\u000b0\u000b \f*\u0012\u0012\f\u0012\n \f*\u0004\u0018\u00010\u000b0\u000b\u0018\u00010\n0\nX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010(\u001a\u00020)X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010*\u001a\u00020\u0012X\u0082.¢\u0006\u0002\n��R\u000e\u0010+\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010,\u001a\u00020\u0012X\u0082.¢\u0006\u0002\n��¨\u0006c"}, m254d2 = {"Lcom/privacystar/core/ui/intro/verification/CodeVerificationFragment;", "Lcom/privacystar/core/ui/intro/intro_core/IntroFragment;", "Lcom/privacystar/core/ui/intro/intro_core/IntroActivity$IntroActivityContent;", "Lcom/privacystar/core/ui/intro/verification/CodeVerification$View;", "()V", "actionButton", "Landroid/support/v7/widget/CardView;", "codeField", "Landroid/widget/EditText;", "codeVerification", "Lio/reactivex/subjects/BehaviorSubject;", "", "kotlin.jvm.PlatformType", "countDownTimer", "Landroid/os/CountDownTimer;", "disposables", "Lio/reactivex/disposables/CompositeDisposable;", "editPhoneText", "Landroid/widget/TextView;", "headerPhoneText", "onEditNumberClick", "Landroid/view/View$OnClickListener;", "onUpBackButtonClicked", "onVerifyCodeClick", "presenter", "Lcom/privacystar/core/ui/intro/verification/CodeVerificationPresenter;", "getPresenter", "()Lcom/privacystar/core/ui/intro/verification/CodeVerificationPresenter;", "presenter$delegate", "Lkotlin/Lazy;", "resendButtonText", "resendLayout", "Landroid/widget/LinearLayout;", "snackbarLocation", "Landroid/support/design/widget/CoordinatorLayout;", "subscriptionObsv", "Lio/reactivex/Observable;", "Lio/realm/RealmResults;", "Lcom/privacystar/core/data/model/Subscription;", "subscriptionReady", "timeoutDisposable", "Lio/reactivex/disposables/Disposable;", "validationErrorTv", "verifyButtonEnabled", "verifyButtonText", "canAutoTransition", "disposeTimeoutDisposable", "", "enableVerifyButton", "enabled", "getLayoutResId", "", "getPinText", "", "getTransitionReadyObserver", "goToPreviousFragment", "handlesBackButton", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onDestroyView", "populateCodeFields", "pin", "processResend", "numberToVerify", "registerInputObservable", "maxLength", "registerObservables", "resetView", "setActionButtonVisible", "visible", "setErrorMessage", "setErrorMessageAsSnackbar", "setHeaderText", "deviceNumber", "setLoadingDialog", "setTimeoutDisposable", "verificationTimeoutThreshold", "", "setVerifyButtonActive", "setVerifyButtonBackground", "attrColor", "setVerifyButtonInactive", "setupCountDownTimerForResend", "retryThrottleMs", "shouldDisplay", "showResendLayout", "isVisible", "startCountDown", "startValidation", "switchVerificationToSkip", "transition", "validateCode", "inputPin", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.intro.verification.CodeVerificationFragment */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/verification/CodeVerificationFragment.class */
public final class CodeVerificationFragment extends IntroFragment implements IntroActivity.IntroActivityContent, CodeVerification.View {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(CodeVerificationFragment.class), "presenter", "getPresenter()Lcom/privacystar/core/ui/intro/verification/CodeVerificationPresenter;"))};
    private HashMap _$_findViewCache;
    private CardView actionButton;
    private EditText codeField;
    private CountDownTimer countDownTimer;
    private TextView editPhoneText;
    private TextView headerPhoneText;
    private TextView resendButtonText;
    private LinearLayout resendLayout;
    private CoordinatorLayout snackbarLocation;
    private Disposable timeoutDisposable;
    private TextView validationErrorTv;
    private boolean verifyButtonEnabled;
    private TextView verifyButtonText;
    private final CompositeDisposable disposables = new CompositeDisposable();
    private final BehaviorSubject<Boolean> codeVerification = BehaviorSubject.create();
    private final BehaviorSubject<Boolean> subscriptionReady = BehaviorSubject.createDefault(false);
    private final Observable<RealmResults<Subscription>> subscriptionObsv = SubscriptionRealm.observeSubscription(getRealm());
    private final Lazy presenter$delegate = LazyKt.lazy(new CodeVerificationFragment$presenter$2(this));
    private final View.OnClickListener onEditNumberClick = CodeVerificationFragment$onEditNumberClick$1.INSTANCE;
    private final View.OnClickListener onVerifyCodeClick = new View.OnClickListener() { // from class: com.privacystar.core.ui.intro.verification.CodeVerificationFragment$onVerifyCodeClick$1
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            CodeVerificationPresenter presenter;
            boolean z;
            Timber.m37d("Verify Code Button Clicked", new Object[0]);
            presenter = CodeVerificationFragment.this.getPresenter();
            z = CodeVerificationFragment.this.verifyButtonEnabled;
            presenter.onVerifyCodeButton(z);
        }
    };
    private final View.OnClickListener onUpBackButtonClicked = new View.OnClickListener() { // from class: com.privacystar.core.ui.intro.verification.CodeVerificationFragment$onUpBackButtonClicked$1
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            Timber.m37d("Back Button on the Toolbar pressed", new Object[0]);
            CodeVerificationFragment.this.handlesBackButton();
        }
    };

    public CodeVerificationFragment() {
        Disposable empty = Disposables.empty();
        Intrinsics.checkExpressionValueIsNotNull(empty, "Disposables.empty()");
        this.timeoutDisposable = empty;
    }

    private final String getPinText() {
        EditText editText = this.codeField;
        if (editText == null) {
            Intrinsics.throwUninitializedPropertyAccessException("codeField");
        }
        return editText.getText().toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final CodeVerificationPresenter getPresenter() {
        Lazy lazy = this.presenter$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (CodeVerificationPresenter) lazy.getValue();
    }

    private final Observable<Boolean> getTransitionReadyObserver() {
        Observable<Boolean> combineLatest = Observable.combineLatest(this.codeVerification, this.subscriptionReady, CodeVerificationFragment$getTransitionReadyObserver$1.INSTANCE);
        Intrinsics.checkExpressionValueIsNotNull(combineLatest, "Observable.combineLatest…            t1\n        })");
        return combineLatest;
    }

    private final void setVerifyButtonActive() {
        setVerifyButtonBackground(C1566R.C1567attr.colorButtonActive);
    }

    private final void setVerifyButtonBackground(@AttrRes int i) {
        Context context = getContext();
        if (context != null) {
            CardView cardView = this.actionButton;
            if (cardView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("actionButton");
            }
            cardView.setCardBackgroundColor(ThemeUtil.resolveAttributeColor(context, i));
        }
    }

    private final void setVerifyButtonInactive() {
        setVerifyButtonBackground(C1566R.C1567attr.colorButtonInactive);
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
        return true;
    }

    @Override // com.privacystar.core.p011ui.intro.verification.CodeVerification.View
    public void disposeTimeoutDisposable() {
        this.timeoutDisposable.dispose();
    }

    @Override // com.privacystar.core.p011ui.intro.verification.CodeVerification.View
    public void enableVerifyButton(boolean z) {
        Timber.m37d("Observed form change. Is verify button enabled: [%s]", Boolean.valueOf(z));
        this.verifyButtonEnabled = z;
        if (z) {
            setVerifyButtonActive();
        } else {
            setVerifyButtonInactive();
        }
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroFragment
    protected int getLayoutResId() {
        return C1566R.C1571layout.code_verification_fragment;
    }

    @Override // com.privacystar.core.p011ui.intro.verification.CodeVerification.View
    public void goToPreviousFragment() {
        PreferenceUtil.putIsNumberVerifying(false);
        rewindIntroFragment();
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroActivity.IntroActivityContent
    public boolean handlesBackButton() {
        getPresenter().onBackButton();
        return true;
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroFragment, android.support.p001v4.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        View inflate = inflater.inflate(getLayoutResId(), viewGroup, false);
        CallerYDHelper.INSTANCE.validateNumber(DeviceNumberProvider.INSTANCE.getNumber());
        View findViewById = inflate.findViewById(C1566R.C1569id.code_validation_error_tv);
        Intrinsics.checkExpressionValueIsNotNull(findViewById, "view.findViewById(R.id.code_validation_error_tv)");
        this.validationErrorTv = (TextView) findViewById;
        View findViewById2 = inflate.findViewById(C1566R.C1569id.code_validation_body_3_tv);
        Intrinsics.checkExpressionValueIsNotNull(findViewById2, "view.findViewById(R.id.code_validation_body_3_tv)");
        this.headerPhoneText = (TextView) findViewById2;
        View findViewById3 = inflate.findViewById(C1566R.C1569id.code_validation_body_4_tv);
        Intrinsics.checkExpressionValueIsNotNull(findViewById3, "view.findViewById(R.id.code_validation_body_4_tv)");
        this.editPhoneText = (TextView) findViewById3;
        View findViewById4 = inflate.findViewById(C1566R.C1569id.code_verification_et_1);
        Intrinsics.checkExpressionValueIsNotNull(findViewById4, "view.findViewById(R.id.code_verification_et_1)");
        this.codeField = (EditText) findViewById4;
        View findViewById5 = inflate.findViewById(C1566R.C1569id.code_verification_cv);
        Intrinsics.checkExpressionValueIsNotNull(findViewById5, "view.findViewById(R.id.code_verification_cv)");
        this.actionButton = (CardView) findViewById5;
        View findViewById6 = inflate.findViewById(C1566R.C1569id.code_verification_button_tv);
        Intrinsics.checkExpressionValueIsNotNull(findViewById6, "view.findViewById(R.id.c…e_verification_button_tv)");
        this.verifyButtonText = (TextView) findViewById6;
        View findViewById7 = inflate.findViewById(C1566R.C1569id.code_verification_resend_tv);
        Intrinsics.checkExpressionValueIsNotNull(findViewById7, "view.findViewById(R.id.c…e_verification_resend_tv)");
        this.resendButtonText = (TextView) findViewById7;
        View findViewById8 = inflate.findViewById(C1566R.C1569id.code_validation_snackbar_location);
        Intrinsics.checkExpressionValueIsNotNull(findViewById8, "view.findViewById(R.id.c…dation_snackbar_location)");
        this.snackbarLocation = (CoordinatorLayout) findViewById8;
        View findViewById9 = inflate.findViewById(C1566R.C1569id.code_verification_fragment_resend_ll);
        Intrinsics.checkExpressionValueIsNotNull(findViewById9, "view.findViewById(R.id.c…ation_fragment_resend_ll)");
        this.resendLayout = (LinearLayout) findViewById9;
        ((CardView) inflate.findViewById(C1566R.C1569id.code_verification_cv)).setOnClickListener(this.onVerifyCodeClick);
        ((TextView) inflate.findViewById(C1566R.C1569id.code_validation_body_4_tv)).setOnClickListener(this.onEditNumberClick);
        View findViewById10 = inflate.findViewById(C1566R.C1569id.code_validation_toolbar_back_btn);
        Intrinsics.checkExpressionValueIsNotNull(findViewById10, "view.findViewById(R.id.c…idation_toolbar_back_btn)");
        ImageButton imageButton = (ImageButton) findViewById10;
        if (getPresenter().hasBackButton()) {
            imageButton.setVisibility(0);
            imageButton.setOnClickListener(this.onUpBackButtonClicked);
        } else {
            imageButton.setVisibility(8);
        }
        TextView textView = this.resendButtonText;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("resendButtonText");
        }
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.privacystar.core.ui.intro.verification.CodeVerificationFragment$onCreateView$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CodeVerificationPresenter presenter;
                presenter = CodeVerificationFragment.this.getPresenter();
                presenter.onResendButton();
            }
        });
        EditText editText = this.codeField;
        if (editText == null) {
            Intrinsics.throwUninitializedPropertyAccessException("codeField");
        }
        editText.setOnClickListener(new View.OnClickListener() { // from class: com.privacystar.core.ui.intro.verification.CodeVerificationFragment$onCreateView$2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CodeVerificationPresenter presenter;
                presenter = CodeVerificationFragment.this.getPresenter();
                presenter.onCodeFieldClicked();
            }
        });
        getPresenter().viewCreated();
        if (PreferenceUtil.getCYDNumberAutomaticallyRead()) {
            TextView textView2 = this.editPhoneText;
            if (textView2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("editPhoneText");
            }
            ViewExtensionsKt.gone(textView2);
        }
        Timber.m37d("View created", new Object[0]);
        return inflate;
    }

    @Override // android.support.p001v4.app.Fragment
    public void onDestroyView() {
        Timber.m37d("Fragment View destroyed", new Object[0]);
        this.disposables.clear();
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    @Override // com.privacystar.core.p011ui.intro.verification.CodeVerification.View
    public void populateCodeFields(@NotNull String pin) {
        Intrinsics.checkParameterIsNotNull(pin, "pin");
        Timber.m37d("Populating code field", new Object[0]);
        int length = pin.length();
        for (int i = 0; i < length; i++) {
            char charAt = pin.charAt(i);
            EditText editText = this.codeField;
            if (editText == null) {
                Intrinsics.throwUninitializedPropertyAccessException("codeField");
            }
            editText.getText().append(charAt);
        }
        if (CallerYDHelper.INSTANCE.getChallengeInitResult()) {
            Timber.m37d("Validation started automatically", new Object[0]);
            getPresenter().requestValidation(getPinText());
        }
    }

    @Override // com.privacystar.core.p011ui.intro.verification.CodeVerification.View
    public void processResend(@NotNull String numberToVerify) {
        Intrinsics.checkParameterIsNotNull(numberToVerify, "numberToVerify");
        Timber.m37d("Processing ", new Object[0]);
        Toast.makeText(getContext(), (int) C1566R.string.verification_resend_toast, 1).show();
        CallerYDHelper.INSTANCE.validateNumber(numberToVerify);
    }

    @Override // com.privacystar.core.p011ui.intro.verification.CodeVerification.View
    public void registerInputObservable(final int i) {
        Timber.m37d("Registering input observable ", new Object[0]);
        CompositeDisposable compositeDisposable = this.disposables;
        EditText editText = this.codeField;
        if (editText == null) {
            Intrinsics.throwUninitializedPropertyAccessException("codeField");
        }
        InitialValueObservable<CharSequence> textChanges = RxTextView.textChanges(editText);
        Intrinsics.checkExpressionValueIsNotNull(textChanges, "RxTextView.textChanges(this)");
        Disposable subscribe = textChanges.observeOn(AndroidSchedulers.mainThread()).map((Function) new Function<T, R>() { // from class: com.privacystar.core.ui.intro.verification.CodeVerificationFragment$registerInputObservable$1
            @Override // io.reactivex.functions.Function
            public /* bridge */ /* synthetic */ Object apply(Object obj) {
                return Boolean.valueOf(apply((CharSequence) obj));
            }

            /* JADX WARN: Code restructure failed: missing block: B:13:0x004f, code lost:
                r0 = r6.this$0.activity;
             */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final boolean apply(@org.jetbrains.annotations.NotNull java.lang.CharSequence r7) {
                /*
                    r6 = this;
                    r0 = r7
                    java.lang.String r1 = "cs"
                    kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r0, r1)
                    r0 = 1
                    r8 = r0
                    java.lang.String r0 = "Code Field text has changed to: %s"
                    r1 = 1
                    java.lang.Object[] r1 = new java.lang.Object[r1]
                    r2 = r1
                    r3 = 0
                    r4 = r7
                    java.lang.String r4 = r4.toString()
                    r2[r3] = r4
                    timber.log.Timber.m37d(r0, r1)
                    r0 = r7
                    int r0 = r0.length()
                    r1 = r6
                    int r1 = r5
                    if (r0 != r1) goto L_0x0028
                    goto L_0x002a
                L_0x0028:
                    r0 = 0
                    r8 = r0
                L_0x002a:
                    r0 = r8
                    if (r0 == 0) goto L_0x0074
                    r0 = r6
                    com.privacystar.core.ui.intro.verification.CodeVerificationFragment r0 = com.privacystar.core.p011ui.intro.verification.CodeVerificationFragment.this
                    android.app.Activity r0 = com.privacystar.core.p011ui.intro.verification.CodeVerificationFragment.access$getActivity$p(r0)
                    r7 = r0
                    r0 = r7
                    if (r0 == 0) goto L_0x0044
                    r0 = r7
                    java.lang.String r1 = "input_method"
                    java.lang.Object r0 = r0.getSystemService(r1)
                    r7 = r0
                    goto L_0x0046
                L_0x0044:
                    r0 = 0
                    r7 = r0
                L_0x0046:
                    r0 = r7
                    android.view.inputmethod.InputMethodManager r0 = (android.view.inputmethod.InputMethodManager) r0
                    r7 = r0
                    r0 = r7
                    if (r0 == 0) goto L_0x0074
                    r0 = r6
                    com.privacystar.core.ui.intro.verification.CodeVerificationFragment r0 = com.privacystar.core.p011ui.intro.verification.CodeVerificationFragment.this
                    android.app.Activity r0 = com.privacystar.core.p011ui.intro.verification.CodeVerificationFragment.access$getActivity$p(r0)
                    r9 = r0
                    r0 = r9
                    if (r0 == 0) goto L_0x0074
                    r0 = r9
                    android.view.View r0 = r0.getCurrentFocus()
                    r9 = r0
                    r0 = r9
                    if (r0 == 0) goto L_0x0074
                    r0 = r9
                    android.os.IBinder r0 = r0.getWindowToken()
                    r9 = r0
                    r0 = r9
                    if (r0 == 0) goto L_0x0074
                    r0 = r7
                    r1 = r9
                    r2 = 0
                    boolean r0 = r0.hideSoftInputFromWindow(r1, r2)
                L_0x0074:
                    r0 = r8
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: com.privacystar.core.p011ui.intro.verification.CodeVerificationFragment$registerInputObservable$1.apply(java.lang.CharSequence):boolean");
            }
        }).doOnError(CodeVerificationFragment$registerInputObservable$2.INSTANCE).subscribe(new Consumer<Boolean>() { // from class: com.privacystar.core.ui.intro.verification.CodeVerificationFragment$registerInputObservable$3
            public final void accept(Boolean ready) {
                CodeVerificationPresenter presenter;
                presenter = CodeVerificationFragment.this.getPresenter();
                Intrinsics.checkExpressionValueIsNotNull(ready, "ready");
                presenter.codeFieldIsReady(ready.booleanValue());
            }
        });
        Intrinsics.checkExpressionValueIsNotNull(subscribe, "codeField.textChanges()\n…(ready)\n                }");
        DisposableKt.plusAssign(compositeDisposable, subscribe);
    }

    @Override // com.privacystar.core.p011ui.intro.verification.CodeVerification.View
    public void registerObservables() {
        Timber.m37d("Registering observables", new Object[0]);
        CompositeDisposable compositeDisposable = this.disposables;
        Disposable subscribe = this.codeVerification.subscribe(new Consumer<Boolean>() { // from class: com.privacystar.core.ui.intro.verification.CodeVerificationFragment$registerObservables$1
            public final void accept(Boolean wasValidated) {
                CodeVerificationPresenter presenter;
                presenter = CodeVerificationFragment.this.getPresenter();
                Intrinsics.checkExpressionValueIsNotNull(wasValidated, "wasValidated");
                presenter.codeVerificationResponse(wasValidated.booleanValue());
            }
        });
        Intrinsics.checkExpressionValueIsNotNull(subscribe, "codeVerification.subscri…nResponse(wasValidated) }");
        DisposableKt.plusAssign(compositeDisposable, subscribe);
        CompositeDisposable compositeDisposable2 = this.disposables;
        Disposable subscribe2 = this.subscriptionObsv.subscribe(new Consumer<RealmResults<Subscription>>() { // from class: com.privacystar.core.ui.intro.verification.CodeVerificationFragment$registerObservables$2
            public final void accept(RealmResults<Subscription> realmResults) {
                BehaviorSubject behaviorSubject;
                behaviorSubject = CodeVerificationFragment.this.subscriptionReady;
                behaviorSubject.onNext(Boolean.valueOf(!realmResults.isEmpty()));
            }
        });
        Intrinsics.checkExpressionValueIsNotNull(subscribe2, "subscriptionObsv.subscri…subscription.isEmpty()) }");
        DisposableKt.plusAssign(compositeDisposable2, subscribe2);
        CompositeDisposable compositeDisposable3 = this.disposables;
        Disposable subscribe3 = getTransitionReadyObserver().subscribe(new Consumer<Boolean>() { // from class: com.privacystar.core.ui.intro.verification.CodeVerificationFragment$registerObservables$3
            public final void accept(Boolean ready) {
                CodeVerificationPresenter presenter;
                presenter = CodeVerificationFragment.this.getPresenter();
                Intrinsics.checkExpressionValueIsNotNull(ready, "ready");
                presenter.processTransition(ready.booleanValue());
            }
        });
        Intrinsics.checkExpressionValueIsNotNull(subscribe3, "getTransitionReadyObserv…rocessTransition(ready) }");
        DisposableKt.plusAssign(compositeDisposable3, subscribe3);
        DisposableKt.plusAssign(this.disposables, this.timeoutDisposable);
    }

    @Override // com.privacystar.core.p011ui.intro.verification.CodeVerification.View
    public void resetView() {
        Timber.m37d("View is being reset", new Object[0]);
        EditText editText = this.codeField;
        if (editText == null) {
            Intrinsics.throwUninitializedPropertyAccessException("codeField");
        }
        editText.getEditableText().clear();
        TextView textView = this.verifyButtonText;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("verifyButtonText");
        }
        Context context = getContext();
        textView.setText(context != null ? context.getText(C1566R.string.code_verification_verify_code) : null);
    }

    @Override // com.privacystar.core.p011ui.intro.verification.CodeVerification.View
    public void setActionButtonVisible(boolean z) {
        CardView cardView = this.actionButton;
        if (cardView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("actionButton");
        }
        cardView.setVisibility(z ? 0 : 8);
    }

    @Override // com.privacystar.core.p011ui.intro.verification.CodeVerification.View
    public void setErrorMessage(boolean z) {
        TextView textView = this.validationErrorTv;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("validationErrorTv");
        }
        textView.setVisibility(z ? 0 : 4);
        if (z) {
            disableSpinner();
        }
    }

    @Override // com.privacystar.core.p011ui.intro.verification.CodeVerification.View
    public void setErrorMessageAsSnackbar() {
        disableSpinner();
        PSSnackBars pSSnackBars = PSSnackBars.INSTANCE;
        CoordinatorLayout coordinatorLayout = this.snackbarLocation;
        if (coordinatorLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("snackbarLocation");
        }
        CoordinatorLayout coordinatorLayout2 = coordinatorLayout;
        Context context = getContext();
        if (context == null) {
            Intrinsics.throwNpe();
        }
        Intrinsics.checkExpressionValueIsNotNull(context, "this.context!!");
        PSSnackBars.getTopToBottomNoActionSnack$default(pSSnackBars, coordinatorLayout2, context, C1566R.string.code_verification_incorrect_code, true, false, 16, null).show();
    }

    @Override // com.privacystar.core.p011ui.intro.verification.CodeVerification.View
    public void setHeaderText(@Nullable String str) {
        String str2;
        TextView textView = this.headerPhoneText;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("headerPhoneText");
        }
        if (str == null) {
            Context context = getContext();
            str2 = context != null ? context.getString(C1566R.string.code_validation_fallback) : null;
        } else {
            str2 = NumbersUtil.getDisplayNumber(str);
        }
        textView.setText(str2);
    }

    @Override // com.privacystar.core.p011ui.intro.verification.CodeVerification.View
    public void setLoadingDialog(boolean z) {
        Timber.m37d("Loading Dialog is initializing", new Object[0]);
        try {
            enableVerifyButton(z);
            if (z) {
                enableSpinner(getString(C1566R.string.code_verification_loading_message));
                getPresenter().verifyingDialogShown();
            } else {
                disableSpinner();
            }
        } catch (Exception e) {
            Timber.m23w(e, "Couldn't modify loading dialog.", new Object[0]);
        }
    }

    @Override // com.privacystar.core.p011ui.intro.verification.CodeVerification.View
    public void setTimeoutDisposable(long j) {
        Disposable subscribe = Observable.timer(j, TimeUnit.MILLISECONDS).subscribeOn(Schedulers.m271io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new Consumer<Long>() { // from class: com.privacystar.core.ui.intro.verification.CodeVerificationFragment$setTimeoutDisposable$1
            public final void accept(Long l) {
                CodeVerificationPresenter presenter;
                presenter = CodeVerificationFragment.this.getPresenter();
                presenter.timeoutThresholdReached();
            }
        });
        Intrinsics.checkExpressionValueIsNotNull(subscribe, "Observable.timer(verific…ached()\n                }");
        this.timeoutDisposable = subscribe;
    }

    @Override // com.privacystar.core.p011ui.intro.verification.CodeVerification.View
    public void setupCountDownTimerForResend(final long j) {
        this.countDownTimer = new CountDownTimer(j, j) { // from class: com.privacystar.core.ui.intro.verification.CodeVerificationFragment$setupCountDownTimerForResend$1
            @Override // android.os.CountDownTimer
            public void onFinish() {
                CodeVerificationPresenter presenter;
                Timber.m37d("Count Down Timer Finished after " + j, new Object[0]);
                presenter = CodeVerificationFragment.this.getPresenter();
                presenter.onCountDownFinished();
            }

            @Override // android.os.CountDownTimer
            public void onTick(long j2) {
            }
        };
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroActivity.IntroActivityContent
    public boolean shouldDisplay() {
        Context context = PSApplication.context();
        Intrinsics.checkExpressionValueIsNotNull(context, "PSApplication.context()");
        return context.getResources().getBoolean(C1566R.bool.calleryd_enabled) && !PreferenceUtil.getIsNumberVerified() && !PreferenceUtil.getIsNumberVerificationSkipped();
    }

    @Override // com.privacystar.core.p011ui.intro.verification.CodeVerification.View
    public void showResendLayout(boolean z) {
        LinearLayout linearLayout = this.resendLayout;
        if (linearLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("resendLayout");
        }
        linearLayout.setVisibility(z ? 0 : 4);
    }

    @Override // com.privacystar.core.p011ui.intro.verification.CodeVerification.View
    public void startCountDown() {
        Timber.m37d("Starting count down timer", new Object[0]);
        CountDownTimer countDownTimer = this.countDownTimer;
        if (countDownTimer == null) {
            Intrinsics.throwUninitializedPropertyAccessException("countDownTimer");
        }
        countDownTimer.start();
    }

    @Override // com.privacystar.core.p011ui.intro.verification.CodeVerification.View
    public void startValidation() {
        Timber.m37d("Starting validation", new Object[0]);
        getPresenter().requestValidation(getPinText());
    }

    @Override // com.privacystar.core.p011ui.intro.verification.CodeVerification.View
    public void switchVerificationToSkip() {
        Timber.m37d("verification button becomes skip button", new Object[0]);
        disableSpinner();
        Context it = getContext();
        if (it != null) {
            Intrinsics.checkExpressionValueIsNotNull(it, "it");
            if (it.getResources().getBoolean(C1566R.bool.calleryd_verification_skippable)) {
                TextView textView = this.verifyButtonText;
                if (textView == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("verifyButtonText");
                }
                textView.setText(it.getText(C1566R.string.code_verification_skip_code));
                return;
            }
            getPresenter().skipValidationAvailable();
        }
    }

    @Override // com.privacystar.core.p011ui.intro.verification.CodeVerification.View
    public void transition() {
        Timber.m37d("Passing to the next fragment", new Object[0]);
        disableSpinner();
        transitionIntroFragment();
    }

    @Override // com.privacystar.core.p011ui.intro.verification.CodeVerification.View
    public void validateCode(@NotNull String inputPin) {
        Intrinsics.checkParameterIsNotNull(inputPin, "inputPin");
        Timber.m37d("validating the code %s", inputPin);
        CallerYDHelper.INSTANCE.validateCode(inputPin, this.codeVerification);
    }
}
