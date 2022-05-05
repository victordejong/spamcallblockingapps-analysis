package com.android.contacts.util;

import android.accounts.Account;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.util.Log;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;
import com.android.contacts.activities.AsusGlobalGroupEditorActivity;
import com.android.contacts.activities.ManageContactsActivity;
import com.android.contacts.b;
import com.android.contacts.model.a;
import com.android.contacts.model.account.AccountWithDataSet;
import com.android.contacts.simcardmanage.b;
import com.android.contacts.vcard.ImportVCardActivity;
import com.android.contacts.vcard.SelectAccountActivity;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/android/contacts/util/AccountSelectionUtil.class */
public class AccountSelectionUtil {
    private static final String LOG_TAG = "AccountSelectionUtil";
    private static final String SIM_INDEX = "sim_index";
    public static Uri mPath;
    public static boolean mVCardShare = false;
    private static int SIM_ID_INVALID = -1;
    private static int mSelectedSim = -1;

    /* loaded from: classes-dex2jar.jar:com/android/contacts/util/AccountSelectionUtil$AccountSelectedListener.class */
    public static class AccountSelectedListener implements DialogInterface.OnClickListener {
        protected final List<AccountWithDataSet> mAccountList;
        private final Context mContext;
        private final int mResId;

        public AccountSelectedListener(Context context, List<AccountWithDataSet> list, int i) {
            if (list == null || list.size() == 0) {
                Log.e(AccountSelectionUtil.LOG_TAG, "The size of Account list is 0.");
            }
            this.mContext = context;
            this.mAccountList = list;
            this.mResId = i;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            dialogInterface.dismiss();
            AccountSelectionUtil.doImport(this.mContext, this.mResId, this.mAccountList.get(i));
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/util/AccountSelectionUtil$SimSelectedListener.class */
    public static class SimSelectedListener implements DialogInterface.OnClickListener {
        private final AccountWithDataSet mAccount;
        private final Context mContext;

        public SimSelectedListener(Context context, AccountWithDataSet accountWithDataSet) {
            this.mContext = context;
            this.mAccount = accountWithDataSet;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            Log.d(AccountSelectionUtil.LOG_TAG, "onClick OK: mSelectedSim = " + AccountSelectionUtil.mSelectedSim);
            if (AccountSelectionUtil.mSelectedSim != AccountSelectionUtil.SIM_ID_INVALID) {
                AccountSelectionUtil.doImportFromMultiSim(this.mContext, this.mAccount, AccountSelectionUtil.mSelectedSim);
            }
        }
    }

    public static void doImport(Context context, int i, AccountWithDataSet accountWithDataSet) {
        switch (i) {
            case 2131755695:
            case 2131755723:
                doImportFromSdCard(context, accountWithDataSet);
                return;
            case 2131755696:
            case 2131755697:
            case 2131755698:
            case 2131755775:
                if (b.a(context)) {
                    doImportFromSim(context, accountWithDataSet, i);
                    return;
                } else {
                    doImportFromSim(context, accountWithDataSet);
                    return;
                }
            default:
                return;
        }
    }

    public static void doImportFromMultiSim(Context context, AccountWithDataSet accountWithDataSet, int i) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setType("vnd.android.cursor.item/sim-contact");
        if (accountWithDataSet != null) {
            intent.putExtra(SelectAccountActivity.ACCOUNT_NAME, accountWithDataSet.name);
            intent.putExtra(SelectAccountActivity.ACCOUNT_TYPE, accountWithDataSet.type);
            intent.putExtra(SelectAccountActivity.DATA_SET, accountWithDataSet.f1998a);
        }
        intent.setClassName("com.android.phone", "com.android.phone.MSimContacts");
        intent.putExtra(SIM_INDEX, i);
        ImplicitIntentsUtil.startActivityOutsideApp(context, intent);
    }

    public static void doImportFromSdCard(Context context, AccountWithDataSet accountWithDataSet) {
        if (context != null) {
            Intent intent = new Intent(context, ImportVCardActivity.class);
            if (accountWithDataSet != null) {
                intent.putExtra(SelectAccountActivity.ACCOUNT_NAME, accountWithDataSet.name);
                intent.putExtra(SelectAccountActivity.ACCOUNT_TYPE, accountWithDataSet.type);
                intent.putExtra(SelectAccountActivity.DATA_SET, accountWithDataSet.f1998a);
            }
            if (mVCardShare) {
                intent.setAction("android.intent.action.VIEW");
                intent.setData(mPath);
            }
            mVCardShare = false;
            mPath = null;
            ImplicitIntentsUtil.startActivityInApp(context, intent);
            if (((Activity) context) instanceof ManageContactsActivity) {
                ((Activity) context).finish();
            }
        }
    }

