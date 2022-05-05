package gogolook.callgogolook2.phonebook;

import android.annotation.TargetApi;
import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.FrameLayout;
import androidx.fragment.app.Fragment;
import butterknife.BindView;
import butterknife.ButterKnife;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$menu;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.app.WhoscallCompatActivity;
import gogolook.callgogolook2.block.TextSearchActivity;
import p459j.p460a.p463b0.p465r.C11214c;
@TargetApi(11)
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phonebook/ContactListActivity.class */
public class ContactListActivity extends WhoscallCompatActivity {
    @BindView(R$id.fragment_container)
    public FrameLayout mFlRoot;

    @Override // android.app.Activity
    public boolean onContextItemSelected(MenuItem menuItem) {
        Fragment findFragmentById = getSupportFragmentManager().findFragmentById(R$id.fragment_container);
        return findFragmentById != null ? findFragmentById.onContextItemSelected(menuItem) : super.onContextItemSelected(menuItem);
    }

    @Override // gogolook.callgogolook2.app.WhoscallCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R$layout.activity_fragment_container);
        ButterKnife.bind(this);
        this.mFlRoot.setBackgroundColor(Color.parseColor("#f8f8f8"));
        getSupportFragmentManager().beginTransaction().add(R$id.fragment_container, new C11214c()).commit();
        if (m28675F() != null) {
            m28675F().setTitle(R$string.group_contacts);
        }
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R$menu.activity_contact_toolbar, menu);
        return super.onCreateOptionsMenu(menu);
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            case R$id.menu_contact_toolbar_favorite /* 2131362840 */:
                startActivity(new Intent(this.f10655a, FavoriteActivity.class));
                break;
            case R$id.menu_contact_toolbar_search /* 2131362841 */:
                startActivity(new Intent(this.f10655a, TextSearchActivity.class));
                break;
        }
        return super.onOptionsItemSelected(menuItem);
    }
}
