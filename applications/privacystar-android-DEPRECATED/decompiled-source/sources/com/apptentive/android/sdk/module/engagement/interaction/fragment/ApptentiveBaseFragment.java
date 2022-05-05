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
import android.support.annotation.Nullable;
import android.support.p001v4.app.DialogFragment;
import android.support.p001v4.app.Fragment;
import android.support.p001v4.app.FragmentHostCallback;
import android.support.p001v4.app.FragmentManager;
import android.support.p001v4.app.FragmentTransaction;
import android.support.p001v4.content.ContextCompat;
import android.support.p004v7.app.ActionBar;
import android.support.p004v7.app.AppCompatActivity;
import android.support.p004v7.widget.Toolbar;
import android.text.TextUtils;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.View;
import android.widget.FrameLayout;
import com.apptentive.android.sdk.ApptentiveHelper;
import com.apptentive.android.sdk.ApptentiveInternal;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveViewExitType;
import com.apptentive.android.sdk.C0724R;
import com.apptentive.android.sdk.conversation.Conversation;
import com.apptentive.android.sdk.conversation.ConversationDispatchTask;
import com.apptentive.android.sdk.conversation.ConversationProxy;
import com.apptentive.android.sdk.model.ExtendedData;
import com.apptentive.android.sdk.module.engagement.EngagementModule;
import com.apptentive.android.sdk.module.engagement.interaction.InteractionManager;
import com.apptentive.android.sdk.module.engagement.interaction.model.Interaction;
import com.apptentive.android.sdk.util.Constants;
import com.apptentive.android.sdk.util.StringUtils;
import com.apptentive.android.sdk.util.Util;
import com.apptentive.android.sdk.util.threading.DispatchQueue;
import com.apptentive.android.sdk.util.threading.DispatchTask;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment.class */
public abstract class ApptentiveBaseFragment<T extends Interaction> extends DialogFragment implements InteractionManager.InteractionUpdateListener {
    public static final String EVENT_NAME_LAUNCH = "launch";
    private static final String HAS_LAUNCHED = "has_launched";
    private boolean bShownAsModal;
    private Class fragmentImplClass;
    protected boolean hasLaunched;
    private Field hostField;
    protected T interaction;
    private boolean isChangingConfigurations;
    private OnFragmentTransitionListener onTransitionListener;
    private FragmentManager retainedChildFragmentManager;
    protected String sectionTitle;
    private final String fragmentName = getClass().getSimpleName();
    private int toolbarLayoutId = 0;
    private Toolbar toolbar = null;
    private List fragmentMenuItems = null;

    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment$OnFragmentTransitionListener.class */
    public interface OnFragmentTransitionListener {
        void onFragmentTransition(ApptentiveBaseFragment apptentiveBaseFragment);
    }

    public ApptentiveBaseFragment() {
        try {
            this.fragmentImplClass = Class.forName("android.support.v4.app.FragmentManagerImpl");
            this.hostField = this.fragmentImplClass.getDeclaredField("mHost");
            this.hostField.setAccessible(true);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException("FragmentManagerImpl is renamed due to the change of Android SDK, this workaround doesn't work any more. See the issue at https://code.google.com/p/android/issues/detail?id=74222", e);
        } catch (NoSuchFieldException e2) {
            throw new RuntimeException("FragmentManagerImpl.mHost is found due to the change of Android SDK, this workaround doesn't work any more. See the issue at https://code.google.com/p/android/issues/detail?id=74222", e2);
        }
    }

    public static void popBackStack(FragmentManager fragmentManager, String str) {
        fragmentManager.popBackStack(str, 1);
    }

    public static void popBackStackImmediate(FragmentManager fragmentManager, String str) {
        fragmentManager.popBackStackImmediate(str, 1);
    }

    public static void removeFragment(FragmentManager fragmentManager, Fragment fragment) {
        fragmentManager.beginTransaction().remove(fragment).commit();
    }

    public static void replaceFragment(FragmentManager fragmentManager, int i, Fragment fragment, String str, String str2, boolean z, boolean z2) {
        FragmentTransaction beginTransaction = fragmentManager.beginTransaction();
        if (z) {
            beginTransaction.setCustomAnimations(C0724R.anim.apptentive_slide_right_in, C0724R.anim.apptentive_slide_left_out, C0724R.anim.apptentive_slide_left_in, C0724R.anim.apptentive_slide_right_out);
        }
        beginTransaction.replace(i, fragment, str);
        if (!TextUtils.isEmpty(str2)) {
            beginTransaction.addToBackStack(str2);
        }
        beginTransaction.commit();
        if (z2) {
            fragmentManager.executePendingTransactions();
        }
    }