    public static void doImportFromSim(Context context, AccountWithDataSet accountWithDataSet) {
        Intent intent = new Intent("android.intent.action.ASUS_MULTIPLE_PICKER_SIM_IMPORT");
        if (accountWithDataSet != null) {
            intent.putExtra(SelectAccountActivity.ACCOUNT_NAME, accountWithDataSet.name);
            intent.putExtra(SelectAccountActivity.ACCOUNT_TYPE, accountWithDataSet.type);
            intent.putExtra(SelectAccountActivity.DATA_SET, accountWithDataSet.f1998a);
        }
        ImplicitIntentsUtil.startActivityInApp(context, intent);
        if (((Activity) context) instanceof ManageContactsActivity) {
            ((Activity) context).finish();
        }
    }

    public static void doImportFromSim(Context context, AccountWithDataSet accountWithDataSet, int i) {
        Intent intent;
        int i2 = 2;
        Log.d(LOG_TAG, "doImportFromSim");
        if (PhoneCapabilityTester.IsAsusDevice()) {
            if (accountWithDataSet.name.equals(b.a.c)) {
                String str = i == 2131755698 ? "asus.local.simcard2" : b.a.d;
                if (!accountWithDataSet.type.equals("asus.local.simcard2")) {
                    i2 = 1;
                }
                AccountWithDataSet accountWithDataSet2 = new AccountWithDataSet(b.a.c, str, null);
                intent = new Intent("android.intent.action.ASUS_MULTIPLE_PICKER_SIM_EXPORT");
                intent.putExtra(SelectAccountActivity.ACCOUNT_NAME, accountWithDataSet2.name);
                intent.putExtra(SelectAccountActivity.ACCOUNT_TYPE, accountWithDataSet2.type);
                intent.putExtra(SelectAccountActivity.DATA_SET, accountWithDataSet2.f1998a);
                intent.putExtra("simIndex", i2);
                intent.putExtra(AsusGlobalGroupEditorActivity.AsusGlobalGroupsColumns.TITLE, i);
            } else {
                if (i != 2131755698) {
                    i2 = 1;
                }
                Intent intent2 = new Intent("android.intent.action.ASUS_MULTIPLE_PICKER_SIM_IMPORT");
                intent = intent2;
                if (accountWithDataSet != null) {
                    intent2.putExtra(SelectAccountActivity.ACCOUNT_NAME, accountWithDataSet.name);
                    intent2.putExtra(SelectAccountActivity.ACCOUNT_TYPE, accountWithDataSet.type);
                    intent2.putExtra("simIndex", i2);
                    intent2.putExtra(AsusGlobalGroupEditorActivity.AsusGlobalGroupsColumns.TITLE, i);
                    intent = intent2;
                }
            }
        } else if (accountWithDataSet == null || accountWithDataSet.type == null || !b.a.d.equals(accountWithDataSet.type)) {
            if (i != 2131755698) {
                i2 = 1;
            }
            Intent intent3 = new Intent("android.intent.action.ASUS_MULTIPLE_PICKER_SIM_IMPORT");
            intent = intent3;
            if (accountWithDataSet != null) {
                intent3.putExtra(SelectAccountActivity.ACCOUNT_NAME, accountWithDataSet.name);
                intent3.putExtra(SelectAccountActivity.ACCOUNT_TYPE, accountWithDataSet.type);
                intent3.putExtra("simIndex", i2);
                intent3.putExtra(AsusGlobalGroupEditorActivity.AsusGlobalGroupsColumns.TITLE, i);
                Log.d(LOG_TAG, "account != null simIndex:" + i2 + " accountName:" + accountWithDataSet.name);
                intent = intent3;
            }
        } else {
            String str2 = i == 2131755698 ? "SIM2" : b.a.c;
            if (!accountWithDataSet.name.equals("SIM2")) {
                i2 = 1;
            }
            AccountWithDataSet accountWithDataSet3 = new AccountWithDataSet(str2, b.a.d, null);
            Intent intent4 = new Intent("android.intent.action.ASUS_MULTIPLE_PICKER_SIM_EXPORT");
            intent4.putExtra(SelectAccountActivity.ACCOUNT_NAME, accountWithDataSet3.name);
            intent4.putExtra(SelectAccountActivity.ACCOUNT_TYPE, accountWithDataSet3.type);
            intent4.putExtra(SelectAccountActivity.DATA_SET, accountWithDataSet3.f1998a);
            intent4.putExtra("simIndex", i2);
            intent4.putExtra(AsusGlobalGroupEditorActivity.AsusGlobalGroupsColumns.TITLE, i);
            Log.d(LOG_TAG, " simIndexTo:" + i2 + " accountName:" + str2);
            intent = intent4;
        }
        ImplicitIntentsUtil.startActivityInApp(context, intent);
        if (((Activity) context) instanceof ManageContactsActivity) {
            ((Activity) context).finish();
        }
    }

