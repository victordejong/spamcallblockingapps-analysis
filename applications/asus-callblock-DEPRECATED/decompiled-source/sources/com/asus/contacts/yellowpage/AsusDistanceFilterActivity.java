package com.asus.contacts.yellowpage;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.asus.a.a;
import com.asus.contacts.yellowpage.utils.c;
/* loaded from: classes-dex2jar.jar:com/asus/contacts/yellowpage/AsusDistanceFilterActivity.class */
public class AsusDistanceFilterActivity extends Activity {

    /* renamed from: b  reason: collision with root package name */
    private ListView f2775b;
    private static final int[] c = {300, 500, 1000, 2000, 5000};

    /* renamed from: a  reason: collision with root package name */
    public static int f2774a = -1;

    public static int a(int i) {
        f2774a = i;
        return c[i];
    }

    public static void a(Context context) {
        c.a(context, "key_distance_filter_level", 3);
        f2774a = c.a(context, "key_distance_filter_level");
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!a.h(this)) {
            finishAndRemoveTask();
            return;
        }
        setContentView(2131427745);
        setTitle(2131755119);
        String[] strArr = new String[c.length];
        for (int i = 0; i < c.length; i++) {
            if (c[i] < 1000) {
                strArr[i] = c[i] + " " + getString(2131755593);
            } else {
                strArr[i] = (c[i] / 1000) + " " + getString(2131755592);
            }
        }
        this.f2775b = (ListView) findViewById(2131297137);
        this.f2775b.setChoiceMode(1);
        this.f2775b.setAdapter((ListAdapter) new ArrayAdapter(this, 2131427746, strArr));
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        if (f2774a == -1) {
            int a2 = c.a(getApplication(), "key_distance_filter_level");
            f2774a = a2;
            if (a2 == -1) {
                a(getApplication());
            }
        }
        this.f2775b.setItemChecked(f2774a, true);
        this.f2775b.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.asus.contacts.yellowpage.AsusDistanceFilterActivity.1
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                AsusDistanceFilterActivity.f2774a = i;
                c.a(AsusDistanceFilterActivity.this.getApplication(), "key_distance_filter_level", i);
            }
        });
    }
}
