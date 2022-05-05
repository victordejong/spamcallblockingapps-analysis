package com.asus.blocklist;

import android.app.ActionBar;
import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import android.widget.AbsListView;
import android.widget.FrameLayout;
import com.android.contacts.a.b;
import com.android.contacts.activities.NecessaryPermissionDenyActivity;
import com.android.contacts.activities.TransactionSafeActivity;
import com.android.contacts.util.CompatUtils;
import com.android.contacts.util.PhoneCapabilityTester;
import com.asus.blocklist.backwardcompatible.BlockListDataSyncService;
import com.asus.blocklist.backwardcompatible.BundledBlockListFragment;
import com.asus.contacts.b.e;
import com.asus.contacts.materialui.FloatingActionButton;
/* loaded from: classes-dex2jar.jar:com/asus/blocklist/BlockListMainActivity.class */
public class BlockListMainActivity extends TransactionSafeActivity implements AbsListView.OnScrollListener {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2421a = BlockListMainActivity.class.getSimpleName();

    /* renamed from: b  reason: collision with root package name */
    private FrameLayout f2422b;
    private FrameLayout c;
    private BlockListFragment d;
    private BundledBlockListFragment e;
    private FloatingActionButton f;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.activities.TransactionSafeActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!NecessaryPermissionDenyActivity.startPermissionActivity(this)) {
            setContentView(2131427414);
            ActionBar actionBar = getActionBar();
            actionBar.setNavigationMode(0);
            actionBar.setDisplayShowTitleEnabled(true);
            actionBar.setDisplayShowHomeEnabled(false);
            actionBar.setDisplayHomeAsUpEnabled(true);
            actionBar.setTitle(getString(2131755225));
            this.f2422b = (FrameLayout) findViewById(2131296397);
            this.d = (BlockListFragment) getFragmentManager().findFragmentById(2131296396);
            this.c = (FrameLayout) findViewById(2131296412);
            this.e = (BundledBlockListFragment) getFragmentManager().findFragmentById(2131296411);
            if (g.g(this) >= 2) {
                Log.d(f2421a, "Load unbundle blocklist fragment");
                this.f2422b.setVisibility(0);
                this.c.setVisibility(8);
                this.f = (FloatingActionButton) findViewById(2131296825);
            } else {
                Log.d(f2421a, "Load bundle blocklist fragment");
                this.f2422b.setVisibility(8);
                this.c.setVisibility(0);
                this.f = (FloatingActionButton) findViewById(2131296413);
            }
            int i = getResources().getConfiguration().screenLayout & 15;
            if (i == 4 || i == 3) {
                setRequestedOrientation(-1);
            } else {
                setRequestedOrientation(1);
            }
            if (!CompatUtils.isNCompatible()) {
                try {
                    Intent intent = new Intent(this, BlockListDataSyncService.class);
                    intent.setAction("android.intent.action.ASUS_BLOCKLIST_SYNC_ACTION");
                    startService(intent);
                } catch (Exception e) {
                    Log.e(f2421a, "Fail to start blocklist data sync service, Exception : " + e.toString());
                }
            }
            if (this.f != null) {
                this.f.setOnClickListener(new View.OnClickListener() { // from class: com.asus.blocklist.BlockListMainActivity.1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        if (g.g(view.getContext()) >= 2) {
                            if (BlockListMainActivity.this.d != null) {
                                BlockListMainActivity.this.d.a(0);
                            }
                        } else if (BlockListMainActivity.this.e != null) {
                            BlockListMainActivity.this.e.a(60);
                        }
                    }
                });
                this.d.c.setOnScrollListener(this);
                this.e.f2474b.setOnScrollListener(this);
                if (e.a().a(this, "FloatingActionButton")) {
                    this.f.setVisibility(0);
                } else {
                    this.f.setVisibility(8);
                }
            }
            if (PhoneCapabilityTester.IsSystemApp()) {
                b.a();
                b.a(18, (Activity) this, "Block list", true);
                return;
            }
            b.a();
            b.a(10, (Activity) this, "Block list", true);
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuItemSelected(int i, MenuItem menuItem) {
        boolean z;
        switch (menuItem.getItemId()) {
            case 16908332:
                finish();
                z = true;
                break;
            default:
                z = super.onMenuItemSelected(i, menuItem);
                break;
        }
        return z;
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.activities.TransactionSafeActivity, android.app.Activity
    public void onResume() {
        super.onResume();
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i, int i2, int i3) {
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i) {
        if (absListView != null && this.f != null && e.a().a(this, "FloatingActionButton")) {
            if (i == 2 || i == 1) {
                this.f.b();
            } else if (i == 0) {
                this.f.a();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.activities.TransactionSafeActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        try {
            if (CompatUtils.isNCompatible()) {
                Intent intent = new Intent(this, BlockListDataSyncService.class);
                intent.setAction("android.intent.action.ASUS_BLOCKLIST_SYNC_ACTION_FOR_BLOCKED_NUMBER_PROVIDER");
                startService(intent);
            }
        } catch (Exception e) {
            Log.e(f2421a, "Fail to start blocklist data sync service for N, Exception : " + e.toString());
        }
    }
}