    public static Dialog getSelectAccountDialog(Context context, int i) {
        return getSelectAccountDialog(context, i, null, null);
    }

    public static Dialog getSelectAccountDialog(Context context, int i, DialogInterface.OnClickListener onClickListener) {
        return getSelectAccountDialog(context, i, onClickListener, null);
    }

    public static Dialog getSelectAccountDialog(Context context, int i, DialogInterface.OnClickListener onClickListener, DialogInterface.OnCancelListener onCancelListener) {
        final a a2 = a.a(context);
        List<AccountWithDataSet> a3 = a2.a(true);
        ArrayList arrayList = new ArrayList();
        int size = a3.size();
        for (int i2 = 0; i2 < size; i2++) {
            AccountWithDataSet accountWithDataSet = a3.get(i2);
            if (PhoneCapabilityTester.IsAsusDevice()) {
                if (b.a.c.equals(((Account) accountWithDataSet).name)) {
                    arrayList.add(accountWithDataSet);
                }
            } else if (b.a.d.equals(((Account) accountWithDataSet).type)) {
                arrayList.add(accountWithDataSet);
            }
        }
        for (int i3 = 0; i3 < arrayList.size(); i3++) {
            a3.remove(arrayList.get(i3));
        }
        Log.i(LOG_TAG, "The number of available accounts: " + a3.size());
        final LayoutInflater layoutInflater = (LayoutInflater) new ContextThemeWrapper(context, 16973836).getSystemService("layout_inflater");
        ArrayAdapter<AccountWithDataSet> arrayAdapter = new ArrayAdapter<AccountWithDataSet>(context, 17367044, a3) { // from class: com.android.contacts.util.AccountSelectionUtil.1
            @Override // android.widget.ArrayAdapter, android.widget.Adapter
            public final View getView(int i4, View view, ViewGroup viewGroup) {
                View view2 = view;
                if (view == null) {
                    view2 = layoutInflater.inflate(17367044, viewGroup, false);
                }
                TextView textView = (TextView) view2.findViewById(16908308);
                TextView textView2 = (TextView) view2.findViewById(16908309);
                AccountWithDataSet item = getItem(i4);
                com.android.contacts.model.account.a a4 = a2.a(item.type, item.f1998a);
                Context context2 = getContext();
                if (a4.g) {
                    textView2.setVisibility(8);
                    textView.setText(a4.a(context2));
                } else {
                    textView.setText(item.name);
                    textView2.setVisibility(0);
                    textView2.setText(a4.a(context2));
                }
                return view2;
            }
        };
        DialogInterface.OnClickListener onClickListener2 = onClickListener;
        if (onClickListener == null) {
            onClickListener2 = new AccountSelectedListener(context, a3, i);
        }
        DialogInterface.OnCancelListener onCancelListener2 = onCancelListener;
        if (onCancelListener == null) {
            onCancelListener2 = new DialogInterface.OnCancelListener() { // from class: com.android.contacts.util.AccountSelectionUtil.2
                @Override // android.content.DialogInterface.OnCancelListener
                public final void onCancel(DialogInterface dialogInterface) {
                    dialogInterface.dismiss();
                }
            };
        }
        return new AlertDialog.Builder(context).setTitle(2131755570).setSingleChoiceItems(arrayAdapter, 0, onClickListener2).setOnCancelListener(onCancelListener2).create();
    }
}
