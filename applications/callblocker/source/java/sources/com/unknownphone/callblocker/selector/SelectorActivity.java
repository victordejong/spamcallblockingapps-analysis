package com.unknownphone.callblocker.selector;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.util.Pair;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.appcompat.widget.AppCompatTextView;
import com.unknownphone.callblocker.custom.C5282b;
import com.unknownphone.callblocker.custom.C5287g;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/selector/SelectorActivity.class */
public class SelectorActivity extends Activity {
    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        String[] iSOCountries;
        super.onCreate(bundle);
        setContentView(2131492902);
        ListView listView = (ListView) findViewById(2131296523);
        AppCompatTextView appCompatTextView = (AppCompatTextView) findViewById(2131296724);
        AppCompatTextView appCompatTextView2 = (AppCompatTextView) findViewById(2131296476);
        AppCompatImageButton appCompatImageButton = (AppCompatImageButton) findViewById(2131296333);
        final SharedPreferences sharedPreferences = getSharedPreferences("com.unknownphone.callblocker.PREFS", 0);
        String str = (String) C5287g.m1088a(sharedPreferences.getString("language_code", Locale.getDefault().getLanguage())).first;
        String string = sharedPreferences.getString("region_code", C5287g.m1095a((Context) this));
        String stringExtra = getIntent().getStringExtra("selector_type");
        if (stringExtra.equals("selector_type_region")) {
            appCompatTextView.setText(2131755583);
            appCompatTextView2.setText(2131755548);
            final ArrayList arrayList = new ArrayList();
            for (String str2 : Locale.getISOCountries()) {
                arrayList.add(new Pair(str2, new Locale(str, str2).getDisplayCountry()));
            }
            Collections.sort(arrayList, new Comparator<Pair<String, String>>() { // from class: com.unknownphone.callblocker.selector.SelectorActivity.1
                /* renamed from: a */
                public int compare(Pair<String, String> pair, Pair<String, String> pair2) {
                    return ((String) pair.second).compareToIgnoreCase((String) pair2.second);
                }
            });
            listView.setAdapter((ListAdapter) new C5370a(this, arrayList, C5287g.m1076c(string)));
            listView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.unknownphone.callblocker.selector.SelectorActivity.2
                @Override // android.widget.AdapterView.OnItemClickListener
                public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                    if (i < 0 || i >= arrayList.size()) {
                        return;
                    }
                    sharedPreferences.edit().putString("region_code", (String) ((Pair) arrayList.get(i)).first).apply();
                    SelectorActivity.this.finish();
                }
            });
        } else if (stringExtra.equals("selector_type_language")) {
            appCompatTextView.setText(2131755553);
            appCompatTextView2.setText(2131755549);
            final List<Pair<String, String>> m1101a = C5282b.m1101a();
            listView.setAdapter((ListAdapter) new C5370a(this, m1101a, str));
            listView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.unknownphone.callblocker.selector.SelectorActivity.3
                @Override // android.widget.AdapterView.OnItemClickListener
                public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                    if (i < 0 || i >= m1101a.size()) {
                        return;
                    }
                    sharedPreferences.edit().putString("language_code", (String) ((Pair) m1101a.get(i)).first).apply();
                    SelectorActivity.this.finish();
                }
            });
        }
        appCompatImageButton.setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.selector.SelectorActivity.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                SelectorActivity.this.finish();
            }
        });
    }
}
