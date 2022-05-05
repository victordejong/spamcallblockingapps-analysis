package zendesk.support.guide;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.p001v4.app.Fragment;
import android.support.p001v4.content.ContextCompat;
import android.support.p004v7.widget.LinearLayoutManager;
import android.support.p004v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.zendesk.sdk.C1790R;
import javax.inject.Inject;
import zendesk.commonui.UiConfigUtil;
import zendesk.core.NetworkInfoProvider;
import zendesk.support.HelpCenterProvider;
import zendesk.support.SdkDependencyProvider;
import zendesk.support.guide.HelpCenterMvp;
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3-dex2jar.jar:zendesk/support/guide/HelpCenterFragment.class */
public class HelpCenterFragment extends Fragment {
    public static final String LOG_TAG = "HelpCenterFragment";
    private HelpRecyclerViewAdapter adapter;
    @Inject
    HelpCenterProvider helpCenterProvider;
    @Inject
    NetworkInfoProvider networkInfoProvider;
    private HelpCenterMvp.Presenter presenter;
    private RecyclerView recyclerView;

    @SuppressLint({"RestrictedApi"})
    public static HelpCenterFragment newInstance(HelpCenterUiConfig helpCenterUiConfig) {
        Bundle bundle = new Bundle();
        UiConfigUtil.addToBundle(bundle, helpCenterUiConfig);
        HelpCenterFragment helpCenterFragment = new HelpCenterFragment();
        helpCenterFragment.setArguments(bundle);
        return helpCenterFragment;
    }

    private void setupRecyclerView() {
        this.recyclerView.setLayoutManager(new LinearLayoutManager(getContext(), 1, false));
        this.recyclerView.addItemDecoration(new SeparatorDecoration(ContextCompat.getDrawable(getContext(), C1790R.C1792drawable.zs_help_separator)));
        this.recyclerView.setAdapter(this.adapter);
    }

    @Override // android.support.p001v4.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setRetainInstance(true);
        if (SdkDependencyProvider.INSTANCE.isInitialized()) {
            HelpCenterUiConfig helpCenterUiConfig = (HelpCenterUiConfig) UiConfigUtil.fromBundle(getArguments(), HelpCenterUiConfig.class);
            SdkDependencyProvider.INSTANCE.provideSupportSdkComponent().inject(this);
            this.adapter = new HelpRecyclerViewAdapter(helpCenterUiConfig, this.helpCenterProvider, this.networkInfoProvider);
            if (this.presenter != null) {
                this.adapter.setContentUpdateListener(this.presenter);
            }
        }
    }

    @Override // android.support.p001v4.app.Fragment
    @Nullable
    public View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        View inflate = layoutInflater.inflate(C1790R.C1794layout.zs_fragment_help, viewGroup, false);
        this.recyclerView = (RecyclerView) inflate.findViewById(C1790R.C1793id.help_center_article_list);
        setupRecyclerView();
        return inflate;
    }

    public void setPresenter(HelpCenterMvp.Presenter presenter) {
        this.presenter = presenter;
        if (this.adapter != null) {
            this.adapter.setContentUpdateListener(presenter);
        }
    }
}
