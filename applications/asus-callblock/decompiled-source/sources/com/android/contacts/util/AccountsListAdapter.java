package com.android.contacts.util;

import android.accounts.Account;
import android.content.Context;
import android.view.LayoutInflater;
import android.widget.BaseAdapter;
import com.android.contacts.b;
import com.android.contacts.model.a;
import com.android.contacts.model.account.AccountWithDataSet;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/android/contacts/util/AccountsListAdapter.class */
public final class AccountsListAdapter extends BaseAdapter {
    private final a mAccountTypes;
    private final List<AccountWithDataSet> mAccounts;
    private final Context mContext;
    private final LayoutInflater mInflater;

    /* loaded from: classes-dex2jar.jar:com/android/contacts/util/AccountsListAdapter$AccountListFilter.class */
    public enum AccountListFilter {
        ALL_ACCOUNTS,
        ACCOUNTS_CONTACT_WRITABLE,
        ACCOUNTS_GROUP_WRITABLE,
        ACCOUNTS_GROUP_WRITABLE_NOSIM,
        ACCOUNTS_GROUP_WRITABLE_NOSIM1,
        ACCOUNTS_GROUP_WRITABLE_NOSIM2
    }

    public AccountsListAdapter(Context context, AccountListFilter accountListFilter) {
        this(context, accountListFilter, null);
    }

    public AccountsListAdapter(Context context, AccountListFilter accountListFilter, AccountWithDataSet accountWithDataSet) {
        this.mContext = context;
        this.mAccountTypes = a.a(context);
        this.mAccounts = getAccounts(accountListFilter);
        if (accountWithDataSet != null && !this.mAccounts.isEmpty() && !this.mAccounts.get(0).equals(accountWithDataSet) && this.mAccounts.remove(accountWithDataSet)) {
            this.mAccounts.add(0, accountWithDataSet);
        }
        this.mInflater = LayoutInflater.from(context);
    }

    private List<AccountWithDataSet> getAccounts(AccountListFilter accountListFilter) {
        List<AccountWithDataSet> arrayList;
        int i = 0;
        boolean z = false;
        int i2 = 0;
        if (accountListFilter == AccountListFilter.ACCOUNTS_GROUP_WRITABLE) {
            arrayList = new ArrayList<>(this.mAccountTypes.b());
        } else {
            boolean IsAsusDevice = PhoneCapabilityTester.IsAsusDevice();
            if (accountListFilter == AccountListFilter.ACCOUNTS_GROUP_WRITABLE_NOSIM) {
                arrayList = this.mAccountTypes.a(true);
                ArrayList arrayList2 = new ArrayList();
                int size = arrayList.size();
                for (int i3 = 0; i3 < size; i3++) {
                    AccountWithDataSet accountWithDataSet = arrayList.get(i3);
                    if (IsAsusDevice) {
                        if (b.a.c.equals(((Account) accountWithDataSet).name)) {
                            arrayList2.add(accountWithDataSet);
                        }
                    } else if (b.a.d.equals(((Account) accountWithDataSet).type)) {
                        arrayList2.add(accountWithDataSet);
                    }
                }
                for (int i4 = 0; i4 < arrayList2.size(); i4++) {
                    arrayList.remove(arrayList2.get(i4));
                }
            } else if (accountListFilter == AccountListFilter.ACCOUNTS_GROUP_WRITABLE_NOSIM1) {
                arrayList = this.mAccountTypes.a(true);
                int size2 = arrayList.size();
                while (true) {
                    if (i2 >= size2) {
                        break;
                    }
                    AccountWithDataSet accountWithDataSet2 = arrayList.get(i2);
                    if (IsAsusDevice) {
                        if (b.a.d.equals(((Account) accountWithDataSet2).type)) {
                            arrayList.remove(i2);
                            break;
                        }
                        i2++;
                    } else if (b.a.c.equals(((Account) accountWithDataSet2).name)) {
                        arrayList.remove(i2);
                        break;
                    } else {
                        i2++;
                    }
                }
            } else if (accountListFilter == AccountListFilter.ACCOUNTS_GROUP_WRITABLE_NOSIM2) {
                arrayList = this.mAccountTypes.a(true);
                int size3 = arrayList.size();
                while (true) {
                    if (i >= size3) {
                        break;
                    }
                    AccountWithDataSet accountWithDataSet3 = arrayList.get(i);
                    if (IsAsusDevice) {
                        if ("asus.local.simcard2".equals(((Account) accountWithDataSet3).type)) {
                            arrayList.remove(i);
                            break;
                        }
                        i++;
                    } else if ("SIM2".equals(((Account) accountWithDataSet3).name)) {
                        arrayList.remove(i);
                        break;
                    } else {
                        i++;
                    }
                }
            } else {
                a aVar = this.mAccountTypes;
                if (accountListFilter == AccountListFilter.ACCOUNTS_CONTACT_WRITABLE) {
                    z = true;
                }
                arrayList = new ArrayList<>(aVar.a(z));
            }
        }
        return arrayList;
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        return this.mAccounts.size();
    }

    @Override // android.widget.Adapter
    public final AccountWithDataSet getItem(int i) {
        return this.mAccounts.get(i);
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i) {
        return i;
    }

    public final String getSimSlotName(int i) {
        return com.android.contacts.simcardmanage.b.f(this.mContext, i);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x011c  */
    @Override // android.widget.Adapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View getView(int r6, android.view.View r7, android.view.ViewGroup r8) {
        /*
            Method dump skipped, instructions count: 371
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.util.AccountsListAdapter.getView(int, android.view.View, android.view.ViewGroup):android.view.View");
    }
}
