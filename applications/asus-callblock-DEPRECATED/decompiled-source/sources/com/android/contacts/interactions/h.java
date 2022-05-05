package com.android.contacts.interactions;

import android.accounts.Account;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.DialogFragment;
import android.app.FragmentManager;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.provider.ContactsContract;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;
import android.widget.Toast;
import com.android.contacts.activities.AsusAccountChooseActivity;
import com.android.contacts.activities.AsusGlobalGroupEditorActivity;
import com.android.contacts.activities.ManageContactsActivity;
import com.android.contacts.b;
import com.android.contacts.editor.g;
import com.android.contacts.model.a;
import com.android.contacts.model.account.AccountWithDataSet;
import com.android.contacts.simcardmanage.e;
import com.android.contacts.util.AccountSelectionUtil;
import com.android.contacts.util.AccountsListAdapter;
import com.android.contacts.util.ImplicitIntentsUtil;
import com.android.contacts.util.PhoneCapabilityTester;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/android/contacts/interactions/h.class */
public final class h extends DialogFragment implements g.a {

    /* renamed from: a  reason: collision with root package name */
    private final String[] f1472a = {"lookup"};

    public static void a(FragmentManager fragmentManager) {
        try {
            h hVar = new h();
            Bundle bundle = new Bundle();
            bundle.putBoolean("CONTACTS_ARE_AVAILABLE", true);
            hVar.setArguments(bundle);
            hVar.show(fragmentManager, "ImportExportDialogFragment");
        } catch (Exception e) {
            Log.i("ImportExportDialogFragment", e.toString());
        }
    }

    static /* synthetic */ void a(h hVar) {
        Cursor query = hVar.getActivity().getContentResolver().query(ContactsContract.Contacts.CONTENT_URI, hVar.f1472a, "in_visible_group!=0", null, null);
        if (query != null) {
            try {
                if (!query.moveToFirst()) {
                    Toast.makeText(hVar.getActivity(), 2131756119, 0).show();
                    return;
                }
                StringBuilder sb = new StringBuilder();
                int i = 0;
                do {
                    if (i != 0) {
                        sb.append(':');
                    }
                    sb.append(query.getString(0));
                    i++;
                } while (query.moveToNext());
                Uri withAppendedPath = Uri.withAppendedPath(ContactsContract.Contacts.CONTENT_MULTI_VCARD_URI, Uri.encode(sb.toString()));
                Intent intent = new Intent("android.intent.action.SEND");
                intent.setType("text/x-vcard");
                intent.putExtra("android.intent.extra.STREAM", withAppendedPath);
                ImplicitIntentsUtil.startActivityOutsideApp(hVar.getActivity(), intent);
            } finally {
                query.close();
            }
        }
    }

    static /* synthetic */ boolean a(h hVar, int i) {
        int i2;
        boolean z;
        List<AccountWithDataSet> a2 = a.a(hVar.getActivity()).a(true);
        int size = a2.size();
        if (i == 2131755696 || i == 2131755696 || i == 2131755698) {
            int size2 = a2.size();
            Log.d("ImportExportDialogFragment", "nSize:" + size2);
            boolean IsAsusDevice = PhoneCapabilityTester.IsAsusDevice();
            for (int i3 = 0; i3 < size2; i3++) {
                AccountWithDataSet accountWithDataSet = a2.get(i3);
                Log.d("ImportExportDialogFragment", "acunt.type:" + ((Account) accountWithDataSet).type);
                if (IsAsusDevice ? b.a.c.equals(((Account) accountWithDataSet).name) : b.a.d.equals(((Account) accountWithDataSet).type)) {
                    i2 = size - 1;
                    Log.d("ImportExportDialogFragment", "accountNum:" + i2);
                    break;
                }
            }
        }
        i2 = size;
        if (i2 > 1) {
            Bundle bundle = new Bundle();
            bundle.putInt("resourceId", i);
            AccountsListAdapter.AccountListFilter accountListFilter = AccountsListAdapter.AccountListFilter.ACCOUNTS_GROUP_WRITABLE_NOSIM;
            g.a(hVar.getFragmentManager(), hVar, 2131755570, i == 2131755697 ? AccountsListAdapter.AccountListFilter.ACCOUNTS_GROUP_WRITABLE_NOSIM1 : i == 2131755698 ? AccountsListAdapter.AccountListFilter.ACCOUNTS_GROUP_WRITABLE_NOSIM2 : AccountsListAdapter.AccountListFilter.ACCOUNTS_GROUP_WRITABLE_NOSIM, bundle);
            z = false;
        } else {
            AccountSelectionUtil.doImport(hVar.getActivity(), i, i2 == 1 ? a2.get(0) : null);
            z = true;
        }
        return z;
    }

    @Override // com.android.contacts.editor.g.a
    public final void onAccountChosen(AccountWithDataSet accountWithDataSet, Bundle bundle) {
        AccountSelectionUtil.doImport(getActivity(), bundle.getInt("resourceId"), accountWithDataSet);
        dismiss();
    }

