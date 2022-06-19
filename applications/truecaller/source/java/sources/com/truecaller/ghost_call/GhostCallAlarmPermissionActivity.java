package com.truecaller.ghost_call;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import com.truecaller.tcpermissions.PermissionPoller;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1349x.AbstractC21327c0;
import p193e.p194a.p1349x.AbstractC21330e;
import p193e.p194a.p1349x.C21332f;
import s1.g;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0007\u0018��2\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u001a\u0010\tJ\u0019\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0014¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\b\u001a\u00020\u0005H\u0014¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0005H\u0014¢\u0006\u0004\b\n\u0010\tJ\u000f\u0010\u000b\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u000b\u0010\tR\u0018\u0010\u000f\u001a\u0004\u0018\u00010\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010\u000eR%\u0010\u0016\u001a\n \u0011*\u0004\u0018\u00010\u00100\u00108B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R%\u0010\u0019\u001a\n \u0011*\u0004\u0018\u00010\u00100\u00108B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0017\u0010\u0013\u001a\u0004\b\u0018\u0010\u0015¨\u0006\u001b"}, d2 = {"Lcom/truecaller/ghost_call/GhostCallAlarmPermissionActivity;", "Le/a/x/e;", "Ln3/b/a/h;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "onResume", "()V", "onDestroy", "Y7", "Lcom/truecaller/tcpermissions/PermissionPoller;", "g", "Lcom/truecaller/tcpermissions/PermissionPoller;", "permissionPoller", "Landroid/view/View;", "kotlin.jvm.PlatformType", "e", "Ls1/g;", "getDismissButton", "()Landroid/view/View;", "dismissButton", "d", "getAllowButton", "allowButton", "<init>", "ghost-call_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes9-dex2jar.jar:com/truecaller/ghost_call/GhostCallAlarmPermissionActivity.class */
public final class GhostCallAlarmPermissionActivity extends AbstractC21327c0 implements AbstractC21330e {

    /* renamed from: d */
    public final g f12254d = C19286f.m13662q(this, C4002R.C4004id.actionAccess);

    /* renamed from: e */
    public final g f12255e = C19286f.m13662q(this, C4002R.C4004id.actionDismiss);
    @Inject

    /* renamed from: f */
    public C21332f f12256f;

    /* renamed from: g */
    public PermissionPoller f12257g;

    /* renamed from: com.truecaller.ghost_call.GhostCallAlarmPermissionActivity$a */
    /* loaded from: classes3-dex2jar.jar:com/truecaller/ghost_call/GhostCallAlarmPermissionActivity$a.class */
    public static final class View$OnClickListenerC4000a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f12258a;

        /* renamed from: b */
        public final /* synthetic */ Object f12259b;

        public View$OnClickListenerC4000a(int i, Object obj) {
            this.f12258a = i;
            this.f12259b = obj;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f12258a;
            if (i != 0) {
                if (i != 1) {
                    throw null;
                }
                C21332f c21332f = ((GhostCallAlarmPermissionActivity) this.f12259b).f12256f;
                if (c21332f == null) {
                    l.l("presenter");
                    throw null;
                }
                AbstractC21330e abstractC21330e = (AbstractC21330e) c21332f.f57683a;
                if (abstractC21330e == null) {
                    return;
                }
                abstractC21330e.finish();
                return;
            }
            C21332f c21332f2 = ((GhostCallAlarmPermissionActivity) this.f12259b).f12256f;
            if (c21332f2 == null) {
                l.l("presenter");
                throw null;
            } else if (Build.VERSION.SDK_INT < 31) {
            } else {
                c21332f2.f59728b = true;
                AbstractC21330e abstractC21330e2 = (AbstractC21330e) c21332f2.f57683a;
                if (abstractC21330e2 != null) {
                    abstractC21330e2.mo9885Y7();
                }
                c21332f2.f59729c.mo19335e();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1349x.AbstractC21330e
    /* renamed from: Y7 */
    public void mo9885Y7() {
        Intent intent = getIntent();
        l.d(intent, "intent");
        Bundle extras = intent.getExtras();
        Intent intent2 = extras != null ? extras.get("goBackIntent") : null;
        if (intent2 != null) {
            PermissionPoller permissionPoller = new PermissionPoller(this, new Handler(Looper.getMainLooper()), intent2);
            this.f12257g = permissionPoller;
            if (permissionPoller == null) {
                return;
            }
            permissionPoller.m34618a(PermissionPoller.Permission.ALARMS_AND_REMINDERS);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        GhostCallAlarmPermissionActivity.super.onCreate(bundle);
        Resources.Theme theme = getTheme();
        l.d(theme, "theme");
        C17422k.m16067m(theme, true);
        setContentView(C4002R.layout.activity_ghost_call_alarm_permission);
        C21332f c21332f = this.f12256f;
        if (c21332f == null) {
            l.l("presenter");
            throw null;
        }
        c21332f.f57683a = this;
        ((View) this.f12254d.getValue()).setOnClickListener(new View$OnClickListenerC4000a(0, this));
        ((View) this.f12255e.getValue()).setOnClickListener(new View$OnClickListenerC4000a(1, this));
    }

    public void onDestroy() {
        GhostCallAlarmPermissionActivity.super.onDestroy();
        PermissionPoller permissionPoller = this.f12257g;
        if (permissionPoller != null) {
            permissionPoller.f15304b.removeCallbacks(permissionPoller);
        }
        this.f12257g = null;
        C21332f c21332f = this.f12256f;
        if (c21332f != null) {
            c21332f.f57683a = null;
        } else {
            l.l("presenter");
            throw null;
        }
    }

    public void onResume() {
        AbstractC21330e abstractC21330e;
        GhostCallAlarmPermissionActivity.super.onResume();
        PermissionPoller permissionPoller = this.f12257g;
        if (permissionPoller != null) {
            permissionPoller.f15304b.removeCallbacks(permissionPoller);
        }
        C21332f c21332f = this.f12256f;
        if (c21332f == null) {
            l.l("presenter");
            throw null;
        } else if (!c21332f.f59728b || (abstractC21330e = (AbstractC21330e) c21332f.f57683a) == null) {
        } else {
            abstractC21330e.finish();
        }
    }
}
