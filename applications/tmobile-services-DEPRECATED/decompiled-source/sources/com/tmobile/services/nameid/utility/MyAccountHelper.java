package com.tmobile.services.nameid.utility;

import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import com.tmobile.services.C1517R;
import com.tmobile.services.nameid.MainApplication;
import com.tmobile.services.nameid.api.TmoApiWrapper;
import com.tmobile.services.nameid.model.TmoUserStatus;
import com.tmobile.services.nameid.p007ui.dialog_fragment.NameIDDialogBuilder;
import com.tmobile.services.nameid.utility.MataErrorInterpreter;
import io.reactivex.functions.Consumer;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/MyAccountHelper.class */
public class MyAccountHelper {
    /* renamed from: a */
    private static void m5487a(FragmentActivity fragmentActivity, FragmentManager fragmentManager, TmoApiWrapper.AccountType accountType, boolean z, boolean z2, boolean z3, String str) {
        MataErrorInterpreter.MataAction mataAction;
        if (z) {
            if (z3 && accountType == TmoApiWrapper.AccountType.TRIAL) {
                mataAction = MataErrorInterpreter.MataAction.ADD_TRIAL;
            } else if (accountType == TmoApiWrapper.AccountType.CNAM) {
                mataAction = MataErrorInterpreter.MataAction.ADD_CALLER_ID;
            } else {
                if (accountType == TmoApiWrapper.AccountType.NAMEID) {
                    mataAction = MataErrorInterpreter.MataAction.ADD_PREMIUM;
                }
                mataAction = null;
            }
        } else if (accountType == TmoApiWrapper.AccountType.TRIAL) {
            mataAction = MataErrorInterpreter.MataAction.REMOVE_TRIAL;
        } else if (accountType == TmoApiWrapper.AccountType.CNAM) {
            mataAction = MataErrorInterpreter.MataAction.REMOVE_CALLER_ID;
        } else {
            if (accountType == TmoApiWrapper.AccountType.NAMEID) {
                mataAction = MataErrorInterpreter.MataAction.REMOVE_PREMIUM;
            }
            mataAction = null;
        }
        if (mataAction != null && (fragmentActivity instanceof AppCompatActivity)) {
            NameIDDialogBuilder.f13943m.m6134j(mataAction, str, fragmentActivity).m6160b(((AppCompatActivity) fragmentActivity).getSupportFragmentManager());
        }
    }

    /* renamed from: b */
    private static void m5486b(FragmentActivity fragmentActivity, FragmentManager fragmentManager, TmoApiWrapper.AccountType accountType, boolean z, boolean z2, boolean z3) {
        if (!z || !z2) {
            if (!z && !z2) {
                NameIDDialogBuilder nameIDDialogBuilder = new NameIDDialogBuilder();
                nameIDDialogBuilder.m6159c(true, null);
                nameIDDialogBuilder.m6155g(C1517R.C1519drawable.ic_illustrations_check);
                nameIDDialogBuilder.m6156f(C1517R.string.general_got_it, new String[0]);
                if (!accountType.equals(TmoApiWrapper.AccountType.TRIAL)) {
                    nameIDDialogBuilder.m6146p(C1517R.string.unsubscribe_confirmed_title, new String[0]);
                    nameIDDialogBuilder.m6154h(C1517R.string.unsubscribe_confirmed_message, new String[0]);
                    MainApplication.m7555A("cnambase_canceled", null);
                } else {
                    nameIDDialogBuilder.m6146p(C1517R.string.cancel_trial_confirmed_title, new String[0]);
                    nameIDDialogBuilder.m6154h(C1517R.string.cancel_trial_confirmed_message, new String[0]);
                    MainApplication.m7555A("cnamfree_canceled", null);
                }
                if (fragmentActivity instanceof AppCompatActivity) {
                    nameIDDialogBuilder.m6160b(((AppCompatActivity) fragmentActivity).getSupportFragmentManager());
                }
            }
        } else if (!z3 || accountType != TmoApiWrapper.AccountType.TRIAL) {
            LogUtil.m5632o("MyAccountHelper#", "setaccount success, showing sub latency");
            WidgetUtils.m5227j0(fragmentManager);
        } else {
            LogUtil.m5632o("MyAccountHelper#", "setaccount success, showing trial latency");
            WidgetUtils.m5225k0(fragmentManager);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static /* synthetic */ void m5485c(DialogFragment dialogFragment, FragmentActivity fragmentActivity, FragmentManager fragmentManager, TmoApiWrapper.AccountType accountType, boolean z, boolean z2, boolean z3, TmoUserStatus tmoUserStatus) throws Exception {
        dialogFragment.dismissAllowingStateLoss();
        String errorText = tmoUserStatus.getErrorText();
        if (errorText == null || errorText.isEmpty() || errorText.toLowerCase().contains("none")) {
            m5486b(fragmentActivity, fragmentManager, accountType, z, z2, z3);
        } else {
            m5487a(fragmentActivity, fragmentManager, accountType, z, z2, z3, errorText);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public static /* synthetic */ void m5484d(DialogFragment dialogFragment, TmoApiWrapper.AccountType accountType, FragmentActivity fragmentActivity, Throwable th) throws Exception {
        LogUtil.m5632o("MyAccountHelper#", "setaccount fail");
        dialogFragment.dismissAllowingStateLoss();
        LogUtil.m5643d("MyAccountHelper#", "failed to process account change; accountType=" + accountType);
        NameIDDialogBuilder.f13943m.m6131m(fragmentActivity).m6160b(fragmentActivity.getSupportFragmentManager());
    }

    /* renamed from: e */
    public static void m5483e(final FragmentActivity fragmentActivity, final FragmentManager fragmentManager, final boolean z, final TmoApiWrapper.AccountType accountType, final boolean z2, final boolean z3) {
        LogUtil.m5643d("MyAccountHelper#updateTo", "Updating type " + accountType.getValue() + " to " + z2);
        if (WidgetUtils.m5241c0(fragmentActivity, fragmentManager)) {
            LogUtil.m5643d("MyAccountHelper#updateTo", "Returning without updating due to no network");
            return;
        }
        final DialogFragment a0 = WidgetUtils.m5245a0(fragmentManager, C1517R.string.account_upgrade_loading, false);
        TmoApiWrapper.m6646d0(fragmentActivity, accountType, z2, z3, "SETTINGS", new Consumer() { // from class: com.tmobile.services.nameid.utility.a1
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                MyAccountHelper.m5485c(DialogFragment.this, fragmentActivity, fragmentManager, accountType, z2, z3, z, (TmoUserStatus) obj);
            }
        }, new Consumer() { // from class: com.tmobile.services.nameid.utility.z0
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                MyAccountHelper.m5484d(DialogFragment.this, accountType, fragmentActivity, (Throwable) obj);
            }
        });
    }
}
