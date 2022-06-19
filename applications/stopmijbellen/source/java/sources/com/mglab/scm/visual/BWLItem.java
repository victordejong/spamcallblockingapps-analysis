package com.mglab.scm.visual;

import android.content.Context;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;
import butterknife.BindView;
import p117h8.C3026c;
import p117h8.C3050w;
import p193o8.AbstractC3940a;
/* loaded from: classes2-dex2jar.jar:com/mglab/scm/visual/BWLItem.class */
public class BWLItem implements AbstractC3940a {

    /* renamed from: a */
    public Context f7335a;

    /* renamed from: b */
    public C3026c f7336b;

    /* renamed from: c */
    public C3050w f7337c;
    @BindView
    public CheckBox checkBox;
    @BindView
    public ImageView contactImageView;

    /* renamed from: d */
    public boolean f7338d = false;
    @BindView
    public TextView phoneDetailsTextView;
    @BindView
    public TextView phoneTextView;

    public BWLItem(C3026c c3026c, C3050w c3050w) {
        this.f7336b = c3026c;
        this.f7337c = c3050w;
    }

    @Override // p193o8.AbstractC3940a
    /* renamed from: a */
    public int mo1595a() {
        return 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x015f  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0167  */
    @Override // p193o8.AbstractC3940a
    @android.annotation.SuppressLint({"InflateParams"})
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View mo1594b(android.view.LayoutInflater r9, android.view.View r10) {
        /*
            Method dump skipped, instructions count: 523
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mglab.scm.visual.BWLItem.mo1594b(android.view.LayoutInflater, android.view.View):android.view.View");
    }

    /* renamed from: c */
    public int m3960c() {
        C3026c c3026c = this.f7336b;
        return c3026c != null ? c3026c.f10149b : this.f7337c.f10374b;
    }

    /* renamed from: d */
    public String m3959d() {
        C3026c c3026c = this.f7336b;
        return c3026c != null ? c3026c.f10150c : this.f7337c.f10375c;
    }

    /* renamed from: e */
    public boolean m3958e() {
        C3026c c3026c = this.f7336b;
        boolean z = true;
        if (c3026c != null) {
            if (c3026c.f10153f != -1) {
                z = false;
            }
            return z;
        }
        C3050w c3050w = this.f7337c;
        if (c3050w == null) {
            return false;
        }
        return c3050w.f10378f == -1;
    }

    /* renamed from: f */
    public void m3957f(boolean z) {
        this.f7338d = z;
        this.checkBox.setChecked(z);
    }
}
