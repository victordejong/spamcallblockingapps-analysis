package com.privacystar.core.p011ui.intro;

import android.content.Context;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.p004v7.widget.CardView;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ScrollView;
import android.widget.TextView;
import com.google.android.gms.analytics.ecommerce.Promotion;
import com.privacystar.core.C1566R;
import com.privacystar.core.data.model.RegistrationData;
import com.privacystar.core.data.model.helper.RegistrationDataRealm;
import com.privacystar.core.p011ui.intro.intro_core.IntroActivity;
import com.privacystar.core.p011ui.intro.intro_core.IntroFragment;
import com.privacystar.core.service.PreferenceUtil;
import com.privacystar.core.service.analytics.AnalyticsManager;
import com.privacystar.core.service.analytics.Event;
import com.privacystar.core.service.googleplay.IABConstants;
import com.privacystar.core.util.SystemUtil;
import com.privacystar.core.util.analytics.AnalyticsUtil;
import io.realm.RealmResults;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018��2\u00020\u00012\u00020\u0002:\u0001\"B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\f\u001a\u00020\rH\u0016J\b\u0010\u000e\u001a\u00020\u000fH\u0014J\b\u0010\u0010\u001a\u00020\rH\u0016J&\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J\b\u0010\u0019\u001a\u00020\u0006H\u0016J\b\u0010\u001a\u001a\u00020\u0006H\u0002J\b\u0010\u001b\u001a\u00020\u0006H\u0002J\u001a\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\u00122\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J\b\u0010\u001e\u001a\u00020\u0006H\u0002J\b\u0010\u001f\u001a\u00020\rH\u0016J\b\u0010 \u001a\u00020\u0006H\u0007J\u0006\u0010!\u001a\u00020\u0006R\"\u0010\u0004\u001a\u0016\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n��R\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u0082\u000e¢\u0006\u0002\n��R \u0010\n\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b\u0012\u0004\u0012\u00020\u00060\u000bX\u0082\u0004¢\u0006\u0002\n��¨\u0006#"}, m254d2 = {"Lcom/privacystar/core/ui/intro/PrivacyNoticeFragment;", "Lcom/privacystar/core/ui/intro/intro_core/IntroFragment;", "Lcom/privacystar/core/ui/intro/intro_core/IntroActivity$IntroActivityContent;", "()V", "progressTask", "Landroid/os/AsyncTask;", "", "registrationData", "Lio/realm/RealmResults;", "Lcom/privacystar/core/data/model/RegistrationData;", "registrationListener", "Lkotlin/Function1;", "canAutoTransition", "", "getLayoutResId", "", "handlesBackButton", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onPause", "onPrivacyPolicyClick", "onTermsAndConditionsClick", "onViewCreated", Promotion.ACTION_VIEW, "setFinePrint", "shouldDisplay", "trackRegistrationAndTransition", "transition", "ProgressTask", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.intro.PrivacyNoticeFragment */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/PrivacyNoticeFragment.class */
public final class PrivacyNoticeFragment extends IntroFragment implements IntroActivity.IntroActivityContent {
    private HashMap _$_findViewCache;
    private AsyncTask<Unit, Unit, Unit> progressTask;
    private RealmResults<RegistrationData> registrationData;
    private final Function1<RealmResults<RegistrationData>, Unit> registrationListener = new PrivacyNoticeFragment$registrationListener$1(this);

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0006\b\u0086\u0004\u0018��2\u0014\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J%\u0010\u0004\u001a\u00020\u00022\u0016\u0010\u0005\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00020\u0006\"\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0002\u0010\u0007J\u0017\u0010\b\u001a\u00020\u00022\b\u0010\t\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0002\u0010\nJ\b\u0010\u000b\u001a\u00020\u0002H\u0014¨\u0006\f"}, m254d2 = {"Lcom/privacystar/core/ui/intro/PrivacyNoticeFragment$ProgressTask;", "Landroid/os/AsyncTask;", "", "(Lcom/privacystar/core/ui/intro/PrivacyNoticeFragment;)V", "doInBackground", "params", "", "([Lkotlin/Unit;)V", "onPostExecute", IABConstants.JSON_RESULT, "(Lkotlin/Unit;)V", "onPreExecute", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* renamed from: com.privacystar.core.ui.intro.PrivacyNoticeFragment$ProgressTask */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/PrivacyNoticeFragment$ProgressTask.class */
    public final class ProgressTask extends AsyncTask<Unit, Unit, Unit> {
        public ProgressTask() {
        }

        @Override // android.os.AsyncTask
        public /* bridge */ /* synthetic */ Unit doInBackground(Unit[] unitArr) {
            doInBackground2(unitArr);
            return Unit.INSTANCE;
        }

        /* renamed from: doInBackground  reason: avoid collision after fix types in other method */
        protected void doInBackground2(@NotNull Unit... params) {
            Intrinsics.checkParameterIsNotNull(params, "params");
            Thread.sleep(8000L);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void onPostExecute(@Nullable Unit unit) {
            super.onPostExecute((ProgressTask) unit);
            PrivacyNoticeFragment.this.disableSpinner();
            PrivacyNoticeFragment.this.transition();
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            super.onPreExecute();
            PrivacyNoticeFragment.this.enableSpinner(PrivacyNoticeFragment.this.getString(C1566R.string.privacy_policy_loading_message));
        }
    }

    public PrivacyNoticeFragment() {
        RealmResults<RegistrationData> registrationData = RegistrationDataRealm.getRegistrationData(getRealm());
        Intrinsics.checkExpressionValueIsNotNull(registrationData, "RegistrationDataRealm.getRegistrationData(realm)");
        this.registrationData = registrationData;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onPrivacyPolicyClick() {
        ((ScrollView) _$_findCachedViewById(C1566R.C1569id.privacy_notice_sv)).fullScroll(33);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onTermsAndConditionsClick() {
        AnalyticsManager.INSTANCE.fire(Event.EulaReadEvent.INSTANCE);
        AnalyticsUtil.trackRegistration$default(AnalyticsUtil.INSTANCE, AnalyticsUtil.RegistrationAnalyticsEvent.EULA_READ, 0L, 2, null);
        SystemUtil systemUtil = SystemUtil.INSTANCE;
        Context context = getContext();
        String string = getString(C1566R.string.eula_fragment_eula_url);
        Intrinsics.checkExpressionValueIsNotNull(string, "getString(R.string.eula_fragment_eula_url)");
        SystemUtil.openExternalWebpage$default(systemUtil, context, string, null, 4, null);
    }

    private final void setFinePrint() {
        ClickableSpan privacyNoticeFragment$setFinePrint$privacyPolicyClick$1 = new ClickableSpan() { // from class: com.privacystar.core.ui.intro.PrivacyNoticeFragment$setFinePrint$privacyPolicyClick$1
            @Override // android.text.style.ClickableSpan
            public void onClick(@NotNull View widget) {
                Intrinsics.checkParameterIsNotNull(widget, "widget");
                PrivacyNoticeFragment.this.onPrivacyPolicyClick();
            }

            @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
            public void updateDrawState(@NotNull TextPaint ds) {
                Intrinsics.checkParameterIsNotNull(ds, "ds");
                ds.setColor(ds.linkColor);
                ds.setUnderlineText(false);
            }
        };
        ClickableSpan privacyNoticeFragment$setFinePrint$termsAndConditionsClick$1 = new ClickableSpan() { // from class: com.privacystar.core.ui.intro.PrivacyNoticeFragment$setFinePrint$termsAndConditionsClick$1
            @Override // android.text.style.ClickableSpan
            public void onClick(@NotNull View widget) {
                Intrinsics.checkParameterIsNotNull(widget, "widget");
                PrivacyNoticeFragment.this.onTermsAndConditionsClick();
            }

            @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
            public void updateDrawState(@NotNull TextPaint ds) {
                Intrinsics.checkParameterIsNotNull(ds, "ds");
                ds.setColor(ds.linkColor);
                ds.setUnderlineText(false);
            }
        };
        String string = getString(C1566R.string.af_welcome_fine_print_privacy_policy);
        Intrinsics.checkExpressionValueIsNotNull(string, "getString(R.string.af_we…ine_print_privacy_policy)");
        String string2 = getString(C1566R.string.af_welcome_fine_print_terms_and_conditions);
        Intrinsics.checkExpressionValueIsNotNull(string2, "getString(R.string.af_we…int_terms_and_conditions)");
        StringBuilder sb = new StringBuilder();
        TextView privacy_notice_desc_tv = (TextView) _$_findCachedViewById(C1566R.C1569id.privacy_notice_desc_tv);
        Intrinsics.checkExpressionValueIsNotNull(privacy_notice_desc_tv, "privacy_notice_desc_tv");
        sb.append(privacy_notice_desc_tv.getText().toString());
        sb.append(getString(C1566R.string.af_welcome_fine_print, string, string2));
        String sb2 = sb.toString();
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(sb2);
        int indexOf$default = StringsKt.indexOf$default((CharSequence) sb2, string, 0, false, 6, (Object) null);
        spannableStringBuilder.setSpan(privacyNoticeFragment$setFinePrint$privacyPolicyClick$1, indexOf$default, string.length() + indexOf$default, 0);
        int indexOf$default2 = StringsKt.indexOf$default((CharSequence) sb2, string2, 0, false, 6, (Object) null);
        spannableStringBuilder.setSpan(privacyNoticeFragment$setFinePrint$termsAndConditionsClick$1, indexOf$default2, string2.length() + indexOf$default2, 0);
        TextView privacy_notice_desc_tv2 = (TextView) _$_findCachedViewById(C1566R.C1569id.privacy_notice_desc_tv);
        Intrinsics.checkExpressionValueIsNotNull(privacy_notice_desc_tv2, "privacy_notice_desc_tv");
        privacy_notice_desc_tv2.setMovementMethod(LinkMovementMethod.getInstance());
        ((TextView) _$_findCachedViewById(C1566R.C1569id.privacy_notice_desc_tv)).setText(spannableStringBuilder, TextView.BufferType.SPANNABLE);
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

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroFragment
    protected int getLayoutResId() {
        return C1566R.C1571layout.privacy_notice_fragment;
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroActivity.IntroActivityContent
    public boolean handlesBackButton() {
        return false;
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroFragment, android.support.p001v4.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        return inflater.inflate(getLayoutResId(), viewGroup, false);
    }

    @Override // android.support.p001v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v8, types: [kotlin.jvm.functions.Function1<io.realm.RealmResults<com.privacystar.core.data.model.RegistrationData>, kotlin.Unit>, kotlin.jvm.functions.Function1] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // android.support.p001v4.app.Fragment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onPause() {
        /*
            r4 = this;
            r0 = r4
            super.onPause()
            r0 = r4
            android.os.AsyncTask<kotlin.Unit, kotlin.Unit, kotlin.Unit> r0 = r0.progressTask
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L_0x0013
            r0 = r5
            r1 = 1
            boolean r0 = r0.cancel(r1)
        L_0x0013:
            r0 = r4
            r0.disableSpinner()
            r0 = r4
            io.realm.RealmResults<com.privacystar.core.data.model.RegistrationData> r0 = r0.registrationData
            r6 = r0
            r0 = r4
            kotlin.jvm.functions.Function1<io.realm.RealmResults<com.privacystar.core.data.model.RegistrationData>, kotlin.Unit> r0 = r0.registrationListener
            r7 = r0
            r0 = r7
            r5 = r0
            r0 = r7
            if (r0 == 0) goto L_0x0030
            com.privacystar.core.ui.intro.PrivacyNoticeFragment$sam$io_realm_RealmChangeListener$0 r0 = new com.privacystar.core.ui.intro.PrivacyNoticeFragment$sam$io_realm_RealmChangeListener$0
            r1 = r0
            r2 = r7
            r1.<init>(r2)
            r5 = r0
        L_0x0030:
            r0 = r6
            r1 = r5
            io.realm.RealmChangeListener r1 = (io.realm.RealmChangeListener) r1
            r0.removeChangeListener(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.privacystar.core.p011ui.intro.PrivacyNoticeFragment.onPause():void");
    }

    @Override // android.support.p001v4.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        AnalyticsManager.INSTANCE.fire(Event.PrivacyPolicyView.INSTANCE);
        ((CardView) _$_findCachedViewById(C1566R.C1569id.privacy_notice_button_cv)).setOnClickListener(new View.OnClickListener() { // from class: com.privacystar.core.ui.intro.PrivacyNoticeFragment$onViewCreated$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                AnalyticsManager.INSTANCE.fire(Event.PrivacyPolicyContinueClick.INSTANCE);
                PreferenceUtil.putEulaAccepted(true);
                PrivacyNoticeFragment.this.trackRegistrationAndTransition();
            }
        });
        setFinePrint();
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroActivity.IntroActivityContent
    public boolean shouldDisplay() {
        return !PreferenceUtil.getEulaAccepted();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [kotlin.jvm.functions.Function1<io.realm.RealmResults<com.privacystar.core.data.model.RegistrationData>, kotlin.Unit>, kotlin.jvm.functions.Function1] */
    /* JADX WARN: Unknown variable types count: 1 */
    @android.annotation.SuppressLint({"CheckResult"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void trackRegistrationAndTransition() {
        /*
            r5 = this;
            r0 = r5
            com.privacystar.core.ui.intro.PrivacyNoticeFragment$ProgressTask r1 = new com.privacystar.core.ui.intro.PrivacyNoticeFragment$ProgressTask
            r2 = r1
            r3 = r5
            r2.<init>()
            r2 = 0
            kotlin.Unit[] r2 = new kotlin.Unit[r2]
            android.os.AsyncTask r1 = r1.execute(r2)
            r0.progressTask = r1
            r0 = r5
            io.realm.RealmResults<com.privacystar.core.data.model.RegistrationData> r0 = r0.registrationData
            r6 = r0
            r0 = r5
            kotlin.jvm.functions.Function1<io.realm.RealmResults<com.privacystar.core.data.model.RegistrationData>, kotlin.Unit> r0 = r0.registrationListener
            r7 = r0
            r0 = r7
            r8 = r0
            r0 = r7
            if (r0 == 0) goto L_0x002c
            com.privacystar.core.ui.intro.PrivacyNoticeFragment$sam$io_realm_RealmChangeListener$0 r0 = new com.privacystar.core.ui.intro.PrivacyNoticeFragment$sam$io_realm_RealmChangeListener$0
            r1 = r0
            r2 = r7
            r1.<init>(r2)
            r8 = r0
        L_0x002c:
            r0 = r6
            r1 = r8
            io.realm.RealmChangeListener r1 = (io.realm.RealmChangeListener) r1
            r0.addChangeListener(r1)
            com.privacystar.core.service.network.handler.RegistrationHandler r0 = com.privacystar.core.service.network.handler.RegistrationHandler.getInstance()
            r1 = r5
            android.content.Context r1 = r1.getContext()
            r2 = 1
            r0.checkRegistration(r1, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.privacystar.core.p011ui.intro.PrivacyNoticeFragment.trackRegistrationAndTransition():void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v6, types: [kotlin.jvm.functions.Function1<io.realm.RealmResults<com.privacystar.core.data.model.RegistrationData>, kotlin.Unit>, kotlin.jvm.functions.Function1] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void transition() {
        /*
            r4 = this;
            r0 = r4
            android.os.AsyncTask<kotlin.Unit, kotlin.Unit, kotlin.Unit> r0 = r0.progressTask
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L_0x000f
            r0 = r5
            r1 = 1
            boolean r0 = r0.cancel(r1)
        L_0x000f:
            r0 = r4
            io.realm.RealmResults<com.privacystar.core.data.model.RegistrationData> r0 = r0.registrationData
            r6 = r0
            r0 = r4
            kotlin.jvm.functions.Function1<io.realm.RealmResults<com.privacystar.core.data.model.RegistrationData>, kotlin.Unit> r0 = r0.registrationListener
            r7 = r0
            r0 = r7
            r5 = r0
            r0 = r7
            if (r0 == 0) goto L_0x0028
            com.privacystar.core.ui.intro.PrivacyNoticeFragment$sam$io_realm_RealmChangeListener$0 r0 = new com.privacystar.core.ui.intro.PrivacyNoticeFragment$sam$io_realm_RealmChangeListener$0
            r1 = r0
            r2 = r7
            r1.<init>(r2)
            r5 = r0
        L_0x0028:
            r0 = r6
            r1 = r5
            io.realm.RealmChangeListener r1 = (io.realm.RealmChangeListener) r1
            r0.removeChangeListener(r1)
            r0 = r4
            r0.transitionIntroFragment()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.privacystar.core.p011ui.intro.PrivacyNoticeFragment.transition():void");
    }
}
