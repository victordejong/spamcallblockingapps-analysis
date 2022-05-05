package com.android.contacts.activities;

import android.app.ActionBar;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.DialogFragment;
import android.app.Fragment;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Parcelable;
import android.provider.ContactsContract;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.SearchView;
import com.android.contacts.ezmode.h;
import com.android.contacts.list.ad;
import com.android.contacts.list.ao;
import com.android.contacts.list.ax;
import com.android.contacts.list.az;
import com.android.contacts.list.ba;
import com.android.contacts.list.bb;
import com.android.contacts.list.bd;
import com.android.contacts.list.bf;
import com.android.contacts.list.u;
import com.android.contacts.list.z;
import com.android.contacts.p;
import com.android.contacts.simcardmanage.SimCardContact;
import com.android.contacts.simcardmanage.d;
import com.android.contacts.simcardmanage.e;
import com.android.contacts.util.ImplicitIntentsUtil;
import com.android.contacts.util.MemoryUtils;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.contacts.widget.b;
import com.android.vcard.VCardConfig;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/android/contacts/activities/ContactSelectionActivity.class */
public class ContactSelectionActivity extends p implements View.OnClickListener, View.OnCreateContextMenuListener, View.OnFocusChangeListener, SearchView.OnCloseListener, SearchView.OnQueryTextListener {
    private static final int DEFAULT_DIRECTORY_RESULT_LIMIT = 20;
    private static final int FOCUS_DELAY = 200;
    private static final String IS_BLOCKLIST = "blocklist";
    private static final String KEY_ACTION_CODE = "actionCode";
    private static final int SUBACTIVITY_ADD_TO_EXISTING_CONTACT = 0;
    private static final String TAG = "ContactSelectionActivity";
    private static WeakReference<ProgressDialog> sProgressDialog;
    private View mCreateNewContactButton;
    protected com.android.contacts.list.p<?> mListFragment;
    private ad mRequest;
    private SearchView mSearchView;
    private int mActionCode = -1;
    private boolean isBlockList = false;
    private z mIntentResolver = new z(this);

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener.class */
    public final class ContactPickerActionListener implements ax {
        private ContactPickerActionListener() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:25:0x0083, code lost:
            if (r9 != false) goto L_0x0086;
         */
        /* JADX WARN: Code restructure failed: missing block: B:34:0x00b6, code lost:
            if (r0.contains("email") != false) goto L_0x00b9;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private boolean launchAddToContactDialog(android.os.Bundle r4) {
            /*
                r3 = this;
                r0 = 0
                r5 = r0
                r0 = r4
                if (r0 != 0) goto L_0x000a
                r0 = r5
                r6 = r0
            L_0x0008:
                r0 = r6
                return r0
            L_0x000a:
                java.util.HashSet r0 = new java.util.HashSet
                r1 = r0
                r1.<init>()
                r7 = r0
                r0 = r7
                r1 = r4
                java.util.Set r1 = r1.keySet()
                boolean r0 = r0.addAll(r1)
                r0 = r7
                java.lang.String r1 = "name"
                boolean r0 = r0.contains(r1)
                if (r0 == 0) goto L_0x0035
                r0 = r7
                java.lang.String r1 = "name"
                boolean r0 = r0.remove(r1)
            L_0x0035:
                r0 = r7
                int r0 = r0.size()
                r8 = r0
                r0 = r8
                r1 = 2
                if (r0 != r1) goto L_0x0097
                r0 = r7
                java.lang.String r1 = "phone"
                boolean r0 = r0.contains(r1)
                if (r0 == 0) goto L_0x008b
                r0 = r7
                java.lang.String r1 = "phone_type"
                boolean r0 = r0.contains(r1)
                if (r0 == 0) goto L_0x008b
                r0 = 1
                r8 = r0
            L_0x005f:
                r0 = r7
                java.lang.String r1 = "email"
                boolean r0 = r0.contains(r1)
                if (r0 == 0) goto L_0x0091
                r0 = r7
                java.lang.String r1 = "email_type"
                boolean r0 = r0.contains(r1)
                if (r0 == 0) goto L_0x0091
                r0 = 1
                r9 = r0
            L_0x007a:
                r0 = r8
                if (r0 != 0) goto L_0x0086
                r0 = r5
                r6 = r0
                r0 = r9
                if (r0 == 0) goto L_0x0008
            L_0x0086:
                r0 = 1
                r6 = r0
                goto L_0x0008
            L_0x008b:
                r0 = 0
                r8 = r0
                goto L_0x005f
            L_0x0091:
                r0 = 0
                r9 = r0
                goto L_0x007a
            L_0x0097:
                r0 = r5
                r6 = r0
                r0 = r8
                r1 = 1
                if (r0 != r1) goto L_0x0008
                r0 = r7
                java.lang.String r1 = "phone"
                boolean r0 = r0.contains(r1)
                if (r0 != 0) goto L_0x00b9
                r0 = r5
                r6 = r0
                r0 = r7
                java.lang.String r1 = "email"
                boolean r0 = r0.contains(r1)
                if (r0 == 0) goto L_0x0008
            L_0x00b9:
                r0 = 1
                r6 = r0
                goto L_0x0008
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.activities.ContactSelectionActivity.ContactPickerActionListener.launchAddToContactDialog(android.os.Bundle):boolean");
        }

        @Override // com.android.contacts.list.ax
        public final void onCreateNewContactAction() {
            ContactSelectionActivity.this.startCreateNewContactActivity();
        }

        @Override // com.android.contacts.list.ax
        public final void onEditContactAction(Uri uri) {
            Bundle extras = ContactSelectionActivity.this.getIntent().getExtras();
            if (launchAddToContactDialog(extras)) {
                Intent intent = new Intent(ContactSelectionActivity.this, ConfirmAddDetailActivity.class);
                intent.setData(uri);
                if (extras != null) {
                    extras.remove(ContactDetailCallogActivity.EXTRA_NAME);
                    intent.putExtras(extras);
                }
                ContactSelectionActivity.this.startActivityForResult(intent, 0);
                return;
            }
            ContactSelectionActivity.this.startActivityAndForwardResult(new Intent("android.intent.action.EDIT", uri));
        }

        @Override // com.android.contacts.list.ax
        public final void onEditContactAction(Uri uri, long j) {
            Bundle extras = ContactSelectionActivity.this.getIntent().getExtras();
            if (launchAddToContactDialog(extras)) {
                Intent intent = new Intent(ContactSelectionActivity.this, ConfirmAddDetailActivity.class);
                intent.setData(uri);
                intent.putExtra("Override_Data_Id", j);
                if (extras != null) {
                    intent.putExtras(extras);
                }
                ContactSelectionActivity.this.startActivityForResult(intent, 0);
                return;
            }
            ContactSelectionActivity.this.startActivityAndForwardResult(new Intent("android.intent.action.EDIT", uri));
        }

        @Override // com.android.contacts.list.ax
        public final void onPickContactAction(Uri uri) {
            ContactSelectionActivity.this.returnPickerResult(uri);
        }

        public final void onRemoveContactAction(Long l) {
        }

        @Override // com.android.contacts.list.ax
        public final void onSelectAContact(boolean z) {
        }

        @Override // com.android.contacts.list.ax
        public final void onShortcutIntentCreated(Intent intent) {
            ContactSelectionActivity.this.returnPickerResult(intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/activities/ContactSelectionActivity$EmailAddressPickerActionListener.class */
    public final class EmailAddressPickerActionListener implements az {
        private EmailAddressPickerActionListener() {
        }

