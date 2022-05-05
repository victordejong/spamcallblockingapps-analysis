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
import com.android.contacts.simcardmanage.e;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.contacts.vcard.SelectAccountActivity;
import com.asus.updatesdk.R;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/android/contacts/list/g.class */
public class g extends q {
    com.android.contacts.model.a i;
    a k;
    public static final String d = g.class.getSimpleName();
    private static final String[] S = {"_id", "display_name", "lookup", "name_raw_contact_id", "has_phone_number"};
    public Set<Uri> e = new HashSet();
    public Set<Uri> f = new HashSet();
    public Map<Uri, Integer> g = new HashMap();
    public Map<Long, String> h = new HashMap();
    Account j = null;
    private ArrayList<Long> R = new ArrayList<>();
    public View.OnClickListener l = new View.OnClickListener() { // from class: com.android.contacts.list.g.1
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (g.this.k != null) {
                g.this.k.a(view);
            }
        }
    };
    public View.OnClickListener m = new View.OnClickListener() { // from class: com.android.contacts.list.g.2
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (g.this.k != null) {
                g.this.k.b(view);
            }
        }
    };

    /* loaded from: classes-dex2jar.jar:com/android/contacts/list/g$a.class */
    public interface a {
        void a(View view);

        void b(View view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/list/g$b.class */
    public final class b extends AsyncTask<Long, Void, String> {

        /* renamed from: a  reason: collision with root package name */
        ContactListItemView f1826a;

        /* renamed from: b  reason: collision with root package name */
        final long f1827b;

        public b(ContactListItemView contactListItemView) {
            this.f1826a = contactListItemView;
            this.f1827b = ((Long) contactListItemView.a().getTag()).longValue();
        }

        private String a(Long l) {
            String str = null;
            StringBuilder sb = new StringBuilder();
            if (g.this.U != null) {
                Cursor query = g.this.U.getContentResolver().query(ContactsContract.RawContacts.CONTENT_URI, new String[]{SelectAccountActivity.ACCOUNT_TYPE}, "contact_id=" + l, null, null);
                while (query.moveToNext()) {
                    try {
                        String string = query.getString(0);
                        if (string != null) {
                            if (sb.length() > 0) {
                                sb.append(", ");
                            }
                            sb.append(g.this.i.a(string, null).a(g.this.U));
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
            }
            if (sb.length() > 0) {
                str = sb.toString();
            }
            return str;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ String doInBackground(Long[] lArr) {
            Long[] lArr2 = lArr;
            return (((Long) this.f1826a.a().getTag()).longValue() != this.f1827b || lArr2 == null || lArr2[0].longValue() <= 0) ? null : a(lArr2[0]);
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(String str) {
            String str2 = str;
            super.onPostExecute(str2);
            g.this.R.remove(Long.valueOf(this.f1827b));
            if (this.f1826a != null && str2 != null) {
                g.this.h.put(Long.valueOf(this.f1827b), str2);
                if (((Long) this.f1826a.a().getTag()).longValue() == this.f1827b) {
                    g.this.notifyDataSetChanged();
                }
            }
        }

        @Override // android.os.AsyncTask
        protected final void onPreExecute() {
            super.onPreExecute();
            g.this.R.add(Long.valueOf(this.f1827b));
        }
    }

    public g(Context context) {
        super(context);
        this.Y = true;
        this.X = true;
        this.W = 1;
        this.x = 0;
    }

    private View a(int i, ViewGroup viewGroup) {
        return LayoutInflater.from(this.f407a).inflate(i, viewGroup, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1, types: [long] */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long b(android.database.Cursor r3) {
        /*
            r0 = 0
            r4 = r0
            r0 = r4
            r6 = r0
            r0 = r3
            if (r0 == 0) goto L_0x001b
            r0 = r4
            r6 = r0
            r0 = r3
            int r0 = r0.getColumnCount()
            if (r0 <= 0) goto L_0x001b
            r0 = r3
            r1 = 0
            long r0 = r0.getLong(r1)
            r6 = r0
        L_0x001b:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.list.g.b(android.database.Cursor):long");
    }

    @Override // com.android.contacts.list.o, com.android.a.b.a
    public final int a(int i, int i2) {
        return super.a(i, i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.list.q, com.android.a.b.a
    public View a(Context context, int i, Cursor cursor, int i2, ViewGroup viewGroup) {
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
                if (TextUtils.isEmpty(this.u)) {
                    a2 = a(2131427533, viewGroup);
                    break;
                } else {
                    a2 = a(2131427596, viewGroup);
                    ((TextView) a2.findViewById(R.id.text)).setText(2131756081);
                    break;
                }
            default:
                a2 = null;
                break;
        }
        return a2;
    }

    @Override // com.android.contacts.list.o
    public void a(CursorLoader cursorLoader, long j) {
        Uri build;
        String str;
        char c;
        StringBuilder sb = new StringBuilder();
        String str2 = this.u;
        if (!TextUtils.isEmpty(str2)) {
            build = ContactsContract.Contacts.CONTENT_FILTER_URI.buildUpon().appendEncodedPath(Uri.encode(str2)).build();
            this.X = false;
        } else {
            build = a(ContactsContract.Contacts.CONTENT_URI).buildUpon().build();
            this.X = true;
        }
        cursorLoader.setProjection(d(false));
        cursorLoader.setUri(build);
        if (PhoneCapabilityTester.isVerizon()) {
            str = "in_visible_group=1";
            if (f()) {
                str = "in_visible_group=1 AND has_phone_number=1";
            }
        } else {
            str = (this.j == null || this.j.name.equals("asus_all_accounts")) ? "(in_visible_group=1 OR in_visible_group=0 )" : "_id IN (SELECT DISTINCT contact_id FROM ( SELECT * FROM ( SELECT contact_id, account_id FROM raw_contacts ) raw_contacts_table  LEFT JOIN accounts on raw_contacts_table.account_id = accounts._id  WHERE accounts._id IS NOT NULL   ) AS combineTable WHERE combineTable.account_type ='" + this.j.type + "' AND combineTable.account_name ='" + this.j.name + "')";
        }
        sb.append(str);
        e a2 = e.a(this.U);
        if (com.android.contacts.simcardmanage.b.a(this.U)) {
            boolean a3 = a2.a(1);
            boolean a4 = a2.a(2);
            c = (!a3 || !a4) ? a3 ? (char) 2 : a4 ? (char) 3 : (char) 0 : (char) 1;
        } else {
            c = a2.a(1) ? (char) 1 : (char) 0;
        }
        boolean IsAsusDevice = PhoneCapabilityTester.IsAsusDevice();
        if (IsAsusDevice) {
            if (c == 2) {
                sb.append(" AND isSim != 2");
            } else if (c == 3) {
                sb.append(" AND isSim != 1");
            }
        }
        cursorLoader.setSelection(sb.toString());
        if (IsAsusDevice && Locale.getDefault().equals(Locale.TRADITIONAL_CHINESE)) {
            cursorLoader.setSortOrder("display_name");
        } else if (this.o == 1) {
            cursorLoader.setSortOrder("sort_key");
        } else {
            cursorLoader.setSortOrder("sort_key_alt");
        }
    }

    @Override // com.android.contacts.list.o
    public void a(Cursor cursor) {
        a(1, cursor);
    }

    protected void a(Cursor cursor, ContactListItemView contactListItemView) {
        long b2 = b(cursor);
        String str = this.h.get(Long.valueOf(b2));
        if (str != null) {
            contactListItemView.setLabel(str);
            return;
        }
        try {
            if (this.R.contains(Long.valueOf(b2)) || this.R.size() >= 128) {
                Log.i(d, b2 + " is already in queue or queued tasks more than 128 (" + this.R.size() + ")");
            } else {
                new b(contactListItemView).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, Long.valueOf(b2));
            }
        } catch (Exception e) {
            Log.i(d, "queued tasks size (" + this.R.size() + ")");
            Log.i(d, e.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.list.o, com.android.a.b.a
    public final void a(View view, int i, Cursor cursor) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.a.b.a
    public void a(View view, int i, Cursor cursor, int i2) {
        long b2 = b(cursor);
        ContactListItemView contactListItemView = (ContactListItemView) view;
        contactListItemView.setTag(Integer.valueOf(i2 % 2));
        contactListItemView.a().setTag(Long.valueOf(b2));
        switch (i) {
            case 0:
                Uri m = m(i2);
                contactListItemView.setSectionHeader(null);
                b(contactListItemView, i, cursor);
                a(contactListItemView, cursor);
                contactListItemView.f();
                if (this.g.get(m) == null) {
                    this.g.put(m, 0);
                    contactListItemView.setCheckBox(false);
                }
                if (this.g.get(m).intValue() != 1) {
                    contactListItemView.setCheckBox(false);
                    break;
                } else {
                    contactListItemView.setCheckBox(true);
                    break;
                }
            case 1:
                Uri b3 = b(1, cursor);
                contactListItemView.setIsLabelAccount(true);
                contactListItemView.setHighlightedPrefix(this.v);
                a(contactListItemView, i2, cursor);
                b(contactListItemView, i, cursor);
                a(contactListItemView, cursor);
                a(cursor, contactListItemView);
                contactListItemView.f();
                if (this.e.contains(b3)) {
                    contactListItemView.setCheckBox(true);
                } else {
                    contactListItemView.setCheckBox(false);
                }
                contactListItemView.setOnClickListener(this.l);
                contactListItemView.f().setOnClickListener(this.m);
                break;
        }
        if (!PhoneCapabilityTester.IsAsusDevice() && !PhoneCapabilityTester.IsUnbundled()) {
            a(contactListItemView, this.q, b2);
        }
    }

    @Override // com.android.contacts.list.o
    public final void a(boolean z) {
        super.a(true);
    }

    @Override // com.android.contacts.list.q
    public Uri b(int i, Cursor cursor) {
        return ContactsContract.Contacts.getLookupUri(cursor.getLong(0), cursor.getString(4));
    }

    @Override // com.android.contacts.list.o
    protected final void b() {
        a(false, true);
        a(d());
    }

    public final void c() {
        this.e.clear();
    }

    @Override // com.android.contacts.list.o, com.android.a.b.a, android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return super.getViewTypeCount() + 1;
    }

    @Override // com.android.contacts.list.o, android.widget.BaseAdapter, android.widget.Adapter
    public boolean isEmpty() {
        return false;
    }
}
