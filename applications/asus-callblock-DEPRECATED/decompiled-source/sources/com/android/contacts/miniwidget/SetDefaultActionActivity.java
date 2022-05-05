package com.android.contacts.miniwidget;

import android.app.Activity;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.android.contacts.activities.ContactDetailCallogActivity;
import com.android.contacts.activities.NecessaryPermissionDenyActivity;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/android/contacts/miniwidget/SetDefaultActionActivity.class */
public class SetDefaultActionActivity extends Activity implements View.OnClickListener, AdapterView.OnItemClickListener {

    /* renamed from: a  reason: collision with root package name */
    public static final String f1956a = SetDefaultActionActivity.class.getSimpleName();

    /* renamed from: b  reason: collision with root package name */
    private ArrayList<g> f1957b;
    private long c;
    private int d;
    private long e;

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Log.d(f1956a, "onClick");
        long j = this.e;
        Log.d(f1956a, "save:" + j);
        ContentResolver contentResolver = getContentResolver();
        ContentValues contentValues = new ContentValues();
        contentValues.put("action", Integer.valueOf(this.f1957b.get(this.d).f1985a));
        contentValues.put("data", this.f1957b.get(this.d).f1986b);
        contentResolver.update(ContactsWidgetProvider.f1929a, contentValues, "contact_id = ? AND widget_id = ?", new String[]{String.valueOf(this.c), String.valueOf(j)});
        Intent intent = new Intent();
        intent.setAction("com.asus.contactswidget.CONTACTS_UPDATE");
        intent.putExtra("widget_id", (int) j);
        sendBroadcast(intent);
        finish();
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        Log.d(f1956a, "onCreate");
        super.onCreate(bundle);
        if (!NecessaryPermissionDenyActivity.startPermissionActivity(this)) {
            setContentView(2131427653);
            Bundle extras = getIntent().getExtras();
            this.c = extras.getLong(ContactDetailCallogActivity.EXTRA_CONTACT_ID);
            this.e = extras.getLong("widget_id");
            Log.d(f1956a, "loadActions");
            this.f1957b = new ArrayList<>();
            this.f1957b.add(new g(this, -1, (String) null));
            this.d = 0;
            this.f1957b.get(this.d).c = true;
            new b(this, this.c).a(this.f1957b, false);
            this.f1957b.add(new g(this, 6, String.valueOf(this.c)));
            a aVar = new a(this, this.f1957b);
            ListView listView = (ListView) findViewById(2131296644);
            listView.setAdapter((ListAdapter) aVar);
            listView.setOnItemClickListener(this);
            ((TextView) findViewById(2131297243)).setOnClickListener(this);
        }
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        Log.d(f1956a, "onCreateOptionsMenu");
        super.onCreateOptionsMenu(menu);
        return true;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        Log.d(f1956a, "onItemClick");
        this.f1957b.get(this.d).c = false;
        this.f1957b.get(i).c = true;
        this.d = i;
        ((ListView) adapterView).setAdapter((ListAdapter) new a(this, this.f1957b));
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        Log.d(f1956a, "onOptionsItemSelected");
        return super.onOptionsItemSelected(menuItem);
    }
}
