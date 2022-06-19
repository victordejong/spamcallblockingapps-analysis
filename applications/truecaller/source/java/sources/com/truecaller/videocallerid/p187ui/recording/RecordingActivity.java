package com.truecaller.videocallerid.p187ui.recording;

import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowInsetsController;
import kotlin.Metadata;
import p1727n3.p1859r.p1860a.C26907a;
import p193e.p194a.p682e.C12864a2;
import p193e.p194a.p947k.p948a.p959g.AbstractC15707b;
import p193e.p194a.p947k.p948a.p959g.C15715f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0001\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\t\u0010\bJ\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\b¨\u0006\n"}, d2 = {"Lcom/truecaller/videocallerid/ui/recording/RecordingActivity;", "Ln3/b/a/h;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "onAttachedToWindow", "()V", "<init>", "video-caller-id_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.videocallerid.ui.recording.RecordingActivity */
/* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/ui/recording/RecordingActivity.class */
public final class RecordingActivity extends AbstractC15707b {
    /* JADX WARN: Multi-variable type inference failed */
    public void onAttachedToWindow() {
        RecordingActivity.super.onAttachedToWindow();
        if (Build.VERSION.SDK_INT < 30) {
            Window window = getWindow();
            l.d(window, "window");
            View decorView = window.getDecorView();
            l.d(decorView, "window.decorView");
            decorView.setSystemUiVisibility(1280);
            return;
        }
        getWindow().setDecorFitsSystemWindows(false);
        Window window2 = getWindow();
        l.d(window2, "window");
        WindowInsetsController insetsController = window2.getInsetsController();
        if (insetsController == null) {
            return;
        }
        insetsController.show(WindowInsets.Type.statusBars());
        insetsController.show(WindowInsets.Type.navigationBars());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        RecordingActivity.super.onCreate(bundle);
        C12864a2.m22550i0(this);
        if (bundle != null) {
            return;
        }
        C26907a c26907a = new C26907a(getSupportFragmentManager());
        c26907a.m1120m(16908290, new C15715f(), null);
        c26907a.mo1127f();
    }
}