    private void replaceFragmentManagerHost(FragmentManager fragmentManager, FragmentHostCallback fragmentHostCallback) throws IllegalAccessException {
        if (fragmentHostCallback != null) {
            this.hostField.set(fragmentManager, fragmentHostCallback);
        }
    }

    @TargetApi(21)
    private void showToolbarElevationLollipop(boolean z) {
        if (isAdded()) {
            if (this.toolbar == null) {
                ActionBar supportActionBar = ((AppCompatActivity) getActivity()).getSupportActionBar();
                if (supportActionBar == null) {
                    return;
                }
                if (z) {
                    supportActionBar.setElevation(Util.dipsToPixels(getContext(), 4.0f));
                } else {
                    supportActionBar.setElevation(0.0f);
                }
            } else if (z) {
                this.toolbar.setElevation(Util.dipsToPixels(getContext(), 4.0f));
            } else {
                this.toolbar.setElevation(0.0f);
            }
        }
    }

    private void showToolbarElevationPreLollipop(boolean z) {
        FrameLayout frameLayout;
        if (!isAdded() || (frameLayout = (FrameLayout) getActivity().findViewById(C0724R.C0727id.apptentive_vp_container)) == null) {
            return;
        }
        if (z) {
            frameLayout.setForeground(ContextCompat.getDrawable(getContext(), C0724R.C0726drawable.apptentive_actionbar_compat_shadow));
        } else {
            frameLayout.setForeground(new ColorDrawable(0));
        }
    }

