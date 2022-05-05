package com.android.contacts.list;

import android.accounts.Account;
import android.content.Context;
import android.content.CursorLoader;
import android.database.Cursor;
import android.net.Uri;
import android.os.AsyncTask;
import android.provider.ContactsContract;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.android.contacts.b;
import com.android.contacts.util.AccountFilterUtil;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.contacts.vcard.SelectAccountActivity;
import com.asus.updatesdk.BuildConfig;
import com.asus.updatesdk.R;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/android/contacts/list/l.class */
public final class l extends q {
    private static final String[] R = {"_id", "display_name", "lookup", "name_raw_contact_id", "has_phone_number"};
    com.android.contacts.model.a g;
    public Set<Long> d = new HashSet();
    public Set<Long> e = new HashSet();
    public Map<Long, Integer> f = new HashMap();
    int h = -1;
    private final int i = 0;
    private final int j = 1;
    private Account k = null;
    private String l = null;
    private int m = 1;

    /* loaded from: classes-dex2jar.jar:com/android/contacts/list/l$a.class */
    private final class a extends AsyncTask<Account, Void, String> {

        /* renamed from: a  reason: collision with root package name */
        TextView f1846a;

        public a(View view) {
            this.f1846a = (TextView) view;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public String doInBackground(Account... accountArr) {
            Throwable th;
            String str;
            Cursor cursor = null;
            if (accountArr[0] == null) {
                str = null;
            } else {
                try {
                    Cursor query = l.this.U.getContentResolver().query(ContactsContract.RawContacts.CONTENT_URI, new String[]{SelectAccountActivity.ACCOUNT_NAME, SelectAccountActivity.ACCOUNT_TYPE, SelectAccountActivity.DATA_SET}, null, null, null);
                    if (query != null) {
                        try {
                            if (query.moveToFirst()) {
                                com.android.contacts.model.a a2 = com.android.contacts.model.a.a(l.this.U);
                                do {
                                    String string = query.getString(0);
                                    String string2 = query.getString(1);
                                    String string3 = query.getString(2);
                                    if (string != null && string2 != null && string.equals(accountArr[0].name) && string2.equals(accountArr[0].type)) {
                                        com.android.contacts.model.account.a a3 = a2.a(string2, string3);
                                        String str2 = a3.g ? (String) a3.a(l.this.U) : ((String) a3.a(l.this.U)) + "(" + string + ")";
                                        str = str2;
                                        if (query != null) {
                                            query.close();
                                            str = str2;
                                        }
                                    }
                                } while (query.moveToNext());
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            cursor = query;
                            if (cursor != null) {
                                cursor.close();
                            }
                            throw th;
                        }
                    }
                    if (query != null) {
                        query.close();
                    }
                    str = null;
                } catch (Throwable th3) {
                    th = th3;
                }
            }
            return str;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(String str) {
            String str2 = str;
            if (str2 != null && this.f1846a != null) {
                this.f1846a.setText(str2);
                l.this.l = str2;
            }
        }
    }

    public l(Context context) {
        super(context);
        this.Y = true;
        this.X = true;
        this.W = 1;
        this.x = 0;
    }

    private View a(int i, ViewGroup viewGroup) {
        return LayoutInflater.from(this.f407a).inflate(i, viewGroup, false);
    }

    private String a(long j) {
        String str = null;
        StringBuilder sb = new StringBuilder();
        Cursor query = this.U.getContentResolver().query(ContactsContract.RawContacts.CONTENT_URI, new String[]{SelectAccountActivity.ACCOUNT_TYPE}, "contact_id=" + j, null, null);
        while (query.moveToNext()) {
            try {
                String string = query.getString(0);
                if (string != null) {
                    if (sb.length() > 0) {
                        sb.append(", ");
                    }
                    sb.append(this.g.a(string, null).a(this.U));
                }
            } catch (Throwable th) {
                if (query != null) {
                    query.close();
                }
                throw th;
            }
        }
        if (query != null) {
            query.close();
        }
        if (sb.length() > 0) {
            str = sb.toString();
        }
        return str;
    }

    @Override // com.android.contacts.list.o, com.android.a.b.a
    public final int a(int i, int i2) {
        return super.a(i, i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.list.q, com.android.a.b.a
    public final View a(Context context, int i, Cursor cursor, int i2, ViewGroup viewGroup) {
        View a2;
        switch (i) {
            case 0:
            case 1:
                a2 = super.a(context, i, cursor, i2, viewGroup);
                break;
            default:
                a2 = null;
                break;
        }
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.list.o, com.android.a.b.a
    public final View a(Context context, int i, ViewGroup viewGroup) {
        View a2;
        switch (i) {
            case 0:
                a2 = a(2131427533, viewGroup);
                break;
            case 1:
                a2 = a(2131427596, viewGroup);
                if (TextUtils.isEmpty(this.u)) {
                    TextView textView = (TextView) a2.findViewById(R.id.text);
                    if (this.k != null && !this.k.name.equals("asus_all_accounts")) {
                        if (this.l != null) {
                            textView.setText(this.l);
                            break;
                        } else {
                            new a(textView).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, this.k);
                            break;
                        }
                    } else {
                        textView.setText(2131756095);
                        break;
                    }
                } else {
                    ((TextView) a2.findViewById(R.id.text)).setText(2131756081);
                    break;
                }
                break;
            default:
                a2 = null;
                break;
        }
        return a2;
    }

    public final void a(int i, Account account) {
        this.m = i;
        this.k = account;
    }

    @Override // com.android.contacts.list.o
    public final void a(CursorLoader cursorLoader, long j) {
        Uri build;
        String str;
        String str2;
        StringBuilder sb = new StringBuilder();
        String str3 = this.u;
        cursorLoader.setProjection(d(false));
        String str4 = BuildConfig.FLAVOR;
        if (!TextUtils.isEmpty(str3)) {
            Uri build2 = ContactsContract.Contacts.CONTENT_FILTER_URI.buildUpon().appendEncodedPath(Uri.encode(str3)).appendQueryParameter("directory", "0").build();
            this.X = false;
            build = build2;
            if (PhoneCapabilityTester.IsAsusDevice()) {
                str4 = BuildConfig.FLAVOR + "display_name LIKE '" + AccountFilterUtil.handleSqliteEscapeForOrderString(str3) + "%' DESC, display_name_alt LIKE '" + AccountFilterUtil.handleSqliteEscapeForOrderString(str3) + "%' DESC, times_contacted DESC, phonebook_bucket, ";
                build = build2;
            }
        } else {
            build = a(ContactsContract.Contacts.CONTENT_URI).buildUpon().appendQueryParameter("directory", "0").build();
            this.X = true;
        }
        cursorLoader.setUri(build);
        if (this.h == 0) {
            boolean IsAsusDevice = PhoneCapabilityTester.IsAsusDevice();
            str2 = IsAsusDevice ? " AND (has_phone_number = 1 )" : " (has_phone_number = 1 )";
            str = BuildConfig.FLAVOR;
            if (this.k != null) {
                str = BuildConfig.FLAVOR;
                if (!this.k.name.equals("asus_all_accounts")) {
                    str = " AND (_id IN (SELECT DISTINCT contact_id FROM ( SELECT * FROM ( SELECT contact_id, account_id FROM raw_contacts ) raw_contacts_table  LEFT JOIN accounts on raw_contacts_table.account_id = accounts._id  WHERE accounts._id IS NOT NULL   ) AS combineTable WHERE combineTable.account_type ='" + this.k.type + "' AND combineTable.account_name ='" + this.k.name + "'))";
                }
            }
            if (IsAsusDevice) {
                sb.append("isSim !=" + this.m);
            }
        } else {
            str = BuildConfig.FLAVOR;
            str2 = BuildConfig.FLAVOR;
            if (this.h == 1) {
                if (PhoneCapabilityTester.IsAsusDevice()) {
                    str = " AND (_id IN (SELECT DISTINCT contact_id FROM ( SELECT * FROM ( SELECT contact_id, account_id FROM raw_contacts ) raw_contacts_table  LEFT JOIN accounts on raw_contacts_table.account_id = accounts._id  WHERE accounts._id IS NOT NULL   ) AS combineTable WHERE combineTable.account_type ='" + (this.m == 2 ? "asus.local.simcard2" : b.a.d) + "' AND combineTable.account_name ='" + b.a.c + "'))";
                    sb.append("isSim =" + this.m);
                    str2 = BuildConfig.FLAVOR;
                } else {
                    str = "(_id IN (SELECT DISTINCT contact_id FROM ( SELECT * FROM ( SELECT contact_id, account_id FROM raw_contacts ) raw_contacts_table  LEFT JOIN accounts on raw_contacts_table.account_id = accounts._id  WHERE accounts._id IS NOT NULL   ) AS combineTable WHERE combineTable.account_type ='" + b.a.d + "' AND combineTable.account_name ='" + (com.android.contacts.simcardmanage.b.a(this.U) ? this.m == 2 ? "SIM2" : b.a.c : "SIM") + "'))";
                    str2 = BuildConfig.FLAVOR;
                }
            }
        }
        sb.append(str2);
        sb.append(str);
        Log.d("AsusSimExportImportAdapter", "selection.toString():" + sb.toString());
        cursorLoader.setSelection(sb.toString());
        cursorLoader.setSelectionArgs(null);
        cursorLoader.setSortOrder((!PhoneCapabilityTester.IsAsusDevice() || !Locale.getDefault().equals(Locale.TRADITIONAL_CHINESE)) ? this.o == 1 ? str4 + "sort_key" : str4 + "sort_key_alt" : str4 + "display_name");
    }

    @Override // com.android.contacts.list.o
    public final void a(Cursor cursor) {
        a(1, cursor);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.list.o, com.android.a.b.a
    public final void a(View view, int i, Cursor cursor) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.a.b.a
    public final void a(View view, int i, Cursor cursor, int i2) {
        long j = cursor.getLong(0);
        ContactListItemView contactListItemView = (ContactListItemView) view;
        contactListItemView.setTag(Integer.valueOf(i2 % 2));
        switch (i) {
            case 0:
                contactListItemView.setSectionHeader(null);
                b(contactListItemView, i, cursor);
                a(contactListItemView, cursor);
                contactListItemView.f();
                if (this.f.get(Long.valueOf(j)) == null) {
                    this.f.put(Long.valueOf(j), 0);
                    contactListItemView.setCheckBox(false);
                }
                if (this.f.get(Long.valueOf(j)).intValue() != 1) {
                    contactListItemView.setCheckBox(false);
                    break;
                } else {
                    contactListItemView.setCheckBox(true);
                    break;
                }
            case 1:
                contactListItemView.setHighlightedPrefix(this.v);
                a(contactListItemView, i2, cursor);
                b(contactListItemView, i, cursor);
                a(contactListItemView, cursor);
                if (this.h == 0) {
                    contactListItemView.setIsLabelAccount(true);
                    contactListItemView.setLabel(a(cursor.getLong(0)));
                }
                contactListItemView.f();
                if (!this.d.contains(Long.valueOf(j))) {
                    contactListItemView.setCheckBox(false);
                    break;
                } else {
                    contactListItemView.setCheckBox(true);
                    break;
                }
        }
        if (!PhoneCapabilityTester.IsAsusDevice() && !PhoneCapabilityTester.IsUnbundled()) {
            a(contactListItemView, this.q, j);
        }
    }

    @Override // com.android.contacts.list.o
    public final void a(boolean z) {
        super.a(true);
    }

    @Override // com.android.contacts.list.q
    public final Uri b(int i, Cursor cursor) {
        return ContactsContract.Contacts.getLookupUri(cursor.getLong(0), cursor.getString(4));
    }

    @Override // com.android.contacts.list.o
    protected final void b() {
        a(false, true);
        a(d());
    }

    @Override // com.android.contacts.list.o, com.android.a.b.a, android.widget.BaseAdapter, android.widget.Adapter
    public final int getViewTypeCount() {
        return super.getViewTypeCount() + 1;
    }

    @Override // com.android.contacts.list.o, android.widget.BaseAdapter, android.widget.Adapter
    public final boolean isEmpty() {
        return false;
    }
}
