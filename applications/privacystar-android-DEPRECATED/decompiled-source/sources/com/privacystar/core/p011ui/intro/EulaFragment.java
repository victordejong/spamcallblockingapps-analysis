package com.privacystar.core.p011ui.intro;

import android.content.Context;
import android.os.Bundle;
import android.support.p004v7.widget.CardView;
import android.text.method.LinkMovementMethod;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.google.android.gms.analytics.ecommerce.Promotion;
import com.privacystar.core.C1566R;
import com.privacystar.core.p011ui.intro.intro_core.IntroActivity;
import com.privacystar.core.p011ui.intro.intro_core.IntroFragment;
import com.privacystar.core.service.PreferenceUtil;
import com.privacystar.core.service.analytics.AnalyticsManager;
import com.privacystar.core.service.analytics.Event;
import com.privacystar.core.service.network.handler.RegistrationHandler;
import com.privacystar.core.util.SystemUtil;
import com.privacystar.core.util.analytics.AnalyticsUtil;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import timber.log.Timber;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018��2\u00020\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\b\u0010\b\u001a\u00020\tH\u0016J\b\u0010\n\u001a\u00020\u000bH\u0014J\b\u0010\f\u001a\u00020\tH\u0016J\u0006\u0010\r\u001a\u00020\u0005J&\u0010\u000e\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016J\u0006\u0010\u0015\u001a\u00020\u0005J\b\u0010\u0016\u001a\u00020\tH\u0016¨\u0006\u0017"}, m254d2 = {"Lcom/privacystar/core/ui/intro/EulaFragment;", "Lcom/privacystar/core/ui/intro/intro_core/IntroFragment;", "Lcom/privacystar/core/ui/intro/intro_core/IntroActivity$IntroActivityContent;", "()V", "acceptEula", "", Promotion.ACTION_VIEW, "Landroid/view/View;", "canAutoTransition", "", "getLayoutResId", "", "handlesBackButton", "onCCPALinkClick", "onCreateView", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onEulaLinkClick", "shouldDisplay", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.intro.EulaFragment */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/EulaFragment.class */
public final class EulaFragment extends IntroFragment implements IntroActivity.IntroActivityContent {
    private HashMap _$_findViewCache;

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

    public final void acceptEula(@NotNull View view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        view.setEnabled(false);
        Timber.m37d("Marking EULA accepted.", new Object[0]);
        PreferenceUtil.putEulaAccepted(true);
        AnalyticsUtil.trackRegistration$default(AnalyticsUtil.INSTANCE, AnalyticsUtil.RegistrationAnalyticsEvent.EULA_ACCEPT, 0L, 2, null);
        AnalyticsManager.INSTANCE.fire(Event.EulaAcceptedEvent.INSTANCE);
        RegistrationHandler.getInstance().checkRegistrationWithPermissions(getContext(), true);
        transitionIntroFragment();
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroActivity.IntroActivityContent
    public boolean canAutoTransition() {
        return true;
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroFragment
    protected int getLayoutResId() {
        return C1566R.C1571layout.eula_fragment;
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroActivity.IntroActivityContent
    public boolean handlesBackButton() {
        return false;
    }

    public final void onCCPALinkClick() {
        Timber.m28v("%s was clicked, launching [%s] intent.", "CCPA link", getString(C1566R.string.ccpa_link));
        SystemUtil systemUtil = SystemUtil.INSTANCE;
        Context context = getContext();
        String string = getString(C1566R.string.ccpa_link);
        Intrinsics.checkExpressionValueIsNotNull(string, "getString(R.string.ccpa_link)");
        SystemUtil.openExternalWebpage$default(systemUtil, context, string, null, 4, null);
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroFragment, android.support.p001v4.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        View view = inflater.inflate(getLayoutResId(), viewGroup, false);
        Intrinsics.checkExpressionValueIsNotNull(view, "view");
        ((CardView) view.findViewById(C1566R.C1569id.eula_accept_cv)).setOnClickListener(new View.OnClickListener() { // from class: com.privacystar.core.ui.intro.EulaFragment$onCreateView$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View v) {
                EulaFragment eulaFragment = EulaFragment.this;
                Intrinsics.checkExpressionValueIsNotNull(v, "v");
                eulaFragment.acceptEula(v);
            }
        });
        TextView textView = (TextView) view.findViewById(C1566R.C1569id.eula_fragment_legal_footer);
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.privacystar.core.ui.intro.EulaFragment$onCreateView$$inlined$apply$lambda$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                EulaFragment.this.onEulaLinkClick();
            }
        });
        textView.setMovementMethod(LinkMovementMethod.getInstance());
        TextView textView2 = (TextView) view.findViewById(C1566R.C1569id.eula_fragment_ccpa_footer);
        textView2.setOnClickListener(new View.OnClickListener() { // from class: com.privacystar.core.ui.intro.EulaFragment$onCreateView$$inlined$apply$lambda$2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                EulaFragment.this.onCCPALinkClick();
            }
        });
        textView2.setMovementMethod(LinkMovementMethod.getInstance());
        return view;
    }

    @Override // android.support.p001v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    public final void onEulaLinkClick() {
        Timber.m28v("%s was clicked, launching [%s] intent.", "EULA link", getString(C1566R.string.eula_fragment_eula_url));
        AnalyticsManager.INSTANCE.fire(Event.EulaReadEvent.INSTANCE);
        AnalyticsUtil.trackRegistration$default(AnalyticsUtil.INSTANCE, AnalyticsUtil.RegistrationAnalyticsEvent.EULA_READ, 0L, 2, null);
        SystemUtil systemUtil = SystemUtil.INSTANCE;
        Context context = getContext();
        String string = getString(C1566R.string.eula_fragment_eula_url);
        Intrinsics.checkExpressionValueIsNotNull(string, "getString(R.string.eula_fragment_eula_url)");
        SystemUtil.openExternalWebpage$default(systemUtil, context, string, null, 4, null);
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroActivity.IntroActivityContent
    public boolean shouldDisplay() {
        return !PreferenceUtil.getEulaAccepted();
    }
}
