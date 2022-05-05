package com.android.contacts;

import android.app.AlertDialog;
import android.app.Dialog;
import android.app.DialogFragment;
import android.content.ContentValues;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import android.provider.ContactsContract;
import android.util.Log;
import android.view.KeyEvent;
import com.android.contacts.activities.ContactDetailCallogActivity;
import com.android.contacts.util.CallUtil;
import com.android.contacts.util.CoverUtils;
import com.android.contacts.util.ImplicitIntentsUtil;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/android/contacts/i.class */
public final class i extends DialogFragment {

    /* renamed from: a  reason: collision with root package name */
    private String f1431a = null;

    /* renamed from: b  reason: collision with root package name */
    private String f1432b = null;
    private String c = null;
    private AlertDialog d;

    public static i a(String str, String str2, String str3) {
        i iVar = new i();
        Bundle bundle = new Bundle();
        bundle.putString("argUnkownNumber", str);
        bundle.putString("argUnkownName", str2);
        bundle.putString("argUnkownEmail", str3);
        iVar.setArguments(bundle);
        return iVar;
    }

    static /* synthetic */ void a(i iVar, Intent intent, boolean z) {
        if (CallUtil.isUriNumber(iVar.f1431a)) {
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
            ContentValues contentValues = new ContentValues();
            contentValues.put("mimetype", "vnd.android.cursor.item/sip_address");
            contentValues.put(CoverUtils.CoverData.COVER_URI, iVar.f1431a);
            arrayList.add(contentValues);
            intent.putParcelableArrayListExtra("data", arrayList);
        } else {
            intent.putExtra("phone", iVar.f1431a);
        }
        if (iVar.c != null) {
            intent.putExtra("email", iVar.c);
        }
        if (iVar.f1432b != null && z) {
            intent.putExtra(ContactDetailCallogActivity.EXTRA_NAME, iVar.f1432b);
        }
    }

    @Override // android.app.DialogFragment, android.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f1431a = getArguments().getString("argUnkownNumber");
        this.f1432b = getArguments().getString("argUnkownName");
        this.c = getArguments().getString("argUnkownEmail");
    }

    @Override // android.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        String string = getResources().getString(2131755952);
        String string2 = getResources().getString(2131755039);
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity(), 2131820833);
        builder.setTitle(getResources().getString(2131756048));
        builder.setItems(new String[]{string, string2}, new DialogInterface.OnClickListener() { // from class: com.android.contacts.i.1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                switch (i) {
                    case 0:
                        Intent intent = new Intent("android.intent.action.INSERT", ContactsContract.Contacts.CONTENT_URI);
                        i.a(i.this, intent, true);
                        try {
                            ImplicitIntentsUtil.startActivityInAppIfPossible(i.this.getActivity(), intent);
                            i.this.getActivity().finish();
                            return;
                        } catch (IllegalStateException e) {
                            Log.d("AddToContactsDialog", "IllegalState  startActivity(intent)");
                            return;
                        }
                    case 1:
                        Intent intent2 = new Intent("android.intent.action.INSERT_OR_EDIT");
                        intent2.setType("vnd.android.cursor.item/contact");
                        intent2.putExtra("isShowCreateNewContactButton", "doNotShowCreateNewContactButton");
                        i.a(i.this, intent2, false);
                        try {
                            ImplicitIntentsUtil.startActivityInApp(i.this.getActivity(), intent2);
                            i.this.getActivity().finish();
                            return;
                        } catch (IllegalStateException e2) {
                            Log.d("AddToContactsDialog", "IllegalState  startActivity(intent2)");
                            return;
                        }
                    default:
                        return;
                }
            }
        });
        this.d = builder.create();
        this.d.setCanceledOnTouchOutside(false);
        this.d.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.android.contacts.i.2
            @Override // android.content.DialogInterface.OnKeyListener
            public final boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
                if (i != 4) {
                    return false;
                }
                i.this.d.dismiss();
                i.this.getActivity().finish();
                return false;
            }
        });
        return this.d;
    }
}