        @Override // com.android.contacts.list.az
        public final void onPickEmailAddressAction(Uri uri) {
            ContactSelectionActivity.this.returnPickerResult(uri);
        }

        public final void onSelectAContact(boolean z) {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/activities/ContactSelectionActivity$OverrideDialogFragment.class */
    public static class OverrideDialogFragment extends DialogFragment {
        public static final int CAN_NOT_EDIT_SIM = 3;
        public static final int OVERRIDE_CONFIRM = 0;
        public static final int OVERRIDE_CONFIRM_ADDITION_NUMBER = 1;
        public static final int OVERRIDE_OR_NEW = 2;
        private static u fragment = null;
        private static Boolean isOpen = false;
        private static Uri mUri = null;
        private Dialog mDialog = null;

        private Dialog cannotUpdateSimContact() {
            AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
            builder.setMessage(getString(2131755344)).setPositiveButton(getString(17039370), new DialogInterface.OnClickListener() { // from class: com.android.contacts.activities.ContactSelectionActivity.OverrideDialogFragment.1
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    dialogInterface.cancel();
                }
            });
            return builder.show();
        }

        public static DialogFragment newInstance(int i, u uVar, Uri uri) {
            OverrideDialogFragment overrideDialogFragment = new OverrideDialogFragment();
            Bundle bundle = new Bundle();
            bundle.putInt("tag", i);
            overrideDialogFragment.setArguments(bundle);
            fragment = uVar;
            isOpen = true;
            mUri = uri;
            return overrideDialogFragment;
        }

        private Dialog overrideChoose(final SimCardContact simCardContact) {
            AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
            final CharSequence[] charSequenceArr = {simCardContact.c, simCardContact.g};
            final long[] jArr = {simCardContact.k, simCardContact.n};
            builder.setTitle(getString(2131755936)).setItems(charSequenceArr, new DialogInterface.OnClickListener() { // from class: com.android.contacts.activities.ContactSelectionActivity.OverrideDialogFragment.3
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    dialogInterface.cancel();
                    final long j = jArr[i];
                    u unused = OverrideDialogFragment.fragment;
                    u.a((Boolean) true);
                    AlertDialog.Builder builder2 = new AlertDialog.Builder(OverrideDialogFragment.this.getActivity());
                    builder2.setMessage(String.format(OverrideDialogFragment.this.getString(2131755935), charSequenceArr[i])).setTitle(OverrideDialogFragment.this.getString(2131755936)).setPositiveButton(OverrideDialogFragment.this.getString(17039370), new DialogInterface.OnClickListener() { // from class: com.android.contacts.activities.ContactSelectionActivity.OverrideDialogFragment.3.2
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface2, int i2) {
                            dialogInterface2.cancel();
                            u unused2 = OverrideDialogFragment.fragment;
                            u.a((Boolean) false);
                            OverrideTask overrideTask = new OverrideTask(OverrideDialogFragment.fragment.getActivity());
                            overrideTask.setUri(OverrideDialogFragment.mUri);
                            overrideTask.setSimIndex(simCardContact.i);
                            overrideTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, Long.valueOf(j), Long.valueOf(simCardContact.h));
                        }
                    }).setNegativeButton(OverrideDialogFragment.this.getString(17039360), new DialogInterface.OnClickListener() { // from class: com.android.contacts.activities.ContactSelectionActivity.OverrideDialogFragment.3.1
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface2, int i2) {
                            dialogInterface2.cancel();
                        }
                    });
                    builder2.show();
                }
            });
            return builder.show();
        }

        private Dialog overrideConfirm(String str, final long j, final int i, final long j2) {
            AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
            builder.setMessage(String.format(getString(2131755935), str)).setTitle(getString(2131755936)).setPositiveButton(getString(17039370), new DialogInterface.OnClickListener() { // from class: com.android.contacts.activities.ContactSelectionActivity.OverrideDialogFragment.5
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i2) {
                    dialogInterface.cancel();
                    u unused = OverrideDialogFragment.fragment;
                    u.a((Boolean) false);
                    OverrideTask overrideTask = new OverrideTask(OverrideDialogFragment.fragment.getActivity());
                    overrideTask.setUri(OverrideDialogFragment.mUri);
                    overrideTask.setSimIndex(i);
                    overrideTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, Long.valueOf(j), Long.valueOf(j2));
                }
            }).setNegativeButton(getString(17039360), new DialogInterface.OnClickListener() { // from class: com.android.contacts.activities.ContactSelectionActivity.OverrideDialogFragment.4
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i2) {
                    dialogInterface.cancel();
                }
            });
            return builder.show();
        }

        private Dialog overrideOrNew(final String str, final long j, final int i, final long j2) {
            AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
            builder.setTitle(getString(2131755934)).setItems(new CharSequence[]{String.format(getString(2131755937), str), getString(2131755878)}, new DialogInterface.OnClickListener() { // from class: com.android.contacts.activities.ContactSelectionActivity.OverrideDialogFragment.2
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i2) {
                    if (i2 == 0) {
                        dialogInterface.cancel();
                        u unused = OverrideDialogFragment.fragment;
                        u.a((Boolean) true);
                        AlertDialog.Builder builder2 = new AlertDialog.Builder(OverrideDialogFragment.this.getActivity());
                        builder2.setMessage(String.format(OverrideDialogFragment.this.getString(2131755935), str)).setTitle(OverrideDialogFragment.this.getString(2131755936)).setPositiveButton(OverrideDialogFragment.this.getString(17039370), new DialogInterface.OnClickListener() { // from class: com.android.contacts.activities.ContactSelectionActivity.OverrideDialogFragment.2.2
                            @Override // android.content.DialogInterface.OnClickListener
                            public void onClick(DialogInterface dialogInterface2, int i3) {
                                dialogInterface2.cancel();
                                u unused2 = OverrideDialogFragment.fragment;
                                u.a((Boolean) false);
                                OverrideTask overrideTask = new OverrideTask(OverrideDialogFragment.fragment.getActivity());
                                overrideTask.setUri(OverrideDialogFragment.mUri);
                                overrideTask.setSimIndex(i);
                                overrideTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, Long.valueOf(j), Long.valueOf(j2));
                            }
                        }).setNegativeButton(OverrideDialogFragment.this.getString(17039360), new DialogInterface.OnClickListener() { // from class: com.android.contacts.activities.ContactSelectionActivity.OverrideDialogFragment.2.1
                            @Override // android.content.DialogInterface.OnClickListener
                            public void onClick(DialogInterface dialogInterface2, int i3) {
                                dialogInterface2.cancel();
                            }
                        });
                        builder2.show();
                    } else if (i2 == 1) {
                        dialogInterface.cancel();
                        OverrideDialogFragment.fragment.a(j2);
                    }
                }
            });
            return builder.show();
        }

        @Override // android.app.DialogFragment, android.content.DialogInterface.OnCancelListener
        public void onCancel(DialogInterface dialogInterface) {
            super.onCancel(dialogInterface);
            u.a((Boolean) false);
        }

        @Override // android.app.DialogFragment
        public Dialog onCreateDialog(Bundle bundle) {
            String str;
            long j;
            int i = getArguments().getInt("tag");
            SimCardContact simCardContact = fragment.d;
            switch (i) {
                case 0:
                    if (simCardContact != null) {
                        this.mDialog = overrideConfirm(simCardContact.c, simCardContact.k, simCardContact.i, simCardContact.h);
                        break;
                    }
                    break;
                case 1:
                    if (simCardContact != null) {
                        this.mDialog = overrideChoose(simCardContact);
                        break;
                    }
                    break;
                case 2:
                    if (simCardContact != null) {
                        if (!TextUtils.isEmpty(simCardContact.c)) {
                            str = simCardContact.c;
                            j = simCardContact.k;
                        } else {
                            str = simCardContact.g;
                            j = simCardContact.n;
                        }
                        this.mDialog = overrideOrNew(str, j, simCardContact.i, simCardContact.h);
                        break;
                    }
                    break;
                case 3:
                    this.mDialog = cannotUpdateSimContact();
                    break;
            }
            return this.mDialog;
        }

        @Override // android.app.DialogFragment, android.app.Fragment
        public void onStart() {
            super.onStart();
            if (!isOpen.booleanValue()) {
                this.mDialog.dismiss();
            }
        }

        @Override // android.app.DialogFragment, android.app.Fragment
        public void onStop() {
            super.onStop();
            isOpen = false;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/activities/ContactSelectionActivity$OverrideTask.class */
    public static class OverrideTask extends AsyncTask<Long, Void, Integer> {
        private ContactSelectionActivity mContext;
        d mgr;
        String phoneNumber = null;
        private Uri mUri = null;
        private int mSimIndex = 1;

        public OverrideTask(Activity activity) {
            this.mContext = (ContactSelectionActivity) activity;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public Integer doInBackground(Long... lArr) {
            int valueOf;
            if (NecessaryPermissionDenyActivity.startPermissionActivity(this.mContext)) {
                valueOf = 0;
            } else {
                SimCardContact b2 = this.mgr.b(this.mSimIndex, lArr[1].longValue());
                if (b2.k == lArr[0].longValue()) {
                    b2.b(this.phoneNumber, lArr[0].longValue());
                } else if (b2.n == lArr[0].longValue()) {
                    b2.d(this.phoneNumber, lArr[0].longValue());
                }
                if (TextUtils.isEmpty(b2.f2134b)) {
                    b2.a(this.phoneNumber, b2.j);
                }
                valueOf = Integer.valueOf(this.mgr.a(b2, b2));
            }
            return valueOf;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void onPostExecute(Integer num) {
            super.onPostExecute((OverrideTask) num);
            if (num.intValue() > 0) {
                ImplicitIntentsUtil.startActivityInApp(this.mContext, new Intent("android.intent.action.VIEW", this.mUri));
            } else {
                Log.d("ContactPickerFragment", "Save Fail: " + num);
            }
            ContactSelectionActivity.dismissOverrideProcessDialog();
            this.mContext.finish();
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            super.onPreExecute();
            WeakReference unused = ContactSelectionActivity.sProgressDialog = new WeakReference(ProgressDialog.show(this.mContext, null, this.mContext.getText(2131756075)));
            this.mgr = e.a(this.mContext);
            Bundle extras = this.mContext.getIntent().getExtras();
            if (extras != null && extras.size() > 0) {
                this.phoneNumber = extras.getString("phone");
            }
        }

        public void setSimIndex(int i) {
            this.mSimIndex = i;
        }

        public void setUri(Uri uri) {
            this.mUri = uri;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/activities/ContactSelectionActivity$PhoneNumberPickerActionListener.class */
    public final class PhoneNumberPickerActionListener implements ba {
        private PhoneNumberPickerActionListener() {
        }

        @Override // com.android.contacts.list.ba
        public final void onHomeInActionBarSelected() {
            ContactSelectionActivity.this.onBackPressed();
        }

        public final void onPickPhoneNumberAction(Uri uri) {
            ContactSelectionActivity.this.returnPickerResult(uri);
        }

        @Override // com.android.contacts.list.ba
        public final void onPickPhoneNumberAction(Uri uri, String str) {
            ContactSelectionActivity.this.returnPickerResult(uri);
        }

        public final void onSelectAContact(boolean z) {
        }

        @Override // com.android.contacts.list.ba
        public final void onShortcutIntentCreated(Intent intent) {
            ContactSelectionActivity.this.returnPickerResult(intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/activities/ContactSelectionActivity$PostalAddressPickerActionListener.class */
    public final class PostalAddressPickerActionListener implements bb {
        private PostalAddressPickerActionListener() {
        }

        @Override // com.android.contacts.list.bb
        public final void onPickPostalAddressAction(Uri uri) {
            ContactSelectionActivity.this.returnPickerResult(uri);
        }

        public final void onSelectAContact(boolean z) {
        }
    }

    private void configureActivityTitle() {
        if (!TextUtils.isEmpty(this.mRequest.d)) {
            setTitle(this.mRequest.d);
            return;
        }
        switch (this.mRequest.f1765b) {
            case 60:
                setTitle(2131755441);
                return;
            case 70:
                setTitle(2131755441);
                return;
            case 80:
                setTitle(2131755441);
                return;
            case 90:
                setTitle(2131755441);
                return;
            case 100:
                setTitle(2131755441);
                return;
            case 105:
                setTitle(2131755441);
                return;
            case 110:
                setTitle(2131756126);
                return;
            case 120:
                setTitle(2131755256);
                return;
            case 130:
                setTitle(2131755853);
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void dismissOverrideProcessDialog() {
        ProgressDialog progressDialog = sProgressDialog == null ? null : sProgressDialog.get();
        if (progressDialog != null) {
            progressDialog.dismiss();
        }
        sProgressDialog = null;
    }

    private void prepareSearchViewAndActionBar() {
        if (this.mRequest.f1765b == 100 || this.mRequest.h) {
            findViewById(2131297252).setVisibility(8);
            ActionBar actionBar = getActionBar();
            if (actionBar != null) {
                actionBar.setDisplayShowHomeEnabled(false);
                actionBar.setDisplayHomeAsUpEnabled(true);
                actionBar.setDisplayShowTitleEnabled(true);
                return;
            }
            return;
        }
        ActionBar actionBar2 = getActionBar();
        if (actionBar2 != null) {
            View findViewById = findViewById(2131297252);
            if (findViewById != null) {
                findViewById.setVisibility(8);
            }
            View inflate = LayoutInflater.from(actionBar2.getThemedContext()).inflate(2131427493, (ViewGroup) null);
            this.mSearchView = (SearchView) inflate.findViewById(2131297252);
            this.mSearchView.setIconifiedByDefault(false);
            this.mSearchView.setQueryHint(getString(2131755688));
            this.mSearchView.setIconified(false);
            this.mSearchView.setOnQueryTextListener(this);
            this.mSearchView.setOnCloseListener(this);
            this.mSearchView.setOnQueryTextFocusChangeListener(this);
            actionBar2.setCustomView(inflate, new ActionBar.LayoutParams(-1, -2));
            actionBar2.setDisplayShowCustomEnabled(true);
            actionBar2.setDisplayShowHomeEnabled(false);
            actionBar2.setDisplayHomeAsUpEnabled(true);
        } else {
            this.mSearchView = (SearchView) findViewById(2131297252);
            this.mSearchView.setQueryHint(getString(2131755688));
            this.mSearchView.setOnQueryTextListener(this);
            this.mSearchView.setVisibility(8);
            this.mSearchView.postDelayed(new Runnable() { // from class: com.android.contacts.activities.ContactSelectionActivity.1
                @Override // java.lang.Runnable
                public void run() {
                    ContactSelectionActivity.this.mSearchView.setVisibility(0);
                }
            }, 200L);
            setSearchView();
        }
        Bundle extras = getIntent().getExtras();
        if (extras == null || extras.getString("isShowCreateNewContactButton") == null || !extras.getString("isShowCreateNewContactButton").equals("doNotShowCreateNewContactButton")) {
            this.mSearchView.clearFocus();
        }
    }

    private void setSearchView() {
        this.mSearchView.setBackgroundResource(2131165509);
        this.mSearchView.setBackgroundColor(getResources().getColor(2131034114));
    }

    private boolean shouldShowCreateNewContactButton() {
        Bundle extras = getIntent().getExtras();
        String str = null;
        if (extras != null) {
            str = extras.getString("isShowCreateNewContactButton");
        }
        return (!"doNotShowCreateNewContactButton".equals(str) && this.mActionCode == 80) || (this.mActionCode == 70 && !this.mRequest.e);
    }

    private void showInputMethod(View view) {
        InputMethodManager inputMethodManager = (InputMethodManager) getSystemService("input_method");
        if (inputMethodManager != null && !inputMethodManager.showSoftInput(view, 0)) {
            Log.w(TAG, "Failed to show soft input method.");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startCreateNewContactActivity() {
        Intent intent;
        if (h.a(this)) {
            intent = new Intent("android.intent.action.EZ_NEW_CONTACT");
        } else {
            intent = new Intent("android.intent.action.INSERT", ContactsContract.Contacts.CONTENT_URI);
            intent.putExtra(ContactEditorActivity.INTENT_KEY_FINISH_ACTIVITY_ON_SAVE_COMPLETED, true);
        }
        startActivityAndForwardResult(intent);
    }

    public void configureListFragment() {
        switch (this.mActionCode) {
            case 60:
                u uVar = new u();
                uVar.h(this.mRequest.g);
                if (getIntent() != null && getIntent().getExtras() != null && getIntent().getExtras().getBoolean("blocklist", false)) {
                    uVar.f = true;
                    this.isBlockList = true;
                    Log.d(TAG, "getBoolean(blocklist) = true");
                } else if (this.isBlockList) {
                    uVar.f = true;
                    this.isBlockList = true;
                    Log.d(TAG, "getBoolean(blocklist) = true");
                } else {
                    this.isBlockList = false;
                    uVar.f = false;
                    uVar.g = true;
                }
                this.mListFragment = uVar;
                break;
            case 70:
                this.mListFragment = new u();
                break;
            case 80:
                u uVar2 = new u();
                uVar2.f1880b = true;
                uVar2.q = 0;
                this.mListFragment = uVar2;
                break;
            case 90:
                this.mListFragment = new bd();
                break;
            case 100:
                this.mListFragment = new bf();
                break;
            case 105:
                this.mListFragment = new ao();
                break;
            case 110:
                u uVar3 = new u();
                uVar3.c = true;
                this.mListFragment = uVar3;
                break;
            case 120:
                bd bdVar = new bd();
                bdVar.f1798b = "android.intent.action.CALL";
                this.mListFragment = bdVar;
                break;
            case 130:
                bd bdVar2 = new bd();
                bdVar2.f1798b = "android.intent.action.SENDTO";
                this.mListFragment = bdVar2;
                break;
            case 150:
                this.mListFragment = new bd();
                break;
            default:
                throw new IllegalStateException("Invalid action code: " + this.mActionCode);
        }
        this.mListFragment.s = this.mRequest.h;
        this.mListFragment.w = 20;
        getFragmentManager().beginTransaction().replace(2131296998, this.mListFragment).commitAllowingStateLoss();
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 0 && i2 == -1) {
            if (intent != null) {
                ImplicitIntentsUtil.startActivityInAppIfPossible(this, intent);
            }
            finish();
        }
    }

    @Override // android.app.Activity
    public void onAttachFragment(Fragment fragment) {
        if (fragment instanceof com.android.contacts.list.p) {
            this.mListFragment = (com.android.contacts.list.p) fragment;
            setupActionListener();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case 2131297109:
                startCreateNewContactActivity();
                return;
            default:
                return;
        }
    }

    @Override // android.widget.SearchView.OnCloseListener
    public boolean onClose() {
        if (TextUtils.isEmpty(this.mSearchView.getQuery())) {
            return true;
        }
        this.mSearchView.setQuery(null, true);
        return true;
    }

    @Override // android.app.Activity
    public boolean onContextItemSelected(MenuItem menuItem) {
        b bVar = this.mListFragment.x;
        return bVar != null ? bVar.a() : super.onContextItemSelected(menuItem);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.p, com.android.contacts.activities.TransactionSafeActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!NecessaryPermissionDenyActivity.startPermissionActivity(this)) {
            boolean z = (getResources().getConfiguration().uiMode & 15) == 3;
            if (PhoneCapabilityTester.isUsingTwoPanes(this) || z) {
                setRequestedOrientation(-1);
            } else {
                setRequestedOrientation(1);
            }
            if (bundle != null) {
                this.mActionCode = bundle.getInt(KEY_ACTION_CODE);
                this.isBlockList = bundle.getBoolean("blocklist");
            }
            this.mRequest = this.mIntentResolver.a(getIntent());
            if (!this.mRequest.f1764a) {
                setResult(0);
                finish();
                return;
            }
            Intent intent = this.mRequest.c;
            if (intent != null) {
                ImplicitIntentsUtil.startActivityInAppIfPossible(this, intent);
                finish();
                return;
            }
            configureActivityTitle();
            setContentView(2131427480);
            if (this.mActionCode != this.mRequest.f1765b) {
                this.mActionCode = this.mRequest.f1765b;
                configureListFragment();
            } else if (this.mListFragment != null && this.mActionCode == 60) {
                ((u) this.mListFragment).f = this.isBlockList;
            }
            prepareSearchViewAndActionBar();
            this.mCreateNewContactButton = findViewById(2131297109);
            if (this.mCreateNewContactButton == null) {
                return;
            }
            if (shouldShowCreateNewContactButton()) {
                this.mCreateNewContactButton.setVisibility(0);
                this.mCreateNewContactButton.setOnClickListener(this);
                return;
            }
            this.mCreateNewContactButton.setVisibility(8);
        }
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        if (!shouldShowCreateNewContactButton() || this.mCreateNewContactButton != null) {
            return true;
        }
        getMenuInflater().inflate(2131492881, menu);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.p, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        MemoryUtils.fixInputMethodManagerLeak(this);
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z) {
        switch (view.getId()) {
            case 2131297252:
                if (z) {
                    showInputMethod(this.mSearchView.findFocus());
                    return;
                }
                return;
            default:
                return;
        }
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        boolean z = true;
        switch (menuItem.getItemId()) {
            case 16908332:
                setResult(0);
                finish();
                break;
            case 2131296616:
                startCreateNewContactActivity();
                break;
            default:
                z = super.onOptionsItemSelected(menuItem);
                break;
        }
        return z;
    }

    @Override // android.widget.SearchView.OnQueryTextListener
    public boolean onQueryTextChange(String str) {
        this.mListFragment.a(str, true);
        return false;
    }

    @Override // android.widget.SearchView.OnQueryTextListener
    public boolean onQueryTextSubmit(String str) {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.activities.TransactionSafeActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt(KEY_ACTION_CODE, this.mActionCode);
        bundle.putBoolean("blocklist", this.isBlockList);
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        dismissOverrideProcessDialog();
    }

    public void returnPickerResult(Intent intent) {
        intent.setFlags(1);
        setResult(-1, intent);
        finish();
    }

    public void returnPickerResult(Uri uri) {
        Intent intent = new Intent();
        if (this.mActionCode == 150) {
            Parcelable[] parcelableArrayExtra = getIntent().getParcelableArrayExtra("com.android.contacts.extra.PHONE_URIS");
            Parcelable[] parcelableArr = new Parcelable[(parcelableArrayExtra != null ? parcelableArrayExtra.length : 0) + 1];
            if (parcelableArrayExtra != null) {
                int length = parcelableArrayExtra.length;
                int i = 0;
                int i2 = 0;
                while (i < length) {
                    parcelableArr[i2] = parcelableArrayExtra[i];
                    i++;
                    i2++;
                }
            }
            parcelableArr[parcelableArr.length - 1] = uri;
            intent.putExtra("com.android.contacts.extra.PHONE_URIS", parcelableArr);
        }
        intent.setData(uri);
        returnPickerResult(intent);
    }

    public void setSeachView(SearchView searchView) {
        this.mSearchView = searchView;
    }

    public void setupActionListener() {
        if (this.mListFragment instanceof u) {
            ((u) this.mListFragment).f1879a = new ContactPickerActionListener();
        } else if (this.mListFragment instanceof bd) {
            ((bd) this.mListFragment).f1797a = new PhoneNumberPickerActionListener();
        } else if (this.mListFragment instanceof bf) {
            ((bf) this.mListFragment).f1801a = new PostalAddressPickerActionListener();
        } else if (this.mListFragment instanceof ao) {
            ((ao) this.mListFragment).f1786a = new EmailAddressPickerActionListener();
        } else {
            throw new IllegalStateException("Unsupported list fragment type: " + this.mListFragment);
        }
    }

    public void startActivityAndForwardResult(Intent intent) {
        intent.setFlags(VCardConfig.FLAG_REFRAIN_PHONE_NUMBER_FORMATTING);
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            intent.putExtras(extras);
        }
        ImplicitIntentsUtil.startActivityInAppIfPossible(this, intent);
        finish();
    }
}
