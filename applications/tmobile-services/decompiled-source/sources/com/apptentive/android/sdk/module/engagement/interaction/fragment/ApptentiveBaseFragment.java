package com.apptentive.android.sdk.module.engagement.interaction.fragment;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.Nullable;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.apptentive.android.sdk.ApptentiveHelper;
import com.apptentive.android.sdk.ApptentiveInternal;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveViewExitType;
import com.apptentive.android.sdk.C0726R;
import com.apptentive.android.sdk.conversation.Conversation;
import com.apptentive.android.sdk.conversation.ConversationDispatchTask;
import com.apptentive.android.sdk.conversation.ConversationProxy;
import com.apptentive.android.sdk.debug.ErrorMetrics;
import com.apptentive.android.sdk.model.ExtendedData;
import com.apptentive.android.sdk.module.engagement.EngagementModule;
import com.apptentive.android.sdk.module.engagement.interaction.InteractionManager;
import com.apptentive.android.sdk.module.engagement.interaction.model.Interaction;
import com.apptentive.android.sdk.util.StringUtils;
import com.apptentive.android.sdk.util.Util;
import com.apptentive.android.sdk.util.threading.DispatchQueue;
import com.apptentive.android.sdk.util.threading.DispatchTask;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment.class */
public abstract class ApptentiveBaseFragment<T extends Interaction> extends DialogFragment implements InteractionManager.InteractionUpdateListener {
    private boolean bShownAsModal;
    protected boolean hasLaunched;
    protected T interaction;
    private OnFragmentTransitionListener onTransitionListener;
    protected String sectionTitle;
    private int toolbarLayoutId = 0;
    private Toolbar toolbar = null;
    private List fragmentMenuItems = null;

    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment$OnFragmentTransitionListener.class */
    public interface OnFragmentTransitionListener {
        void onFragmentTransition(ApptentiveBaseFragment apptentiveBaseFragment);
    }

