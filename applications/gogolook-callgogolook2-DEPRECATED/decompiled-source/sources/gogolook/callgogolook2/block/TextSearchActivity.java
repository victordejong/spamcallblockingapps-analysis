package gogolook.callgogolook2.block;

import android.graphics.Color;
import android.os.Bundle;
import android.view.MenuItem;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.app.WhoscallFragmentActivity;
import gogolook.callgogolook2.search.TextSearchFragment;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/block/TextSearchActivity.class */
public class TextSearchActivity extends WhoscallFragmentActivity {

    /* renamed from: e */
    public TextSearchFragment f10697e;

    @Override // android.app.Activity
    public void finish() {
        super.finish();
    }

    @Override // android.app.Activity
    public boolean onContextItemSelected(MenuItem menuItem) {
        TextSearchFragment textSearchFragment = this.f10697e;
        return textSearchFragment == null ? super.onContextItemSelected(menuItem) : textSearchFragment.onContextItemSelected(menuItem);
    }

    @Override // gogolook.callgogolook2.app.WhoscallFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R$layout.activity_fragment_container);
        findViewById(R$id.fragment_container).setBackgroundColor(Color.parseColor("#f8f8f8"));
        if (bundle == null || this.f10697e == null) {
            this.f10697e = new TextSearchFragment();
            getSupportFragmentManager().beginTransaction().add(R$id.fragment_container, this.f10697e).commit();
        }
        m28668G().m6030d(R$string.textsearch_title);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
    }

    @Override // gogolook.callgogolook2.app.WhoscallFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
    }
}