    @Override // com.android.contacts.editor.g.a
    public final void onAccountSelectorCancelled() {
        dismiss();
    }

    @Override // android.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        Resources resources = getActivity().getResources();
        final LayoutInflater layoutInflater = (LayoutInflater) getActivity().getSystemService("layout_inflater");
        boolean z = getArguments().getBoolean("CONTACTS_ARE_AVAILABLE");
        final ArrayAdapter<Integer> arrayAdapter = new ArrayAdapter<Integer>(getActivity()) { // from class: com.android.contacts.interactions.h.1
            @Override // android.widget.ArrayAdapter, android.widget.Adapter
            public final View getView(int i, View view, ViewGroup viewGroup) {
                if (view == null) {
                    view = layoutInflater.inflate(2131427652, viewGroup, false);
                }
                TextView textView = (TextView) view;
                textView.setText(getItem(i).intValue());
                return textView;
            }
        };
        e a2 = e.a(getActivity());
        if (com.android.contacts.simcardmanage.b.a(getActivity())) {
            boolean a3 = a2.a(1);
            boolean a4 = a2.a(2);
            boolean e = a2.e(1);
            boolean e2 = a2.e(2);
            if (a3 && resources.getBoolean(2130968579)) {
                arrayAdapter.add(2131755697);
                if (e) {
                    arrayAdapter.add(2131755625);
                }
            }
            if (a4 && resources.getBoolean(2130968579)) {
                arrayAdapter.add(2131755698);
                if (e2) {
                    arrayAdapter.add(2131755626);
                }
            }
        } else {
            boolean a5 = a2.a(1);
            boolean e3 = a2.e(1);
            if (a5 && resources.getBoolean(2130968579)) {
                arrayAdapter.add(2131755696);
                if (e3) {
                    arrayAdapter.add(2131755624);
                }
            }
        }
        if (resources.getBoolean(2130968577)) {
            if (PhoneCapabilityTester.isKDDISku()) {
                arrayAdapter.add(2131755723);
            } else {
                arrayAdapter.add(2131755695);
            }
        }
        if (resources.getBoolean(2130968576) && z) {
            if (PhoneCapabilityTester.isKDDISku()) {
                arrayAdapter.add(2131755718);
            } else {
                arrayAdapter.add(2131755623);
            }
        }
        if (resources.getBoolean(2130968578) && z) {
            arrayAdapter.add(2131756125);
        }
        return new AlertDialog.Builder(getActivity()).setTitle(z ? 2131755569 : 2131755568).setSingleChoiceItems(arrayAdapter, -1, new DialogInterface.OnClickListener() { // from class: com.android.contacts.interactions.h.2
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                boolean z2;
                int intValue = ((Integer) arrayAdapter.getItem(i)).intValue();
                switch (intValue) {
                    case 2131755623:
                    case 2131755718:
                        Intent intent = new Intent(h.this.getActivity(), AsusAccountChooseActivity.class);
                        intent.setFlags(3);
                        ImplicitIntentsUtil.startActivityInApp(h.this.getActivity(), intent);
                        if (h.this.getActivity() instanceof ManageContactsActivity) {
                            h.this.getActivity().finish();
                            z2 = true;
                            break;
                        }
                        z2 = true;
                        break;
                    case 2131755624:
                    case 2131755625:
                    case 2131755626:
                        if (com.android.contacts.simcardmanage.b.a(h.this.getActivity())) {
                            Intent intent2 = new Intent(h.this.getActivity(), AsusAccountChooseActivity.class);
                            intent2.setFlags(1);
                            intent2.putExtra(AsusGlobalGroupEditorActivity.AsusGlobalGroupsColumns.TITLE, intValue);
                            ImplicitIntentsUtil.startActivityInApp(h.this.getActivity(), intent2);
                        } else {
                            Intent intent3 = new Intent(h.this.getActivity(), AsusAccountChooseActivity.class);
                            intent3.setFlags(1);
                            ImplicitIntentsUtil.startActivityInApp(h.this.getActivity(), intent3);
                        }
                        if (h.this.getActivity() instanceof ManageContactsActivity) {
                            h.this.getActivity().finish();
                            z2 = true;
                            break;
                        }
                        z2 = true;
                        break;
                    case 2131755695:
                    case 2131755696:
                    case 2131755697:
                    case 2131755698:
                    case 2131755723:
                    case 2131755775:
                        z2 = h.a(h.this, intValue);
                        break;
                    case 2131756125:
                        h.a(h.this);
                        z2 = true;
                        break;
                    default:
                        Log.e("ImportExportDialogFragment", "Unexpected resource: " + h.this.getActivity().getResources().getResourceEntryName(intValue));
                        z2 = true;
                        break;
                }
                if (z2) {
                    dialogInterface.dismiss();
                }
            }
        }).create();
    }
}
