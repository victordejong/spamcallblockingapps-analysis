package zendesk.support.request;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Build;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.design.widget.AppBarLayout;
import android.support.design.widget.CoordinatorLayout;
import android.support.design.widget.Snackbar;
import android.support.p004v7.app.AlertDialog;
import android.support.p004v7.app.AppCompatActivity;
import android.support.p004v7.widget.Toolbar;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import com.squareup.picasso.Picasso;
import com.zendesk.logger.Logger;
import com.zendesk.sdk.C1790R;
import java.util.Map;
import javax.inject.Inject;
import zendesk.belvedere.BelvedereUi;
import zendesk.commonui.UiConfigUtil;
import zendesk.core.ActionDescription;
import zendesk.core.ActionHandler;
import zendesk.core.ActionHandlerRegistry;
import zendesk.suas.CombinedSubscription;
import zendesk.suas.State;
import zendesk.suas.Store;
import zendesk.suas.Subscription;
import zendesk.support.Constants;
import zendesk.support.SdkDependencyProvider;
import zendesk.support.request.RequestUiConfig;
/* loaded from: classes3-dex2jar.jar:zendesk/support/request/RequestActivity.class */
public class RequestActivity extends AppCompatActivity {
    static final boolean DEBUG = false;
    static final String LOG_TAG = "RequestActivity";
    private static final String SAVED_STATE = "saved_state";
    private RequestAccessibilityHerald accessibilityHerald;
    @Inject
    ActionHandlerRegistry actionHandlerRegistry;
    @Inject

    /* renamed from: af */
    ActionFactory f1892af;
    @Inject
    HeadlessComponentListener headlessComponentListener;
    @Inject
    Picasso picasso;
    private RefreshRequestActionHandler refreshActionHandler;
    private RequestComponent requestComponent;
    private ComponentRequestRouter requestRouter;
    @Inject
    Store store;
    private Subscription subscription;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:zendesk/support/request/RequestActivity$MoveUpWithSnackbarBehaviour.class */
    public static class MoveUpWithSnackbarBehaviour extends AppBarLayout.ScrollingViewBehavior {
        MoveUpWithSnackbarBehaviour() {
        }

        @Override // android.support.design.widget.AppBarLayout.ScrollingViewBehavior, android.support.design.widget.CoordinatorLayout.Behavior
        public boolean layoutDependsOn(CoordinatorLayout coordinatorLayout, View view, View view2) {
            return super.layoutDependsOn(coordinatorLayout, view, view2) || (view2 instanceof Snackbar.SnackbarLayout);
        }

        @Override // android.support.design.widget.AppBarLayout.ScrollingViewBehavior, android.support.design.widget.CoordinatorLayout.Behavior
        public boolean onDependentViewChanged(CoordinatorLayout coordinatorLayout, View view, View view2) {
            boolean onDependentViewChanged = super.onDependentViewChanged(coordinatorLayout, view, view2);
            if (!(view2 instanceof Snackbar.SnackbarLayout)) {
                return onDependentViewChanged;
            }
            view.setPadding(view.getPaddingLeft(), view.getPaddingTop(), view.getPaddingRight(), (int) Math.abs(Math.min(0.0f, view2.getTranslationY() - view2.getHeight())));
            return true;
        }
    }

    /* loaded from: classes3-dex2jar.jar:zendesk/support/request/RequestActivity$RefreshRequestActionHandler.class */
    private final class RefreshRequestActionHandler implements ActionHandler {
        private final String requestId;

        RefreshRequestActionHandler(String str) {
            this.requestId = str;
        }

        @Override // zendesk.core.ActionHandler
        public boolean canHandle(String str) {
            return str.contains(Constants.ACTION_REFRESH_REQUEST_CONVERSATION) && str.contains(this.requestId);
        }

        @Override // zendesk.core.ActionHandler
        public ActionDescription getActionDescription() {
            return null;
        }

        @Override // zendesk.core.ActionHandler
        public int getPriority() {
            return 0;
        }

        @Override // zendesk.core.ActionHandler
        public void handle(@Nullable Map<String, Object> map, @NonNull Context context) {
            RequestActivity.this.store.dispatch(RequestActivity.this.f1892af.updateCommentsAsync());
        }
    }

    private Subscription bindComponents(boolean z) {
        ComponentToolbar bindToolbar = bindToolbar();
        ComponentError create = ComponentError.create(this, this.store, this.f1892af);
        this.requestRouter = ComponentRequestRouter.create(this, z, this.requestComponent);
        this.accessibilityHerald = RequestAccessibilityHerald.create(this);
        return CombinedSubscription.from(this.store.addListener(bindToolbar.getToolbarSelector(), bindToolbar), this.store.addListener(this.requestRouter.getSelector(), this.requestRouter), this.store.addListener(ComponentError.getSelector(), create), this.store.addActionListener(this.accessibilityHerald));
    }

