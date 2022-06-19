package com.truecaller.p183ui;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.Fragment;
import e.a.h.c.g;
import p1727n3.p1734b.p1735a.AbstractC25393a;
import p1727n3.p1734b.p1741e.AbstractC25450a;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p682e.AbstractC13325w0;
import p193e.p194a.p682e.C13267j1;
import p193e.p194a.p682e.C13295o1;
import p193e.p194a.p682e.C13319v0;
import p193e.p194a.p682e.p698c.C13108l1;
import p193e.p194a.p912i4.p914y.C15308d;
@Deprecated
/* renamed from: com.truecaller.ui.SingleActivity */
/* loaded from: classes15-dex2jar.jar:com/truecaller/ui/SingleActivity.class */
public class SingleActivity extends AbstractC13325w0 {

    /* renamed from: d */
    public FragmentSingle f15554d;

    /* renamed from: com.truecaller.ui.SingleActivity$FragmentSingle */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/ui/SingleActivity$FragmentSingle.class */
    public enum FragmentSingle {
        NOTIFICATION_MESSAGES,
        FEEDBACK_FORM,
        NOTIFICATIONS,
        DETAILS_CALL_LOG,
        SPEED_DIAL,
        THEME_SELECTOR
    }

    /* renamed from: ua */
    public static Intent m34591ua(Context context, FragmentSingle fragmentSingle) {
        return m34590va(context, fragmentSingle, false);
    }

    /* renamed from: va */
    public static Intent m34590va(Context context, FragmentSingle fragmentSingle, boolean z) {
        Intent intent = new Intent(context, SingleActivity.class);
        intent.putExtra("ARG_FRAGMENT", fragmentSingle.name());
        intent.putExtra("ARG_ACTIONBAR_OVERLAY", z);
        return intent;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p682e.AbstractC13325w0
    public void onCreate(Bundle bundle) {
        Intent intent = getIntent();
        boolean booleanExtra = intent.getBooleanExtra("ARG_ACTIONBAR_OVERLAY", false);
        if (bundle == null) {
            if (intent.hasExtra("ARG_FRAGMENT")) {
                try {
                    this.f15554d = FragmentSingle.valueOf(intent.getStringExtra("ARG_FRAGMENT"));
                } catch (IllegalArgumentException e) {
                    intent.getStringExtra("ARG_FRAGMENT");
                }
            }
            if (this.f15554d == null) {
                String str = "Invalid intent, no fragment type, intent=" + intent;
                super.onCreate(null);
                finish();
                return;
            }
        }
        int i = 2131559675;
        if (booleanExtra) {
            i = 2131559679;
        }
        C17422k.m16066m0(this, m34589wa());
        super.onCreate(bundle);
        setContentView(i);
        Toolbar toolbar = (Toolbar) findViewById(2131366512);
        if (toolbar != null) {
            setSupportActionBar(toolbar);
        }
        if (bundle == null) {
            int ordinal = this.f15554d.ordinal();
            Fragment c13295o1 = ordinal != 0 ? ordinal != 1 ? ordinal != 2 ? ordinal != 3 ? ordinal != 4 ? ordinal != 5 ? null : new C13295o1() : new g() : new C13108l1() : new C15308d() : new C13319v0() : new C13267j1();
            c13295o1.setArguments(intent.getExtras());
            mo21927sa(c13295o1, null);
        }
        AbstractC25393a supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.mo3553n(true);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (SingleActivity.super.onOptionsItemSelected(menuItem)) {
            return true;
        }
        if (menuItem.getItemId() != 16908332) {
            return false;
        }
        onBackPressed();
        return true;
    }

    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        SingleActivity.super.onRequestPermissionsResult(i, strArr, iArr);
        C19291g.m13608M0(strArr, iArr);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p682e.AbstractC13325w0
    public void onSupportActionModeStarted(AbstractC25450a abstractC25450a) {
        super.onSupportActionModeStarted(abstractC25450a);
        Menu mo3517e = abstractC25450a.mo3517e();
        for (int i = 0; i < mo3517e.size(); i++) {
            Drawable icon = mo3517e.getItem(i).getIcon();
            Object obj = C26467a.f74235a;
            icon.setTint(C26467a.C26471d.m1787a(this, 2131101388));
            mo3517e.getItem(i).setIcon(icon);
        }
    }

    @Override // p193e.p194a.p682e.AbstractC13325w0
    /* renamed from: pa */
    public int mo21930pa() {
        return m34589wa() ? 2130970255 : 2130970409;
    }

    /* renamed from: wa */
    public final boolean m34589wa() {
        FragmentSingle fragmentSingle = this.f15554d;
        return fragmentSingle == FragmentSingle.NOTIFICATION_MESSAGES || fragmentSingle == FragmentSingle.NOTIFICATIONS || fragmentSingle == FragmentSingle.FEEDBACK_FORM || fragmentSingle == FragmentSingle.SPEED_DIAL;
    }
}
