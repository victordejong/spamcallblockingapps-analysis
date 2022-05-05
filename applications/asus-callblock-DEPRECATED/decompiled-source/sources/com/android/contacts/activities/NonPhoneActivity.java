package com.android.contacts.activities;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.DialogFragment;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.android.contacts.ezmode.h;
import com.android.contacts.p;
import com.android.contacts.util.Constants;
import com.android.contacts.util.ImplicitIntentsUtil;
/* loaded from: classes-dex2jar.jar:com/android/contacts/activities/NonPhoneActivity.class */
public class NonPhoneActivity extends p {
    private static final String IS_CONTACTS_KEY = "IS_CONTACTS";
    private static final String PHONE_CONTACTS_URI = "PHONE_CONTACTS_URI";
    private static final String PHONE_NUMBER_KEY = "PHONE_NUMBER";

    /* loaded from: classes-dex2jar.jar:com/android/contacts/activities/NonPhoneActivity$NonPhoneDialogFragment.class */
    public static final class NonPhoneDialogFragment extends DialogFragment implements DialogInterface.OnClickListener {
        private boolean mIsContacts = false;

        private boolean getArgumentIsContacts() {
            return getArguments().getBoolean(NonPhoneActivity.IS_CONTACTS_KEY);
        }

        private String getArgumentLookupUri() {
            return getArguments().getString(NonPhoneActivity.PHONE_CONTACTS_URI);
        }

        private String getArgumentPhoneNumber() {
            return getArguments().getString(NonPhoneActivity.PHONE_NUMBER_KEY);
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            if (i == -1) {
                if (this.mIsContacts) {
                    String argumentLookupUri = getArgumentLookupUri();
                    if (argumentLookupUri != null) {
                        Intent intent = new Intent("android.intent.action.VIEW");
                        intent.setData(Uri.parse(argumentLookupUri));
                        ImplicitIntentsUtil.startActivityInApp(getActivity(), intent);
                    }
                } else if (h.a(getActivity().getApplicationContext())) {
                    Intent intent2 = new Intent("android.intent.action.EZ_NEW_CONTACT");
                    intent2.putExtra("phone", getArgumentPhoneNumber());
                    ImplicitIntentsUtil.startActivityInApp(getActivity(), intent2);
                } else {
                    Intent intent3 = new Intent("android.intent.action.INSERT_OR_EDIT");
                    intent3.setType("vnd.android.cursor.item/contact");
                    intent3.putExtra("phone", getArgumentPhoneNumber());
                    ImplicitIntentsUtil.startActivityInAppIfPossible(getActivity(), intent3);
                }
            }
            dismiss();
        }

        @Override // android.app.DialogFragment
        public final Dialog onCreateDialog(Bundle bundle) {
            this.mIsContacts = getArgumentIsContacts();
            AlertDialog create = new AlertDialog.Builder(getActivity(), 2131820833).create();
            create.setTitle(2131755917);
            create.setMessage(getArgumentPhoneNumber());
            if (this.mIsContacts) {
                create.setButton(-1, getActivity().getString(2131756454), this);
            } else {
                create.setButton(-1, getActivity().getString(2131755916), this);
            }
            create.setButton(-2, getActivity().getString(2131755918), this);
            return create;
        }

        @Override // android.app.DialogFragment, android.content.DialogInterface.OnDismissListener
        public final void onDismiss(DialogInterface dialogInterface) {
            super.onDismiss(dialogInterface);
            Activity activity = getActivity();
            if (activity != null) {
                activity.finish();
            }
        }
    }

    private String getPhoneNumber() {
        String str;
        if (getIntent() == null) {
            str = null;
        } else {
            Uri data = getIntent().getData();
            str = null;
            if (data != null) {
                str = null;
                if (Constants.SCHEME_TEL.equals(data.getScheme())) {
                    str = getIntent().getData().getSchemeSpecificPart();
                }
            }
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0087  */
    @Override // com.android.contacts.p, com.android.contacts.activities.TransactionSafeActivity, android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onCreate(android.os.Bundle r8) {
        /*
            Method dump skipped, instructions count: 364
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.activities.NonPhoneActivity.onCreate(android.os.Bundle):void");
    }
}