    @SuppressLint({"PrivateResource"})
    private ComponentToolbar bindToolbar() {
        Toolbar toolbar = (Toolbar) findViewById(C1790R.C1793id.activity_request_toolbar);
        ViewAlmostRealProgressBar viewAlmostRealProgressBar = (ViewAlmostRealProgressBar) findViewById(C1790R.C1793id.activity_request_progressbar);
        setSupportActionBar(toolbar);
        toolbar.setNavigationOnClickListener(new View.OnClickListener() { // from class: zendesk.support.request.RequestActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                RequestActivity.this.onBackPressed();
            }
        });
        if (Build.VERSION.SDK_INT >= 21) {
            findViewById(C1790R.C1793id.activity_request_compat_toolbar_shadow).setVisibility(8);
        }
        return new ComponentToolbar(this.picasso, toolbar, viewAlmostRealProgressBar);
    }

    public static RequestUiConfig.Builder builder() {
        return new RequestUiConfig.Builder();
    }

    private void initViews() {
        ((CoordinatorLayout.LayoutParams) findViewById(C1790R.C1793id.activity_request_root).getLayoutParams()).setBehavior(new MoveUpWithSnackbarBehaviour());
    }

    private boolean initializeStoreAndDependencies(Bundle bundle, RequestUiConfig requestUiConfig) {
        boolean z;
        if (!injectDependencies(requestUiConfig)) {
            State restoreState = restoreState(bundle);
            if (restoreState != null) {
                this.store.reset(restoreState);
            } else {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    private boolean injectDependencies(RequestUiConfig requestUiConfig) {
        boolean z;
        this.requestComponent = (RequestComponent) HeadlessFragment.getData(getSupportFragmentManager());
        if (this.requestComponent == null) {
            z = false;
            this.requestComponent = SdkDependencyProvider.INSTANCE.provideSupportSdkComponent().plus(new RequestModule(requestUiConfig));
            HeadlessFragment.install(getSupportFragmentManager(), this.requestComponent);
        } else {
            z = true;
        }
        this.requestComponent.inject(this);
        return z;
    }

    private State restoreState(Bundle bundle) {
        return (bundle == null || !bundle.containsKey(SAVED_STATE)) ? null : (State) bundle.getSerializable(SAVED_STATE);
    }

    @Override // android.support.p001v4.app.FragmentActivity, android.app.Activity
    public void onBackPressed() {
        RequestView currentScreen = this.requestRouter.getCurrentScreen();
        if (currentScreen == null || !currentScreen.hasUnsavedInput()) {
            super.onBackPressed();
        } else {
            new AlertDialog.Builder(this).setTitle(C1790R.string.request_dialog_title_unsaved_changes).setMessage(C1790R.string.request_dialog_body_unsaved_changes).setPositiveButton(C1790R.string.request_dialog_button_label_delete, new DialogInterface.OnClickListener() { // from class: zendesk.support.request.RequestActivity.2
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    RequestActivity.super.onBackPressed();
                }
            }).setNegativeButton(C1790R.string.request_dialog_button_label_cancel, new DialogInterface.OnClickListener() { // from class: zendesk.support.request.RequestActivity.1
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    dialogInterface.dismiss();
                }
            }).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.p004v7.app.AppCompatActivity, android.support.p001v4.app.FragmentActivity, android.support.p001v4.app.SupportActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        getTheme().applyStyle(C1790R.C1796style.ZendeskActivityDefaultTheme, true);
        setContentView(C1790R.C1794layout.zs_activity_request);
        BelvedereUi.install(this);
        initViews();
        if (!SdkDependencyProvider.INSTANCE.isInitialized()) {
            Logger.m295e(LOG_TAG, SdkDependencyProvider.NOT_INITIALIZED_LOG, new Object[0]);
            finish();
            return;
        }
        RequestUiConfig requestUiConfig = (RequestUiConfig) UiConfigUtil.fromBundle(getIntent().getExtras(), RequestUiConfig.class);
        if (requestUiConfig == null) {
            Logger.m295e(LOG_TAG, "No configuration found. Please use RequestActivity.builder()", new Object[0]);
            finish();
            return;
        }
        this.refreshActionHandler = new RefreshRequestActionHandler(requestUiConfig.getRequestId());
        boolean initializeStoreAndDependencies = initializeStoreAndDependencies(bundle, requestUiConfig);
        if (initializeStoreAndDependencies) {
            this.headlessComponentListener.startListening(this.store);
            this.store.dispatch(this.f1892af.installStartConfigAsync(requestUiConfig));
            this.store.dispatch(this.f1892af.loadSettingsAsync());
        }
        this.subscription = bindComponents(initializeStoreAndDependencies);
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        RequestView currentScreen = this.requestRouter.getCurrentScreen();
        return currentScreen != null && currentScreen.inflateMenu(getMenuInflater(), menu);
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        RequestView currentScreen = this.requestRouter.getCurrentScreen();
        return currentScreen != null ? currentScreen.onOptionsItemClicked(menuItem) : super.onOptionsItemSelected(menuItem);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.p001v4.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        if (this.store != null) {
            this.store.dispatch(this.f1892af.androidOnPause());
        }
        if (this.subscription != null) {
            this.subscription.removeListener();
        }
        if (this.actionHandlerRegistry != null) {
            this.actionHandlerRegistry.remove(this.refreshActionHandler);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.p001v4.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        this.store.dispatch(this.f1892af.androidOnResume());
        this.subscription.addListener();
        this.subscription.informWithCurrentState();
        this.actionHandlerRegistry.add(this.refreshActionHandler);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.p004v7.app.AppCompatActivity, android.support.p001v4.app.FragmentActivity, android.support.p001v4.app.SupportActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        bundle.putSerializable(SAVED_STATE, this.store.getState());
        super.onSaveInstanceState(bundle);
    }
}
