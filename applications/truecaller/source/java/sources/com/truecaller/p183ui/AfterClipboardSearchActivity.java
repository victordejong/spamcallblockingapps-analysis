package com.truecaller.p183ui;

import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Handler;
import androidx.appcompat.app.AlertController;
import com.truecaller.C2752R;
import com.truecaller.TrueApp;
import com.truecaller.p183ui.AfterClipboardSearchActivity;
import com.truecaller.settings.CallingSettings;
import java.util.Objects;
import n3.b.a.g;
import n3.b.a.h;
import p1727n3.p1734b.p1735a.g$a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1146q2.p1155y0.p1156a.C19597a;
import p193e.p194a.p614c3.C10932f;
import p193e.p194a.p682e.C12864a2;
import p193e.p194a.p847h3.p848b.AbstractC14900a;
/* renamed from: com.truecaller.ui.AfterClipboardSearchActivity */
/* loaded from: classes15-dex2jar.jar:com/truecaller/ui/AfterClipboardSearchActivity.class */
public class AfterClipboardSearchActivity extends h {

    /* renamed from: a */
    public g f15531a;

    /* renamed from: b */
    public CallingSettings f15532b;

    /* renamed from: c */
    public AbstractC14900a f15533c;

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        AfterClipboardSearchActivity.super.onCreate(bundle);
        this.f15532b = TrueApp.m36032b0().mo10154s().mo12414d6();
        this.f15533c = TrueApp.m36032b0().mo10154s().mo12625N7();
        if (C10932f.m25491a()) {
            C12864a2.m22569Y(this);
        }
        C17422k.m16069l(getTheme());
        new Handler(getMainLooper()).postDelayed(new Runnable() { // from class: e.a.e.k0
            /* JADX WARN: Type inference failed for: r0v1, types: [android.content.Context, java.lang.Object, com.truecaller.ui.AfterClipboardSearchActivity] */
            @Override // java.lang.Runnable
            public final void run() {
                final AfterClipboardSearchActivity r0 = AfterClipboardSearchActivity.this;
                Objects.requireNonNull(r0);
                g$a g_a = new g$a(r0);
                g_a.m3660i(2131887941, new DialogInterface.OnClickListener() { // from class: e.a.e.d
                    /* JADX WARN: Type inference failed for: r0v1, types: [com.truecaller.ui.AfterClipboardSearchActivity, android.app.Activity] */
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        ?? r02 = AfterClipboardSearchActivity.this;
                        if (i == -2) {
                            r02.f15533c.mo19472j(false);
                        }
                        r02.f15532b.putBoolean("clipboardSearchHaveAskedOnDismiss", true);
                        r02.finish();
                    }
                });
                g_a.m3662g(2131887903, new DialogInterface.OnClickListener() { // from class: e.a.e.d
                    /* JADX WARN: Type inference failed for: r0v1, types: [com.truecaller.ui.AfterClipboardSearchActivity, android.app.Activity] */
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        ?? r02 = AfterClipboardSearchActivity.this;
                        if (i == -2) {
                            r02.f15533c.mo19472j(false);
                        }
                        r02.f15532b.putBoolean("clipboardSearchHaveAskedOnDismiss", true);
                        r02.finish();
                    }
                });
                g_a.m3664e(C2752R.string.ClipboardSearchDismissQuestion);
                DialogInterface.OnCancelListener onCancelListener = new DialogInterface.OnCancelListener() { // from class: e.a.e.e
                    /* JADX WARN: Type inference failed for: r0v1, types: [com.truecaller.ui.AfterClipboardSearchActivity, android.app.Activity] */
                    @Override // android.content.DialogInterface.OnCancelListener
                    public final void onCancel(DialogInterface dialogInterface) {
                        AfterClipboardSearchActivity.this.finish();
                    }
                };
                AlertController.C0037b c0037b = g_a.f70854a;
                c0037b.f164n = onCancelListener;
                c0037b.f163m = true;
                r0.f15531a = g_a.m3652q();
                C22128a.m8596m1().mo13274b(C19597a.m13114b("afterClipboardSearch"));
            }
        }, (bundle == null ? 200 : null) == 1 ? 1L : 0L);
    }

    public void onDestroy() {
        AfterClipboardSearchActivity.super.onDestroy();
        g gVar = this.f15531a;
        if (gVar != null) {
            gVar.dismiss();
        }
    }
}
