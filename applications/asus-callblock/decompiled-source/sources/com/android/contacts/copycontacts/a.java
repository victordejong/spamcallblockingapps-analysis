package com.android.contacts.copycontacts;

import android.content.Context;
import android.os.AsyncTask;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.android.contacts.b;
import com.android.contacts.model.account.AccountWithDataSet;
import com.android.contacts.util.PhoneCapabilityTester;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/android/contacts/copycontacts/a.class */
public class a extends BaseAdapter {

    /* renamed from: b  reason: collision with root package name */
    private static final String f778b = a.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    public boolean f779a;
    private final LayoutInflater c;
    private final List<AccountWithDataSet> d;
    private Map<String, Integer> e;
    private Map<String, Integer> f;
    private final com.android.contacts.model.a g;
    private final Context h;
    private AccountWithDataSet i;
    private boolean j;
    private boolean k;
    private boolean l;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier removed */
    /* renamed from: com.android.contacts.copycontacts.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/copycontacts/a$a.class */
    public static final class EnumC0029a extends Enum<EnumC0029a> {

        /* renamed from: a  reason: collision with root package name */
        public static final int f780a = 1;

        /* renamed from: b  reason: collision with root package name */
        public static final int f781b = 2;
        public static final int c = 3;
        public static final int d = 4;
        public static final int e = 5;
        public static final int f = 6;
        public static final int g = 7;
        private static final /* synthetic */ int[] h = {f780a, f781b, c, d, e, f, g};
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/copycontacts/a$b.class */
    final class b extends AsyncTask<Void, Void, Void> {
        b() {
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Void doInBackground(Void[] voidArr) {
            a.a(a.this);
            return null;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Void r6) {
            super.onPostExecute(r6);
            a.this.f779a = true;
            Log.d(a.f778b, "queryNumOfContactsTask finish : isLoadCountFinish = " + a.this.f779a);
            a.this.notifyDataSetChanged();
        }
    }

    public a(Context context, int i) {
        this.e = new HashMap();
        this.f = new HashMap();
        this.j = false;
        this.l = false;
        this.f779a = false;
        this.h = context;
        this.g = com.android.contacts.model.a.a(context);
        this.i = null;
        this.d = new ArrayList();
        c(i);
        if (this.d.size() > 0) {
            try {
                new b().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
            } catch (Exception e) {
                Log.e(f778b, e.toString());
            }
        }
        this.c = LayoutInflater.from(context);
        this.k = true;
        this.l = true;
        this.j = true;
    }

