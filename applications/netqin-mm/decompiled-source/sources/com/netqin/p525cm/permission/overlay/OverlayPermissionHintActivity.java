package com.netqin.p525cm.permission.overlay;

import android.app.Activity;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.netqin.p525cm.main.p529ui.BaseDialogActivity;
import p012b.p042i.p044i.C0869a;
import p012b.p042i.p046j.C0891b;
import p012b.p042i.p046j.p047m.C0907a;
import p131c.p431l.p432a.p468n.C6860r;
import p573f.p590w.p592c.C10059q;
/* renamed from: com.netqin.cm.permission.overlay.OverlayPermissionHintActivity */
/* loaded from: classes2-dex2jar.jar:com/netqin/cm/permission/overlay/OverlayPermissionHintActivity.class */
public final class OverlayPermissionHintActivity extends BaseDialogActivity {

    /* renamed from: com.netqin.cm.permission.overlay.OverlayPermissionHintActivity$a */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/permission/overlay/OverlayPermissionHintActivity$a.class */
    public static final class View$OnClickListenerC9158a implements View.OnClickListener {
        public View$OnClickListenerC9158a(Drawable drawable) {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            OverlayPermissionHintActivity.this.finish();
        }
    }

    /* renamed from: com.netqin.cm.permission.overlay.OverlayPermissionHintActivity$b */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/permission/overlay/OverlayPermissionHintActivity$b.class */
    public static final class View$OnClickListenerC9159b implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ View f35659a;

        /* renamed from: b */
        public final /* synthetic */ OverlayPermissionHintActivity f35660b;

        public View$OnClickListenerC9159b(Drawable drawable, View view, OverlayPermissionHintActivity overlayPermissionHintActivity, Drawable drawable2) {
            this.f35659a = view;
            this.f35660b = overlayPermissionHintActivity;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            this.f35660b.finish();
        }
    }

    @Override // com.netqin.p525cm.main.p529ui.BaseDialogActivity
    /* renamed from: n */
    public int mo3282n() {
        return 2131624176;
    }

    @Override // com.netqin.p525cm.main.p529ui.BaseDialogActivity
    /* renamed from: o */
    public long mo3281o() {
        return 5000L;
    }

    @Override // com.netqin.p525cm.main.p529ui.BaseDialogActivity
    /* renamed from: r */
    public float mo3280r() {
        return 0.6f;
    }

    @Override // com.netqin.p525cm.main.p529ui.BaseDialogActivity
    /* renamed from: t */
    public int mo3279t() {
        return 80;
    }

    @Override // com.netqin.p525cm.main.p529ui.BaseDialogActivity
    /* renamed from: v */
    public boolean mo3278v() {
        return true;
    }

    @Override // com.netqin.p525cm.main.p529ui.BaseDialogActivity
    /* renamed from: w */
    public View mo3277w() {
        Drawable loadIcon = getApplicationInfo().loadIcon(getPackageManager());
        if (loadIcon != null) {
            FrameLayout frameLayout = new FrameLayout(this);
            frameLayout.setOnClickListener(new View$OnClickListenerC9158a(loadIcon));
            View inflate = getLayoutInflater().inflate(2131427359, (ViewGroup) frameLayout, false);
            Drawable c = C0869a.m35684c(frameLayout.getContext(), 2131165335);
            if (c != null) {
                Drawable h = C0907a.m35514h(c);
                C0907a.m35520b(h, C0891b.m35601d(-1, 160));
                ImageView imageView = (ImageView) inflate.findViewById(2131230892);
                imageView.setImageDrawable(h);
                imageView.setOnClickListener(new View$OnClickListenerC9159b(h, inflate, this, loadIcon));
            }
            TextView textView = (TextView) inflate.findViewById(2131230905);
            int a = C6860r.m19547a(40.0f);
            loadIcon.setBounds(0, 0, a, a);
            textView.setCompoundDrawables(loadIcon, null, null, null);
            textView.setBackgroundColor(-1);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
            layoutParams.gravity = 80;
            layoutParams.bottomMargin = C6860r.m19545a((Activity) this);
            frameLayout.addView(inflate, layoutParams);
            ImageView imageView2 = new ImageView(frameLayout.getContext());
            imageView2.setImageResource(2131165481);
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-2, -2);
            layoutParams2.gravity = 8388693;
            frameLayout.addView(imageView2, layoutParams2);
            return frameLayout;
        }
        C10059q.m1646a();
        throw null;
    }
}
