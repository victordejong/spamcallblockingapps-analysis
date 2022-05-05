package com.asus.privatecontacts;

import android.app.LoaderManager;
import android.content.Context;
import android.content.CursorLoader;
import android.content.Intent;
import android.content.Loader;
import android.database.Cursor;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.provider.ContactsContract;
import android.support.v4.b.e;
import android.text.TextUtils;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.CheckedTextView;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.SearchView;
import com.android.contacts.model.account.AccountWithDataSet;
import com.android.contacts.util.AsusActionBarUtils;
import com.android.contacts.util.PhoneCapabilityTester;
import com.asus.privatecontacts.b.b;
import com.asus.privatecontacts.b.c;
import com.asus.privatecontacts.provider.a;
import java.util.ArrayList;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/asus/privatecontacts/ContactsMultiplePickerActivity.class */
public class ContactsMultiplePickerActivity extends e {

    /* renamed from: a  reason: collision with root package name */
    private static String f2951a = ContactsMultiplePickerActivity.class.getSimpleName();
    private static HashMap<String, Integer> j;

    /* renamed from: b  reason: collision with root package name */
    private Context f2952b;
    private String c;
    private ListView d;
    private b e;
    private SearchView f;
    private CheckedTextView g;
    private MenuItem h;
    private AccountWithDataSet k;
    private int i = 1;
    private SearchView.OnQueryTextListener l = new SearchView.OnQueryTextListener() { // from class: com.asus.privatecontacts.ContactsMultiplePickerActivity.4
        @Override // android.widget.SearchView.OnQueryTextListener
        public final boolean onQueryTextChange(String str) {
            ContactsMultiplePickerActivity contactsMultiplePickerActivity = ContactsMultiplePickerActivity.this;
            if (TextUtils.isEmpty(str)) {
                str = null;
            }
            contactsMultiplePickerActivity.c = str;
            ContactsMultiplePickerActivity.this.a();
            return false;
        }

        @Override // android.widget.SearchView.OnQueryTextListener
        public final boolean onQueryTextSubmit(String str) {
            return false;
        }
    };
    private LoaderManager.LoaderCallbacks<Cursor> m = new LoaderManager.LoaderCallbacks<Cursor>() { // from class: com.asus.privatecontacts.ContactsMultiplePickerActivity.5
        @Override // android.app.LoaderManager.LoaderCallbacks
        public final Loader<Cursor> onCreateLoader(int i, Bundle bundle) {
            return ContactsMultiplePickerActivity.this.i == 1 ? new a(ContactsMultiplePickerActivity.this.f2952b, ContactsMultiplePickerActivity.this.c) : new CursorLoader<>(ContactsMultiplePickerActivity.this.f2952b, Uri.withAppendedPath(a.d.f3064a, "list"), null, null, null, null);
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public final /* synthetic */ void onLoadFinished(Loader<Cursor> loader, Cursor cursor) {
            ContactsMultiplePickerActivity.this.e.swapCursor(cursor);
            ContactsMultiplePickerActivity.this.b();
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public final void onLoaderReset(Loader<Cursor> loader) {
        }
    };

    static {
        HashMap<String, Integer> hashMap = new HashMap<>();
        j = hashMap;
        hashMap.put("com.asus.contacts.action.contacts_multi_picker", 1);
        j.put("com.asus.contacts.action.delete_private_contacts", 2);
        j.put("com.asus.contacts.action.restore_private_contacts", 3);
    }

    public final void a() {
        getLoaderManager().restartLoader(1, null, this.m);
    }

    public final void b() {
        if (this.g != null && this.e.getCount() > 0) {
            if (this.i == 2 || this.i == 3) {
                this.g.setVisibility(0);
                this.g.setChecked(this.e.a());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.asus.privatecontacts.e, com.android.contacts.activities.TransactionSafeActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(2131427625);
        boolean isCarMode = PhoneCapabilityTester.isCarMode(getApplicationContext());
        if (!PhoneCapabilityTester.isUsingTwoPanes(this)) {
            if (isCarMode) {
                setRequestedOrientation(-1);
            } else {
                setRequestedOrientation(1);
            }
        }
        AsusActionBarUtils.initActionbarDisplayOptions(getActionBar());
        if (getIntent() != null) {
            Integer num = j.get(getIntent().getAction());
            if (num != null) {
                this.i = num.intValue();
            }
            this.k = (AccountWithDataSet) getIntent().getParcelableExtra("com.android.contacts.extra.ACCOUNT");
        }
        this.f2952b = this;
        this.d = (ListView) findViewById(2131297002);
        this.e = new b(this, null, 2131427630, null);
        this.d.setAdapter((ListAdapter) this.e);
        this.d.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.asus.privatecontacts.ContactsMultiplePickerActivity.1
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView<?> adapterView, View view, int i, long j2) {
                boolean z;
                boolean z2 = true;
                c cVar = (c) view.getTag();
                b bVar = ContactsMultiplePickerActivity.this.e;
                if (!cVar.j || cVar.f == null) {
                    Log.e(c.f3009a, "isChecked() was called abnormally!");
                    z = false;
                } else {
                    z = cVar.f.isChecked();
                }
                if (z) {
                    if (bVar.f2999a.contains(Long.valueOf(cVar.g))) {
                        bVar.f2999a.remove(Long.valueOf(cVar.g));
                        bVar.f3000b.b(cVar.g);
                    }
                } else if (!bVar.f2999a.contains(Long.valueOf(cVar.g))) {
                    bVar.f2999a.add(Long.valueOf(cVar.g));
                    bVar.f3000b.a(cVar.g, cVar.i);
                }
                cVar.a(!z);
                if (ContactsMultiplePickerActivity.this.h != null) {
                    if (ContactsMultiplePickerActivity.this.e.f2999a.size() <= 0) {
                        z2 = false;
                    }
                    ContactsMultiplePickerActivity.this.h.setEnabled(Boolean.valueOf(z2).booleanValue());
                    com.android.contacts.skin.a.a(ContactsMultiplePickerActivity.this.getApplicationContext(), ContactsMultiplePickerActivity.this.h);
                }
                ContactsMultiplePickerActivity.this.b();
            }
        });
        getLoaderManager().initLoader(1, null, this.m);
        if (bundle != null) {
            long[] longArray = bundle.getLongArray("selected_id");
            b bVar = this.e;
            ArrayList<Long> a2 = b.a(longArray);
            if (bVar.f2999a != null) {
                bVar.f2999a.clear();
            } else {
                bVar.f2999a = new ArrayList<>();
            }
            bVar.f2999a.addAll(a2);
            if (this.i == 1) {
                long[] longArray2 = bundle.getLongArray("selected_longsparsearray_key");
                ArrayList<String> stringArrayList = bundle.getStringArrayList("selected_longsparsearray_value");
                b bVar2 = this.e;
                e<String> a3 = b.a(longArray2, stringArrayList);
                if (bVar2.f3000b != null) {
                    bVar2.f3000b.b();
                    bVar2.f3000b = null;
                }
                bVar2.f3000b = a3;
            }
        }
        if (this.i == 1) {
            this.f = (SearchView) findViewById(2131297252);
            this.f.setOnQueryTextListener(this.l);
            this.f.setVisibility(0);
            this.f.setFocusable(false);
        } else if (this.i == 2 || this.i == 3) {
            this.g = (CheckedTextView) findViewById(2131297268);
            this.g.setOnClickListener(new View.OnClickListener() { // from class: com.asus.privatecontacts.ContactsMultiplePickerActivity.2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    boolean z = true;
                    if (ContactsMultiplePickerActivity.this.g != null) {
                        boolean a4 = ContactsMultiplePickerActivity.this.e.a();
                        b bVar3 = ContactsMultiplePickerActivity.this.e;
                        boolean z2 = !a4;
                        Cursor cursor = bVar3.getCursor();
                        if (cursor != null && cursor.moveToFirst()) {
                            if (z2) {
                                bVar3.f2999a.clear();
                                bVar3.f3000b.b();
                                do {
                                    long a5 = c.a(cursor, "_id");
                                    String uri = Uri.withAppendedPath(Uri.withAppendedPath(ContactsContract.Contacts.CONTENT_LOOKUP_URI, c.b(cursor, "lookup")), String.valueOf(a5)).toString();
                                    bVar3.f2999a.add(Long.valueOf(a5));
                                    bVar3.f3000b.a(a5, uri);
                                } while (cursor.moveToNext());
                            } else {
                                do {
                                    long a6 = c.a(cursor, "_id");
                                    Uri.withAppendedPath(Uri.withAppendedPath(ContactsContract.Contacts.CONTENT_LOOKUP_URI, c.b(cursor, "lookup")), String.valueOf(a6)).toString();
                                    bVar3.f2999a.remove(Long.valueOf(a6));
                                    bVar3.f3000b.b(a6);
                                } while (cursor.moveToNext());
                            }
                            bVar3.notifyDataSetChanged();
                        }
                        if (ContactsMultiplePickerActivity.this.h != null) {
                            ContactsMultiplePickerActivity.this.h.setEnabled(Boolean.valueOf(ContactsMultiplePickerActivity.this.e.f2999a.size() > 0).booleanValue());
                            com.android.contacts.skin.a.a(ContactsMultiplePickerActivity.this.getApplicationContext(), ContactsMultiplePickerActivity.this.h);
                        }
                        CheckedTextView checkedTextView = ContactsMultiplePickerActivity.this.g;
                        if (a4) {
                            z = false;
                        }
                        checkedTextView.setChecked(z);
                    }
                }
            });
        }
        try {
            ImageView imageView = (ImageView) this.f.findViewById(getResources().getIdentifier("android:id/search_mag_icon", null, null));
            LinearLayout linearLayout = (LinearLayout) this.f.findViewById(getResources().getIdentifier("android:id/search_plate", null, null));
            LinearLayout linearLayout2 = (LinearLayout) this.f.findViewById(getResources().getIdentifier("android:id/submit_area", null, null));
            LinearLayout linearLayout3 = (LinearLayout) this.f.findViewById(getResources().getIdentifier("android:id/search_edit_frame", null, null));
            if (imageView != null) {
                ((ViewGroup.MarginLayoutParams) imageView.getLayoutParams()).setMargins(0, 0, 0, 0);
                imageView.setOnClickListener(new View.OnClickListener() { // from class: com.asus.privatecontacts.ContactsMultiplePickerActivity.3
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        if (ContactsMultiplePickerActivity.this.f != null) {
                            EditText editText = (EditText) ContactsMultiplePickerActivity.this.f.findViewById(ContactsMultiplePickerActivity.this.getResources().getIdentifier("android:id/search_src_text", null, null));
                            if (editText != null) {
                                editText.setFocusable(true);
                                editText.requestFocus();
                                ((InputMethodManager) ContactsMultiplePickerActivity.this.getSystemService("input_method")).showSoftInput(editText, 1);
                            }
                        }
                    }
                });
                imageView.requestLayout();
            }
            if (linearLayout2 != null) {
                linearLayout2.setBackground(new ColorDrawable(0));
            }
            if (linearLayout != null) {
                linearLayout.setBackground(new ColorDrawable(0));
            }
            if (linearLayout3 != null) {
                linearLayout3.setBackground(getResources().getDrawable(2131165914));
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
                layoutParams.gravity = 16;
                layoutParams.setMargins((int) getResources().getDimension(2131099965), 0, (int) getResources().getDimension(2131099965), 0);
                linearLayout3.setLayoutParams(layoutParams);
            }
        } catch (Exception e) {
            Log.d(f2951a, "searchview resource exception: " + e.toString());
        }
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(2131492899, menu);
        this.h = menu.findItem(2131296758);
        if (!(this.h == null || this.e == null)) {
            this.h.setEnabled(Boolean.valueOf(this.e.f2999a.size() > 0).booleanValue());
            com.android.contacts.skin.a.a(getApplicationContext(), this.h);
        }
        MenuItem findItem = menu.findItem(2131296517);
        if (findItem != null) {
            com.android.contacts.skin.a.a(getApplicationContext(), findItem);
        }
        return super.onCreateOptionsMenu(menu);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.asus.privatecontacts.e, android.app.Activity
    public void onDestroy() {
        getLoaderManager().destroyLoader(1);
        super.onDestroy();
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        boolean z = true;
        switch (menuItem.getItemId()) {
            case 16908332:
                finish();
                break;
            case 2131296517:
                finish();
                break;
            case 2131296758:
                if (this.i == 1) {
                    try {
                        Intent intent = new Intent();
                        intent.putExtra("return_selected_uri", b.a(this.e.f3000b, (long[]) null));
                        setResult(-1, intent);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                } else if (this.i == 2 || this.i == 3) {
                    try {
                        Intent intent2 = new Intent();
                        intent2.putExtra("selected_id", b.a(this.e.f2999a));
                        if (this.i == 3 && this.k != null) {
                            intent2.putExtra("com.android.contacts.extra.ACCOUNT", this.k);
                        }
                        setResult(-1, intent2);
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                }
                b bVar = this.e;
                bVar.f2999a.clear();
                bVar.f3000b.b();
                finish();
                break;
            default:
                z = super.onOptionsItemSelected(menuItem);
                break;
        }
        return z;
    }

    @Override // android.app.Activity
    public boolean onPrepareOptionsMenu(Menu menu) {
        String str;
        switch (this.i) {
            case 1:
                str = "menu_done";
                break;
            case 2:
                str = "menu_delete";
                break;
            case 3:
                str = "menu_restore";
                break;
            default:
                str = "menu_done";
                break;
        }
        return b.a(this, menu, str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.asus.privatecontacts.e, com.android.contacts.activities.TransactionSafeActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.activities.TransactionSafeActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (this.e != null) {
            bundle.putLongArray("selected_id", b.b(this.e.f2999a));
            if (this.i == 1) {
                long[] jArr = new long[this.e.f3000b.a()];
                bundle.putStringArrayList("selected_longsparsearray_value", b.a(this.e.f3000b, jArr));
                bundle.putLongArray("selected_longsparsearray_key", jArr);
                return;
            }
            return;
        }
        Log.e(f2951a, "[onSaveInstanceState] mAdapter is null!");
    }
}