    private void updateHosts(FragmentManager fragmentManager, FragmentHostCallback fragmentHostCallback) throws IllegalAccessException {
        if (fragmentManager != null) {
            replaceFragmentManagerHost(fragmentManager, fragmentHostCallback);
        }
        List<Fragment> fragments = fragmentManager.getFragments();
        if (fragments != null) {
            for (Fragment fragment : fragments) {
                if (fragment != null) {
                    try {
                        Field declaredField = Fragment.class.getDeclaredField("mHost");
                        declaredField.setAccessible(true);
                        declaredField.set(fragment, fragmentHostCallback);
                    } catch (Exception e) {
                        ApptentiveLog.m396w(e, e.getMessage(), new Object[0]);
                    }
                    if (fragment.getChildFragmentManager() != null) {
                        updateHosts(fragment.getChildFragmentManager(), fragmentHostCallback);
                    }
                }
            }
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

    public Activity getActivity(Fragment fragment) {
        Fragment fragment2 = fragment;
        if (fragment == null) {
            return null;
        }
        while (fragment2.getParentFragment() != null) {
            fragment2 = fragment2.getParentFragment();
        }
        return fragment2.getActivity();
    }

    protected Bundle getBundle() {
        Bundle bundle = new Bundle();
        if (this.toolbarLayoutId != 0) {
            bundle.putInt(Constants.FragmentConfigKeys.TOOLBAR_ID, this.toolbarLayoutId);
        }
        return bundle;
    }

    @Override // android.support.p001v4.app.Fragment
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

    public String getFragmentName() {
        return this.fragmentName;
    }

    protected int getMenuResourceId() {
        return 0;
    }

    public FragmentManager getRetainedChildFragmentManager() {
        if (this.retainedChildFragmentManager == null) {
            this.retainedChildFragmentManager = getChildFragmentManager();
        }
        return this.retainedChildFragmentManager;
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

    public boolean isChangingConfigurations() {
        return this.isChangingConfigurations;
    }

    public boolean isShownAsModalDialog() {
        Bundle arguments = getArguments();
        if (arguments != null) {
            return arguments.getBoolean(Constants.FragmentConfigKeys.MODAL, false);
        }
        return false;
    }

    @Override // android.support.p001v4.app.DialogFragment, android.support.p001v4.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        try {
            if (this.retainedChildFragmentManager != null) {
                Field declaredField = Fragment.class.getDeclaredField("mChildFragmentManager");
                declaredField.setAccessible(true);
                declaredField.set(this, this.retainedChildFragmentManager);
                updateHosts(getFragmentManager(), (FragmentHostCallback) this.hostField.get(getFragmentManager()));
            } else {
                this.retainedChildFragmentManager = getChildFragmentManager();
            }
        } catch (Exception e) {
            ApptentiveLog.m408e(e, "Exception in %s.onAttach()", getClass().getSimpleName());
        }
    }

    @Override // android.support.p001v4.app.DialogFragment, android.support.p001v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        try {
            Bundle arguments = getArguments();
            if (arguments != null) {
                this.toolbarLayoutId = arguments.getInt(Constants.FragmentConfigKeys.TOOLBAR_ID);
                this.bShownAsModal = arguments.getBoolean(Constants.FragmentConfigKeys.MODAL, false);
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
                this.hasLaunched = bundle.getBoolean(HAS_LAUNCHED);
            }
            if (!this.hasLaunched) {
                this.hasLaunched = true;
                sendLaunchEvent(getActivity());
            }
        } catch (Exception e) {
            ApptentiveLog.m408e(e, "Exception in %s.onCreate()", getClass().getSimpleName());
        }
    }

    @Override // android.support.p001v4.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        try {
            menuInflater.inflate(getMenuResourceId(), menu);
            int themeColor = Util.getThemeColor(ApptentiveInternal.getInstance().getApptentiveToolbarTheme(), C0724R.C0725attr.colorControlNormal);
            for (int i = 0; i < menu.size(); i++) {
                Drawable icon = menu.getItem(i).getIcon();
                if (icon != null) {
                    icon.mutate();
                    icon.setColorFilter(themeColor, PorterDuff.Mode.SRC_ATOP);
                }
            }
            attachFragmentMenuListeners(menu);
        } catch (Exception e) {
            ApptentiveLog.m409e("Exception in %s.onCreateOptionsMenu()", ApptentiveBaseFragment.class.getSimpleName());
        }
        super.onCreateOptionsMenu(menu, menuInflater);
    }

    @Override // android.support.p001v4.app.DialogFragment, android.support.p001v4.app.Fragment
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
            ApptentiveLog.m408e(e, "Exception in %s.onDestroyView()", ApptentiveBaseFragment.class.getSimpleName());
        }
    }

    @Override // android.support.p001v4.app.DialogFragment, android.support.p001v4.app.Fragment
    public void onDetach() {
        super.onDetach();
        try {
            Field declaredField = Fragment.class.getDeclaredField("mChildFragmentManager");
            declaredField.setAccessible(true);
            declaredField.set(this, null);
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        } catch (NoSuchFieldException e2) {
            throw new RuntimeException(e2);
        }
    }

    public boolean onFragmentExit(ApptentiveViewExitType apptentiveViewExitType) {
        List<Fragment> fragments = getRetainedChildFragmentManager().getFragments();
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

    @Override // android.support.p001v4.app.Fragment
    public void onPause() {
        try {
            ApptentiveInternal.getInstance().removeInteractionUpdateListener(this);
        } catch (Exception e) {
            ApptentiveLog.m408e(e, "Exception in %s.onPause()", ApptentiveBaseFragment.class.getSimpleName());
        }
        super.onPause();
    }

    @Override // android.support.p001v4.app.Fragment
    public void onResume() {
        try {
            ApptentiveInternal.getInstance().addInteractionUpdateListener(this);
        } catch (Exception e) {
            ApptentiveLog.m408e(e, "Exception in %s.onResume()", ApptentiveBaseFragment.class.getSimpleName());
        }
        super.onResume();
    }

    @Override // android.support.p001v4.app.DialogFragment, android.support.p001v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean(HAS_LAUNCHED, this.hasLaunched);
    }

    @Override // android.support.p001v4.app.DialogFragment, android.support.p001v4.app.Fragment
    public void onStop() {
        super.onStop();
        try {
            if (Build.VERSION.SDK_INT >= 11 && getActivity() != null) {
                this.isChangingConfigurations = getActivity().isChangingConfigurations();
            }
        } catch (Exception e) {
            ApptentiveLog.m408e(e, "Exception in %s.onStop()", ApptentiveBaseFragment.class.getSimpleName());
        }
    }

    @Override // android.support.p001v4.app.Fragment
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
                    this.toolbar.inflateMenu(getMenuResourceId());
                    attachFragmentMenuListeners(this.toolbar.getMenu());
                    Menu menu2 = this.toolbar.getMenu();
                    this.fragmentMenuItems = new ArrayList();
                    int themeColor = Util.getThemeColor(ApptentiveInternal.getInstance().getApptentiveToolbarTheme(), C0724R.C0725attr.colorControlNormal);
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
            ApptentiveLog.m408e(e, "Exception in %s.onViewCreated()", ApptentiveBaseFragment.class.getSimpleName());
        }
    }

    protected void sendLaunchEvent(Activity activity) {
        if (this.interaction != null) {
            engageInternal(EVENT_NAME_LAUNCH);
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
            ApptentiveLog.m409e("Exception in %s.transit()", ApptentiveBaseFragment.class.getSimpleName());
        }
    }

    protected void updateMenuVisibility() {
    }
}
