package com.android.contacts.list;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.ContactsContract;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.android.contacts.vcard.SelectAccountActivity;
import com.asus.updatesdk.R;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/android/contacts/list/i.class */
public class i extends q {
    public static final String d = i.class.getSimpleName();
    long e;
    long[] i;
    long[] j;
    Uri k;
    com.android.contacts.model.a l;
    a m;
    public Map<Uri, Integer> f = new HashMap();
    public Map<Uri, Integer> g = new HashMap();
    public Map<Long, Integer> h = new HashMap();
    private ArrayList<Uri> R = new ArrayList<>();
    private ArrayList<Uri> S = new ArrayList<>();
    private View.OnClickListener T = new View.OnClickListener() { // from class: com.android.contacts.list.i.1
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (i.this.m != null) {
                i.this.m.a(view);
            }
        }
    };
    private View.OnClickListener Z = new View.OnClickListener() { // from class: com.android.contacts.list.i.2
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (i.this.m != null) {
                i.this.m.b(view);
            }
        }
    };

    /* loaded from: classes-dex2jar.jar:com/android/contacts/list/i$a.class */
    public interface a {
        void a(View view);

        void b(View view);
    }

    public i(Context context) {
        super(context);
        this.Y = true;
        this.X = true;
        this.W = 1;
        this.x = 0;
    }

    private View a(ViewGroup viewGroup) {
        return LayoutInflater.from(this.f407a).inflate(2131427596, viewGroup, false);
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
                    sb.append(this.l.a(string, null).a(this.U));
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

    private String b(long j) {
        String str = null;
        StringBuilder sb = new StringBuilder();
        Cursor query = this.U.getContentResolver().query(ContactsContract.RawContacts.CONTENT_URI, new String[]{SelectAccountActivity.ACCOUNT_TYPE}, "_id=" + j, null, null);
        while (query.moveToNext()) {
            try {
                String string = query.getString(0);
                if (string != null) {
                    if (sb.length() > 0) {
                        sb.append(", ");
                    }
                    sb.append(this.l.a(string, null).a(this.U));
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
                a2 = a(viewGroup);
                ((TextView) a2.findViewById(R.id.text)).setText(2131756096);
                break;
            case 1:
                a2 = a(viewGroup);
                if (TextUtils.isEmpty(this.u)) {
                    ((TextView) a2.findViewById(R.id.text)).setText(2131756095);
                    break;
                } else {
                    ((TextView) a2.findViewById(R.id.text)).setText(2131756081);
                    break;
                }
            default:
                a2 = null;
                break;
        }
        return a2;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x017f  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x01ef  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0243  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x025c  */
    @Override // com.android.contacts.list.o
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(android.content.CursorLoader r8, long r9) {
        /*
            Method dump skipped, instructions count: 629
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.list.i.a(android.content.CursorLoader, long):void");
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
    /* JADX WARN: Removed duplicated region for block: B:15:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x01b0  */
    /* JADX WARN: Removed duplicated region for block: B:41:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:46:? A[RETURN, SYNTHETIC] */
    @Override // com.android.a.b.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(android.view.View r6, int r7, android.database.Cursor r8, int r9) {
        /*
            Method dump skipped, instructions count: 488
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.list.i.a(android.view.View, int, android.database.Cursor, int):void");
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
    public int getViewTypeCount() {
        return super.getViewTypeCount() + 1;
    }

    @Override // com.android.contacts.list.o, android.widget.BaseAdapter, android.widget.Adapter
    public boolean isEmpty() {
        return false;
    }

    public final long j(int i) {
        return ((Cursor) getItem(i)).getLong(9);
    }
}
