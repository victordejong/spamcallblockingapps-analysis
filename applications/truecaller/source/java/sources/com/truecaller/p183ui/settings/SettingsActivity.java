package com.truecaller.p183ui.settings;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.ScrollView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import com.truecaller.filters.blockedevents.BlockedEventsActivity;
import com.truecaller.p183ui.settings.appearance.AppearanceSettingsActivity;
import com.truecaller.p183ui.settings.callerid.CallerIdSettingsActivity;
import kotlin.Metadata;
import p1727n3.p1734b.p1741e.AbstractC25450a;
import p1727n3.p1807k.p1809b.C26467a;
import p1727n3.p1859r.p1860a.C26907a;
import p1727n3.p1872x.p1873a.C27062a;
import p193e.p194a.p1066n.C18244a;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p682e.AbstractC13325w0;
import p193e.p194a.p682e.C12864a2;
import p193e.p194a.p682e.p684b.AbstractC12916e;
import p193e.p194a.p682e.p684b.p685a.C12865a;
import p193e.p194a.p682e.p684b.p686b.C12872a;
import p193e.p194a.p682e.p684b.p687c.C12896a;
import p193e.p194a.p682e.p684b.p688d.C12911a;
import p193e.p194a.p682e.p684b.p691k.C12958p;
import p193e.p194a.p682e.p684b.p692l.C12972c;
import p193e.p194a.p682e.p684b.p693m.AbstractC12990d;
import p193e.p194a.p682e.p684b.p693m.C12987a;
import p193e.p194a.p682e.p684b.p694n.C13000h;
import p193e.p194a.p682e.p684b.p695o.C13017i;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n��\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n��\n\u0002\u0010\u0015\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018�� ?2\u00020\u00012\u00020\u0002:\u0001@B\u0007¢\u0006\u0004\b>\u0010\tJ\u0019\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0014¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\b\u001a\u00020\u0005H\u0014¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0005H\u0014¢\u0006\u0004\b\n\u0010\tJ/\u0010\u0012\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u000b2\u000e\u0010\u000f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\r2\u0006\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u000bH\u0014¢\u0006\u0004\b\u0019\u0010\u001aJ\u0017\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001f\u0010\tJ+\u0010$\u001a\u00020\u00052\u0006\u0010!\u001a\u00020 2\b\u0010\"\u001a\u0004\u0018\u00010\u000e2\b\u0010#\u001a\u0004\u0018\u00010\u000eH\u0016¢\u0006\u0004\b$\u0010%J\u0017\u0010(\u001a\u00020\u00052\u0006\u0010'\u001a\u00020&H\u0002¢\u0006\u0004\b(\u0010)J#\u0010-\u001a\u00020\u00052\u0006\u0010+\u001a\u00020*2\n\b\u0002\u0010,\u001a\u0004\u0018\u00010\u000eH\u0002¢\u0006\u0004\b-\u0010.R\u0016\u00101\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u00100R\"\u00109\u001a\u0002028\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b3\u00104\u001a\u0004\b5\u00106\"\u0004\b7\u00108R\u0016\u0010=\u001a\u00020:8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b;\u0010<¨\u0006A"}, d2 = {"Lcom/truecaller/ui/settings/SettingsActivity;", "Le/a/e/w0;", "Le/a/e/b/m/d;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "onResume", "()V", "onDestroy", "", "requestCode", "", "", "permissions", "", "grantResults", "onRequestPermissionsResult", "(I[Ljava/lang/String;[I)V", "Landroid/view/MenuItem;", "item", "", "onOptionsItemSelected", "(Landroid/view/MenuItem;)Z", "pa", "()I", "Ln3/b/e/a;", AnalyticsConstants.MODE, "onSupportActionModeStarted", "(Ln3/b/e/a;)V", "onBackPressed", "Lcom/truecaller/ui/settings/SettingsCategory;", "category", "action", "analyticsContext", "ga", "(Lcom/truecaller/ui/settings/SettingsCategory;Ljava/lang/String;Ljava/lang/String;)V", "Landroid/content/Intent;", "intent", "xa", "(Landroid/content/Intent;)V", "Landroidx/fragment/app/Fragment;", "fragment", RemoteMessageConst.Notification.TAG, "ya", "(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V", "e", "Z", "returnToMain", "Le/a/e/b/e;", "d", "Le/a/e/b/e;", "wa", "()Le/a/e/b/e;", "setSettingsComponent", "(Le/a/e/b/e;)V", "settingsComponent", "Landroid/content/BroadcastReceiver;", "f", "Landroid/content/BroadcastReceiver;", "finishReceiver", "<init>", "g", "a", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.ui.settings.SettingsActivity */
/* loaded from: classes15-dex2jar.jar:com/truecaller/ui/settings/SettingsActivity.class */
public final class SettingsActivity extends AbstractC13325w0 implements AbstractC12990d {

    /* renamed from: g */
    public static final C4692a f15840g = new C4692a(null);

    /* renamed from: d */
    public AbstractC12916e f15841d;

    /* renamed from: e */
    public boolean f15842e = true;

    /* renamed from: f */
    public final BroadcastReceiver f15843f = new C4693b();

    /* renamed from: com.truecaller.ui.settings.SettingsActivity$a */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/ui/settings/SettingsActivity$a.class */
    public static final class C4692a {
        public C4692a(f fVar) {
        }

        /* renamed from: b */
        public static /* synthetic */ Intent m34493b(C4692a c4692a, Context context, SettingsCategory settingsCategory, boolean z, String str, int i) {
            if ((i & 2) != 0) {
                settingsCategory = SettingsCategory.SETTINGS_MAIN;
            }
            if ((i & 4) != 0) {
                z = true;
            }
            if ((i & 8) != 0) {
                str = null;
            }
            return c4692a.m34494a(context, settingsCategory, z, str);
        }

        /* renamed from: a */
        public final Intent m34494a(Context context, SettingsCategory settingsCategory, boolean z, String str) {
            l.e(context, AnalyticsConstants.CONTEXT);
            l.e(settingsCategory, "category");
            Intent putExtra = new Intent(context, SettingsActivity.class).setFlags(67108864).putExtra("settings_selected_item", settingsCategory.name()).putExtra("settings_return_to_main", z).putExtra("settings_action", str);
            l.d(putExtra, "Intent(context, Settings….putExtra(ACTION, action)");
            return putExtra;
        }
    }

    /* renamed from: com.truecaller.ui.settings.SettingsActivity$b */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/ui/settings/SettingsActivity$b.class */
    public static final class C4693b extends BroadcastReceiver {
        public C4693b() {
            SettingsActivity.this = r4;
        }

        /* JADX WARN: Type inference failed for: r0v5, types: [com.truecaller.ui.settings.SettingsActivity, android.app.Activity] */
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            l.e(context, AnalyticsConstants.CONTEXT);
            l.e(intent, "intent");
            if (intent.getBooleanExtra("com.truecaller.extra.RESTORE_SUCCESSFUL", false)) {
                SettingsActivity.this.finish();
            }
        }
    }

    /* renamed from: ua */
    public static final Intent m34499ua(Context context, SettingsCategory settingsCategory) {
        return C4692a.m34493b(f15840g, context, settingsCategory, false, null, 12);
    }

    /* renamed from: va */
    public static final Intent m34498va(Context context, SettingsCategory settingsCategory, boolean z, String str) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(settingsCategory, "category");
        Intent putExtra = new Intent(context, SettingsActivity.class).setFlags(67108864).putExtra("settings_selected_item", settingsCategory.name()).putExtra("settings_return_to_main", z).putExtra("settings_action", str);
        l.d(putExtra, "Intent(context, Settings….putExtra(ACTION, action)");
        return putExtra;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p682e.p684b.p693m.AbstractC12990d
    /* renamed from: ga */
    public void mo22279ga(SettingsCategory settingsCategory, String str, String str2) {
        l.e(settingsCategory, "category");
        ScrollView scrollView = (ScrollView) findViewById((int) C2752R.C2754id.settings_scrollView);
        if (scrollView != null) {
            scrollView.scrollTo(0, 0);
        }
        switch (settingsCategory.ordinal()) {
            case 0:
                C12987a c12987a = new C12987a();
                Bundle bundle = new Bundle();
                bundle.putString("analytics_context", str2);
                c12987a.setArguments(bundle);
                m34495ya(c12987a, SettingsCategory.SETTINGS_MAIN.name());
                return;
            case 1:
                C12958p c12958p = new C12958p();
                Bundle bundle2 = new Bundle();
                bundle2.putString("settings_action", str);
                c12958p.setArguments(bundle2);
                m34495ya(c12958p, null);
                return;
            case 2:
                C12972c c12972c = new C12972c();
                Bundle bundle3 = new Bundle();
                bundle3.putString("settings_action", str);
                c12972c.setArguments(bundle3);
                m34495ya(c12972c, null);
                return;
            case 3:
                m34495ya(new C12896a(), null);
                return;
            case 4:
                C13000h c13000h = new C13000h();
                Bundle bundle4 = new Bundle();
                bundle4.putString("analytics_context", str2);
                c13000h.setArguments(bundle4);
                m34495ya(c13000h, null);
                return;
            case 5:
                m34496xa(new Intent((Context) this, (Class<?>) AppearanceSettingsActivity.class));
                return;
            case 6:
                m34496xa(new Intent((Context) this, (Class<?>) CallerIdSettingsActivity.class));
                return;
            case 7:
                m34495ya(new C12865a(), null);
                return;
            case 8:
                Intent m35427qa = BlockedEventsActivity.m35427qa(this, C2752R.string.SettingsBlockTitle);
                l.d(m35427qa, "BlockedEventsActivity.bu…tring.SettingsBlockTitle)");
                m34496xa(m35427qa);
                return;
            case 9:
                m34495ya(new C13017i(), null);
                return;
            case 10:
                m34495ya(new C18244a(), null);
                return;
            case 11:
                m34495ya(new C12872a(), null);
                return;
            case 12:
                m34495ya(new C12911a(), null);
                return;
            default:
                return;
        }
    }

    @Override // p193e.p194a.p682e.AbstractC13325w0
    public void onBackPressed() {
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        SettingsCategory settingsCategory = SettingsCategory.SETTINGS_MAIN;
        boolean z = supportFragmentManager.m42942K(settingsCategory.name()) != null;
        if (!this.f15842e || z) {
            super.onBackPressed();
        } else {
            C12864a2.m22552h0(this, settingsCategory, null, null, 6, null);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x009c, code lost:
        if (r8 != null) goto L18;
     */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p682e.AbstractC13325w0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onCreate(android.os.Bundle r8) {
        /*
            Method dump skipped, instructions count: 240
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.p183ui.settings.SettingsActivity.onCreate(android.os.Bundle):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p682e.AbstractC13325w0
    public void onDestroy() {
        C27062a.m968b(this).m965e(this.f15843f);
        super.onDestroy();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        l.e(menuItem, "item");
        SettingsActivity.super.onOptionsItemSelected(menuItem);
        if (menuItem.getItemId() == 16908332) {
            onBackPressed();
            return true;
        }
        return false;
    }

    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        l.e(strArr, "permissions");
        l.e(iArr, "grantResults");
        SettingsActivity.super.onRequestPermissionsResult(i, strArr, iArr);
        C19291g.m13608M0(strArr, iArr);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p682e.AbstractC13325w0
    public void onResume() {
        super.onResume();
        C27062a.m968b(this).m967c(this.f15843f, new IntentFilter("com.truecaller.action.RESTORE_COMPLETED"));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p682e.AbstractC13325w0
    public void onSupportActionModeStarted(AbstractC25450a abstractC25450a) {
        l.e(abstractC25450a, AnalyticsConstants.MODE);
        super.onSupportActionModeStarted(abstractC25450a);
        Menu mo3517e = abstractC25450a.mo3517e();
        int size = mo3517e.size();
        for (int i = 0; i < size; i++) {
            MenuItem item = mo3517e.getItem(i);
            l.d(item, "menu.getItem(i)");
            Drawable icon = item.getIcon();
            Object obj = C26467a.f74235a;
            icon.setTint(C26467a.C26471d.m1787a(this, 2131101388));
            MenuItem item2 = mo3517e.getItem(i);
            l.d(item2, "menu.getItem(i)");
            item2.setIcon(icon);
        }
    }

    @Override // p193e.p194a.p682e.AbstractC13325w0
    /* renamed from: pa */
    public int mo21930pa() {
        return 2130970255;
    }

    /* renamed from: wa */
    public final AbstractC12916e m34497wa() {
        AbstractC12916e abstractC12916e = this.f15841d;
        if (abstractC12916e != null) {
            return abstractC12916e;
        }
        l.l("settingsComponent");
        throw null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: xa */
    public final void m34496xa(Intent intent) {
        startActivity(intent);
        if (!this.f15842e) {
            finish();
        } else {
            C12864a2.m22552h0(this, SettingsCategory.SETTINGS_MAIN, null, null, 6, null);
        }
    }

    /* renamed from: ya */
    public final void m34495ya(Fragment fragment, String str) {
        C26907a c26907a = new C26907a(getSupportFragmentManager());
        l.d(c26907a, "supportFragmentManager.beginTransaction()");
        c26907a.m1120m(C2752R.C2754id.settings_container, fragment, str);
        c26907a.f75322f = 0;
        c26907a.mo1126g();
    }
}
