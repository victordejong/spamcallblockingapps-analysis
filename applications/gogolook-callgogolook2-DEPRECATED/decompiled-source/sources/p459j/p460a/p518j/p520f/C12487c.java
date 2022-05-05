package p459j.p460a.p518j.p520f;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import androidx.drawerlayout.widget.DrawerLayout;
import gogolook.callgogolook2.R$dimen;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import p459j.p460a.p582w0.C14017g4;
/* renamed from: j.a.j.f.c */
/* loaded from: classes2-dex2jar.jar:j/a/j/f/c.class */
public class C12487c extends RelativeLayout {

    /* renamed from: a */
    public DrawerLayout f28157a;

    /* renamed from: b */
    public C12484b f28158b;

    /* renamed from: c */
    public RelativeLayout f28159c;

    /* renamed from: d */
    public RelativeLayout f28160d;

    /* renamed from: e */
    public boolean f28161e = false;

    public C12487c(Context context, boolean z) {
        super(context);
        Resources resources = context.getResources();
        this.f28158b = new C12484b(context);
        this.f28158b.setId(R$id.whoscall_action_bar);
        this.f28158b.setMinimumHeight(resources.getDimensionPixelSize(R$dimen.whoscall_action_bar_minimum_height));
        if (C14017g4.m2805s()) {
            this.f28158b.setElevation(resources.getDimensionPixelSize(R$dimen.whoscall_action_bar_elevation));
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(10);
        addView(this.f28158b, layoutParams);
        this.f28159c = new RelativeLayout(context);
        this.f28159c.setBackgroundColor(-1);
        addView(this.f28159c, new RelativeLayout.LayoutParams(-1, -1));
        this.f28158b.bringToFront();
        if (z) {
            View inflate = ((Activity) getContext()).getLayoutInflater().inflate(R$layout.main_drawer_layout, (ViewGroup) null);
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
            layoutParams2.addRule(3, this.f28158b.getId());
            addView(inflate, layoutParams2);
            this.f28157a = (DrawerLayout) inflate.findViewById(R$id.drawer_layout);
            this.f28160d = new RelativeLayout(context);
            m6021a().addView(this.f28160d, -1, -1);
            return;
        }
        this.f28160d = new RelativeLayout(context);
        this.f28160d.setBackgroundColor(-1);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams3.addRule(3, this.f28158b.getId());
        addView(this.f28160d, layoutParams3);
    }

    /* renamed from: a */
    public FrameLayout m6021a() {
        DrawerLayout drawerLayout = this.f28157a;
        if (drawerLayout != null) {
            return (FrameLayout) drawerLayout.findViewById(R$id.content_frame);
        }
        throw new NullPointerException("Please make sure that you have overwritten isContainDrawerLayout() in Activity to return true");
    }

    /* renamed from: a */
    public void m6020a(int i) {
        this.f28159c.removeAllViews();
        this.f28160d.removeAllViews();
        this.f28159c.setVisibility(8);
        this.f28160d.setVisibility(8);
        if (this.f28161e) {
            this.f28159c.setVisibility(0);
            ((Activity) getContext()).getLayoutInflater().inflate(i, this.f28159c);
            return;
        }
        this.f28160d.setVisibility(0);
        ((Activity) getContext()).getLayoutInflater().inflate(i, this.f28160d);
    }

    /* renamed from: a */
    public void m6019a(View view) {
        this.f28159c.removeAllViews();
        this.f28160d.removeAllViews();
        this.f28159c.setVisibility(8);
        this.f28160d.setVisibility(8);
        if (this.f28161e) {
            this.f28159c.setVisibility(0);
            this.f28159c.addView(view, -1, -1);
            return;
        }
        this.f28160d.setVisibility(0);
        this.f28160d.addView(view, -1, -1);
    }
}
