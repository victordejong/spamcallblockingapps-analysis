package com.asus.contacts.yellowpage;

import android.app.Activity;
import android.content.AsyncQueryHandler;
import android.content.ContentResolver;
import android.content.Intent;
import android.database.Cursor;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.MenuItem;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.android.contacts.util.AsusActionBarUtils;
import com.android.contacts.util.PhoneCapabilityTester;
import com.asus.contacts.yellowpage.provider.a;
import com.asus.contacts.yellowpage.utils.b;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/asus/contacts/yellowpage/AsusCategoryActivity.class */
public class AsusCategoryActivity extends Activity {
    d c;
    private int d;
    private String e;
    private String f;
    private boolean g;
    private ListView i;

    /* renamed from: a  reason: collision with root package name */
    public final String f2771a = AsusCategoryActivity.class.getSimpleName();

    /* renamed from: b  reason: collision with root package name */
    public final int f2772b = 10001;
    private ArrayList<c> h = new ArrayList<>();

    /* loaded from: classes-dex2jar.jar:com/asus/contacts/yellowpage/AsusCategoryActivity$a.class */
    final class a extends AsyncQueryHandler {
        public a(ContentResolver contentResolver) {
            super(contentResolver);
        }

        @Override // android.content.AsyncQueryHandler
        protected final void onQueryComplete(int i, Object obj, Cursor cursor) {
            if (cursor != null && cursor.moveToFirst()) {
                AsusCategoryActivity.this.h.clear();
                ArrayList arrayList = new ArrayList();
                while (true) {
                    String string = cursor.getString(cursor.getColumnIndex("category_name"));
                    String string2 = cursor.getString(cursor.getColumnIndex("subcategory_name"));
                    String string3 = cursor.getString(cursor.getColumnIndex("tag_name"));
                    String string4 = cursor.getString(cursor.getColumnIndex("source"));
                    String string5 = cursor.getString(cursor.getColumnIndex("code"));
                    Log.d("hank", "categoryName: " + string + ", subcategory: " + string2 + ", tagName: " + string3 + ", code: " + string5);
                    if (AsusCategoryActivity.this.d != 1) {
                        if (AsusCategoryActivity.this.d != 2) {
                            Log.e(AsusCategoryActivity.this.f2771a, "ERROR! We need business list not category list!");
                            break;
                        }
                        AsusCategoryActivity.this.h.add(new c(string, string2, string3, string4, string5));
                    } else if (!arrayList.contains(string2)) {
                        arrayList.add(string2);
                        AsusCategoryActivity.this.h.add(string4.equals("iPeen") ? new c(string, string2, string3, string4, string5.substring(0, 4)) : new c(string, string2, string3, string4, string5.substring(0, 5)));
                    }
                    if (!cursor.moveToNext()) {
                        break;
                    }
                }
                AsusCategoryActivity.this.c.notifyDataSetChanged();
                arrayList.clear();
                cursor.close();
            }
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(2131427736);
        boolean isCarMode = PhoneCapabilityTester.isCarMode(getApplicationContext());
        if (!PhoneCapabilityTester.isUsingTwoPanes(this)) {
            if (isCarMode) {
                setRequestedOrientation(-1);
            } else {
                setRequestedOrientation(1);
            }
        }
        AsusActionBarUtils.initActionbarDisplayOptions(getActionBar());
        if (bundle != null) {
            this.e = bundle.getString("extra_category");
            this.f = bundle.getString("extra_parent_code");
            this.g = bundle.getBoolean("extra_is_near_by");
        } else {
            Intent intent = getIntent();
            this.e = intent.getExtras().getString("extra_category");
            this.f = intent.getExtras().getString("extra_parent_code");
            this.g = intent.getExtras().getBoolean("extra_is_near_by");
        }
        if (this.e == null || TextUtils.isEmpty(this.e)) {
            Log.e(this.f2771a, "mCategory is null or an empty value...");
            finish();
            return;
        }
        this.d = this.f.length() / 2;
        this.c = new d(this, this.h, this.g);
        this.i = (ListView) findViewById(2131296995);
        this.i.setAdapter((ListAdapter) this.c);
        setTitle(this.e);
        b.a((Activity) this, this.e);
        b.b((Activity) this, "Category");
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        boolean z;
        switch (menuItem.getItemId()) {
            case 16908332:
                finish();
                z = true;
                break;
            default:
                z = super.onOptionsItemSelected(menuItem);
                break;
        }
        return z;
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        a aVar = new a(getContentResolver());
        String str = "code LIKE \"" + this.f + "%\"";
        Log.d(this.f2771a, "selection: " + str);
        aVar.startQuery(10001, null, a.C0080a.f2860a, com.asus.contacts.yellowpage.provider.a.f2859a, str, null, null);
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        if (bundle != null) {
            bundle.putString("extra_category", this.e);
            bundle.putString("extra_parent_code", this.f);
            bundle.putBoolean("extra_is_near_by", this.g);
        }
    }
}
