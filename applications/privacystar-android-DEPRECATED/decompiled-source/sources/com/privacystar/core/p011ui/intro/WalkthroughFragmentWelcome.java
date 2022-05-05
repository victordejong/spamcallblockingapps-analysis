package com.privacystar.core.p011ui.intro;

import android.content.Context;
import android.view.View;
import com.privacystar.core.C1566R;
import com.privacystar.core.service.PreferenceUtil;
import com.privacystar.core.service.analytics.AnalyticsManager;
import com.privacystar.core.service.analytics.Event;
import com.privacystar.core.service.network.handler.RegistrationHandler;
import com.privacystar.core.util.SystemUtil;
import com.privacystar.core.util.analytics.AnalyticsUtil;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.Nullable;
import timber.log.Timber;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\t\u001a\u00020\nH\u0002J\b\u0010\u000b\u001a\u00020\nH\u0014J\b\u0010\f\u001a\u00020\rH\u0014J\b\u0010\u000e\u001a\u00020\nH\u0014J\b\u0010\u000f\u001a\u00020\nH\u0002J\u0010\u0010\u0010\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\b\u0010\u0013\u001a\u00020\nH\u0014R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\u0014"}, m254d2 = {"Lcom/privacystar/core/ui/intro/WalkthroughFragmentWelcome;", "Lcom/privacystar/core/ui/intro/WalkthroughFragment;", "()V", "privacyPolicyDialog", "Lcom/privacystar/core/ui/intro/PrivacyPolicyDialog;", "getPrivacyPolicyDialog", "()Lcom/privacystar/core/ui/intro/PrivacyPolicyDialog;", "setPrivacyPolicyDialog", "(Lcom/privacystar/core/ui/intro/PrivacyPolicyDialog;)V", "acceptEula", "", "finishWalkthrough", "getIndex", "", "handleLink", "launchEula", "showDisclosureDialog", "skip", "", "transitionWalkthrough", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.intro.WalkthroughFragmentWelcome */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/WalkthroughFragmentWelcome.class */
public final class WalkthroughFragmentWelcome extends WalkthroughFragment {
    private HashMap _$_findViewCache;
    @Nullable
    private PrivacyPolicyDialog privacyPolicyDialog;

    /* JADX INFO: Access modifiers changed from: private */
    public final void acceptEula() {
        Timber.m37d("Marking EULA accepted.", new Object[0]);
        PreferenceUtil.putEulaAccepted(true);
        AnalyticsUtil.trackRegistration$default(AnalyticsUtil.INSTANCE, AnalyticsUtil.RegistrationAnalyticsEvent.EULA_ACCEPT, 0L, 2, null);
        AnalyticsManager.INSTANCE.fire(Event.EulaAcceptedEvent.INSTANCE);
        RegistrationHandler.getInstance().checkRegistrationWithPermissions(getContext(), true);
    }

    private final void launchEula() {
        Timber.m28v("%s was clicked, launching [%s] intent.", "EULA link", getString(C1566R.string.eula_fragment_eula_url));
        AnalyticsManager.INSTANCE.fire(Event.EulaReadEvent.INSTANCE);
        AnalyticsUtil.trackRegistration$default(AnalyticsUtil.INSTANCE, AnalyticsUtil.RegistrationAnalyticsEvent.EULA_READ, 0L, 2, null);
        SystemUtil systemUtil = SystemUtil.INSTANCE;
        Context context = getContext();
        String string = getString(C1566R.string.eula_fragment_eula_url);
        Intrinsics.checkExpressionValueIsNotNull(string, "getString(R.string.eula_fragment_eula_url)");
        SystemUtil.openExternalWebpage$default(systemUtil, context, string, null, 4, null);
    }

    private final void showDisclosureDialog(final boolean z) {
        if (PreferenceUtil.getEulaAccepted()) {
            if (z) {
                super.finishWalkthrough();
            } else {
                transitionIntroFragment();
            }
        } else if (getActivity() != null && this.privacyPolicyDialog == null) {
            this.privacyPolicyDialog = new PrivacyPolicyDialog();
            final PrivacyPolicyDialog privacyPolicyDialog = this.privacyPolicyDialog;
            if (privacyPolicyDialog != null) {
                privacyPolicyDialog.setListener(new View.OnClickListener() { // from class: com.privacystar.core.ui.intro.WalkthroughFragmentWelcome$showDisclosureDialog$$inlined$let$lambda$1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        Timber.m37d("Disclosure notice accepted", new Object[0]);
                        this.acceptEula();
                        if (z) {
                            View$OnClickListenerC1641x72a94e96.super.finishWalkthrough();
                        } else {
                            this.transitionIntroFragment();
                        }
                        PrivacyPolicyDialog.this.dismiss();
                    }
                });
                privacyPolicyDialog.show(getFragmentManager(), PrivacyPolicyDialog.Companion.getCLASS_TAG());
            }
        }
    }

    @Override // com.privacystar.core.p011ui.intro.WalkthroughFragment
    public void _$_clearFindViewByIdCache() {
        if (this._$_findViewCache != null) {
            this._$_findViewCache.clear();
        }
    }

    @Override // com.privacystar.core.p011ui.intro.WalkthroughFragment
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

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.privacystar.core.p011ui.intro.WalkthroughFragment
    public void finishWalkthrough() {
        showDisclosureDialog(true);
    }

    @Override // com.privacystar.core.p011ui.intro.WalkthroughFragment
    protected int getIndex() {
        return 0;
    }

    @Nullable
    public final PrivacyPolicyDialog getPrivacyPolicyDialog() {
        return this.privacyPolicyDialog;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.privacystar.core.p011ui.intro.WalkthroughFragment
    public void handleLink() {
        Timber.m37d("Handling EULA link click.", new Object[0]);
        launchEula();
    }

    @Override // com.privacystar.core.p011ui.intro.WalkthroughFragment, android.support.p001v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    public final void setPrivacyPolicyDialog(@Nullable PrivacyPolicyDialog privacyPolicyDialog) {
        this.privacyPolicyDialog = privacyPolicyDialog;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.privacystar.core.p011ui.intro.WalkthroughFragment
    public void transitionWalkthrough() {
        showDisclosureDialog(false);
    }
}