    public ApptentiveBaseFragment() {
        getClass().getSimpleName();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void logException(Exception exc) {
        ErrorMetrics.logException(exc);
    }

    @TargetApi(21)
    private void showToolbarElevationLollipop(boolean z) {
        if (isAdded()) {
            Toolbar toolbar = this.toolbar;
            if (toolbar == null) {
                ActionBar supportActionBar = ((AppCompatActivity) getActivity()).getSupportActionBar();
                if (supportActionBar == null) {
                    return;
                }
                if (z) {
                    supportActionBar.mo22086u(Util.dipsToPixels(getContext(), 4.0f));
                } else {
                    supportActionBar.mo22086u(0.0f);
                }
            } else if (z) {
                toolbar.setElevation(Util.dipsToPixels(getContext(), 4.0f));
            } else {
                toolbar.setElevation(0.0f);
            }
        }
    }

    private void showToolbarElevationPreLollipop(boolean z) {
        FrameLayout frameLayout;
        if (!isAdded() || (frameLayout = (FrameLayout) getActivity().findViewById(C0726R.C0729id.apptentive_vp_container)) == null) {
            return;
        }
        if (z) {
            frameLayout.setForeground(ContextCompat.m19673f(getContext(), C0726R.C0728drawable.apptentive_actionbar_compat_shadow));
        } else {
            frameLayout.setForeground(new ColorDrawable(0));
        }
    }

    protected void attachFragmentMenuListeners(Menu menu) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void dispatchOnMainQueue(DispatchTask dispatchTask) {
        DispatchQueue.mainQueue().dispatchAsync(dispatchTask);
    }

    public void engage(final String str, final String str2, final String str3, final String str4, final String str5, final Map<String, Object> map, final ExtendedData... extendedDataArr) {
        ApptentiveHelper.dispatchConversationTask(new ConversationDispatchTask() { // from class: com.apptentive.android.sdk.module.engagement.interaction.fragment.ApptentiveBaseFragment.1
            @Override // com.apptentive.android.sdk.conversation.ConversationDispatchTask
            protected boolean execute(Conversation conversation) {
                return EngagementModule.engage(ApptentiveBaseFragment.this.getActivity(), conversation, str, str2, str3, str4, str5, map, extendedDataArr);
            }
        }, "engage");
    }

    public void engageInternal(String str) {
        engageInternal(str, null);
    }

    public void engageInternal(final String str, final String str2) {
        ApptentiveHelper.dispatchConversationTask(new ConversationDispatchTask() { // from class: com.apptentive.android.sdk.module.engagement.interaction.fragment.ApptentiveBaseFragment.2
            @Override // com.apptentive.android.sdk.conversation.ConversationDispatchTask
            protected boolean execute(Conversation conversation) {
                return EngagementModule.engageInternal(ApptentiveBaseFragment.this.getActivity(), conversation, ApptentiveBaseFragment.this.interaction, str, str2);
            }
        }, "engage");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String exitTypeToDataJson(ApptentiveViewExitType apptentiveViewExitType) {
        return apptentiveViewExitType.isShouldAddToEngage() ? StringUtils.asJson("cause", apptentiveViewExitType.getName()) : null;
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public Context getContext() {
        Context context = super.getContext();
        if (context == null) {
            context = ApptentiveInternal.getInstance().getApplicationContext();
        }
        return context;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public ConversationProxy getConversation() {
        return ApptentiveInternal.getInstance().getConversationProxy();
    }

    protected int getMenuResourceId() {
        return 0;
    }

    public String getTitle() {
        return this.sectionTitle;
    }

    public String getToolbarNavigationContentDescription() {
        return null;
    }

    public int getToolbarNavigationIconResourceId(Resources.Theme theme) {
        return 0;
    }

    public boolean isShownAsModalDialog() {
        Bundle arguments = getArguments();
        if (arguments != null) {
            return arguments.getBoolean("showAsModal", false);
        }
        return false;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        try {
            Bundle arguments = getArguments();
            if (arguments != null) {
                this.toolbarLayoutId = arguments.getInt("toolbarLayoutId");
                this.bShownAsModal = arguments.getBoolean("showAsModal", false);
                String string = arguments.getString("interaction");
                if (!TextUtils.isEmpty(string)) {
                    this.interaction = (T) Interaction.Factory.parseInteraction(string);
                }
            }
            if (this.interaction != null) {
                if (this.bShownAsModal) {
                    getActivity().setTitle(this.interaction.getTitle());
                } else {
                    this.sectionTitle = this.interaction.getTitle();
                }
            }
            if (!(this.toolbarLayoutId == 0 || getMenuResourceId() == 0)) {
                setHasOptionsMenu(true);
            }
            if (bundle != null) {
                this.hasLaunched = bundle.getBoolean("has_launched");
            }
            if (!this.hasLaunched) {
                this.hasLaunched = true;
                sendLaunchEvent(getActivity());
            }
        } catch (Exception e) {
            ApptentiveLog.m15641e(e, "Exception in %s.onCreate()", getClass().getSimpleName());
            logException(e);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        try {
            menuInflater.inflate(getMenuResourceId(), menu);
            int themeColor = Util.getThemeColor(ApptentiveInternal.getInstance().getApptentiveToolbarTheme(), C0726R.attr.colorControlNormal);
            for (int i = 0; i < menu.size(); i++) {
                Drawable icon = menu.getItem(i).getIcon();
                if (icon != null) {
                    icon.mutate();
                    icon.setColorFilter(themeColor, PorterDuff.Mode.SRC_ATOP);
                }
            }
            attachFragmentMenuListeners(menu);
        } catch (Exception e) {
            ApptentiveLog.m15642e("Exception in %s.onCreateOptionsMenu()", ApptentiveBaseFragment.class.getSimpleName());
            logException(e);
        }
        super.onCreateOptionsMenu(menu, menuInflater);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        try {
            if (!(this.toolbar == null || this.fragmentMenuItems == null)) {
                Menu menu = this.toolbar.getMenu();
                for (Integer num : this.fragmentMenuItems) {
                    menu.removeItem(num.intValue());
                }
            }
        } catch (Exception e) {
            ApptentiveLog.m15641e(e, "Exception in %s.onDestroyView()", ApptentiveBaseFragment.class.getSimpleName());
            logException(e);
        }
    }

    public boolean onFragmentExit(ApptentiveViewExitType apptentiveViewExitType) {
        List<Fragment> fragments = getChildFragmentManager().getFragments();
        if (fragments == null) {
            return false;
        }
        for (Fragment fragment : fragments) {
            if (fragment != null && fragment.isVisible()) {
                FragmentManager childFragmentManager = fragment.getChildFragmentManager();
                if (childFragmentManager.getBackStackEntryCount() > 0) {
                    childFragmentManager.popBackStack();
                    return true;
                }
            }
        }
        return false;
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.InteractionManager.InteractionUpdateListener
    public void onInteractionUpdated(boolean z) {
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        try {
            ApptentiveInternal.getInstance().removeInteractionUpdateListener(this);
        } catch (Exception e) {
            ApptentiveLog.m15641e(e, "Exception in %s.onPause()", ApptentiveBaseFragment.class.getSimpleName());
            logException(e);
        }
        super.onPause();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        try {
            ApptentiveInternal.getInstance().addInteractionUpdateListener(this);
        } catch (Exception e) {
            ApptentiveLog.m15641e(e, "Exception in %s.onResume()", ApptentiveBaseFragment.class.getSimpleName());
            logException(e);
        }
        super.onResume();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("has_launched", this.hasLaunched);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        try {
            if (Build.VERSION.SDK_INT >= 11 && getActivity() != null) {
                getActivity().isChangingConfigurations();
            }
        } catch (Exception e) {
            ApptentiveLog.m15641e(e, "Exception in %s.onStop()", ApptentiveBaseFragment.class.getSimpleName());
            logException(e);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        try {
            if (this.toolbarLayoutId != 0) {
                this.toolbar = (Toolbar) getActivity().findViewById(this.toolbarLayoutId);
                if (!(getMenuResourceId() == 0 || this.toolbar == null)) {
                    Menu menu = this.toolbar.getMenu();
                    ArrayList arrayList = new ArrayList();
                    for (int i = 0; i < menu.size(); i++) {
                        arrayList.add(Integer.valueOf(menu.getItem(i).getItemId()));
                    }
                    this.toolbar.m21209x(getMenuResourceId());
                    attachFragmentMenuListeners(this.toolbar.getMenu());
                    Menu menu2 = this.toolbar.getMenu();
                    this.fragmentMenuItems = new ArrayList();
                    int themeColor = Util.getThemeColor(ApptentiveInternal.getInstance().getApptentiveToolbarTheme(), C0726R.attr.colorControlNormal);
                    for (int i2 = 0; i2 < menu2.size(); i2++) {
                        int itemId = menu2.getItem(i2).getItemId();
                        if (!arrayList.contains(Integer.valueOf(itemId))) {
                            this.fragmentMenuItems.add(Integer.valueOf(itemId));
                            Drawable icon = menu2.getItem(i2).getIcon();
                            if (icon != null) {
                                icon.mutate();
                                icon.setColorFilter(themeColor, PorterDuff.Mode.SRC_ATOP);
                            }
                        }
                    }
                }
            }
        } catch (Exception e) {
            ApptentiveLog.m15641e(e, "Exception in %s.onViewCreated()", ApptentiveBaseFragment.class.getSimpleName());
            logException(e);
        }
    }

    protected void sendLaunchEvent(Activity activity) {
        if (this.interaction != null) {
            engageInternal("launch");
        }
    }

    public void setOnTransitionListener(OnFragmentTransitionListener onFragmentTransitionListener) {
        this.onTransitionListener = onFragmentTransitionListener;
    }

    public void showToolbarElevation(boolean z) {
        if (Build.VERSION.SDK_INT >= 21) {
            showToolbarElevationLollipop(z);
        } else {
            showToolbarElevationPreLollipop(z);
        }
    }

    public void transit() {
        try {
            if (this.onTransitionListener != null) {
                this.onTransitionListener.onFragmentTransition(this);
            }
        } catch (Exception e) {
            ApptentiveLog.m15642e("Exception in %s.transit()", ApptentiveBaseFragment.class.getSimpleName());
            logException(e);
        }
    }
}
