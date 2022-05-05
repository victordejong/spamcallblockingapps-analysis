package com.privacystar.core.p011ui.detail_view.about;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.p001v4.text.HtmlCompat;
import android.support.p004v7.widget.LinearLayoutManager;
import android.support.p004v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.mikepenz.aboutlibraries.Libs;
import com.mikepenz.aboutlibraries.LibsBuilder;
import com.privacystar.core.C1566R;
import com.privacystar.core.p011ui.detail_view.DetailActivity;
import com.privacystar.core.p011ui.detail_view.DetailFragment;
import com.privacystar.core.p011ui.widgets.dialog.PSProgressDialog;
import com.privacystar.core.service.googleplay.p010v3.BillingHelper;
import com.privacystar.core.service.network.handler.LicenseHandler;
import com.privacystar.core.service.network.handler.RegistrationHandler;
import com.privacystar.core.util.SystemUtil;
import com.privacystar.core.util.extension.ViewExtensionsKt;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import timber.log.Timber;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018��2\u00020\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010)\u001a\u00020%H\u0002J\b\u0010*\u001a\u00020+H\u0002J\b\u0010,\u001a\u00020-H\u0014J\b\u0010.\u001a\u00020+H\u0002J\b\u0010/\u001a\u00020��H\u0016J\b\u00100\u001a\u00020+H\u0016J&\u00101\u001a\u0004\u0018\u0001022\u0006\u00103\u001a\u0002042\b\u00105\u001a\u0004\u0018\u0001062\b\u00107\u001a\u0004\u0018\u000108H\u0016J\b\u00109\u001a\u00020+H\u0016J\u0012\u0010:\u001a\u00020;2\b\u0010<\u001a\u0004\u0018\u00010=H\u0016J\b\u0010>\u001a\u00020+H\u0016J\b\u0010?\u001a\u00020+H\u0002J\b\u0010@\u001a\u00020+H\u0016J\b\u0010A\u001a\u00020+H\u0002J\b\u0010B\u001a\u00020+H\u0002J\b\u0010C\u001a\u00020+H\u0002R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086.¢\u0006\u000e\n��\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086.¢\u0006\u000e\n��\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR \u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011X\u0086.¢\u0006\u000e\n��\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0019\u001a\u00020\u0018X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u001a\u001a\u00020\u0018X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u001d\u001a\u00020\u0018X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u001e\u001a\u00020\u0018X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u001f\u001a\u00020\u0018X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010 \u001a\u00020\u0018X\u0082\u0004¢\u0006\u0002\n��R\u001a\u0010!\u001a\u00020\u0005X\u0086.¢\u0006\u000e\n��\u001a\u0004\b\"\u0010\u0007\"\u0004\b#\u0010\tR\u000e\u0010$\u001a\u00020%X\u0082.¢\u0006\u0002\n��R\u001a\u0010&\u001a\u00020\u0005X\u0086.¢\u0006\u000e\n��\u001a\u0004\b'\u0010\u0007\"\u0004\b(\u0010\t¨\u0006D"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/about/AboutFragment;", "Lcom/privacystar/core/ui/detail_view/DetailFragment;", "Lcom/privacystar/core/ui/detail_view/DetailActivity$DetailActivityContent;", "()V", "accountInfoTv", "Landroid/widget/TextView;", "getAccountInfoTv", "()Landroid/widget/TextView;", "setAccountInfoTv", "(Landroid/widget/TextView;)V", "infoRecyclerView", "Landroid/support/v7/widget/RecyclerView;", "getInfoRecyclerView", "()Landroid/support/v7/widget/RecyclerView;", "setInfoRecyclerView", "(Landroid/support/v7/widget/RecyclerView;)V", "itemList", "", "Lcom/privacystar/core/ui/detail_view/about/AboutInfoItem;", "getItemList", "()Ljava/util/List;", "setItemList", "(Ljava/util/List;)V", "onAccountInfoClick", "Landroid/view/View$OnClickListener;", "onCCPAClick", "onCheckForUpdatesClick", "onCheckForUpdatesLongClick", "Landroid/view/View$OnLongClickListener;", "onPrivacyPolicyClick", "onRateAppClick", "onSupportClick", "onTermsOfServiceClick", "poweredByFooter", "getPoweredByFooter", "setPoweredByFooter", "progressDialog", "Lcom/privacystar/core/ui/widgets/dialog/PSProgressDialog;", "rateAppTv", "getRateAppTv", "setRateAppTv", "createLoadingSpinner", "displayLoadingSpinner", "", "getLayoutResId", "", "launchLicenses", "newInstance", "onButtonClicked", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onFabClicked", "onMenuItemClicked", "", "item", "Landroid/view/MenuItem;", "onResume", "onSpinnerFinished", "refreshContent", "setupFooter", "setupGeneralLinks", "setupToolbar", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.detail_view.about.AboutFragment */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/about/AboutFragment.class */
public final class AboutFragment extends DetailFragment implements DetailActivity.DetailActivityContent {
    private HashMap _$_findViewCache;
    @NotNull
    public TextView accountInfoTv;
    @NotNull
    public RecyclerView infoRecyclerView;
    @NotNull
    public List<AboutInfoItem> itemList;
    @NotNull
    public TextView poweredByFooter;
    private PSProgressDialog progressDialog;
    @NotNull
    public TextView rateAppTv;
    private final View.OnClickListener onSupportClick = new View.OnClickListener() { // from class: com.privacystar.core.ui.detail_view.about.AboutFragment$onSupportClick$1
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            Timber.m28v("%s was clicked, launching [%s] intent.", AboutFragment.this.getString(C1566R.string.about_fragment_section_1_item_1), AboutFragment.this.getString(C1566R.string.about_fragment_section_1_item_1_url));
            SystemUtil systemUtil = SystemUtil.INSTANCE;
            Context context = AboutFragment.this.getContext();
            String string = AboutFragment.this.getString(C1566R.string.about_fragment_section_1_item_1_url);
            Intrinsics.checkExpressionValueIsNotNull(string, "getString(R.string.about…ent_section_1_item_1_url)");
            SystemUtil.openExternalWebpage$default(systemUtil, context, string, null, 4, null);
        }
    };
    private final View.OnClickListener onCheckForUpdatesClick = new View.OnClickListener() { // from class: com.privacystar.core.ui.detail_view.about.AboutFragment$onCheckForUpdatesClick$1
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            Timber.m28v("%s button was clicked, launching Play Store intent.", AboutFragment.this.getString(C1566R.string.about_fragment_section_1_item_2));
            LicenseHandler.getInstance().generateAndSendRequest(AboutFragment.this.getContext());
            AboutFragment.this.displayLoadingSpinner();
            BillingHelper.checkPurchases(AboutFragment.this.getContext());
        }
    };
    private final View.OnLongClickListener onCheckForUpdatesLongClick = new View.OnLongClickListener() { // from class: com.privacystar.core.ui.detail_view.about.AboutFragment$onCheckForUpdatesLongClick$1
        @Override // android.view.View.OnLongClickListener
        public final boolean onLongClick(View view) {
            Timber.m28v("%s button was long-clicked, launching Play Store intent.", AboutFragment.this.getString(C1566R.string.about_fragment_section_1_item_2));
            BillingHelper.checkPurchases(AboutFragment.this.getContext());
            RegistrationHandler.getInstance().checkRegistration(AboutFragment.this.getContext(), true);
            return true;
        }
    };
    private final View.OnClickListener onRateAppClick = new View.OnClickListener() { // from class: com.privacystar.core.ui.detail_view.about.AboutFragment$onRateAppClick$1
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            Timber.m28v("%s was clicked, launching Play Store intent.", AboutFragment.this.getString(C1566R.string.about_fragment_section_1_item_3));
            Context it = AboutFragment.this.getContext();
            if (it != null) {
                SystemUtil systemUtil = SystemUtil.INSTANCE;
                Intrinsics.checkExpressionValueIsNotNull(it, "it");
                SystemUtil.openPlayStore$default(systemUtil, it, 0, 2, null);
            }
        }
    };
    private final View.OnClickListener onAccountInfoClick = new View.OnClickListener() { // from class: com.privacystar.core.ui.detail_view.about.AboutFragment$onAccountInfoClick$1
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            DetailActivity detailActivity;
            Timber.m28v("%s was clicked, launching Account Information intent.", AboutFragment.this.getString(C1566R.string.about_fragment_section_1_account_info));
            detailActivity = AboutFragment.this.activity;
            if (detailActivity != null) {
                detailActivity.swapFragment(AccountInformationFragment.class, null);
            }
        }
    };
    private final View.OnClickListener onPrivacyPolicyClick = new View.OnClickListener() { // from class: com.privacystar.core.ui.detail_view.about.AboutFragment$onPrivacyPolicyClick$1
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            Timber.m28v("%s was clicked, launching [%s] intent.", AboutFragment.this.getString(C1566R.string.about_fragment_section_1_item_4), AboutFragment.this.getString(C1566R.string.about_fragment_section_1_item_4_url));
            SystemUtil systemUtil = SystemUtil.INSTANCE;
            Context context = AboutFragment.this.getContext();
            String string = AboutFragment.this.getString(C1566R.string.about_fragment_section_1_item_4_url);
            Intrinsics.checkExpressionValueIsNotNull(string, "getString(R.string.about…ent_section_1_item_4_url)");
            SystemUtil.openExternalWebpage$default(systemUtil, context, string, null, 4, null);
        }
    };
    private final View.OnClickListener onTermsOfServiceClick = new View.OnClickListener() { // from class: com.privacystar.core.ui.detail_view.about.AboutFragment$onTermsOfServiceClick$1
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            Timber.m28v("%s was clicked, launching [%s] intent.", AboutFragment.this.getString(C1566R.string.about_fragment_section_1_item_5), AboutFragment.this.getString(C1566R.string.eula_fragment_eula_url));
            SystemUtil systemUtil = SystemUtil.INSTANCE;
            Context context = AboutFragment.this.getContext();
            String string = AboutFragment.this.getString(C1566R.string.eula_fragment_eula_url);
            Intrinsics.checkExpressionValueIsNotNull(string, "getString(R.string.eula_fragment_eula_url)");
            SystemUtil.openExternalWebpage$default(systemUtil, context, string, null, 4, null);
        }
    };
    private final View.OnClickListener onCCPAClick = new View.OnClickListener() { // from class: com.privacystar.core.ui.detail_view.about.AboutFragment$onCCPAClick$1
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            Timber.m28v("%s was clicked, launching [%s] intent.", AboutFragment.this.getString(C1566R.string.ccpa_desc), AboutFragment.this.getString(C1566R.string.ccpa_link));
            SystemUtil systemUtil = SystemUtil.INSTANCE;
            Context context = AboutFragment.this.getContext();
            String string = AboutFragment.this.getString(C1566R.string.ccpa_link);
            Intrinsics.checkExpressionValueIsNotNull(string, "getString(R.string.ccpa_link)");
            SystemUtil.openExternalWebpage$default(systemUtil, context, string, null, 4, null);
        }
    };

    private final PSProgressDialog createLoadingSpinner() {
        Context context = getContext();
        if (context == null) {
            Intrinsics.throwNpe();
        }
        Intrinsics.checkExpressionValueIsNotNull(context, "context!!");
        PSProgressDialog pSProgressDialog = new PSProgressDialog(context);
        pSProgressDialog.setMessage("Checking for updates...");
        pSProgressDialog.setCancelable(true);
        return pSProgressDialog;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void displayLoadingSpinner() {
        PSProgressDialog pSProgressDialog = this.progressDialog;
        if (pSProgressDialog == null) {
            Intrinsics.throwUninitializedPropertyAccessException("progressDialog");
        }
        pSProgressDialog.show();
    }

    private final void launchLicenses() {
        LibsBuilder withFields = new LibsBuilder().withActivityStyle(Libs.ActivityStyle.LIGHT_DARK_TOOLBAR).withFields(C1566R.string.class.getFields());
        String[] stringArray = getResources().getStringArray(C1566R.array.license_lib_exclusions);
        withFields.withExcludedLibraries((String[]) Arrays.copyOf(stringArray, stringArray.length)).start(getContext());
    }

    private final void onSpinnerFinished() {
        Context it = getContext();
        if (it != null) {
            SystemUtil systemUtil = SystemUtil.INSTANCE;
            Intrinsics.checkExpressionValueIsNotNull(it, "it");
            SystemUtil.openPlayStore$default(systemUtil, it, 0, 2, null);
        }
    }

    private final void setupFooter() {
        if (getResources().getBoolean(C1566R.bool.show_powered_by_footer)) {
            String string = getString(C1566R.string.powered_by_first_orion_footer);
            Intrinsics.checkExpressionValueIsNotNull(string, "getString(R.string.powered_by_first_orion_footer)");
            TextView textView = this.poweredByFooter;
            if (textView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("poweredByFooter");
            }
            textView.setText(HtmlCompat.fromHtml(string, 0));
            TextView textView2 = this.poweredByFooter;
            if (textView2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("poweredByFooter");
            }
            ViewExtensionsKt.visible(textView2);
            return;
        }
        TextView textView3 = this.poweredByFooter;
        if (textView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("poweredByFooter");
        }
        ViewExtensionsKt.gone(textView3);
    }

    private final void setupGeneralLinks() {
        Resources resources;
        Resources resources2;
        Context context = getContext();
        int i = 8;
        if (!(context == null || (resources2 = context.getResources()) == null)) {
            boolean booleanValue = Boolean.valueOf(resources2.getBoolean(C1566R.bool.flavor_shows_rate_app_link)).booleanValue();
            TextView textView = this.rateAppTv;
            if (textView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("rateAppTv");
            }
            textView.setVisibility(booleanValue ? 0 : 8);
        }
        Context context2 = getContext();
        if (context2 != null && (resources = context2.getResources()) != null) {
            boolean booleanValue2 = Boolean.valueOf(resources.getBoolean(C1566R.bool.flavor_shows_account_info_link)).booleanValue();
            TextView textView2 = this.accountInfoTv;
            if (textView2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("accountInfoTv");
            }
            if (booleanValue2) {
                i = 0;
            }
            textView2.setVisibility(i);
        }
    }

    private final void setupToolbar() {
        DetailActivity detailActivity = this.activity;
        if (detailActivity != null) {
            detailActivity.setDetailToolbarTitle(C1566R.string.about_fragment_toolbar_title);
            detailActivity.enableToolbarMenu(true);
            detailActivity.enableButton(false);
            detailActivity.setToolbarMenu(C1566R.C1572menu.menu_about);
            detailActivity.enableFab(false);
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
    public final TextView getAccountInfoTv() {
        TextView textView = this.accountInfoTv;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("accountInfoTv");
        }
        return textView;
    }

    @NotNull
    public final RecyclerView getInfoRecyclerView() {
        RecyclerView recyclerView = this.infoRecyclerView;
        if (recyclerView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("infoRecyclerView");
        }
        return recyclerView;
    }

    @NotNull
    public final List<AboutInfoItem> getItemList() {
        List<AboutInfoItem> list = this.itemList;
        if (list == null) {
            Intrinsics.throwUninitializedPropertyAccessException("itemList");
        }
        return list;
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment
    protected int getLayoutResId() {
        return C1566R.C1571layout.about_fragment;
    }

    @NotNull
    public final TextView getPoweredByFooter() {
        TextView textView = this.poweredByFooter;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("poweredByFooter");
        }
        return textView;
    }

    @NotNull
    public final TextView getRateAppTv() {
        TextView textView = this.rateAppTv;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rateAppTv");
        }
        return textView;
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment
    @NotNull
    public AboutFragment newInstance() {
        return new AboutFragment();
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailActivity.DetailActivityContent
    public void onButtonClicked() {
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment, android.support.p001v4.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        View view = inflater.inflate(getLayoutResId(), viewGroup, false);
        Intrinsics.checkExpressionValueIsNotNull(view, "view");
        TextView textView = (TextView) view.findViewById(C1566R.C1569id.about_fragment_rate_app_tv);
        Intrinsics.checkExpressionValueIsNotNull(textView, "view.about_fragment_rate_app_tv");
        this.rateAppTv = textView;
        TextView textView2 = (TextView) view.findViewById(C1566R.C1569id.about_fragment_account_info_tv);
        Intrinsics.checkExpressionValueIsNotNull(textView2, "view.about_fragment_account_info_tv");
        this.accountInfoTv = textView2;
        RecyclerView recyclerView = (RecyclerView) view.findViewById(C1566R.C1569id.about_fragment_section_2_rv);
        Intrinsics.checkExpressionValueIsNotNull(recyclerView, "view.about_fragment_section_2_rv");
        this.infoRecyclerView = recyclerView;
        TextView textView3 = (TextView) view.findViewById(C1566R.C1569id.powered_by_first_orion_footer);
        Intrinsics.checkExpressionValueIsNotNull(textView3, "view.powered_by_first_orion_footer");
        this.poweredByFooter = textView3;
        ((TextView) view.findViewById(C1566R.C1569id.about_fragment_support_tv)).setOnClickListener(this.onSupportClick);
        ((TextView) view.findViewById(C1566R.C1569id.about_fragment_check_update_tv)).setOnClickListener(this.onCheckForUpdatesClick);
        ((TextView) view.findViewById(C1566R.C1569id.about_fragment_check_update_tv)).setOnLongClickListener(this.onCheckForUpdatesLongClick);
        ((TextView) view.findViewById(C1566R.C1569id.about_fragment_rate_app_tv)).setOnClickListener(this.onRateAppClick);
        ((TextView) view.findViewById(C1566R.C1569id.about_fragment_account_info_tv)).setOnClickListener(this.onAccountInfoClick);
        ((TextView) view.findViewById(C1566R.C1569id.about_fragment_privacy_policy_tv)).setOnClickListener(this.onPrivacyPolicyClick);
        ((TextView) view.findViewById(C1566R.C1569id.about_fragment_tos_tv)).setOnClickListener(this.onTermsOfServiceClick);
        ((TextView) view.findViewById(C1566R.C1569id.about_fragment_ccpa_tv)).setOnClickListener(this.onCCPAClick);
        setupGeneralLinks();
        this.itemList = new InfoModule().provideInfoItems();
        this.progressDialog = createLoadingSpinner();
        Timber.m37d("Inflating %s", toString());
        setupToolbar();
        setupFooter();
        RecyclerView recyclerView2 = this.infoRecyclerView;
        if (recyclerView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("infoRecyclerView");
        }
        RecyclerView recyclerView3 = this.infoRecyclerView;
        if (recyclerView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("infoRecyclerView");
        }
        recyclerView2.setLayoutManager(new LinearLayoutManager(recyclerView3.getContext()));
        RecyclerView recyclerView4 = this.infoRecyclerView;
        if (recyclerView4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("infoRecyclerView");
        }
        List<AboutInfoItem> list = this.itemList;
        if (list == null) {
            Intrinsics.throwUninitializedPropertyAccessException("itemList");
        }
        recyclerView4.setAdapter(new InfoItemAdapter(list));
        RecyclerView recyclerView5 = this.infoRecyclerView;
        if (recyclerView5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("infoRecyclerView");
        }
        recyclerView5.setHasFixedSize(true);
        outputNameAccessibility(C1566R.string.con_desc_about_fragment);
        return view;
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment, android.support.p001v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailActivity.DetailActivityContent
    public void onFabClicked() {
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailActivity.DetailActivityContent
    public boolean onMenuItemClicked(@Nullable MenuItem menuItem) {
        boolean z;
        Integer valueOf = menuItem != null ? Integer.valueOf(menuItem.getItemId()) : null;
        if (valueOf != null && valueOf.intValue() == 2131296925) {
            launchLicenses();
            z = true;
        } else {
            z = false;
        }
        return z;
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment, android.support.p001v4.app.Fragment
    public void onResume() {
        super.onResume();
        PSProgressDialog pSProgressDialog = this.progressDialog;
        if (pSProgressDialog == null) {
            Intrinsics.throwUninitializedPropertyAccessException("progressDialog");
        }
        if (pSProgressDialog.isShowing()) {
            PSProgressDialog pSProgressDialog2 = this.progressDialog;
            if (pSProgressDialog2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("progressDialog");
            }
            pSProgressDialog2.dismiss();
            onSpinnerFinished();
        }
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailActivity.DetailActivityContent
    public void refreshContent() {
    }

    public final void setAccountInfoTv(@NotNull TextView textView) {
        Intrinsics.checkParameterIsNotNull(textView, "<set-?>");
        this.accountInfoTv = textView;
    }

    public final void setInfoRecyclerView(@NotNull RecyclerView recyclerView) {
        Intrinsics.checkParameterIsNotNull(recyclerView, "<set-?>");
        this.infoRecyclerView = recyclerView;
    }

    public final void setItemList(@NotNull List<AboutInfoItem> list) {
        Intrinsics.checkParameterIsNotNull(list, "<set-?>");
        this.itemList = list;
    }

    public final void setPoweredByFooter(@NotNull TextView textView) {
        Intrinsics.checkParameterIsNotNull(textView, "<set-?>");
        this.poweredByFooter = textView;
    }

    public final void setRateAppTv(@NotNull TextView textView) {
        Intrinsics.checkParameterIsNotNull(textView, "<set-?>");
        this.rateAppTv = textView;
    }
}
