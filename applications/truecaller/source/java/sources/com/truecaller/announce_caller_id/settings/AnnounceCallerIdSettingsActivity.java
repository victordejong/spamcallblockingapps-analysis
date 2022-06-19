package com.truecaller.announce_caller_id.settings;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.MenuItem;
import com.razorpay.AnalyticsConstants;
import kotlin.Metadata;
import p1727n3.p1728a.p1730e.p1731d.AbstractC25376a;
import p1727n3.p1859r.p1860a.C26907a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1213s2.p1216h.AbstractC20224n;
import p193e.p194a.p1213s2.p1216h.C20218h;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0007\u0018��2\u00020\u0001:\u0001\u000eB\u0007¢\u0006\u0004\b\f\u0010\rJ\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000b¨\u0006\u000f"}, d2 = {"Lcom/truecaller/announce_caller_id/settings/AnnounceCallerIdSettingsActivity;", "Ln3/b/a/h;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/MenuItem;", "item", "", "onOptionsItemSelected", "(Landroid/view/MenuItem;)Z", "<init>", "()V", "a", "announce-caller-id_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:com/truecaller/announce_caller_id/settings/AnnounceCallerIdSettingsActivity.class */
public final class AnnounceCallerIdSettingsActivity extends AbstractC20224n {

    /* renamed from: com.truecaller.announce_caller_id.settings.AnnounceCallerIdSettingsActivity$a */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/announce_caller_id/settings/AnnounceCallerIdSettingsActivity$a.class */
    public static final class C2897a extends AbstractC25376a<AnnounceCallerIdSettingLaunchSource, Integer> {
        @Override // p1727n3.p1728a.p1730e.p1731d.AbstractC25376a
        /* renamed from: a */
        public Intent mo3691a(Context context, AnnounceCallerIdSettingLaunchSource announceCallerIdSettingLaunchSource) {
            AnnounceCallerIdSettingLaunchSource announceCallerIdSettingLaunchSource2 = announceCallerIdSettingLaunchSource;
            l.e(context, AnalyticsConstants.CONTEXT);
            l.e(announceCallerIdSettingLaunchSource2, "announceCallerIdSettingLaunchSource");
            l.e(context, AnalyticsConstants.CONTEXT);
            l.e(announceCallerIdSettingLaunchSource2, "announceCallerIdSettingLaunchSource");
            Intent intent = new Intent(context, AnnounceCallerIdSettingsActivity.class);
            intent.putExtra("launch_source", announceCallerIdSettingLaunchSource2);
            return intent;
        }

        @Override // p1727n3.p1728a.p1730e.p1731d.AbstractC25376a
        /* renamed from: c */
        public Integer mo3690c(int i, Intent intent) {
            Integer num = null;
            if (i == -1 && intent != null) {
                num = Integer.valueOf(intent.getIntExtra("announce_caller_id_setting_change_status", -1));
            }
            return num;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        AnnounceCallerIdSettingsActivity.super.onCreate(bundle);
        C17422k.m16066m0(this, true);
        if (bundle == null) {
            C26907a c26907a = new C26907a(getSupportFragmentManager());
            c26907a.m1120m(16908290, new C20218h(), null);
            c26907a.mo1127f();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        l.e(menuItem, "item");
        if (menuItem.getItemId() == 16908332) {
            finish();
            return true;
        }
        return AnnounceCallerIdSettingsActivity.super.onOptionsItemSelected(menuItem);
    }
}
