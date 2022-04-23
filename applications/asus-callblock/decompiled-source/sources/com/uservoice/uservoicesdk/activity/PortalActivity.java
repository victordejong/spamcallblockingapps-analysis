package com.uservoice.uservoicesdk.activity;

import android.app.SearchManager;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.Toast;
import com.uservoice.uservoicesdk.a.a;
import com.uservoice.uservoicesdk.d;
import com.uservoice.uservoicesdk.e;
import com.uservoice.uservoicesdk.i.b;
import com.uservoice.uservoicesdk.ui.g;
import com.uservoice.uservoicesdk.ui.l;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/uservoice/uservoicesdk/activity/PortalActivity.class */
public class PortalActivity extends b implements d {
    private static final String n = PortalActivity.class.getSimpleName();
    private g t;

    @Override // com.uservoice.uservoicesdk.c.a, android.support.v4.app.i, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.t == null) {
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.uservoice.uservoicesdk.activity.a, android.support.v4.app.i, android.support.v4.app.e, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (((SearchManager) getSystemService("search")).getSearchableInfo(getComponentName()) == null) {
            throw new IllegalArgumentException("Please check more info at Confluence and add meta-data into your AndroidManifest.xml or Contact Semon Huang or Ed Chou");
        } else if (e.a().f4631b == null) {
            Log.d(n, "Try to finish activity " + this);
            finish();
        } else {
            if (e.a().f4631b == null || e.a().f4631b.l == null) {
                setTitle(d.f.d);
            } else {
                setTitle(e.a().f4631b.l);
            }
            j().setDivider(null);
            a.a(a.EnumC0133a.VIEW_KB);
            g gVar = new g(this);
            this.t = gVar;
            a(gVar);
            j().setOnItemClickListener((g) ((com.uservoice.uservoicesdk.c.a) this).q);
        }
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        boolean z = false;
        if (!isFinishing()) {
            if (e.a().f4631b == null) {
                z = true;
            } else {
                if (Build.VERSION.SDK_INT >= 21 || !l.a(com.uservoice.uservoicesdk.g.f4678b)) {
                    getMenuInflater().inflate(d.C0137d.f4622a, menu);
                } else {
                    getMenuInflater().inflate(d.C0137d.f4623b, menu);
                }
                MenuItem findItem = menu.findItem(d.b.v);
                if (findItem != null && !e.a().f4631b.c()) {
                    findItem.setVisible(false);
                }
                a(menu);
                z = true;
            }
        }
        return z;
    }

    @Override // android.support.v4.app.i, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        com.uservoice.uservoicesdk.model.d.d();
        b a2 = b.a();
        a2.f4699a.clear();
        for (WeakReference<com.uservoice.uservoicesdk.i.a> weakReference : a2.f4700b.values()) {
            com.uservoice.uservoicesdk.i.a aVar = weakReference.get();
            if (aVar != null) {
                aVar.cancel(true);
            }
        }
        a2.f4700b.clear();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.uservoice.uservoicesdk.activity.a, android.support.v4.app.i, android.app.Activity
    public void onNewIntent(Intent intent) {
        com.uservoice.uservoicesdk.g.c = true;
        super.onNewIntent(intent);
    }

    @Override // com.uservoice.uservoicesdk.activity.a, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        boolean onOptionsItemSelected;
        if (menuItem.getItemId() == d.b.v) {
            if (e.a().g != null) {
                startActivity(new Intent(this, ContactActivity.class));
            } else {
                Toast.makeText(this, d.f.k, 0).show();
            }
            onOptionsItemSelected = true;
        } else {
            onOptionsItemSelected = super.onOptionsItemSelected(menuItem);
        }
        return onOptionsItemSelected;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.uservoice.uservoicesdk.c.a, android.support.v4.app.i, android.app.Activity
    public void onResume() {
        super.onResume();
        if (this.t != null) {
            if (com.uservoice.uservoicesdk.g.c) {
                g gVar = this.t;
                com.uservoice.uservoicesdk.k.b.a("PortalAdapter", "reload");
                gVar.notifyDataSetChanged();
                new com.uservoice.uservoicesdk.f.a(gVar.d, new g.b(), new g.a()).a();
            }
            com.uservoice.uservoicesdk.g.c = false;
        }
    }
}