    public a(Context context, int i, AccountWithDataSet accountWithDataSet, boolean z) {
        this.e = new HashMap();
        this.f = new HashMap();
        this.j = false;
        this.l = false;
        this.f779a = false;
        this.h = context;
        this.g = com.android.contacts.model.a.a(context);
        this.i = accountWithDataSet;
        this.d = new ArrayList();
        c(i);
        if (this.d.size() > 0) {
            try {
                new b().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
            } catch (Exception e) {
                Log.e(f778b, e.toString());
            }
        }
        this.c = LayoutInflater.from(context);
        this.k = z;
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0061  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int a(java.lang.String r8, java.lang.String r9, java.lang.String r10) {
        /*
            r7 = this;
            r0 = r10
            if (r0 != 0) goto L_0x006e
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            java.lang.String r2 = "_id IN ( SELECT contact_id FROM raw_contacts WHERE account_id = (SELECT _ID FROM accounts WHERE account_name = '"
            r1.<init>(r2)
            r1 = r8
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r1 = "' AND account_type = '"
            java.lang.StringBuilder r0 = r0.append(r1)
            r1 = r9
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r1 = "'))"
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r0 = r0.toString()
            r8 = r0
        L_0x0023:
            r0 = r7
            android.content.Context r0 = r0.h
            if (r0 == 0) goto L_0x00ac
            r0 = r7
            android.content.Context r0 = r0.h
            android.content.ContentResolver r0 = r0.getContentResolver()
            android.net.Uri r1 = android.provider.ContactsContract.Contacts.CONTENT_URI
            r2 = 1
            java.lang.String[] r2 = new java.lang.String[r2]
            r3 = r2
            r4 = 0
            java.lang.String r5 = "_id"
            r3[r4] = r5
            r3 = r8
            r4 = 0
            r5 = 0
            android.database.Cursor r0 = r0.query(r1, r2, r3, r4, r5)
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x00a6
            r0 = r8
            boolean r0 = r0.moveToFirst()     // Catch: all -> 0x0099
            if (r0 == 0) goto L_0x00a6
            r0 = r8
            int r0 = r0.getCount()     // Catch: all -> 0x0099
            r11 = r0
        L_0x0059:
            r0 = r11
            r12 = r0
            r0 = r8
            if (r0 == 0) goto L_0x006b
            r0 = r8
            r0.close()
            r0 = r11
            r12 = r0
        L_0x006b:
            r0 = r12
            return r0
        L_0x006e:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            java.lang.String r2 = "_id IN ( SELECT contact_id FROM raw_contacts WHERE account_id = (SELECT _ID FROM accounts WHERE account_name = '"
            r1.<init>(r2)
            r1 = r8
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r1 = "' AND account_type = '"
            java.lang.StringBuilder r0 = r0.append(r1)
            r1 = r9
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r1 = "' AND data_set = '"
            java.lang.StringBuilder r0 = r0.append(r1)
            r1 = r10
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r1 = "'))"
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r0 = r0.toString()
            r8 = r0
            goto L_0x0023
        L_0x0099:
            r9 = move-exception
            r0 = r8
            if (r0 == 0) goto L_0x00a4
            r0 = r8
            r0.close()
        L_0x00a4:
            r0 = r9
            throw r0
        L_0x00a6:
            r0 = 0
            r11 = r0
            goto L_0x0059
        L_0x00ac:
            r0 = 0
            r12 = r0
            goto L_0x006b
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.copycontacts.a.a(java.lang.String, java.lang.String, java.lang.String):int");
    }

    static /* synthetic */ void a(a aVar) {
        if (com.android.contacts.b.f607a.booleanValue()) {
            Log.d(f778b, "initailNumberOfContacts");
        }
        boolean IsAsusDevice = PhoneCapabilityTester.IsAsusDevice();
        int i = 0;
        for (AccountWithDataSet accountWithDataSet : aVar.d) {
            int a2 = aVar.a(accountWithDataSet.name, accountWithDataSet.type, accountWithDataSet.f1998a);
            if (IsAsusDevice) {
                if (b.a.c.equals(accountWithDataSet.name)) {
                    aVar.f.put(accountWithDataSet.type, Integer.valueOf(a2));
                } else {
                    aVar.e.put(accountWithDataSet.name, Integer.valueOf(a2));
                }
            } else if (b.a.d.equals(accountWithDataSet.type)) {
                aVar.f.put(accountWithDataSet.name, Integer.valueOf(a2));
            } else {
                aVar.e.put(accountWithDataSet.name, Integer.valueOf(a2));
            }
            i += a2;
        }
        aVar.e.put("asus_all_accounts", Integer.valueOf(i));
        if (com.android.contacts.b.f607a.booleanValue()) {
            for (AccountWithDataSet accountWithDataSet2 : aVar.d) {
                if (IsAsusDevice) {
                    if (b.a.c.equals(accountWithDataSet2.name)) {
                        Log.d(f778b, accountWithDataSet2.type + " number is " + aVar.f.get(accountWithDataSet2.type));
                    } else {
                        Log.d(f778b, PhoneCapabilityTester.privacyLogCheck(accountWithDataSet2.name) + " number is " + PhoneCapabilityTester.privacyLogCheck(aVar.e.get(accountWithDataSet2.name).toString()));
                    }
                } else if (b.a.d.equals(accountWithDataSet2.type)) {
                    Log.d(f778b, accountWithDataSet2.name + " number is " + aVar.f.get(accountWithDataSet2.name));
                } else {
                    Log.d(f778b, PhoneCapabilityTester.privacyLogCheck(accountWithDataSet2.name) + " number is " + PhoneCapabilityTester.privacyLogCheck(aVar.e.get(accountWithDataSet2.name).toString()));
                }
            }
        }
    }

    private void c(int i) {
        List<AccountWithDataSet> a2 = this.g.a(true);
        int size = a2.size();
        if (i == EnumC0029a.f780a) {
            this.j = true;
            for (AccountWithDataSet accountWithDataSet : a2) {
                if (size == 0) {
                    return;
                }
                if (!(PhoneCapabilityTester.IsAsusDevice() ? b.a.c.equals(accountWithDataSet.name) : b.a.d.equals(accountWithDataSet.type))) {
                    if (this.i == null) {
                        this.d.add(accountWithDataSet);
                    } else if (!this.i.name.equals(accountWithDataSet.name) || !this.i.type.equals(accountWithDataSet.type)) {
                        this.d.add(accountWithDataSet);
                    }
                }
            }
        } else if (i == EnumC0029a.c) {
            this.d.add(new AccountWithDataSet("asus_all_accounts", "asus_all_accounts", null));
            for (AccountWithDataSet accountWithDataSet2 : a2) {
                if (size == 0) {
                    return;
                }
                if (!(PhoneCapabilityTester.IsAsusDevice() ? b.a.c.equals(accountWithDataSet2.name) : b.a.d.equals(accountWithDataSet2.type))) {
                    this.d.add(accountWithDataSet2);
                }
            }
        } else if (i == EnumC0029a.d) {
            this.d.add(new AccountWithDataSet("asus_all_accounts", "asus_all_accounts", null));
            for (AccountWithDataSet accountWithDataSet3 : a2) {
                if (size != 0) {
                    this.d.add(accountWithDataSet3);
                } else {
                    return;
                }
            }
        } else if (i == EnumC0029a.e) {
            for (AccountWithDataSet accountWithDataSet4 : a2) {
                if (size == 0) {
                    return;
                }
                if (PhoneCapabilityTester.IsAsusDevice() ? b.a.c.equals(accountWithDataSet4.name) : b.a.d.equals(accountWithDataSet4.type)) {
                    this.d.add(accountWithDataSet4);
                }
            }
        } else if (i == EnumC0029a.f) {
            this.d.add(new AccountWithDataSet("asus_all_accounts", "asus_all_accounts", null));
            for (AccountWithDataSet accountWithDataSet5 : a2) {
                if (size == 0) {
                    return;
                }
                if (!(PhoneCapabilityTester.IsAsusDevice() ? b.a.c.equals(accountWithDataSet5.name) && b.a.d.equals(accountWithDataSet5.type) : (b.a.c.equals(accountWithDataSet5.name) || "SIM".equals(accountWithDataSet5.name)) && b.a.d.equals(accountWithDataSet5.type))) {
                    this.d.add(accountWithDataSet5);
                }
            }
        } else if (i == EnumC0029a.g) {
            this.d.add(new AccountWithDataSet("asus_all_accounts", "asus_all_accounts", null));
            for (AccountWithDataSet accountWithDataSet6 : a2) {
                if (size == 0) {
                    return;
                }
                if (!(PhoneCapabilityTester.IsAsusDevice() ? b.a.c.equals(accountWithDataSet6.name) && "asus.local.simcard2".equals(accountWithDataSet6.type) : "SIM2".equals(accountWithDataSet6.name) && b.a.d.equals(accountWithDataSet6.type))) {
                    this.d.add(accountWithDataSet6);
                }
            }
        }
    }

    private String d(int i) {
        return com.android.contacts.simcardmanage.b.f(this.h, i);
    }

    /* renamed from: a */
    public final AccountWithDataSet getItem(int i) {
        return this.d.get(i);
    }

    public final int b(int i) {
        int i2;
        AccountWithDataSet accountWithDataSet = this.d.get(i);
        if (PhoneCapabilityTester.IsAsusDevice()) {
            if (b.a.c.equals(accountWithDataSet.name)) {
                i2 = this.f.get(accountWithDataSet.type) == null ? 0 : this.f.get(accountWithDataSet.type).intValue();
            } else {
                i2 = 0;
                if (this.e.get(accountWithDataSet.name) != null) {
                    i2 = this.e.get(accountWithDataSet.name).intValue();
                }
            }
        } else if (b.a.d.equals(accountWithDataSet.type)) {
            i2 = 0;
            if (this.f.get(accountWithDataSet.name) != null) {
                i2 = this.f.get(accountWithDataSet.name).intValue();
            }
        } else {
            i2 = 0;
            if (this.e.get(accountWithDataSet.name) != null) {
                i2 = this.e.get(accountWithDataSet.name).intValue();
            }
        }
        return i2;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.d.size();
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        View inflate = view != null ? view : this.c.inflate(this.j ? 2131427351 : 2131427331, viewGroup, false);
        TextView textView = (TextView) inflate.findViewById(16908308);
        TextView textView2 = (TextView) inflate.findViewById(16908309);
        ImageView imageView = (ImageView) inflate.findViewById(16908294);
        TextView textView3 = (TextView) inflate.findViewById(2131296599);
        AccountWithDataSet accountWithDataSet = this.d.get(i);
        com.android.contacts.model.account.a a2 = this.g.a(accountWithDataSet.type, accountWithDataSet.f1998a);
        if (!this.k) {
            imageView.setVisibility(8);
        } else if (textView3 != null) {
            if (this.l) {
                textView3.setVisibility(0);
            } else {
                textView3.setVisibility(8);
            }
        }
        if (accountWithDataSet.name.equals("asus_all_accounts")) {
            textView.setText(this.h.getResources().getString(2131756095));
            textView2.setVisibility(8);
            if (imageView != null) {
                imageView.setImageResource(2131165302);
            }
        } else {
            String str = accountWithDataSet.name;
            boolean IsAsusDevice = PhoneCapabilityTester.IsAsusDevice();
            String str2 = str;
            if (IsAsusDevice) {
                str2 = str;
                if (str != null) {
                    str2 = str;
                    if (str.equals(b.a.c)) {
                        String str3 = null;
                        if (com.android.contacts.simcardmanage.b.a(this.h)) {
                            if (accountWithDataSet.type.equals(b.a.d)) {
                                str3 = d(1);
                            } else {
                                str3 = null;
                                if (accountWithDataSet.type.equals("asus.local.simcard2")) {
                                    str3 = d(2);
                                }
                            }
                        }
                        str2 = str3;
                        if (str3 == null) {
                            str2 = "SIM card";
                        }
                    }
                }
            }
            CharSequence a3 = a2.a(this.h);
            boolean z = false;
            if (!PhoneCapabilityTester.IsUnbundled() || !this.h.getString(2131755023).equals(a3)) {
                textView.setText(a3);
            } else {
                textView.setText(str2);
                z = true;
            }
            String str4 = str2;
            if (!IsAsusDevice) {
                str4 = str2;
                if (accountWithDataSet.type != null) {
                    str4 = str2;
                    if (accountWithDataSet.type.equals(b.a.d)) {
                        String str5 = null;
                        if (com.android.contacts.simcardmanage.b.a(this.h)) {
                            if (accountWithDataSet.name.equals(b.a.c)) {
                                str5 = d(1);
                            } else {
                                str5 = null;
                                if (accountWithDataSet.name.equals("SIM2")) {
                                    str5 = d(2);
                                }
                            }
                        }
                        str4 = str5;
                        if (str5 == null) {
                            str4 = "SIM card";
                        }
                        textView.setText(str4);
                    }
                }
            }
            if (a2.g) {
                textView2.setVisibility(8);
            } else {
                if (z) {
                    textView2.setText(accountWithDataSet.type);
                } else {
                    textView2.setText(str4);
                }
                textView2.setEllipsize(TextUtils.TruncateAt.MIDDLE);
                textView2.setVisibility(0);
            }
            if (imageView != null) {
                if (IsAsusDevice) {
                    imageView.setImageDrawable(a2.d(this.h));
                } else {
                    imageView.setImageDrawable(a2.a(this.h, str4));
                }
            }
        }
        int b2 = b(i);
        if (textView3 != null && this.f779a) {
            textView3.setText("(" + String.valueOf(b2) + ")");
        }
        return inflate;
    }
}
